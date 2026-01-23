; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744760 () Bool)

(assert start!744760)

(declare-fun res!3132485 () Bool)

(declare-fun e!4660871 () Bool)

(assert (=> start!744760 (=> (not res!3132485) (not e!4660871))))

(declare-datatypes ((C!42774 0))(
  ( (C!42775 (val!31849 Int)) )
))
(declare-datatypes ((Regex!21224 0))(
  ( (ElementMatch!21224 (c!1449396 C!42774)) (Concat!30069 (regOne!42960 Regex!21224) (regTwo!42960 Regex!21224)) (EmptyExpr!21224) (Star!21224 (reg!21553 Regex!21224)) (EmptyLang!21224) (Union!21224 (regOne!42961 Regex!21224) (regTwo!42961 Regex!21224)) )
))
(declare-datatypes ((List!74087 0))(
  ( (Nil!73963) (Cons!73963 (h!80411 Regex!21224) (t!388822 List!74087)) )
))
(declare-datatypes ((Context!17080 0))(
  ( (Context!17081 (exprs!9040 List!74087)) )
))
(declare-datatypes ((List!74088 0))(
  ( (Nil!73964) (Cons!73964 (h!80412 Context!17080) (t!388823 List!74088)) )
))
(declare-fun zl!160 () List!74088)

(assert (=> start!744760 (= res!3132485 (is-Cons!73964 zl!160))))

(assert (=> start!744760 e!4660871))

(declare-fun e!4660870 () Bool)

(assert (=> start!744760 e!4660870))

(declare-fun b!7896677 () Bool)

(declare-fun lambda!472282 () Int)

(declare-fun forall!18425 (List!74087 Int) Bool)

(assert (=> b!7896677 (= e!4660871 (not (forall!18425 (exprs!9040 (h!80412 zl!160)) lambda!472282)))))

(declare-fun b!7896679 () Bool)

(declare-fun e!4660872 () Bool)

(declare-fun tp!2352539 () Bool)

(assert (=> b!7896679 (= e!4660872 tp!2352539)))

(declare-fun b!7896678 () Bool)

(declare-fun tp!2352540 () Bool)

(declare-fun inv!94951 (Context!17080) Bool)

(assert (=> b!7896678 (= e!4660870 (and (inv!94951 (h!80412 zl!160)) e!4660872 tp!2352540))))

(assert (= (and start!744760 res!3132485) b!7896677))

(assert (= b!7896678 b!7896679))

(assert (= (and start!744760 (is-Cons!73964 zl!160)) b!7896678))

(declare-fun m!8272138 () Bool)

(assert (=> b!7896677 m!8272138))

(declare-fun m!8272140 () Bool)

(assert (=> b!7896678 m!8272140))

(push 1)

(assert (not b!7896678))

(assert (not b!7896677))

(assert (not b!7896679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1967767 () Bool)

(declare-fun d!2357473 () Bool)

(assert (= bs!1967767 (and d!2357473 b!7896677)))

(declare-fun lambda!472288 () Int)

(assert (=> bs!1967767 (= lambda!472288 lambda!472282)))

(assert (=> d!2357473 (= (inv!94951 (h!80412 zl!160)) (forall!18425 (exprs!9040 (h!80412 zl!160)) lambda!472288))))

(declare-fun bs!1967768 () Bool)

(assert (= bs!1967768 d!2357473))

(declare-fun m!8272146 () Bool)

(assert (=> bs!1967768 m!8272146))

(assert (=> b!7896678 d!2357473))

(declare-fun d!2357475 () Bool)

(declare-fun res!3132493 () Bool)

(declare-fun e!4660886 () Bool)

(assert (=> d!2357475 (=> res!3132493 e!4660886)))

(assert (=> d!2357475 (= res!3132493 (is-Nil!73963 (exprs!9040 (h!80412 zl!160))))))

(assert (=> d!2357475 (= (forall!18425 (exprs!9040 (h!80412 zl!160)) lambda!472282) e!4660886)))

(declare-fun b!7896693 () Bool)

(declare-fun e!4660887 () Bool)

(assert (=> b!7896693 (= e!4660886 e!4660887)))

(declare-fun res!3132494 () Bool)

(assert (=> b!7896693 (=> (not res!3132494) (not e!4660887))))

(declare-fun dynLambda!30006 (Int Regex!21224) Bool)

(assert (=> b!7896693 (= res!3132494 (dynLambda!30006 lambda!472282 (h!80411 (exprs!9040 (h!80412 zl!160)))))))

(declare-fun b!7896694 () Bool)

(assert (=> b!7896694 (= e!4660887 (forall!18425 (t!388822 (exprs!9040 (h!80412 zl!160))) lambda!472282))))

(assert (= (and d!2357475 (not res!3132493)) b!7896693))

(assert (= (and b!7896693 res!3132494) b!7896694))

(declare-fun b_lambda!289531 () Bool)

(assert (=> (not b_lambda!289531) (not b!7896693)))

(declare-fun m!8272148 () Bool)

(assert (=> b!7896693 m!8272148))

(declare-fun m!8272150 () Bool)

(assert (=> b!7896694 m!8272150))

(assert (=> b!7896677 d!2357475))

(declare-fun b!7896699 () Bool)

(declare-fun e!4660890 () Bool)

(declare-fun tp!2352551 () Bool)

(declare-fun tp!2352552 () Bool)

(assert (=> b!7896699 (= e!4660890 (and tp!2352551 tp!2352552))))

(assert (=> b!7896679 (= tp!2352539 e!4660890)))

(assert (= (and b!7896679 (is-Cons!73963 (exprs!9040 (h!80412 zl!160)))) b!7896699))

(declare-fun b!7896707 () Bool)

(declare-fun e!4660896 () Bool)

(declare-fun tp!2352557 () Bool)

(assert (=> b!7896707 (= e!4660896 tp!2352557)))

(declare-fun b!7896706 () Bool)

(declare-fun tp!2352558 () Bool)

(declare-fun e!4660895 () Bool)

(assert (=> b!7896706 (= e!4660895 (and (inv!94951 (h!80412 (t!388823 zl!160))) e!4660896 tp!2352558))))

(assert (=> b!7896678 (= tp!2352540 e!4660895)))

(assert (= b!7896706 b!7896707))

(assert (= (and b!7896678 (is-Cons!73964 (t!388823 zl!160))) b!7896706))

(declare-fun m!8272152 () Bool)

(assert (=> b!7896706 m!8272152))

(declare-fun b_lambda!289533 () Bool)

(assert (= b_lambda!289531 (or b!7896677 b_lambda!289533)))

(declare-fun bs!1967769 () Bool)

(declare-fun d!2357477 () Bool)

(assert (= bs!1967769 (and d!2357477 b!7896677)))

(declare-fun validRegex!11633 (Regex!21224) Bool)

(assert (=> bs!1967769 (= (dynLambda!30006 lambda!472282 (h!80411 (exprs!9040 (h!80412 zl!160)))) (validRegex!11633 (h!80411 (exprs!9040 (h!80412 zl!160)))))))

(declare-fun m!8272154 () Bool)

(assert (=> bs!1967769 m!8272154))

(assert (=> b!7896693 d!2357477))

(push 1)

(assert (not d!2357473))

(assert (not bs!1967769))

(assert (not b_lambda!289533))

(assert (not b!7896694))

(assert (not b!7896699))

(assert (not b!7896707))

(assert (not b!7896706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

