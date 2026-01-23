; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278620 () Bool)

(assert start!278620)

(declare-fun b!2862706 () Bool)

(declare-fun condSetEmpty!25334 () Bool)

(declare-datatypes ((C!17446 0))(
  ( (C!17447 (val!10757 Int)) )
))
(declare-datatypes ((Regex!8632 0))(
  ( (ElementMatch!8632 (c!461459 C!17446)) (Concat!13953 (regOne!17776 Regex!8632) (regTwo!17776 Regex!8632)) (EmptyExpr!8632) (Star!8632 (reg!8961 Regex!8632)) (EmptyLang!8632) (Union!8632 (regOne!17777 Regex!8632) (regTwo!17777 Regex!8632)) )
))
(declare-datatypes ((List!34247 0))(
  ( (Nil!34123) (Cons!34123 (h!39543 Regex!8632) (t!233284 List!34247)) )
))
(declare-datatypes ((Context!5184 0))(
  ( (Context!5185 (exprs!3092 List!34247)) )
))
(declare-fun lt!1014824 () (Set Context!5184))

(assert (=> b!2862706 (= condSetEmpty!25334 (= lt!1014824 (as set.empty (Set Context!5184))))))

(declare-fun setRes!25334 () Bool)

(assert (=> b!2862706 setRes!25334))

(declare-fun setIsEmpty!25334 () Bool)

(assert (=> setIsEmpty!25334 setRes!25334))

(declare-fun setNonEmpty!25334 () Bool)

(assert (=> setNonEmpty!25334 (= setRes!25334 true)))

(declare-fun setElem!25334 () Context!5184)

(declare-fun setRest!25334 () (Set Context!5184))

(assert (=> setNonEmpty!25334 (= lt!1014824 (set.union (set.insert setElem!25334 (as set.empty (Set Context!5184))) setRest!25334))))

(assert (= (and b!2862706 condSetEmpty!25334) setIsEmpty!25334))

(assert (= (and b!2862706 (not condSetEmpty!25334)) setNonEmpty!25334))

(assert (=> b!2862706 true))

(declare-fun b!2862703 () Bool)

(declare-fun e!1812222 () Bool)

(declare-fun tp_is_empty!15001 () Bool)

(declare-fun tp!921761 () Bool)

(assert (=> b!2862703 (= e!1812222 (and tp_is_empty!15001 tp!921761))))

(declare-fun b!2862704 () Bool)

(declare-fun e!1812221 () Bool)

(declare-fun tp!921759 () Bool)

(assert (=> b!2862704 (= e!1812221 tp!921759)))

(declare-fun setNonEmpty!25331 () Bool)

(declare-fun setRes!25331 () Bool)

(declare-fun setElem!25331 () Context!5184)

(declare-fun tp!921760 () Bool)

(declare-fun inv!46168 (Context!5184) Bool)

(assert (=> setNonEmpty!25331 (= setRes!25331 (and tp!921760 (inv!46168 setElem!25331) e!1812221))))

(declare-fun z!960 () (Set Context!5184))

(declare-fun setRest!25331 () (Set Context!5184))

(assert (=> setNonEmpty!25331 (= z!960 (set.union (set.insert setElem!25331 (as set.empty (Set Context!5184))) setRest!25331))))

(declare-fun res!1188599 () Bool)

(declare-fun e!1812223 () Bool)

(assert (=> start!278620 (=> (not res!1188599) (not e!1812223))))

(declare-datatypes ((List!34248 0))(
  ( (Nil!34124) (Cons!34124 (h!39544 C!17446) (t!233285 List!34248)) )
))
(declare-fun prefix!919 () List!34248)

(declare-fun prefixMatchZipper!314 ((Set Context!5184) List!34248) Bool)

(assert (=> start!278620 (= res!1188599 (prefixMatchZipper!314 z!960 prefix!919))))

(assert (=> start!278620 e!1812223))

(declare-fun condSetEmpty!25331 () Bool)

(assert (=> start!278620 (= condSetEmpty!25331 (= z!960 (as set.empty (Set Context!5184))))))

(assert (=> start!278620 setRes!25331))

(assert (=> start!278620 e!1812222))

(declare-fun b!2862705 () Bool)

(declare-fun res!1188600 () Bool)

