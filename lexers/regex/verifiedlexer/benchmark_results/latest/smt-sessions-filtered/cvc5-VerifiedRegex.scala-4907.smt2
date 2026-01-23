; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251202 () Bool)

(assert start!251202)

(declare-fun res!1090120 () Bool)

(declare-fun e!1635296 () Bool)

(assert (=> start!251202 (=> (not res!1090120) (not e!1635296))))

(declare-datatypes ((B!2047 0))(
  ( (B!2048 (val!9491 Int)) )
))
(declare-datatypes ((List!29924 0))(
  ( (Nil!29824) (Cons!29824 (h!35244 B!2047) (t!212937 List!29924)) )
))
(declare-fun l!3230 () List!29924)

(declare-fun noDuplicate!372 (List!29924) Bool)

(assert (=> start!251202 (= res!1090120 (noDuplicate!372 l!3230))))

(assert (=> start!251202 e!1635296))

(declare-fun e!1635297 () Bool)

(assert (=> start!251202 e!1635297))

(declare-fun b!2592130 () Bool)

(declare-fun ListPrimitiveSize!180 (List!29924) Int)

(assert (=> b!2592130 (= e!1635296 (< (ListPrimitiveSize!180 l!3230) 0))))

(declare-fun b!2592131 () Bool)

(declare-fun tp_is_empty!13327 () Bool)

(declare-fun tp!822743 () Bool)

(assert (=> b!2592131 (= e!1635297 (and tp_is_empty!13327 tp!822743))))

(assert (= (and start!251202 res!1090120) b!2592130))

(assert (= (and start!251202 (is-Cons!29824 l!3230)) b!2592131))

(declare-fun m!2928285 () Bool)

(assert (=> start!251202 m!2928285))

(declare-fun m!2928287 () Bool)

(assert (=> b!2592130 m!2928287))

(push 1)

(assert (not start!251202))

(assert (not b!2592130))

(assert (not b!2592131))

(assert tp_is_empty!13327)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734344 () Bool)

(declare-fun res!1090128 () Bool)

(declare-fun e!1635310 () Bool)

(assert (=> d!734344 (=> res!1090128 e!1635310)))

(assert (=> d!734344 (= res!1090128 (is-Nil!29824 l!3230))))

(assert (=> d!734344 (= (noDuplicate!372 l!3230) e!1635310)))

(declare-fun b!2592146 () Bool)

(declare-fun e!1635311 () Bool)

(assert (=> b!2592146 (= e!1635310 e!1635311)))

(declare-fun res!1090129 () Bool)

(assert (=> b!2592146 (=> (not res!1090129) (not e!1635311))))

(declare-fun contains!5374 (List!29924 B!2047) Bool)

(assert (=> b!2592146 (= res!1090129 (not (contains!5374 (t!212937 l!3230) (h!35244 l!3230))))))

(declare-fun b!2592147 () Bool)

(assert (=> b!2592147 (= e!1635311 (noDuplicate!372 (t!212937 l!3230)))))

(assert (= (and d!734344 (not res!1090128)) b!2592146))

(assert (= (and b!2592146 res!1090129) b!2592147))

(declare-fun m!2928293 () Bool)

(assert (=> b!2592146 m!2928293))

(declare-fun m!2928295 () Bool)

(assert (=> b!2592147 m!2928295))

(assert (=> start!251202 d!734344))

(declare-fun d!734348 () Bool)

(declare-fun lt!912013 () Int)

(assert (=> d!734348 (>= lt!912013 0)))

(declare-fun e!1635315 () Int)

(assert (=> d!734348 (= lt!912013 e!1635315)))

(declare-fun c!417880 () Bool)

(assert (=> d!734348 (= c!417880 (is-Nil!29824 l!3230))))

(assert (=> d!734348 (= (ListPrimitiveSize!180 l!3230) lt!912013)))

(declare-fun b!2592154 () Bool)

(assert (=> b!2592154 (= e!1635315 0)))

(declare-fun b!2592155 () Bool)

(assert (=> b!2592155 (= e!1635315 (+ 1 (ListPrimitiveSize!180 (t!212937 l!3230))))))

(assert (= (and d!734348 c!417880) b!2592154))

(assert (= (and d!734348 (not c!417880)) b!2592155))

(declare-fun m!2928299 () Bool)

(assert (=> b!2592155 m!2928299))

(assert (=> b!2592130 d!734348))

(declare-fun b!2592164 () Bool)

(declare-fun e!1635322 () Bool)

(declare-fun tp!822749 () Bool)

(assert (=> b!2592164 (= e!1635322 (and tp_is_empty!13327 tp!822749))))

(assert (=> b!2592131 (= tp!822743 e!1635322)))

(assert (= (and b!2592131 (is-Cons!29824 (t!212937 l!3230))) b!2592164))

(push 1)

(assert (not b!2592155))

(assert (not b!2592164))

(assert tp_is_empty!13327)

(assert (not b!2592147))

(assert (not b!2592146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

