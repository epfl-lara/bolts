; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744724 () Bool)

(assert start!744724)

(declare-datatypes ((C!42766 0))(
  ( (C!42767 (val!31845 Int)) )
))
(declare-datatypes ((Regex!21220 0))(
  ( (ElementMatch!21220 (c!1449344 C!42766)) (Concat!30065 (regOne!42952 Regex!21220) (regTwo!42952 Regex!21220)) (EmptyExpr!21220) (Star!21220 (reg!21549 Regex!21220)) (EmptyLang!21220) (Union!21220 (regOne!42953 Regex!21220) (regTwo!42953 Regex!21220)) )
))
(declare-datatypes ((List!74079 0))(
  ( (Nil!73955) (Cons!73955 (h!80403 Regex!21220) (t!388814 List!74079)) )
))
(declare-datatypes ((Context!17072 0))(
  ( (Context!17073 (exprs!9036 List!74079)) )
))
(declare-datatypes ((List!74080 0))(
  ( (Nil!73956) (Cons!73956 (h!80404 Context!17072) (t!388815 List!74080)) )
))
(declare-fun zl!157 () List!74080)

(declare-fun lambda!472246 () Int)

(declare-fun forall!18421 (List!74079 Int) Bool)

(declare-fun unfocusZipperList!2341 (List!74080) List!74079)

(assert (=> start!744724 (not (forall!18421 (unfocusZipperList!2341 zl!157) lambda!472246))))

(declare-fun e!4660706 () Bool)

(assert (=> start!744724 e!4660706))

(declare-fun b!7896450 () Bool)

(declare-fun e!4660707 () Bool)

(declare-fun tp!2352467 () Bool)

(assert (=> b!7896450 (= e!4660707 tp!2352467)))

(declare-fun b!7896449 () Bool)

(declare-fun tp!2352468 () Bool)

(declare-fun inv!94941 (Context!17072) Bool)

(assert (=> b!7896449 (= e!4660706 (and (inv!94941 (h!80404 zl!157)) e!4660707 tp!2352468))))

(assert (= b!7896449 b!7896450))

(assert (= (and start!744724 (is-Cons!73956 zl!157)) b!7896449))

(declare-fun m!8272012 () Bool)

(assert (=> start!744724 m!8272012))

(assert (=> start!744724 m!8272012))

(declare-fun m!8272014 () Bool)

(assert (=> start!744724 m!8272014))

(declare-fun m!8272016 () Bool)

(assert (=> b!7896449 m!8272016))

(push 1)

(assert (not start!744724))

(assert (not b!7896449))

