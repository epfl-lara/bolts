; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185332 () Bool)

(assert start!185332)

(declare-datatypes ((K!3713 0))(
  ( (K!3714 (val!5869 Int)) )
))
(declare-datatypes ((B!1615 0))(
  ( (B!1616 (val!5870 Int)) )
))
(declare-datatypes ((tuple2!19828 0))(
  ( (tuple2!19829 (_1!11341 K!3713) (_2!11341 B!1615)) )
))
(declare-datatypes ((List!20676 0))(
  ( (Nil!20596) (Cons!20596 (h!25997 tuple2!19828) (t!172541 List!20676)) )
))
(declare-fun keyValues!2 () List!20676)

(declare-fun ListPrimitiveSize!131 (List!20676) Int)

(assert (=> start!185332 (< (ListPrimitiveSize!131 keyValues!2) 0)))

(declare-fun e!1185909 () Bool)

(assert (=> start!185332 e!1185909))

(declare-fun tp_is_empty!8537 () Bool)

(declare-fun tp_is_empty!8539 () Bool)

(declare-fun tp!528143 () Bool)

(declare-fun b!1856429 () Bool)

(assert (=> b!1856429 (= e!1185909 (and tp_is_empty!8537 tp_is_empty!8539 tp!528143))))

(assert (= (and start!185332 (is-Cons!20596 keyValues!2)) b!1856429))

(declare-fun m!2281443 () Bool)

(assert (=> start!185332 m!2281443))

(push 1)

(assert (not start!185332))

(assert (not b!1856429))

(assert tp_is_empty!8537)

(assert tp_is_empty!8539)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!566851 () Bool)

(declare-fun lt!716933 () Int)

(assert (=> d!566851 (>= lt!716933 0)))

(declare-fun e!1185915 () Int)

(assert (=> d!566851 (= lt!716933 e!1185915)))

(declare-fun c!302438 () Bool)

(assert (=> d!566851 (= c!302438 (is-Nil!20596 keyValues!2))))

(assert (=> d!566851 (= (ListPrimitiveSize!131 keyValues!2) lt!716933)))

(declare-fun b!1856437 () Bool)

(assert (=> b!1856437 (= e!1185915 0)))

(declare-fun b!1856438 () Bool)

(assert (=> b!1856438 (= e!1185915 (+ 1 (ListPrimitiveSize!131 (t!172541 keyValues!2))))))

(assert (= (and d!566851 c!302438) b!1856437))

(assert (= (and d!566851 (not c!302438)) b!1856438))

(declare-fun m!2281447 () Bool)

(assert (=> b!1856438 m!2281447))

(assert (=> start!185332 d!566851))

(declare-fun b!1856443 () Bool)

(declare-fun e!1185918 () Bool)

(declare-fun tp!528149 () Bool)

(assert (=> b!1856443 (= e!1185918 (and tp_is_empty!8537 tp_is_empty!8539 tp!528149))))

(assert (=> b!1856429 (= tp!528143 e!1185918)))

(assert (= (and b!1856429 (is-Cons!20596 (t!172541 keyValues!2))) b!1856443))

(push 1)

(assert (not b!1856438))

(assert (not b!1856443))

(assert tp_is_empty!8537)

(assert tp_is_empty!8539)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

