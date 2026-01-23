; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46332 () Bool)

(assert start!46332)

(declare-datatypes ((B!1063 0))(
  ( (B!1064 (val!1673 Int)) )
))
(declare-datatypes ((List!4646 0))(
  ( (Nil!4636) (Cons!4636 (h!10033 B!1063) (t!73164 List!4646)) )
))
(declare-fun l!2928 () List!4646)

(declare-fun ListPrimitiveSize!49 (List!4646) Int)

(assert (=> start!46332 (< (ListPrimitiveSize!49 l!2928) 0)))

(declare-fun e!305891 () Bool)

(assert (=> start!46332 e!305891))

(declare-fun b!512047 () Bool)

(declare-fun tp_is_empty!2449 () Bool)

(declare-fun tp!159160 () Bool)

(assert (=> b!512047 (= e!305891 (and tp_is_empty!2449 tp!159160))))

(assert (= (and start!46332 (is-Cons!4636 l!2928)) b!512047))

(declare-fun m!758927 () Bool)

(assert (=> start!46332 m!758927))

(push 1)

(assert (not start!46332))

(assert (not b!512047))

(assert tp_is_empty!2449)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!184026 () Bool)

(declare-fun lt!212154 () Int)

(assert (=> d!184026 (>= lt!212154 0)))

(declare-fun e!305897 () Int)

(assert (=> d!184026 (= lt!212154 e!305897)))

(declare-fun c!99532 () Bool)

(assert (=> d!184026 (= c!99532 (is-Nil!4636 l!2928))))

(assert (=> d!184026 (= (ListPrimitiveSize!49 l!2928) lt!212154)))

(declare-fun b!512055 () Bool)

(assert (=> b!512055 (= e!305897 0)))

(declare-fun b!512056 () Bool)

(assert (=> b!512056 (= e!305897 (+ 1 (ListPrimitiveSize!49 (t!73164 l!2928))))))

(assert (= (and d!184026 c!99532) b!512055))

(assert (= (and d!184026 (not c!99532)) b!512056))

(declare-fun m!758931 () Bool)

(assert (=> b!512056 m!758931))

(assert (=> start!46332 d!184026))

(declare-fun b!512065 () Bool)

(declare-fun e!305902 () Bool)

(declare-fun tp!159166 () Bool)

(assert (=> b!512065 (= e!305902 (and tp_is_empty!2449 tp!159166))))

(assert (=> b!512047 (= tp!159160 e!305902)))

(assert (= (and b!512047 (is-Cons!4636 (t!73164 l!2928))) b!512065))

(push 1)

(assert (not b!512056))

(assert (not b!512065))

(assert tp_is_empty!2449)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

