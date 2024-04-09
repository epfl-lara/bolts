; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1224 () Bool)

(assert start!1224)

(declare-fun res!8878 () Bool)

(declare-fun e!5968 () Bool)

(assert (=> start!1224 (=> (not res!8878) (not e!5968))))

(declare-datatypes ((B!314 0))(
  ( (B!315 (val!252 Int)) )
))
(declare-datatypes ((tuple2!286 0))(
  ( (tuple2!287 (_1!143 (_ BitVec 64)) (_2!143 B!314)) )
))
(declare-datatypes ((List!299 0))(
  ( (Nil!296) (Cons!295 (h!861 tuple2!286) (t!2446 List!299)) )
))
(declare-fun l!408 () List!299)

(assert (=> start!1224 (= res!8878 (is-Cons!295 l!408))))

(assert (=> start!1224 e!5968))

(declare-fun e!5969 () Bool)

(assert (=> start!1224 e!5969))

(declare-fun b!10333 () Bool)

(declare-fun ListPrimitiveSize!4 (List!299) Int)

(assert (=> b!10333 (= e!5968 (>= (ListPrimitiveSize!4 (t!2446 l!408)) (ListPrimitiveSize!4 l!408)))))

(declare-fun b!10334 () Bool)

(declare-fun tp_is_empty!487 () Bool)

(declare-fun tp!1481 () Bool)

(assert (=> b!10334 (= e!5969 (and tp_is_empty!487 tp!1481))))

(assert (= (and start!1224 res!8878) b!10333))

(assert (= (and start!1224 (is-Cons!295 l!408)) b!10334))

(declare-fun m!6707 () Bool)

(assert (=> b!10333 m!6707))

(declare-fun m!6709 () Bool)

(assert (=> b!10333 m!6709))

(push 1)

(assert (not b!10333))

(assert (not b!10334))

(assert tp_is_empty!487)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1089 () Bool)

(declare-fun lt!2546 () Int)

(assert (=> d!1089 (>= lt!2546 0)))

(declare-fun e!5989 () Int)

(assert (=> d!1089 (= lt!2546 e!5989)))

(declare-fun c!931 () Bool)

(assert (=> d!1089 (= c!931 (is-Nil!296 (t!2446 l!408)))))

(assert (=> d!1089 (= (ListPrimitiveSize!4 (t!2446 l!408)) lt!2546)))

(declare-fun b!10360 () Bool)

(assert (=> b!10360 (= e!5989 0)))

(declare-fun b!10362 () Bool)

(assert (=> b!10362 (= e!5989 (+ 1 (ListPrimitiveSize!4 (t!2446 (t!2446 l!408)))))))

(assert (= (and d!1089 c!931) b!10360))

(assert (= (and d!1089 (not c!931)) b!10362))

(declare-fun m!6720 () Bool)

(assert (=> b!10362 m!6720))

(assert (=> b!10333 d!1089))

(declare-fun d!1095 () Bool)

(declare-fun lt!2548 () Int)

(assert (=> d!1095 (>= lt!2548 0)))

(declare-fun e!5991 () Int)

(assert (=> d!1095 (= lt!2548 e!5991)))

(declare-fun c!933 () Bool)

(assert (=> d!1095 (= c!933 (is-Nil!296 l!408))))

(assert (=> d!1095 (= (ListPrimitiveSize!4 l!408) lt!2548)))

(declare-fun b!10365 () Bool)

(assert (=> b!10365 (= e!5991 0)))

(declare-fun b!10366 () Bool)

(assert (=> b!10366 (= e!5991 (+ 1 (ListPrimitiveSize!4 (t!2446 l!408))))))

(assert (= (and d!1095 c!933) b!10365))

(assert (= (and d!1095 (not c!933)) b!10366))

(assert (=> b!10366 m!6707))

(assert (=> b!10333 d!1095))

(declare-fun b!10384 () Bool)

(declare-fun e!6001 () Bool)

(declare-fun tp!1495 () Bool)

(assert (=> b!10384 (= e!6001 (and tp_is_empty!487 tp!1495))))

(assert (=> b!10334 (= tp!1481 e!6001)))

(assert (= (and b!10334 (is-Cons!295 (t!2446 l!408))) b!10384))

(push 1)