(assert (=> b!2862705 (=> (not res!1188600) (not e!1812223))))

(assert (=> b!2862705 (= res!1188600 (not (is-Nil!34124 prefix!919)))))

(declare-fun setIsEmpty!25331 () Bool)

(assert (=> setIsEmpty!25331 setRes!25331))

(declare-fun lambda!105326 () Int)

(declare-fun matchZipper!430 ((Set Context!5184) List!34248) Bool)

(declare-fun pickWitness!323 (Int) List!34248)

(assert (=> b!2862706 (= e!1812223 (not (matchZipper!430 lt!1014824 (pickWitness!323 lambda!105326))))))

(declare-fun Exists!1316 (Int) Bool)

(assert (=> b!2862706 (Exists!1316 lambda!105326)))

(assert (=> b!2862706 (Exists!1316 lambda!105326)))

(declare-datatypes ((Unit!47787 0))(
  ( (Unit!47788) )
))
(declare-fun lt!1014825 () Unit!47787)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!362 ((Set Context!5184) List!34248) Unit!47787)

(assert (=> b!2862706 (= lt!1014825 (lemmaPrefixMatchThenExistsStringThatMatches!362 lt!1014824 (t!233285 prefix!919)))))

(declare-fun derivationStepZipper!431 ((Set Context!5184) C!17446) (Set Context!5184))

(assert (=> b!2862706 (= lt!1014824 (derivationStepZipper!431 z!960 (h!39544 prefix!919)))))

(assert (= (and start!278620 res!1188599) b!2862705))

(assert (= (and b!2862705 res!1188600) b!2862706))

(assert (= (and start!278620 condSetEmpty!25331) setIsEmpty!25331))

(assert (= (and start!278620 (not condSetEmpty!25331)) setNonEmpty!25331))

(assert (= setNonEmpty!25331 b!2862704))

(assert (= (and start!278620 (is-Cons!34124 prefix!919)) b!2862703))

(declare-fun m!3281993 () Bool)

(assert (=> setNonEmpty!25331 m!3281993))

(declare-fun m!3281995 () Bool)

(assert (=> start!278620 m!3281995))

(declare-fun m!3281997 () Bool)

(assert (=> b!2862706 m!3281997))

(declare-fun m!3281999 () Bool)

(assert (=> b!2862706 m!3281999))

(declare-fun m!3282001 () Bool)

(assert (=> b!2862706 m!3282001))

(assert (=> b!2862706 m!3282001))

(assert (=> b!2862706 m!3281997))

(declare-fun m!3282003 () Bool)

(assert (=> b!2862706 m!3282003))

(declare-fun m!3282005 () Bool)

(assert (=> b!2862706 m!3282005))

(push 1)

(assert (not b!2862706))

(assert (not start!278620))

(assert (not b!2862704))

(assert (not b!2862703))

(assert tp_is_empty!15001)

(assert (not setNonEmpty!25331))

