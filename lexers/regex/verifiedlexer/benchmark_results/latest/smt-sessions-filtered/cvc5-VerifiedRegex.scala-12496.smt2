; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695090 () Bool)

(assert start!695090)

(declare-datatypes ((C!36474 0))(
  ( (C!36475 (val!28185 Int)) )
))
(declare-datatypes ((Regex!18100 0))(
  ( (ElementMatch!18100 (c!1330477 C!36474)) (Concat!26945 (regOne!36712 Regex!18100) (regTwo!36712 Regex!18100)) (EmptyExpr!18100) (Star!18100 (reg!18429 Regex!18100)) (EmptyLang!18100) (Union!18100 (regOne!36713 Regex!18100) (regTwo!36713 Regex!18100)) )
))
(declare-datatypes ((List!69278 0))(
  ( (Nil!69154) (Cons!69154 (h!75602 Regex!18100) (t!383295 List!69278)) )
))
(declare-datatypes ((Context!14188 0))(
  ( (Context!14189 (exprs!7594 List!69278)) )
))
(declare-datatypes ((List!69279 0))(
  ( (Nil!69155) (Cons!69155 (h!75603 Context!14188) (t!383296 List!69279)) )
))
(declare-fun zl!173 () List!69279)

(declare-fun size!41504 (List!69279) Int)

(assert (=> start!695090 (< (size!41504 zl!173) 0)))

(declare-fun e!4287527 () Bool)

(assert (=> start!695090 e!4287527))

(declare-fun b!7134027 () Bool)

(declare-fun e!4287528 () Bool)

(declare-fun tp!1966480 () Bool)

(assert (=> b!7134027 (= e!4287528 tp!1966480)))

(declare-fun tp!1966481 () Bool)

(declare-fun b!7134026 () Bool)

(declare-fun inv!88315 (Context!14188) Bool)

(assert (=> b!7134026 (= e!4287527 (and (inv!88315 (h!75603 zl!173)) e!4287528 tp!1966481))))

(assert (= b!7134026 b!7134027))

(assert (= (and start!695090 (is-Cons!69155 zl!173)) b!7134026))

(declare-fun m!7850938 () Bool)

(assert (=> start!695090 m!7850938))

(declare-fun m!7850940 () Bool)

(assert (=> b!7134026 m!7850940))

(push 1)

(assert (not start!695090))

(assert (not b!7134026))

(assert (not b!7134027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226093 () Bool)

(declare-fun lt!2565321 () Int)

(assert (=> d!2226093 (>= lt!2565321 0)))

(declare-fun e!4287537 () Int)

(assert (=> d!2226093 (= lt!2565321 e!4287537)))

(declare-fun c!1330481 () Bool)

(assert (=> d!2226093 (= c!1330481 (is-Nil!69155 zl!173))))

(assert (=> d!2226093 (= (size!41504 zl!173) lt!2565321)))

(declare-fun b!7134038 () Bool)

(assert (=> b!7134038 (= e!4287537 0)))

(declare-fun b!7134039 () Bool)

(assert (=> b!7134039 (= e!4287537 (+ 1 (size!41504 (t!383296 zl!173))))))

(assert (= (and d!2226093 c!1330481) b!7134038))

(assert (= (and d!2226093 (not c!1330481)) b!7134039))

(declare-fun m!7850946 () Bool)

(assert (=> b!7134039 m!7850946))

(assert (=> start!695090 d!2226093))

(declare-fun d!2226097 () Bool)

(declare-fun lambda!433257 () Int)

(declare-fun forall!16948 (List!69278 Int) Bool)

(assert (=> d!2226097 (= (inv!88315 (h!75603 zl!173)) (forall!16948 (exprs!7594 (h!75603 zl!173)) lambda!433257))))

(declare-fun bs!1887071 () Bool)

(assert (= bs!1887071 d!2226097))

(declare-fun m!7850948 () Bool)

(assert (=> bs!1887071 m!7850948))

(assert (=> b!7134026 d!2226097))

(declare-fun b!7134047 () Bool)

(declare-fun e!4287543 () Bool)

(declare-fun tp!1966492 () Bool)

(assert (=> b!7134047 (= e!4287543 tp!1966492)))

(declare-fun b!7134046 () Bool)

(declare-fun tp!1966493 () Bool)

(declare-fun e!4287542 () Bool)

(assert (=> b!7134046 (= e!4287542 (and (inv!88315 (h!75603 (t!383296 zl!173))) e!4287543 tp!1966493))))

(assert (=> b!7134026 (= tp!1966481 e!4287542)))

(assert (= b!7134046 b!7134047))

(assert (= (and b!7134026 (is-Cons!69155 (t!383296 zl!173))) b!7134046))

(declare-fun m!7850950 () Bool)

(assert (=> b!7134046 m!7850950))

(declare-fun b!7134052 () Bool)

(declare-fun e!4287546 () Bool)

(declare-fun tp!1966498 () Bool)

(declare-fun tp!1966499 () Bool)

(assert (=> b!7134052 (= e!4287546 (and tp!1966498 tp!1966499))))

(assert (=> b!7134027 (= tp!1966480 e!4287546)))

(assert (= (and b!7134027 (is-Cons!69154 (exprs!7594 (h!75603 zl!173)))) b!7134052))

(push 1)

(assert (not b!7134047))

(assert (not b!7134052))

(assert (not b!7134039))

(assert (not d!2226097))

(assert (not b!7134046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

