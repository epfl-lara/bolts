; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1216 () Bool)

(assert start!1216)

(declare-datatypes ((B!312 0))(
  ( (B!313 (val!251 Int)) )
))
(declare-datatypes ((tuple2!284 0))(
  ( (tuple2!285 (_1!142 (_ BitVec 64)) (_2!142 B!312)) )
))
(declare-datatypes ((List!298 0))(
  ( (Nil!295) (Cons!294 (h!860 tuple2!284) (t!2445 List!298)) )
))
(declare-fun l!408 () List!298)

(declare-fun ListPrimitiveSize!3 (List!298) Int)

(assert (=> start!1216 (< (ListPrimitiveSize!3 l!408) 0)))

(declare-fun e!5945 () Bool)

(assert (=> start!1216 e!5945))

(declare-fun b!10295 () Bool)

(declare-fun tp_is_empty!485 () Bool)

(declare-fun tp!1469 () Bool)

(assert (=> b!10295 (= e!5945 (and tp_is_empty!485 tp!1469))))

(assert (= (and start!1216 (is-Cons!294 l!408)) b!10295))

(declare-fun m!6699 () Bool)

(assert (=> start!1216 m!6699))

(push 1)

(assert (not start!1216))

(assert (not b!10295))

(assert tp_is_empty!485)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1085 () Bool)

(declare-fun lt!2538 () Int)

(assert (=> d!1085 (>= lt!2538 0)))

(declare-fun e!5954 () Int)

(assert (=> d!1085 (= lt!2538 e!5954)))

(declare-fun c!923 () Bool)

(assert (=> d!1085 (= c!923 (is-Nil!295 l!408))))

(assert (=> d!1085 (= (ListPrimitiveSize!3 l!408) lt!2538)))

(declare-fun b!10312 () Bool)

(assert (=> b!10312 (= e!5954 0)))

(declare-fun b!10313 () Bool)

(assert (=> b!10313 (= e!5954 (+ 1 (ListPrimitiveSize!3 (t!2445 l!408))))))

(assert (= (and d!1085 c!923) b!10312))

(assert (= (and d!1085 (not c!923)) b!10313))

(declare-fun m!6705 () Bool)

(assert (=> b!10313 m!6705))

(assert (=> start!1216 d!1085))

(declare-fun b!10327 () Bool)

(declare-fun e!5962 () Bool)

(declare-fun tp!1477 () Bool)

(assert (=> b!10327 (= e!5962 (and tp_is_empty!485 tp!1477))))

(assert (=> b!10295 (= tp!1469 e!5962)))

(assert (= (and b!10295 (is-Cons!294 (t!2445 l!408))) b!10327))

(push 1)

(assert (not b!10313))

(assert (not b!10327))

