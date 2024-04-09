; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2342 () Bool)

(assert start!2342)

(declare-fun b_free!473 () Bool)

(declare-fun b_next!473 () Bool)

(assert (=> start!2342 (= b_free!473 (not b_next!473))))

(declare-fun tp!2483 () Bool)

(declare-fun b_and!883 () Bool)

(assert (=> start!2342 (= tp!2483 b_and!883)))

(declare-fun res!11566 () Bool)

(declare-fun e!9220 () Bool)

(assert (=> start!2342 (=> (not res!11566) (not e!9220))))

(declare-datatypes ((B!594 0))(
  ( (B!595 (val!395 Int)) )
))
(declare-datatypes ((tuple2!572 0))(
  ( (tuple2!573 (_1!286 (_ BitVec 64)) (_2!286 B!594)) )
))
(declare-datatypes ((List!450 0))(
  ( (Nil!447) (Cons!446 (h!1012 tuple2!572) (t!2852 List!450)) )
))
(declare-datatypes ((ListLongMap!403 0))(
  ( (ListLongMap!404 (toList!217 List!450)) )
))
(declare-fun lm!238 () ListLongMap!403)

(declare-fun p!262 () Int)

(declare-fun forall!106 (List!450 Int) Bool)

(assert (=> start!2342 (= res!11566 (forall!106 (toList!217 lm!238) p!262))))

(assert (=> start!2342 e!9220))

(declare-fun e!9219 () Bool)

(declare-fun inv!762 (ListLongMap!403) Bool)

(assert (=> start!2342 (and (inv!762 lm!238) e!9219)))

(assert (=> start!2342 tp!2483))

(assert (=> start!2342 true))

(declare-fun b!15231 () Bool)

(declare-fun res!11565 () Bool)

(assert (=> b!15231 (=> (not res!11565) (not e!9220))))

(declare-datatypes ((List!451 0))(
  ( (Nil!448) (Cons!447 (h!1013 (_ BitVec 64)) (t!2853 List!451)) )
))
(declare-fun l!1612 () List!451)

(declare-fun isEmpty!119 (List!451) Bool)

(assert (=> b!15231 (= res!11565 (not (isEmpty!119 l!1612)))))

(declare-fun b!15232 () Bool)

(assert (=> b!15232 (= e!9220 (= l!1612 Nil!448))))

(declare-fun b!15233 () Bool)

(declare-fun tp!2482 () Bool)

(assert (=> b!15233 (= e!9219 tp!2482)))

(assert (= (and start!2342 res!11566) b!15231))

(assert (= (and b!15231 res!11565) b!15232))

(assert (= start!2342 b!15233))

(declare-fun m!10129 () Bool)

(assert (=> start!2342 m!10129))

(declare-fun m!10131 () Bool)

(assert (=> start!2342 m!10131))

(declare-fun m!10133 () Bool)

(assert (=> b!15231 m!10133))

(push 1)

(assert (not b!15233))

(assert (not b!15231))

(assert (not start!2342))

(assert b_and!883)

(assert (not b_next!473))

(check-sat)

(pop 1)

(push 1)

(assert b_and!883)

(assert (not b_next!473))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2551 () Bool)

(declare-fun res!11583 () Bool)

(declare-fun e!9237 () Bool)

(assert (=> d!2551 (=> res!11583 e!9237)))

(assert (=> d!2551 (= res!11583 (is-Nil!447 (toList!217 lm!238)))))

(assert (=> d!2551 (= (forall!106 (toList!217 lm!238) p!262) e!9237)))

(declare-fun b!15250 () Bool)

(declare-fun e!9238 () Bool)

(assert (=> b!15250 (= e!9237 e!9238)))

(declare-fun res!11584 () Bool)

(assert (=> b!15250 (=> (not res!11584) (not e!9238))))

(declare-fun dynLambda!99 (Int tuple2!572) Bool)

(assert (=> b!15250 (= res!11584 (dynLambda!99 p!262 (h!1012 (toList!217 lm!238))))))

(declare-fun b!15251 () Bool)

(assert (=> b!15251 (= e!9238 (forall!106 (t!2852 (toList!217 lm!238)) p!262))))

(assert (= (and d!2551 (not res!11583)) b!15250))

(assert (= (and b!15250 res!11584) b!15251))

(declare-fun b_lambda!975 () Bool)

(assert (=> (not b_lambda!975) (not b!15250)))

(declare-fun t!2859 () Bool)

(declare-fun tb!397 () Bool)

(assert (=> (and start!2342 (= p!262 p!262) t!2859) tb!397))

(declare-fun result!705 () Bool)

(assert (=> tb!397 (= result!705 true)))

(assert (=> b!15250 t!2859))

(declare-fun b_and!889 () Bool)

(assert (= b_and!883 (and (=> t!2859 result!705) b_and!889)))