(assert (not b!7896450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2357441 () Bool)

(declare-fun res!3132433 () Bool)

(declare-fun e!4660718 () Bool)

(assert (=> d!2357441 (=> res!3132433 e!4660718)))

(assert (=> d!2357441 (= res!3132433 (is-Nil!73955 (unfocusZipperList!2341 zl!157)))))

(assert (=> d!2357441 (= (forall!18421 (unfocusZipperList!2341 zl!157) lambda!472246) e!4660718)))

(declare-fun b!7896461 () Bool)

(declare-fun e!4660719 () Bool)

(assert (=> b!7896461 (= e!4660718 e!4660719)))

(declare-fun res!3132434 () Bool)

(assert (=> b!7896461 (=> (not res!3132434) (not e!4660719))))

(declare-fun dynLambda!30005 (Int Regex!21220) Bool)

(assert (=> b!7896461 (= res!3132434 (dynLambda!30005 lambda!472246 (h!80403 (unfocusZipperList!2341 zl!157))))))

(declare-fun b!7896462 () Bool)

(assert (=> b!7896462 (= e!4660719 (forall!18421 (t!388814 (unfocusZipperList!2341 zl!157)) lambda!472246))))

(assert (= (and d!2357441 (not res!3132433)) b!7896461))

(assert (= (and b!7896461 res!3132434) b!7896462))

(declare-fun b_lambda!289523 () Bool)

(assert (=> (not b_lambda!289523) (not b!7896461)))

(declare-fun m!8272024 () Bool)

(assert (=> b!7896461 m!8272024))

(declare-fun m!8272026 () Bool)

(assert (=> b!7896462 m!8272026))

(assert (=> start!744724 d!2357441))

(declare-fun bs!1967747 () Bool)

(declare-fun d!2357443 () Bool)

(assert (= bs!1967747 (and d!2357443 start!744724)))

(declare-fun lambda!472252 () Int)

(assert (=> bs!1967747 (= lambda!472252 lambda!472246)))

(declare-fun lt!2681690 () List!74079)

(assert (=> d!2357443 (forall!18421 lt!2681690 lambda!472252)))

(declare-fun e!4660722 () List!74079)

(assert (=> d!2357443 (= lt!2681690 e!4660722)))

(declare-fun c!1449348 () Bool)

(assert (=> d!2357443 (= c!1449348 (is-Cons!73956 zl!157))))

(assert (=> d!2357443 (= (unfocusZipperList!2341 zl!157) lt!2681690)))

(declare-fun b!7896467 () Bool)

(declare-fun generalisedConcat!2471 (List!74079) Regex!21220)

(assert (=> b!7896467 (= e!4660722 (Cons!73955 (generalisedConcat!2471 (exprs!9036 (h!80404 zl!157))) (unfocusZipperList!2341 (t!388815 zl!157))))))

(declare-fun b!7896468 () Bool)

(assert (=> b!7896468 (= e!4660722 Nil!73955)))

(assert (= (and d!2357443 c!1449348) b!7896467))

(assert (= (and d!2357443 (not c!1449348)) b!7896468))

(declare-fun m!8272028 () Bool)

(assert (=> d!2357443 m!8272028))

(declare-fun m!8272030 () Bool)

(assert (=> b!7896467 m!8272030))

(declare-fun m!8272032 () Bool)

(assert (=> b!7896467 m!8272032))

(assert (=> start!744724 d!2357443))

(declare-fun bs!1967748 () Bool)

(declare-fun d!2357445 () Bool)

(assert (= bs!1967748 (and d!2357445 start!744724)))

(declare-fun lambda!472255 () Int)

(assert (=> bs!1967748 (= lambda!472255 lambda!472246)))

(declare-fun bs!1967749 () Bool)

(assert (= bs!1967749 (and d!2357445 d!2357443)))

(assert (=> bs!1967749 (= lambda!472255 lambda!472252)))

(assert (=> d!2357445 (= (inv!94941 (h!80404 zl!157)) (forall!18421 (exprs!9036 (h!80404 zl!157)) lambda!472255))))

(declare-fun bs!1967750 () Bool)

(assert (= bs!1967750 d!2357445))

(declare-fun m!8272034 () Bool)

(assert (=> bs!1967750 m!8272034))

(assert (=> b!7896449 d!2357445))

(declare-fun b!7896473 () Bool)

(declare-fun e!4660725 () Bool)

(declare-fun tp!2352479 () Bool)

(declare-fun tp!2352480 () Bool)

(assert (=> b!7896473 (= e!4660725 (and tp!2352479 tp!2352480))))

(assert (=> b!7896450 (= tp!2352467 e!4660725)))

(assert (= (and b!7896450 (is-Cons!73955 (exprs!9036 (h!80404 zl!157)))) b!7896473))

(declare-fun b!7896483 () Bool)

(declare-fun e!4660733 () Bool)

(declare-fun tp!2352485 () Bool)

(assert (=> b!7896483 (= e!4660733 tp!2352485)))

(declare-fun b!7896482 () Bool)

(declare-fun tp!2352486 () Bool)

(declare-fun e!4660732 () Bool)

(assert (=> b!7896482 (= e!4660732 (and (inv!94941 (h!80404 (t!388815 zl!157))) e!4660733 tp!2352486))))

(assert (=> b!7896449 (= tp!2352468 e!4660732)))

(assert (= b!7896482 b!7896483))

(assert (= (and b!7896449 (is-Cons!73956 (t!388815 zl!157))) b!7896482))

(declare-fun m!8272036 () Bool)

(assert (=> b!7896482 m!8272036))

(declare-fun b_lambda!289525 () Bool)

(assert (= b_lambda!289523 (or start!744724 b_lambda!289525)))

(declare-fun bs!1967751 () Bool)

(declare-fun d!2357449 () Bool)

(assert (= bs!1967751 (and d!2357449 start!744724)))

(declare-fun validRegex!11630 (Regex!21220) Bool)

(assert (=> bs!1967751 (= (dynLambda!30005 lambda!472246 (h!80403 (unfocusZipperList!2341 zl!157))) (validRegex!11630 (h!80403 (unfocusZipperList!2341 zl!157))))))

(declare-fun m!8272038 () Bool)

(assert (=> bs!1967751 m!8272038))

(assert (=> b!7896461 d!2357449))

(push 1)

(assert (not b!7896482))

(assert (not d!2357443))

(assert (not b!7896467))

(assert (not b!7896483))

(assert (not d!2357445))

(assert (not bs!1967751))

(assert (not b_lambda!289525))

(assert (not b!7896462))

(assert (not b!7896473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

