; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541430 () Bool)

(assert start!541430)

(declare-fun b!5127322 () Bool)

(declare-fun e!3197646 () Bool)

(declare-datatypes ((C!28798 0))(
  ( (C!28799 (val!24051 Int)) )
))
(declare-datatypes ((Regex!14266 0))(
  ( (ElementMatch!14266 (c!881566 C!28798)) (Concat!23111 (regOne!29044 Regex!14266) (regTwo!29044 Regex!14266)) (EmptyExpr!14266) (Star!14266 (reg!14595 Regex!14266)) (EmptyLang!14266) (Union!14266 (regOne!29045 Regex!14266) (regTwo!29045 Regex!14266)) )
))
(declare-datatypes ((List!59469 0))(
  ( (Nil!59345) (Cons!59345 (h!65793 Regex!14266) (t!372496 List!59469)) )
))
(declare-datatypes ((Context!7300 0))(
  ( (Context!7301 (exprs!4150 List!59469)) )
))
(declare-fun z!1006 () (Set Context!7300))

(declare-fun nullableZipper!1057 ((Set Context!7300)) Bool)

(assert (=> b!5127322 (= e!3197646 (not (nullableZipper!1057 z!1006)))))

(declare-fun b!5127323 () Bool)

(declare-fun e!3197644 () Bool)

(declare-fun tp!1430308 () Bool)

(assert (=> b!5127323 (= e!3197644 tp!1430308)))

(declare-fun b!5127324 () Bool)

(declare-fun e!3197645 () Bool)

(declare-fun tp_is_empty!37801 () Bool)

(declare-fun tp!1430309 () Bool)

(assert (=> b!5127324 (= e!3197645 (and tp_is_empty!37801 tp!1430309))))

(declare-fun res!2183074 () Bool)

(assert (=> start!541430 (=> (not res!2183074) (not e!3197646))))

(declare-fun lostCauseZipper!1144 ((Set Context!7300)) Bool)

(assert (=> start!541430 (= res!2183074 (lostCauseZipper!1144 z!1006))))

(assert (=> start!541430 e!3197646))

(declare-fun condSetEmpty!30727 () Bool)

(assert (=> start!541430 (= condSetEmpty!30727 (= z!1006 (as set.empty (Set Context!7300))))))

(declare-fun setRes!30727 () Bool)

(assert (=> start!541430 setRes!30727))

(assert (=> start!541430 e!3197645))

(declare-fun setElem!30727 () Context!7300)

(declare-fun setNonEmpty!30727 () Bool)

(declare-fun tp!1430310 () Bool)

(declare-fun inv!78847 (Context!7300) Bool)

(assert (=> setNonEmpty!30727 (= setRes!30727 (and tp!1430310 (inv!78847 setElem!30727) e!3197644))))

(declare-fun setRest!30727 () (Set Context!7300))

(assert (=> setNonEmpty!30727 (= z!1006 (set.union (set.insert setElem!30727 (as set.empty (Set Context!7300))) setRest!30727))))

(declare-fun b!5127325 () Bool)

(declare-fun res!2183073 () Bool)

(assert (=> b!5127325 (=> (not res!2183073) (not e!3197646))))

(declare-datatypes ((List!59470 0))(
  ( (Nil!59346) (Cons!59346 (h!65794 C!28798) (t!372497 List!59470)) )
))
(declare-fun s!2272 () List!59470)

(declare-fun matchZipper!930 ((Set Context!7300) List!59470) Bool)

(assert (=> b!5127325 (= res!2183073 (matchZipper!930 z!1006 s!2272))))

(declare-fun setIsEmpty!30727 () Bool)

(assert (=> setIsEmpty!30727 setRes!30727))

(declare-fun b!5127326 () Bool)

(declare-fun res!2183075 () Bool)

(assert (=> b!5127326 (=> (not res!2183075) (not e!3197646))))

(assert (=> b!5127326 (= res!2183075 (is-Nil!59346 s!2272))))

(assert (= (and start!541430 res!2183074) b!5127326))

(assert (= (and b!5127326 res!2183075) b!5127325))

(assert (= (and b!5127325 res!2183073) b!5127322))

(assert (= (and start!541430 condSetEmpty!30727) setIsEmpty!30727))

(assert (= (and start!541430 (not condSetEmpty!30727)) setNonEmpty!30727))

(assert (= setNonEmpty!30727 b!5127323))

(assert (= (and start!541430 (is-Cons!59346 s!2272)) b!5127324))

(declare-fun m!6191338 () Bool)

(assert (=> b!5127322 m!6191338))

(declare-fun m!6191340 () Bool)

(assert (=> start!541430 m!6191340))

(declare-fun m!6191342 () Bool)

(assert (=> setNonEmpty!30727 m!6191342))

(declare-fun m!6191344 () Bool)

(assert (=> b!5127325 m!6191344))

(push 1)

(assert (not b!5127324))

(assert (not setNonEmpty!30727))

(assert tp_is_empty!37801)

(assert (not b!5127323))

(assert (not start!541430))

(assert (not b!5127322))

