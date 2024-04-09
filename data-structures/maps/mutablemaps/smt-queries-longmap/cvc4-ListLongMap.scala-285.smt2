; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4712 () Bool)

(assert start!4712)

(declare-fun b_free!1301 () Bool)

(declare-fun b_next!1301 () Bool)

(assert (=> start!4712 (= b_free!1301 (not b_next!1301))))

(declare-fun tp!5365 () Bool)

(declare-fun b_and!2149 () Bool)

(assert (=> start!4712 (= tp!5365 b_and!2149)))

(declare-fun res!22075 () Bool)

(declare-fun e!23084 () Bool)

(assert (=> start!4712 (=> (not res!22075) (not e!23084))))

(declare-datatypes ((B!708 0))(
  ( (B!709 (val!854 Int)) )
))
(declare-datatypes ((tuple2!1372 0))(
  ( (tuple2!1373 (_1!696 (_ BitVec 64)) (_2!696 B!708)) )
))
(declare-datatypes ((List!974 0))(
  ( (Nil!971) (Cons!970 (h!1538 tuple2!1372) (t!3701 List!974)) )
))
(declare-datatypes ((ListLongMap!953 0))(
  ( (ListLongMap!954 (toList!492 List!974)) )
))
(declare-fun lm!252 () ListLongMap!953)

(declare-fun p!304 () Int)

(declare-fun forall!154 (List!974 Int) Bool)

(assert (=> start!4712 (= res!22075 (forall!154 (toList!492 lm!252) p!304))))

(assert (=> start!4712 e!23084))

(declare-fun e!23085 () Bool)

(declare-fun inv!1584 (ListLongMap!953) Bool)

(assert (=> start!4712 (and (inv!1584 lm!252) e!23085)))

(assert (=> start!4712 tp!5365))

(assert (=> start!4712 true))

(declare-fun b!36521 () Bool)

(assert (=> b!36521 (= e!23084 false)))

(declare-fun lt!13510 () Bool)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!440 (ListLongMap!953 (_ BitVec 64)) Bool)

(assert (=> b!36521 (= lt!13510 (contains!440 lm!252 k!388))))

(declare-fun b!36522 () Bool)

(declare-fun tp!5366 () Bool)

(assert (=> b!36522 (= e!23085 tp!5366)))

(assert (= (and start!4712 res!22075) b!36521))

(assert (= start!4712 b!36522))

(declare-fun m!29423 () Bool)

(assert (=> start!4712 m!29423))

(declare-fun m!29425 () Bool)

(assert (=> start!4712 m!29425))

(declare-fun m!29427 () Bool)

(assert (=> b!36521 m!29427))

(push 1)

(assert (not b!36521))

(assert (not start!4712))

(assert (not b_next!1301))

(assert (not b!36522))

(assert b_and!2149)

(check-sat)

(pop 1)

