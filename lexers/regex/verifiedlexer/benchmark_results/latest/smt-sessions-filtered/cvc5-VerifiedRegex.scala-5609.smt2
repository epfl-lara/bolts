; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281428 () Bool)

(assert start!281428)

(declare-fun b!2882405 () Bool)

(declare-fun e!1823371 () Bool)

(declare-fun tp!924462 () Bool)

(declare-fun tp!924463 () Bool)

(assert (=> b!2882405 (= e!1823371 (and tp!924462 tp!924463))))

(declare-fun b!2882406 () Bool)

(declare-fun res!1194268 () Bool)

(declare-fun e!1823370 () Bool)

(assert (=> b!2882406 (=> (not res!1194268) (not e!1823370))))

(declare-datatypes ((C!17726 0))(
  ( (C!17727 (val!10897 Int)) )
))
(declare-datatypes ((Regex!8772 0))(
  ( (ElementMatch!8772 (c!468253 C!17726)) (Concat!14093 (regOne!18056 Regex!8772) (regTwo!18056 Regex!8772)) (EmptyExpr!8772) (Star!8772 (reg!9101 Regex!8772)) (EmptyLang!8772) (Union!8772 (regOne!18057 Regex!8772) (regTwo!18057 Regex!8772)) )
))
(declare-fun r!23079 () Regex!8772)

(assert (=> b!2882406 (= res!1194268 (and (not (is-EmptyExpr!8772 r!23079)) (not (is-EmptyLang!8772 r!23079)) (not (is-ElementMatch!8772 r!23079)) (not (is-Star!8772 r!23079)) (is-Union!8772 r!23079)))))

(declare-fun b!2882407 () Bool)

(declare-fun res!1194266 () Bool)

(assert (=> b!2882407 (=> (not res!1194266) (not e!1823370))))

(declare-datatypes ((List!34573 0))(
  ( (Nil!34449) (Cons!34449 (h!39869 C!17726) (t!233616 List!34573)) )
))
(declare-datatypes ((Option!6445 0))(
  ( (None!6444) (Some!6444 (v!34570 List!34573)) )
))
(declare-fun getLanguageWitness!479 (Regex!8772) Option!6445)

(assert (=> b!2882407 (= res!1194266 (not (is-Some!6444 (getLanguageWitness!479 (regOne!18057 r!23079)))))))

(declare-fun b!2882408 () Bool)

(declare-fun res!1194267 () Bool)

(assert (=> b!2882408 (=> (not res!1194267) (not e!1823370))))

(declare-fun isDefined!5009 (Option!6445) Bool)

(assert (=> b!2882408 (= res!1194267 (isDefined!5009 (getLanguageWitness!479 r!23079)))))

(declare-fun res!1194269 () Bool)

(assert (=> start!281428 (=> (not res!1194269) (not e!1823370))))

(declare-fun validRegex!3545 (Regex!8772) Bool)

(assert (=> start!281428 (= res!1194269 (validRegex!3545 r!23079))))

(assert (=> start!281428 e!1823370))

(assert (=> start!281428 e!1823371))

(declare-fun b!2882409 () Bool)

(assert (=> b!2882409 (= e!1823370 false)))

(declare-fun lt!1020037 () Option!6445)

(assert (=> b!2882409 (= lt!1020037 (getLanguageWitness!479 (regTwo!18057 r!23079)))))

(declare-fun b!2882410 () Bool)

(declare-fun tp!924464 () Bool)

(declare-fun tp!924461 () Bool)

(assert (=> b!2882410 (= e!1823371 (and tp!924464 tp!924461))))

(declare-fun b!2882411 () Bool)

(declare-fun tp_is_empty!15131 () Bool)

(assert (=> b!2882411 (= e!1823371 tp_is_empty!15131)))

(declare-fun b!2882412 () Bool)

(declare-fun tp!924460 () Bool)

(assert (=> b!2882412 (= e!1823371 tp!924460)))

(assert (= (and start!281428 res!1194269) b!2882408))

(assert (= (and b!2882408 res!1194267) b!2882406))

(assert (= (and b!2882406 res!1194268) b!2882407))

(assert (= (and b!2882407 res!1194266) b!2882409))

(assert (= (and start!281428 (is-ElementMatch!8772 r!23079)) b!2882411))

(assert (= (and start!281428 (is-Concat!14093 r!23079)) b!2882405))

(assert (= (and start!281428 (is-Star!8772 r!23079)) b!2882412))

(assert (= (and start!281428 (is-Union!8772 r!23079)) b!2882410))

(declare-fun m!3299467 () Bool)

(assert (=> b!2882407 m!3299467))

(declare-fun m!3299469 () Bool)

(assert (=> b!2882408 m!3299469))

(assert (=> b!2882408 m!3299469))

(declare-fun m!3299471 () Bool)

(assert (=> b!2882408 m!3299471))

(declare-fun m!3299473 () Bool)

(assert (=> start!281428 m!3299473))

(declare-fun m!3299475 () Bool)

(assert (=> b!2882409 m!3299475))

(push 1)

(assert (not b!2882409))

(assert (not b!2882405))

(assert (not b!2882407))

(assert (not b!2882412))

(assert tp_is_empty!15131)

(assert (not b!2882410))

(assert (not b!2882408))

(assert (not start!281428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