(assert (not b!5127325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1658549 () Bool)

(declare-fun lambda!251967 () Int)

(declare-fun exists!1514 ((Set Context!7300) Int) Bool)

(assert (=> d!1658549 (= (nullableZipper!1057 z!1006) (exists!1514 z!1006 lambda!251967))))

(declare-fun bs!1194124 () Bool)

(assert (= bs!1194124 d!1658549))

(declare-fun m!6191354 () Bool)

(assert (=> bs!1194124 m!6191354))

(assert (=> b!5127322 d!1658549))

(declare-fun d!1658553 () Bool)

(declare-fun lambda!251970 () Int)

(declare-fun forall!13657 (List!59469 Int) Bool)

(assert (=> d!1658553 (= (inv!78847 setElem!30727) (forall!13657 (exprs!4150 setElem!30727) lambda!251970))))

(declare-fun bs!1194125 () Bool)

(assert (= bs!1194125 d!1658553))

(declare-fun m!6191356 () Bool)

(assert (=> bs!1194125 m!6191356))

(assert (=> setNonEmpty!30727 d!1658553))

(declare-fun bs!1194126 () Bool)

(declare-fun d!1658555 () Bool)

(assert (= bs!1194126 (and d!1658555 d!1658549)))

(declare-fun lambda!251983 () Int)

(assert (=> bs!1194126 (not (= lambda!251983 lambda!251967))))

(declare-fun bs!1194127 () Bool)

(declare-fun b!5127346 () Bool)

(assert (= bs!1194127 (and b!5127346 d!1658549)))

(declare-fun lambda!251984 () Int)

(assert (=> bs!1194127 (not (= lambda!251984 lambda!251967))))

(declare-fun bs!1194128 () Bool)

(assert (= bs!1194128 (and b!5127346 d!1658555)))

(assert (=> bs!1194128 (not (= lambda!251984 lambda!251983))))

(declare-fun bs!1194129 () Bool)

(declare-fun b!5127347 () Bool)

(assert (= bs!1194129 (and b!5127347 d!1658549)))

(declare-fun lambda!251985 () Int)

(assert (=> bs!1194129 (not (= lambda!251985 lambda!251967))))

(declare-fun bs!1194130 () Bool)

(assert (= bs!1194130 (and b!5127347 d!1658555)))

(assert (=> bs!1194130 (not (= lambda!251985 lambda!251983))))

(declare-fun bs!1194131 () Bool)

(assert (= bs!1194131 (and b!5127347 b!5127346)))

(assert (=> bs!1194131 (= lambda!251985 lambda!251984)))

(declare-datatypes ((Unit!150531 0))(
  ( (Unit!150532) )
))
(declare-fun e!3197662 () Unit!150531)

(declare-fun Unit!150533 () Unit!150531)

(assert (=> b!5127346 (= e!3197662 Unit!150533)))

(declare-datatypes ((List!59473 0))(
  ( (Nil!59349) (Cons!59349 (h!65797 Context!7300) (t!372500 List!59473)) )
))
(declare-fun lt!2114597 () List!59473)

(declare-fun call!356918 () List!59473)

(assert (=> b!5127346 (= lt!2114597 call!356918)))

(declare-fun lt!2114594 () Unit!150531)

(declare-fun lemmaNotForallThenExists!355 (List!59473 Int) Unit!150531)

(assert (=> b!5127346 (= lt!2114594 (lemmaNotForallThenExists!355 lt!2114597 lambda!251983))))

(declare-fun call!356919 () Bool)

(assert (=> b!5127346 call!356919))

(declare-fun lt!2114593 () Unit!150531)

(assert (=> b!5127346 (= lt!2114593 lt!2114594)))

(declare-fun bm!356913 () Bool)

(declare-fun toList!8283 ((Set Context!7300)) List!59473)

(assert (=> bm!356913 (= call!356918 (toList!8283 z!1006))))

(declare-fun Unit!150534 () Unit!150531)

(assert (=> b!5127347 (= e!3197662 Unit!150534)))

(declare-fun lt!2114599 () List!59473)

(assert (=> b!5127347 (= lt!2114599 call!356918)))

(declare-fun lt!2114600 () Unit!150531)

(declare-fun lemmaForallThenNotExists!338 (List!59473 Int) Unit!150531)

(assert (=> b!5127347 (= lt!2114600 (lemmaForallThenNotExists!338 lt!2114599 lambda!251983))))

(assert (=> b!5127347 (not call!356919)))

(declare-fun lt!2114598 () Unit!150531)

(assert (=> b!5127347 (= lt!2114598 lt!2114600)))

(declare-fun lt!2114595 () Bool)

(declare-datatypes ((Option!14715 0))(
  ( (None!14714) (Some!14714 (v!50727 List!59470)) )
))
(declare-fun isEmpty!31972 (Option!14715) Bool)

(declare-fun getLanguageWitness!844 ((Set Context!7300)) Option!14715)

(assert (=> d!1658555 (= lt!2114595 (isEmpty!31972 (getLanguageWitness!844 z!1006)))))

(declare-fun forall!13658 ((Set Context!7300) Int) Bool)

(assert (=> d!1658555 (= lt!2114595 (forall!13658 z!1006 lambda!251983))))

(declare-fun lt!2114596 () Unit!150531)

(assert (=> d!1658555 (= lt!2114596 e!3197662)))

(declare-fun c!881580 () Bool)

(assert (=> d!1658555 (= c!881580 (not (forall!13658 z!1006 lambda!251983)))))

(assert (=> d!1658555 (= (lostCauseZipper!1144 z!1006) lt!2114595)))

(declare-fun bm!356914 () Bool)

(declare-fun exists!1515 (List!59473 Int) Bool)

(assert (=> bm!356914 (= call!356919 (exists!1515 (ite c!881580 lt!2114597 lt!2114599) (ite c!881580 lambda!251984 lambda!251985)))))

(assert (= (and d!1658555 c!881580) b!5127346))

(assert (= (and d!1658555 (not c!881580)) b!5127347))

(assert (= (or b!5127346 b!5127347) bm!356913))

(assert (= (or b!5127346 b!5127347) bm!356914))

(declare-fun m!6191358 () Bool)

(assert (=> b!5127346 m!6191358))

(declare-fun m!6191360 () Bool)

(assert (=> bm!356914 m!6191360))

(declare-fun m!6191362 () Bool)

(assert (=> b!5127347 m!6191362))

(declare-fun m!6191364 () Bool)

(assert (=> bm!356913 m!6191364))

(declare-fun m!6191366 () Bool)

(assert (=> d!1658555 m!6191366))

(assert (=> d!1658555 m!6191366))

(declare-fun m!6191368 () Bool)

(assert (=> d!1658555 m!6191368))

(declare-fun m!6191370 () Bool)

(assert (=> d!1658555 m!6191370))

(assert (=> d!1658555 m!6191370))

(assert (=> start!541430 d!1658555))

(declare-fun d!1658557 () Bool)

(declare-fun c!881583 () Bool)

(declare-fun isEmpty!31973 (List!59470) Bool)

(assert (=> d!1658557 (= c!881583 (isEmpty!31973 s!2272))))

(declare-fun e!3197665 () Bool)

(assert (=> d!1658557 (= (matchZipper!930 z!1006 s!2272) e!3197665)))

(declare-fun b!5127352 () Bool)

(assert (=> b!5127352 (= e!3197665 (nullableZipper!1057 z!1006))))

(declare-fun b!5127353 () Bool)

(declare-fun derivationStepZipper!875 ((Set Context!7300) C!28798) (Set Context!7300))

(declare-fun head!10966 (List!59470) C!28798)

(declare-fun tail!10101 (List!59470) List!59470)

(assert (=> b!5127353 (= e!3197665 (matchZipper!930 (derivationStepZipper!875 z!1006 (head!10966 s!2272)) (tail!10101 s!2272)))))

(assert (= (and d!1658557 c!881583) b!5127352))

(assert (= (and d!1658557 (not c!881583)) b!5127353))

(declare-fun m!6191372 () Bool)

(assert (=> d!1658557 m!6191372))

(assert (=> b!5127352 m!6191338))

(declare-fun m!6191374 () Bool)

(assert (=> b!5127353 m!6191374))

(assert (=> b!5127353 m!6191374))

(declare-fun m!6191376 () Bool)

(assert (=> b!5127353 m!6191376))

(declare-fun m!6191378 () Bool)

(assert (=> b!5127353 m!6191378))

(assert (=> b!5127353 m!6191376))

(assert (=> b!5127353 m!6191378))

(declare-fun m!6191380 () Bool)

(assert (=> b!5127353 m!6191380))

(assert (=> b!5127325 d!1658557))

(declare-fun b!5127358 () Bool)

(declare-fun e!3197668 () Bool)

(declare-fun tp!1430324 () Bool)

(declare-fun tp!1430325 () Bool)

(assert (=> b!5127358 (= e!3197668 (and tp!1430324 tp!1430325))))

(assert (=> b!5127323 (= tp!1430308 e!3197668)))

(assert (= (and b!5127323 (is-Cons!59345 (exprs!4150 setElem!30727))) b!5127358))

(declare-fun condSetEmpty!30733 () Bool)

(assert (=> setNonEmpty!30727 (= condSetEmpty!30733 (= setRest!30727 (as set.empty (Set Context!7300))))))

(declare-fun setRes!30733 () Bool)

(assert (=> setNonEmpty!30727 (= tp!1430310 setRes!30733)))

(declare-fun setIsEmpty!30733 () Bool)

(assert (=> setIsEmpty!30733 setRes!30733))

(declare-fun setElem!30733 () Context!7300)

(declare-fun tp!1430330 () Bool)

(declare-fun e!3197671 () Bool)

(declare-fun setNonEmpty!30733 () Bool)

(assert (=> setNonEmpty!30733 (= setRes!30733 (and tp!1430330 (inv!78847 setElem!30733) e!3197671))))

(declare-fun setRest!30733 () (Set Context!7300))

(assert (=> setNonEmpty!30733 (= setRest!30727 (set.union (set.insert setElem!30733 (as set.empty (Set Context!7300))) setRest!30733))))

(declare-fun b!5127363 () Bool)

(declare-fun tp!1430331 () Bool)

(assert (=> b!5127363 (= e!3197671 tp!1430331)))

(assert (= (and setNonEmpty!30727 condSetEmpty!30733) setIsEmpty!30733))

(assert (= (and setNonEmpty!30727 (not condSetEmpty!30733)) setNonEmpty!30733))

(assert (= setNonEmpty!30733 b!5127363))

(declare-fun m!6191382 () Bool)

(assert (=> setNonEmpty!30733 m!6191382))

(declare-fun b!5127368 () Bool)

(declare-fun e!3197674 () Bool)

(declare-fun tp!1430334 () Bool)

(assert (=> b!5127368 (= e!3197674 (and tp_is_empty!37801 tp!1430334))))

(assert (=> b!5127324 (= tp!1430309 e!3197674)))

(assert (= (and b!5127324 (is-Cons!59346 (t!372497 s!2272))) b!5127368))

(push 1)

(assert (not d!1658553))

(assert (not d!1658557))

(assert (not b!5127368))

(assert (not b!5127346))

(assert tp_is_empty!37801)

(assert (not setNonEmpty!30733))

(assert (not b!5127358))

(assert (not b!5127352))

(assert (not d!1658549))

(assert (not b!5127363))

(assert (not b!5127353))

(assert (not b!5127347))

(assert (not bm!356914))

(assert (not d!1658555))

(assert (not bm!356913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194140 () Bool)

(declare-fun d!1658565 () Bool)

(assert (= bs!1194140 (and d!1658565 d!1658549)))

(declare-fun lambda!252009 () Int)

(assert (=> bs!1194140 (not (= lambda!252009 lambda!251967))))

(declare-fun bs!1194141 () Bool)

(assert (= bs!1194141 (and d!1658565 d!1658555)))

(assert (=> bs!1194141 (not (= lambda!252009 lambda!251983))))

(declare-fun bs!1194142 () Bool)

(assert (= bs!1194142 (and d!1658565 b!5127346)))

(assert (=> bs!1194142 (not (= lambda!252009 lambda!251984))))

(declare-fun bs!1194143 () Bool)

(assert (= bs!1194143 (and d!1658565 b!5127347)))

(assert (=> bs!1194143 (not (= lambda!252009 lambda!251985))))

(assert (=> d!1658565 true))

(declare-fun order!26807 () Int)

(declare-fun dynLambda!23620 (Int Int) Int)

(assert (=> d!1658565 (< (dynLambda!23620 order!26807 lambda!251983) (dynLambda!23620 order!26807 lambda!252009))))

(assert (=> d!1658565 (exists!1515 lt!2114597 lambda!252009)))

(declare-fun lt!2114627 () Unit!150531)

(declare-fun choose!37757 (List!59473 Int) Unit!150531)

(assert (=> d!1658565 (= lt!2114627 (choose!37757 lt!2114597 lambda!251983))))

(declare-fun forall!13661 (List!59473 Int) Bool)

(assert (=> d!1658565 (not (forall!13661 lt!2114597 lambda!251983))))

(assert (=> d!1658565 (= (lemmaNotForallThenExists!355 lt!2114597 lambda!251983) lt!2114627)))

(declare-fun bs!1194144 () Bool)

(assert (= bs!1194144 d!1658565))

(declare-fun m!6191414 () Bool)

(assert (=> bs!1194144 m!6191414))

(declare-fun m!6191416 () Bool)

(assert (=> bs!1194144 m!6191416))

(declare-fun m!6191418 () Bool)

(assert (=> bs!1194144 m!6191418))

(assert (=> b!5127346 d!1658565))

(declare-fun d!1658567 () Bool)

(declare-fun lt!2114630 () Bool)

(assert (=> d!1658567 (= lt!2114630 (exists!1515 (toList!8283 z!1006) lambda!251967))))

(declare-fun choose!37758 ((Set Context!7300) Int) Bool)

(assert (=> d!1658567 (= lt!2114630 (choose!37758 z!1006 lambda!251967))))

(assert (=> d!1658567 (= (exists!1514 z!1006 lambda!251967) lt!2114630)))

(declare-fun bs!1194145 () Bool)

(assert (= bs!1194145 d!1658567))

(assert (=> bs!1194145 m!6191364))

(assert (=> bs!1194145 m!6191364))

(declare-fun m!6191420 () Bool)

(assert (=> bs!1194145 m!6191420))

(declare-fun m!6191422 () Bool)

(assert (=> bs!1194145 m!6191422))

(assert (=> d!1658549 d!1658567))

(declare-fun bs!1194146 () Bool)

(declare-fun d!1658569 () Bool)

(assert (= bs!1194146 (and d!1658569 b!5127346)))

(declare-fun lambda!252012 () Int)

(assert (=> bs!1194146 (not (= lambda!252012 lambda!251984))))

(declare-fun bs!1194147 () Bool)

(assert (= bs!1194147 (and d!1658569 d!1658555)))

(assert (=> bs!1194147 (not (= lambda!252012 lambda!251983))))

(declare-fun bs!1194148 () Bool)

(assert (= bs!1194148 (and d!1658569 d!1658549)))

(assert (=> bs!1194148 (not (= lambda!252012 lambda!251967))))

(declare-fun bs!1194149 () Bool)

(assert (= bs!1194149 (and d!1658569 d!1658565)))

(assert (=> bs!1194149 (= lambda!252012 lambda!252009)))

(declare-fun bs!1194150 () Bool)

(assert (= bs!1194150 (and d!1658569 b!5127347)))

(assert (=> bs!1194150 (not (= lambda!252012 lambda!251985))))

(assert (=> d!1658569 true))

(assert (=> d!1658569 (< (dynLambda!23620 order!26807 lambda!251983) (dynLambda!23620 order!26807 lambda!252012))))

(assert (=> d!1658569 (not (exists!1515 lt!2114599 lambda!252012))))

(declare-fun lt!2114633 () Unit!150531)

(declare-fun choose!37759 (List!59473 Int) Unit!150531)

(assert (=> d!1658569 (= lt!2114633 (choose!37759 lt!2114599 lambda!251983))))

(assert (=> d!1658569 (forall!13661 lt!2114599 lambda!251983)))

(assert (=> d!1658569 (= (lemmaForallThenNotExists!338 lt!2114599 lambda!251983) lt!2114633)))

(declare-fun bs!1194151 () Bool)

(assert (= bs!1194151 d!1658569))

(declare-fun m!6191424 () Bool)

(assert (=> bs!1194151 m!6191424))

(declare-fun m!6191426 () Bool)

(assert (=> bs!1194151 m!6191426))

(declare-fun m!6191428 () Bool)

(assert (=> bs!1194151 m!6191428))

(assert (=> b!5127347 d!1658569))

(declare-fun d!1658571 () Bool)

(declare-fun c!881600 () Bool)

(assert (=> d!1658571 (= c!881600 (isEmpty!31973 (tail!10101 s!2272)))))

(declare-fun e!3197698 () Bool)

(assert (=> d!1658571 (= (matchZipper!930 (derivationStepZipper!875 z!1006 (head!10966 s!2272)) (tail!10101 s!2272)) e!3197698)))

(declare-fun b!5127398 () Bool)

(assert (=> b!5127398 (= e!3197698 (nullableZipper!1057 (derivationStepZipper!875 z!1006 (head!10966 s!2272))))))

(declare-fun b!5127399 () Bool)

(assert (=> b!5127399 (= e!3197698 (matchZipper!930 (derivationStepZipper!875 (derivationStepZipper!875 z!1006 (head!10966 s!2272)) (head!10966 (tail!10101 s!2272))) (tail!10101 (tail!10101 s!2272))))))

(assert (= (and d!1658571 c!881600) b!5127398))

(assert (= (and d!1658571 (not c!881600)) b!5127399))

(assert (=> d!1658571 m!6191378))

(declare-fun m!6191430 () Bool)

(assert (=> d!1658571 m!6191430))

(assert (=> b!5127398 m!6191376))

(declare-fun m!6191432 () Bool)

(assert (=> b!5127398 m!6191432))

(assert (=> b!5127399 m!6191378))

(declare-fun m!6191434 () Bool)

(assert (=> b!5127399 m!6191434))

(assert (=> b!5127399 m!6191376))

(assert (=> b!5127399 m!6191434))

(declare-fun m!6191436 () Bool)

(assert (=> b!5127399 m!6191436))

(assert (=> b!5127399 m!6191378))

(declare-fun m!6191438 () Bool)

(assert (=> b!5127399 m!6191438))

(assert (=> b!5127399 m!6191436))

(assert (=> b!5127399 m!6191438))

(declare-fun m!6191440 () Bool)

(assert (=> b!5127399 m!6191440))

(assert (=> b!5127353 d!1658571))

(declare-fun d!1658573 () Bool)

(assert (=> d!1658573 true))

(declare-fun lambda!252015 () Int)

(declare-fun flatMap!372 ((Set Context!7300) Int) (Set Context!7300))

(assert (=> d!1658573 (= (derivationStepZipper!875 z!1006 (head!10966 s!2272)) (flatMap!372 z!1006 lambda!252015))))

(declare-fun bs!1194152 () Bool)

(assert (= bs!1194152 d!1658573))

(declare-fun m!6191442 () Bool)

(assert (=> bs!1194152 m!6191442))

(assert (=> b!5127353 d!1658573))

(declare-fun d!1658575 () Bool)

(assert (=> d!1658575 (= (head!10966 s!2272) (h!65794 s!2272))))

(assert (=> b!5127353 d!1658575))

(declare-fun d!1658577 () Bool)

(assert (=> d!1658577 (= (tail!10101 s!2272) (t!372497 s!2272))))

(assert (=> b!5127353 d!1658577))

(declare-fun d!1658579 () Bool)

(assert (=> d!1658579 (= (isEmpty!31973 s!2272) (is-Nil!59346 s!2272))))

(assert (=> d!1658557 d!1658579))

(assert (=> b!5127352 d!1658549))

(declare-fun bs!1194153 () Bool)

(declare-fun d!1658581 () Bool)

(assert (= bs!1194153 (and d!1658581 d!1658553)))

(declare-fun lambda!252016 () Int)

(assert (=> bs!1194153 (= lambda!252016 lambda!251970)))

(assert (=> d!1658581 (= (inv!78847 setElem!30733) (forall!13657 (exprs!4150 setElem!30733) lambda!252016))))

(declare-fun bs!1194154 () Bool)

(assert (= bs!1194154 d!1658581))

(declare-fun m!6191444 () Bool)

(assert (=> bs!1194154 m!6191444))

(assert (=> setNonEmpty!30733 d!1658581))

(declare-fun d!1658583 () Bool)

(assert (=> d!1658583 (= (isEmpty!31972 (getLanguageWitness!844 z!1006)) (not (is-Some!14714 (getLanguageWitness!844 z!1006))))))

(assert (=> d!1658555 d!1658583))

(declare-fun bs!1194155 () Bool)

(declare-fun d!1658585 () Bool)

(assert (= bs!1194155 (and d!1658585 b!5127346)))

(declare-fun lambda!252023 () Int)

(assert (=> bs!1194155 (= lambda!252023 lambda!251984)))

(declare-fun bs!1194156 () Bool)

(assert (= bs!1194156 (and d!1658585 d!1658569)))

(assert (=> bs!1194156 (not (= lambda!252023 lambda!252012))))

(declare-fun bs!1194157 () Bool)

(assert (= bs!1194157 (and d!1658585 d!1658555)))

(assert (=> bs!1194157 (not (= lambda!252023 lambda!251983))))

(declare-fun bs!1194158 () Bool)

(assert (= bs!1194158 (and d!1658585 d!1658549)))

(assert (=> bs!1194158 (not (= lambda!252023 lambda!251967))))

(declare-fun bs!1194159 () Bool)

(assert (= bs!1194159 (and d!1658585 d!1658565)))

(assert (=> bs!1194159 (not (= lambda!252023 lambda!252009))))

(declare-fun bs!1194160 () Bool)

(assert (= bs!1194160 (and d!1658585 b!5127347)))

(assert (=> bs!1194160 (= lambda!252023 lambda!251985)))

(declare-fun lt!2114636 () Option!14715)

(declare-fun isDefined!11519 (Option!14715) Bool)

(assert (=> d!1658585 (= (isDefined!11519 lt!2114636) (exists!1514 z!1006 lambda!252023))))

(declare-fun e!3197701 () Option!14715)

(assert (=> d!1658585 (= lt!2114636 e!3197701)))

(declare-fun c!881611 () Bool)

(assert (=> d!1658585 (= c!881611 (exists!1514 z!1006 lambda!252023))))

(assert (=> d!1658585 (= (getLanguageWitness!844 z!1006) lt!2114636)))

(declare-fun b!5127406 () Bool)

(declare-fun getLanguageWitness!846 (Context!7300) Option!14715)

(declare-fun getWitness!682 ((Set Context!7300) Int) Context!7300)

(assert (=> b!5127406 (= e!3197701 (getLanguageWitness!846 (getWitness!682 z!1006 lambda!252023)))))

(declare-fun b!5127407 () Bool)

(assert (=> b!5127407 (= e!3197701 None!14714)))

(assert (= (and d!1658585 c!881611) b!5127406))

(assert (= (and d!1658585 (not c!881611)) b!5127407))

(declare-fun m!6191446 () Bool)

(assert (=> d!1658585 m!6191446))

(declare-fun m!6191448 () Bool)

(assert (=> d!1658585 m!6191448))

(assert (=> d!1658585 m!6191448))

(declare-fun m!6191450 () Bool)

(assert (=> b!5127406 m!6191450))

(assert (=> b!5127406 m!6191450))

(declare-fun m!6191452 () Bool)

(assert (=> b!5127406 m!6191452))

(assert (=> d!1658555 d!1658585))

(declare-fun d!1658587 () Bool)

(declare-fun lt!2114639 () Bool)

(assert (=> d!1658587 (= lt!2114639 (forall!13661 (toList!8283 z!1006) lambda!251983))))

(declare-fun choose!37760 ((Set Context!7300) Int) Bool)

(assert (=> d!1658587 (= lt!2114639 (choose!37760 z!1006 lambda!251983))))

(assert (=> d!1658587 (= (forall!13658 z!1006 lambda!251983) lt!2114639)))

(declare-fun bs!1194161 () Bool)

(assert (= bs!1194161 d!1658587))

(assert (=> bs!1194161 m!6191364))

(assert (=> bs!1194161 m!6191364))

(declare-fun m!6191454 () Bool)

(assert (=> bs!1194161 m!6191454))

(declare-fun m!6191456 () Bool)

(assert (=> bs!1194161 m!6191456))

(assert (=> d!1658555 d!1658587))

(declare-fun d!1658589 () Bool)

(declare-fun res!2183089 () Bool)

(declare-fun e!3197706 () Bool)

(assert (=> d!1658589 (=> res!2183089 e!3197706)))

(assert (=> d!1658589 (= res!2183089 (is-Nil!59345 (exprs!4150 setElem!30727)))))

(assert (=> d!1658589 (= (forall!13657 (exprs!4150 setElem!30727) lambda!251970) e!3197706)))

(declare-fun b!5127412 () Bool)

(declare-fun e!3197707 () Bool)

(assert (=> b!5127412 (= e!3197706 e!3197707)))

(declare-fun res!2183090 () Bool)

(assert (=> b!5127412 (=> (not res!2183090) (not e!3197707))))

(declare-fun dynLambda!23621 (Int Regex!14266) Bool)

(assert (=> b!5127412 (= res!2183090 (dynLambda!23621 lambda!251970 (h!65793 (exprs!4150 setElem!30727))))))

(declare-fun b!5127413 () Bool)

(assert (=> b!5127413 (= e!3197707 (forall!13657 (t!372496 (exprs!4150 setElem!30727)) lambda!251970))))

(assert (= (and d!1658589 (not res!2183089)) b!5127412))

(assert (= (and b!5127412 res!2183090) b!5127413))

(declare-fun b_lambda!199081 () Bool)

(assert (=> (not b_lambda!199081) (not b!5127412)))

(declare-fun m!6191458 () Bool)

(assert (=> b!5127412 m!6191458))

(declare-fun m!6191460 () Bool)

(assert (=> b!5127413 m!6191460))

(assert (=> d!1658553 d!1658589))

(declare-fun d!1658591 () Bool)

(declare-fun e!3197710 () Bool)

(assert (=> d!1658591 e!3197710))

(declare-fun res!2183093 () Bool)

(assert (=> d!1658591 (=> (not res!2183093) (not e!3197710))))

(declare-fun lt!2114642 () List!59473)

(declare-fun noDuplicate!1083 (List!59473) Bool)

(assert (=> d!1658591 (= res!2183093 (noDuplicate!1083 lt!2114642))))

(declare-fun choose!37761 ((Set Context!7300)) List!59473)

(assert (=> d!1658591 (= lt!2114642 (choose!37761 z!1006))))

(assert (=> d!1658591 (= (toList!8283 z!1006) lt!2114642)))

(declare-fun b!5127416 () Bool)

(declare-fun content!10554 (List!59473) (Set Context!7300))

(assert (=> b!5127416 (= e!3197710 (= (content!10554 lt!2114642) z!1006))))

(assert (= (and d!1658591 res!2183093) b!5127416))

(declare-fun m!6191462 () Bool)

(assert (=> d!1658591 m!6191462))

(declare-fun m!6191464 () Bool)

(assert (=> d!1658591 m!6191464))

(declare-fun m!6191466 () Bool)

(assert (=> b!5127416 m!6191466))

(assert (=> bm!356913 d!1658591))

(declare-fun bs!1194162 () Bool)

(declare-fun d!1658593 () Bool)

(assert (= bs!1194162 (and d!1658593 d!1658585)))

(declare-fun lambda!252026 () Int)

(assert (=> bs!1194162 (not (= lambda!252026 lambda!252023))))

(declare-fun bs!1194163 () Bool)

(assert (= bs!1194163 (and d!1658593 b!5127346)))

(assert (=> bs!1194163 (not (= lambda!252026 lambda!251984))))

(declare-fun bs!1194164 () Bool)

(assert (= bs!1194164 (and d!1658593 d!1658569)))

(assert (=> bs!1194164 (= (= (ite c!881580 lambda!251984 lambda!251985) lambda!251983) (= lambda!252026 lambda!252012))))

(declare-fun bs!1194165 () Bool)

(assert (= bs!1194165 (and d!1658593 d!1658555)))

(assert (=> bs!1194165 (not (= lambda!252026 lambda!251983))))

(declare-fun bs!1194166 () Bool)

(assert (= bs!1194166 (and d!1658593 d!1658549)))

(assert (=> bs!1194166 (not (= lambda!252026 lambda!251967))))

(declare-fun bs!1194167 () Bool)

(assert (= bs!1194167 (and d!1658593 d!1658565)))

(assert (=> bs!1194167 (= (= (ite c!881580 lambda!251984 lambda!251985) lambda!251983) (= lambda!252026 lambda!252009))))

(declare-fun bs!1194168 () Bool)

(assert (= bs!1194168 (and d!1658593 b!5127347)))

(assert (=> bs!1194168 (not (= lambda!252026 lambda!251985))))

(assert (=> d!1658593 true))

(assert (=> d!1658593 (< (dynLambda!23620 order!26807 (ite c!881580 lambda!251984 lambda!251985)) (dynLambda!23620 order!26807 lambda!252026))))

(assert (=> d!1658593 (= (exists!1515 (ite c!881580 lt!2114597 lt!2114599) (ite c!881580 lambda!251984 lambda!251985)) (not (forall!13661 (ite c!881580 lt!2114597 lt!2114599) lambda!252026)))))

(declare-fun bs!1194169 () Bool)

(assert (= bs!1194169 d!1658593))

(declare-fun m!6191468 () Bool)

(assert (=> bs!1194169 m!6191468))

(assert (=> bm!356914 d!1658593))

(declare-fun b!5127417 () Bool)

(declare-fun e!3197711 () Bool)

(declare-fun tp!1430350 () Bool)

(declare-fun tp!1430351 () Bool)

(assert (=> b!5127417 (= e!3197711 (and tp!1430350 tp!1430351))))

(assert (=> b!5127363 (= tp!1430331 e!3197711)))

(assert (= (and b!5127363 (is-Cons!59345 (exprs!4150 setElem!30733))) b!5127417))

(declare-fun condSetEmpty!30737 () Bool)

(assert (=> setNonEmpty!30733 (= condSetEmpty!30737 (= setRest!30733 (as set.empty (Set Context!7300))))))

(declare-fun setRes!30737 () Bool)

(assert (=> setNonEmpty!30733 (= tp!1430330 setRes!30737)))

(declare-fun setIsEmpty!30737 () Bool)

(assert (=> setIsEmpty!30737 setRes!30737))

(declare-fun e!3197712 () Bool)

(declare-fun setElem!30737 () Context!7300)

(declare-fun tp!1430352 () Bool)

(declare-fun setNonEmpty!30737 () Bool)

(assert (=> setNonEmpty!30737 (= setRes!30737 (and tp!1430352 (inv!78847 setElem!30737) e!3197712))))

(declare-fun setRest!30737 () (Set Context!7300))

(assert (=> setNonEmpty!30737 (= setRest!30733 (set.union (set.insert setElem!30737 (as set.empty (Set Context!7300))) setRest!30737))))

(declare-fun b!5127418 () Bool)

(declare-fun tp!1430353 () Bool)

(assert (=> b!5127418 (= e!3197712 tp!1430353)))

(assert (= (and setNonEmpty!30733 condSetEmpty!30737) setIsEmpty!30737))

(assert (= (and setNonEmpty!30733 (not condSetEmpty!30737)) setNonEmpty!30737))

(assert (= setNonEmpty!30737 b!5127418))

(declare-fun m!6191470 () Bool)

(assert (=> setNonEmpty!30737 m!6191470))

(declare-fun b!5127419 () Bool)

(declare-fun e!3197713 () Bool)

(declare-fun tp!1430354 () Bool)

(assert (=> b!5127419 (= e!3197713 (and tp_is_empty!37801 tp!1430354))))

(assert (=> b!5127368 (= tp!1430334 e!3197713)))

(assert (= (and b!5127368 (is-Cons!59346 (t!372497 (t!372497 s!2272)))) b!5127419))

(declare-fun b!5127433 () Bool)

(declare-fun e!3197716 () Bool)

(declare-fun tp!1430367 () Bool)

(declare-fun tp!1430369 () Bool)

(assert (=> b!5127433 (= e!3197716 (and tp!1430367 tp!1430369))))

(assert (=> b!5127358 (= tp!1430324 e!3197716)))

(declare-fun b!5127430 () Bool)

(assert (=> b!5127430 (= e!3197716 tp_is_empty!37801)))

(declare-fun b!5127432 () Bool)

(declare-fun tp!1430365 () Bool)

(assert (=> b!5127432 (= e!3197716 tp!1430365)))

(declare-fun b!5127431 () Bool)

(declare-fun tp!1430368 () Bool)

(declare-fun tp!1430366 () Bool)

(assert (=> b!5127431 (= e!3197716 (and tp!1430368 tp!1430366))))

(assert (= (and b!5127358 (is-ElementMatch!14266 (h!65793 (exprs!4150 setElem!30727)))) b!5127430))

(assert (= (and b!5127358 (is-Concat!23111 (h!65793 (exprs!4150 setElem!30727)))) b!5127431))

(assert (= (and b!5127358 (is-Star!14266 (h!65793 (exprs!4150 setElem!30727)))) b!5127432))

(assert (= (and b!5127358 (is-Union!14266 (h!65793 (exprs!4150 setElem!30727)))) b!5127433))

(declare-fun b!5127434 () Bool)

(declare-fun e!3197717 () Bool)

(declare-fun tp!1430370 () Bool)

(declare-fun tp!1430371 () Bool)

(assert (=> b!5127434 (= e!3197717 (and tp!1430370 tp!1430371))))

(assert (=> b!5127358 (= tp!1430325 e!3197717)))

(assert (= (and b!5127358 (is-Cons!59345 (t!372496 (exprs!4150 setElem!30727)))) b!5127434))

(declare-fun b_lambda!199083 () Bool)

(assert (= b_lambda!199081 (or d!1658553 b_lambda!199083)))

(declare-fun bs!1194170 () Bool)

(declare-fun d!1658595 () Bool)

(assert (= bs!1194170 (and d!1658595 d!1658553)))

(declare-fun validRegex!6220 (Regex!14266) Bool)

(assert (=> bs!1194170 (= (dynLambda!23621 lambda!251970 (h!65793 (exprs!4150 setElem!30727))) (validRegex!6220 (h!65793 (exprs!4150 setElem!30727))))))

(declare-fun m!6191472 () Bool)

(assert (=> bs!1194170 m!6191472))

(assert (=> b!5127412 d!1658595))

(push 1)

(assert (not b!5127419))

(assert (not b!5127418))

(assert (not b_lambda!199083))

(assert (not d!1658593))

(assert (not b!5127413))

(assert (not d!1658571))

(assert (not b!5127406))

(assert tp_is_empty!37801)

(assert (not b!5127398))

(assert (not b!5127433))

(assert (not setNonEmpty!30737))

(assert (not d!1658591))

(assert (not b!5127399))

(assert (not d!1658587))

(assert (not b!5127416))

(assert (not b!5127417))

(assert (not b!5127431))

(assert (not d!1658581))

(assert (not d!1658569))

(assert (not b!5127432))

(assert (not d!1658573))

(assert (not b!5127434))

(assert (not d!1658565))

(assert (not d!1658585))

(assert (not d!1658567))

(assert (not bs!1194170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

