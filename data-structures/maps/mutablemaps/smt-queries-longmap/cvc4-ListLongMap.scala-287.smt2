; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4724 () Bool)

(assert start!4724)

(declare-fun b_free!1313 () Bool)

(declare-fun b_next!1313 () Bool)

(assert (=> start!4724 (= b_free!1313 (not b_next!1313))))

(declare-fun tp!5401 () Bool)

(declare-fun b_and!2165 () Bool)

(assert (=> start!4724 (= tp!5401 b_and!2165)))

(declare-fun b!36633 () Bool)

(declare-fun e!23139 () Bool)

(assert (=> b!36633 (= e!23139 (not true))))

(declare-fun p!304 () Int)

(declare-fun k!388 () (_ BitVec 64))

(declare-datatypes ((B!720 0))(
  ( (B!721 (val!860 Int)) )
))
(declare-datatypes ((tuple2!1384 0))(
  ( (tuple2!1385 (_1!702 (_ BitVec 64)) (_2!702 B!720)) )
))
(declare-datatypes ((List!980 0))(
  ( (Nil!977) (Cons!976 (h!1544 tuple2!1384) (t!3713 List!980)) )
))
(declare-datatypes ((ListLongMap!965 0))(
  ( (ListLongMap!966 (toList!498 List!980)) )
))
(declare-fun lt!13546 () ListLongMap!965)

(declare-fun dynLambda!165 (Int tuple2!1384) Bool)

(declare-fun apply!45 (ListLongMap!965 (_ BitVec 64)) B!720)

(assert (=> b!36633 (dynLambda!165 p!304 (tuple2!1385 k!388 (apply!45 lt!13546 k!388)))))

(declare-datatypes ((Unit!811 0))(
  ( (Unit!812) )
))
(declare-fun lt!13545 () Unit!811)

(declare-fun applyForall!4 (ListLongMap!965 Int (_ BitVec 64)) Unit!811)

(assert (=> b!36633 (= lt!13545 (applyForall!4 lt!13546 p!304 k!388))))

(declare-fun b!36634 () Bool)

(declare-fun e!23138 () Bool)

(assert (=> b!36634 (= e!23138 e!23139)))

(declare-fun res!22172 () Bool)

(assert (=> b!36634 (=> (not res!22172) (not e!23139))))

(declare-fun forall!160 (List!980 Int) Bool)

(assert (=> b!36634 (= res!22172 (forall!160 (toList!498 lt!13546) p!304))))

(declare-fun lm!252 () ListLongMap!965)

(declare-fun tail!91 (ListLongMap!965) ListLongMap!965)

(assert (=> b!36634 (= lt!13546 (tail!91 lm!252))))

(declare-fun res!22169 () Bool)

(assert (=> start!4724 (=> (not res!22169) (not e!23138))))

(assert (=> start!4724 (= res!22169 (forall!160 (toList!498 lm!252) p!304))))

(assert (=> start!4724 e!23138))

(declare-fun e!23137 () Bool)

(declare-fun inv!1600 (ListLongMap!965) Bool)

(assert (=> start!4724 (and (inv!1600 lm!252) e!23137)))

(assert (=> start!4724 tp!5401))

(assert (=> start!4724 true))

(declare-fun b!36635 () Bool)

(declare-fun res!22173 () Bool)

(assert (=> b!36635 (=> (not res!22173) (not e!23139))))

(declare-fun contains!446 (ListLongMap!965 (_ BitVec 64)) Bool)

(assert (=> b!36635 (= res!22173 (contains!446 lt!13546 k!388))))

(declare-fun b!36636 () Bool)

(declare-fun res!22174 () Bool)

(assert (=> b!36636 (=> (not res!22174) (not e!23138))))

(declare-fun head!838 (List!980) tuple2!1384)

(assert (=> b!36636 (= res!22174 (not (= (_1!702 (head!838 (toList!498 lm!252))) k!388)))))

(declare-fun b!36637 () Bool)

(declare-fun res!22170 () Bool)

(assert (=> b!36637 (=> (not res!22170) (not e!23138))))

(assert (=> b!36637 (= res!22170 (contains!446 lm!252 k!388))))

(declare-fun b!36638 () Bool)

(declare-fun tp!5402 () Bool)

(assert (=> b!36638 (= e!23137 tp!5402)))

(declare-fun b!36639 () Bool)

(declare-fun res!22171 () Bool)

(assert (=> b!36639 (=> (not res!22171) (not e!23138))))

(declare-fun isEmpty!190 (ListLongMap!965) Bool)

(assert (=> b!36639 (= res!22171 (not (isEmpty!190 lm!252)))))

(assert (= (and start!4724 res!22169) b!36637))

(assert (= (and b!36637 res!22170) b!36639))

(assert (= (and b!36639 res!22171) b!36636))

(assert (= (and b!36636 res!22174) b!36634))

(assert (= (and b!36634 res!22172) b!36635))

(assert (= (and b!36635 res!22173) b!36633))

(assert (= start!4724 b!36638))

(declare-fun b_lambda!1775 () Bool)

(assert (=> (not b_lambda!1775) (not b!36633)))

(declare-fun t!3712 () Bool)

(declare-fun tb!719 () Bool)

(assert (=> (and start!4724 (= p!304 p!304) t!3712) tb!719))

(declare-fun result!1237 () Bool)

(assert (=> tb!719 (= result!1237 true)))

(assert (=> b!36633 t!3712))

(declare-fun b_and!2167 () Bool)

(assert (= b_and!2165 (and (=> t!3712 result!1237) b_and!2167)))

(declare-fun m!29521 () Bool)

(assert (=> b!36633 m!29521))

(declare-fun m!29523 () Bool)

(assert (=> b!36633 m!29523))

(declare-fun m!29525 () Bool)

(assert (=> b!36633 m!29525))

(declare-fun m!29527 () Bool)

(assert (=> start!4724 m!29527))

(declare-fun m!29529 () Bool)

(assert (=> start!4724 m!29529))

(declare-fun m!29531 () Bool)

(assert (=> b!36636 m!29531))

(declare-fun m!29533 () Bool)

(assert (=> b!36639 m!29533))

(declare-fun m!29535 () Bool)

(assert (=> b!36635 m!29535))

(declare-fun m!29537 () Bool)

(assert (=> b!36637 m!29537))

(declare-fun m!29539 () Bool)

(assert (=> b!36634 m!29539))

(declare-fun m!29541 () Bool)

(assert (=> b!36634 m!29541))

(push 1)