(assert (not setNonEmpty!25334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!520485 () Bool)

(declare-fun d!827420 () Bool)

(assert (= bs!520485 (and d!827420 b!2862706)))

(declare-fun lambda!105334 () Int)

(assert (=> bs!520485 (= lambda!105334 lambda!105326)))

(assert (=> d!827420 true))

(declare-fun condSetEmpty!25341 () Bool)

(assert (=> d!827420 (= condSetEmpty!25341 (= lt!1014824 (as set.empty (Set Context!5184))))))

(declare-fun setRes!25341 () Bool)

(assert (=> d!827420 setRes!25341))

(declare-fun setIsEmpty!25341 () Bool)

(assert (=> setIsEmpty!25341 setRes!25341))

(declare-fun setNonEmpty!25341 () Bool)

(assert (=> setNonEmpty!25341 (= setRes!25341 true)))

(declare-fun setElem!25341 () Context!5184)

(declare-fun setRest!25341 () (Set Context!5184))

(assert (=> setNonEmpty!25341 (= lt!1014824 (set.union (set.insert setElem!25341 (as set.empty (Set Context!5184))) setRest!25341))))

(assert (= (and d!827420 condSetEmpty!25341) setIsEmpty!25341))

(assert (= (and d!827420 (not condSetEmpty!25341)) setNonEmpty!25341))

(assert (=> d!827420 (Exists!1316 lambda!105334)))

(declare-fun lt!1014834 () Unit!47787)

(declare-fun choose!16844 ((Set Context!5184) List!34248) Unit!47787)

(assert (=> d!827420 (= lt!1014834 (choose!16844 lt!1014824 (t!233285 prefix!919)))))

(assert (=> d!827420 (prefixMatchZipper!314 lt!1014824 (t!233285 prefix!919))))

(assert (=> d!827420 (= (lemmaPrefixMatchThenExistsStringThatMatches!362 lt!1014824 (t!233285 prefix!919)) lt!1014834)))

(declare-fun m!3282021 () Bool)

(assert (=> d!827420 m!3282021))

(declare-fun m!3282023 () Bool)

(assert (=> d!827420 m!3282023))

(declare-fun m!3282025 () Bool)

(assert (=> d!827420 m!3282025))

(assert (=> b!2862706 d!827420))

(declare-fun d!827424 () Bool)

(declare-fun choose!16845 (Int) Bool)

(assert (=> d!827424 (= (Exists!1316 lambda!105326) (choose!16845 lambda!105326))))

(declare-fun bs!520486 () Bool)

(assert (= bs!520486 d!827424))

(declare-fun m!3282027 () Bool)

(assert (=> bs!520486 m!3282027))

(assert (=> b!2862706 d!827424))

(declare-fun d!827426 () Bool)

(declare-fun lt!1014837 () List!34248)

(declare-fun dynLambda!14246 (Int List!34248) Bool)

(assert (=> d!827426 (dynLambda!14246 lambda!105326 lt!1014837)))

(declare-fun choose!16846 (Int) List!34248)

(assert (=> d!827426 (= lt!1014837 (choose!16846 lambda!105326))))

(assert (=> d!827426 (Exists!1316 lambda!105326)))

(assert (=> d!827426 (= (pickWitness!323 lambda!105326) lt!1014837)))

(declare-fun b_lambda!85779 () Bool)

(assert (=> (not b_lambda!85779) (not d!827426)))

(declare-fun bs!520487 () Bool)

(assert (= bs!520487 d!827426))

(declare-fun m!3282029 () Bool)

(assert (=> bs!520487 m!3282029))

(declare-fun m!3282031 () Bool)

(assert (=> bs!520487 m!3282031))

(assert (=> bs!520487 m!3282001))

(assert (=> b!2862706 d!827426))

(declare-fun d!827428 () Bool)

(declare-fun c!461463 () Bool)

(declare-fun isEmpty!18627 (List!34248) Bool)

(assert (=> d!827428 (= c!461463 (isEmpty!18627 (pickWitness!323 lambda!105326)))))

(declare-fun e!1812241 () Bool)

(assert (=> d!827428 (= (matchZipper!430 lt!1014824 (pickWitness!323 lambda!105326)) e!1812241)))

(declare-fun b!2862737 () Bool)

(declare-fun nullableZipper!685 ((Set Context!5184)) Bool)

(assert (=> b!2862737 (= e!1812241 (nullableZipper!685 lt!1014824))))

(declare-fun b!2862738 () Bool)

(declare-fun head!6300 (List!34248) C!17446)

(declare-fun tail!4525 (List!34248) List!34248)

(assert (=> b!2862738 (= e!1812241 (matchZipper!430 (derivationStepZipper!431 lt!1014824 (head!6300 (pickWitness!323 lambda!105326))) (tail!4525 (pickWitness!323 lambda!105326))))))

(assert (= (and d!827428 c!461463) b!2862737))

(assert (= (and d!827428 (not c!461463)) b!2862738))

(assert (=> d!827428 m!3281997))

(declare-fun m!3282033 () Bool)

(assert (=> d!827428 m!3282033))

(declare-fun m!3282035 () Bool)

(assert (=> b!2862737 m!3282035))

(assert (=> b!2862738 m!3281997))

(declare-fun m!3282037 () Bool)

(assert (=> b!2862738 m!3282037))

(assert (=> b!2862738 m!3282037))

(declare-fun m!3282039 () Bool)

(assert (=> b!2862738 m!3282039))

(assert (=> b!2862738 m!3281997))

(declare-fun m!3282041 () Bool)

(assert (=> b!2862738 m!3282041))

(assert (=> b!2862738 m!3282039))

(assert (=> b!2862738 m!3282041))

(declare-fun m!3282043 () Bool)

(assert (=> b!2862738 m!3282043))

(assert (=> b!2862706 d!827428))

(declare-fun d!827430 () Bool)

(assert (=> d!827430 true))

(declare-fun lambda!105337 () Int)

(declare-fun flatMap!204 ((Set Context!5184) Int) (Set Context!5184))

(assert (=> d!827430 (= (derivationStepZipper!431 z!960 (h!39544 prefix!919)) (flatMap!204 z!960 lambda!105337))))

(declare-fun bs!520488 () Bool)

(assert (= bs!520488 d!827430))

(declare-fun m!3282045 () Bool)

(assert (=> bs!520488 m!3282045))

(assert (=> b!2862706 d!827430))

(declare-fun d!827432 () Bool)

(declare-fun c!461470 () Bool)

(assert (=> d!827432 (= c!461470 (isEmpty!18627 prefix!919))))

(declare-fun e!1812246 () Bool)

(assert (=> d!827432 (= (prefixMatchZipper!314 z!960 prefix!919) e!1812246)))

(declare-fun b!2862749 () Bool)

(declare-fun lostCauseZipper!543 ((Set Context!5184)) Bool)

(assert (=> b!2862749 (= e!1812246 (not (lostCauseZipper!543 z!960)))))

(declare-fun b!2862750 () Bool)

(assert (=> b!2862750 (= e!1812246 (prefixMatchZipper!314 (derivationStepZipper!431 z!960 (head!6300 prefix!919)) (tail!4525 prefix!919)))))

(assert (= (and d!827432 c!461470) b!2862749))

(assert (= (and d!827432 (not c!461470)) b!2862750))

(declare-fun m!3282047 () Bool)

(assert (=> d!827432 m!3282047))

(declare-fun m!3282049 () Bool)

(assert (=> b!2862749 m!3282049))

(declare-fun m!3282051 () Bool)

(assert (=> b!2862750 m!3282051))

(assert (=> b!2862750 m!3282051))

(declare-fun m!3282053 () Bool)

(assert (=> b!2862750 m!3282053))

(declare-fun m!3282055 () Bool)

(assert (=> b!2862750 m!3282055))

(assert (=> b!2862750 m!3282053))

(assert (=> b!2862750 m!3282055))

(declare-fun m!3282057 () Bool)

(assert (=> b!2862750 m!3282057))

(assert (=> start!278620 d!827432))

(declare-fun d!827434 () Bool)

(declare-fun lambda!105340 () Int)

(declare-fun forall!6968 (List!34247 Int) Bool)

(assert (=> d!827434 (= (inv!46168 setElem!25331) (forall!6968 (exprs!3092 setElem!25331) lambda!105340))))

(declare-fun bs!520489 () Bool)

(assert (= bs!520489 d!827434))

(declare-fun m!3282071 () Bool)

(assert (=> bs!520489 m!3282071))

(assert (=> setNonEmpty!25331 d!827434))

(declare-fun b!2862757 () Bool)

(declare-fun e!1812250 () Bool)

(declare-fun tp!921773 () Bool)

(assert (=> b!2862757 (= e!1812250 (and tp_is_empty!15001 tp!921773))))

(assert (=> b!2862703 (= tp!921761 e!1812250)))

(assert (= (and b!2862703 (is-Cons!34124 (t!233285 prefix!919))) b!2862757))

(declare-fun b!2862762 () Bool)

(declare-fun e!1812253 () Bool)

(declare-fun tp!921778 () Bool)

(declare-fun tp!921779 () Bool)

(assert (=> b!2862762 (= e!1812253 (and tp!921778 tp!921779))))

(assert (=> b!2862704 (= tp!921759 e!1812253)))

(assert (= (and b!2862704 (is-Cons!34123 (exprs!3092 setElem!25331))) b!2862762))

(declare-fun condSetEmpty!25344 () Bool)

(assert (=> setNonEmpty!25331 (= condSetEmpty!25344 (= setRest!25331 (as set.empty (Set Context!5184))))))

(declare-fun setRes!25344 () Bool)

(assert (=> setNonEmpty!25331 (= tp!921760 setRes!25344)))

(declare-fun setIsEmpty!25344 () Bool)

(assert (=> setIsEmpty!25344 setRes!25344))

(declare-fun setNonEmpty!25344 () Bool)

(declare-fun e!1812256 () Bool)

(declare-fun setElem!25344 () Context!5184)

(declare-fun tp!921784 () Bool)

(assert (=> setNonEmpty!25344 (= setRes!25344 (and tp!921784 (inv!46168 setElem!25344) e!1812256))))

(declare-fun setRest!25344 () (Set Context!5184))

(assert (=> setNonEmpty!25344 (= setRest!25331 (set.union (set.insert setElem!25344 (as set.empty (Set Context!5184))) setRest!25344))))

(declare-fun b!2862767 () Bool)

(declare-fun tp!921785 () Bool)

(assert (=> b!2862767 (= e!1812256 tp!921785)))

(assert (= (and setNonEmpty!25331 condSetEmpty!25344) setIsEmpty!25344))

(assert (= (and setNonEmpty!25331 (not condSetEmpty!25344)) setNonEmpty!25344))

(assert (= setNonEmpty!25344 b!2862767))

(declare-fun m!3282077 () Bool)

(assert (=> setNonEmpty!25344 m!3282077))

(declare-fun condSetEmpty!25345 () Bool)

(assert (=> setNonEmpty!25334 (= condSetEmpty!25345 (= setRest!25334 (as set.empty (Set Context!5184))))))

(declare-fun setRes!25345 () Bool)

(assert (=> setNonEmpty!25334 setRes!25345))

(declare-fun setIsEmpty!25345 () Bool)

(assert (=> setIsEmpty!25345 setRes!25345))

(declare-fun setNonEmpty!25345 () Bool)

(assert (=> setNonEmpty!25345 (= setRes!25345 true)))

(declare-fun setElem!25345 () Context!5184)

(declare-fun setRest!25345 () (Set Context!5184))

(assert (=> setNonEmpty!25345 (= setRest!25334 (set.union (set.insert setElem!25345 (as set.empty (Set Context!5184))) setRest!25345))))

(assert (= (and setNonEmpty!25334 condSetEmpty!25345) setIsEmpty!25345))

(assert (= (and setNonEmpty!25334 (not condSetEmpty!25345)) setNonEmpty!25345))

(declare-fun b_lambda!85783 () Bool)

(assert (= b_lambda!85779 (or b!2862706 b_lambda!85783)))

(declare-fun bs!520491 () Bool)

(declare-fun d!827440 () Bool)

(assert (= bs!520491 (and d!827440 b!2862706)))

(declare-fun res!1188613 () Bool)

(declare-fun e!1812257 () Bool)

(assert (=> bs!520491 (=> (not res!1188613) (not e!1812257))))

(assert (=> bs!520491 (= res!1188613 (matchZipper!430 lt!1014824 lt!1014837))))

(assert (=> bs!520491 (= (dynLambda!14246 lambda!105326 lt!1014837) e!1812257)))

(declare-fun b!2862768 () Bool)

(declare-fun isPrefix!2692 (List!34248 List!34248) Bool)

(assert (=> b!2862768 (= e!1812257 (isPrefix!2692 (t!233285 prefix!919) lt!1014837))))

(assert (= (and bs!520491 res!1188613) b!2862768))

(declare-fun m!3282079 () Bool)

(assert (=> bs!520491 m!3282079))

(declare-fun m!3282081 () Bool)

(assert (=> b!2862768 m!3282081))

(assert (=> d!827426 d!827440))

(push 1)

(assert (not d!827426))

(assert (not setNonEmpty!25344))

(assert (not setNonEmpty!25345))

(assert (not b!2862768))

(assert (not b!2862757))

(assert (not d!827420))

(assert (not b!2862737))

(assert (not bs!520491))

(assert (not b!2862762))

(assert tp_is_empty!15001)

(assert (not b_lambda!85783))

(assert (not b!2862738))

(assert (not d!827430))

(assert (not d!827428))

(assert (not d!827434))

(assert (not b!2862767))

(assert (not d!827432))

(assert (not b!2862749))

(assert (not d!827424))

(assert (not setNonEmpty!25341))

(assert (not b!2862750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

