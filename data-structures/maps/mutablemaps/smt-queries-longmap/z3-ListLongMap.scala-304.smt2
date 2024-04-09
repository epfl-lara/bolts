; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5304 () Bool)

(assert start!5304)

(assert (=> start!5304 true))

(assert (=> start!5304 true))

(declare-fun res!23014 () Bool)

(declare-fun e!24332 () Bool)

(assert (=> start!5304 (=> (not res!23014) (not e!24332))))

(declare-datatypes ((List!1037 0))(
  ( (Nil!1034) (Cons!1033 (h!1601 (_ BitVec 64)) (t!3878 List!1037)) )
))
(declare-fun lt!14113 () List!1037)

(declare-fun lambda!237 () Int)

(declare-fun forall!183 (List!1037 Int) Bool)

(assert (=> start!5304 (= res!23014 (forall!183 lt!14113 lambda!237))))

(declare-datatypes ((B!814 0))(
  ( (B!815 (val!907 Int)) )
))
(declare-datatypes ((tuple2!1478 0))(
  ( (tuple2!1479 (_1!749 (_ BitVec 64)) (_2!749 B!814)) )
))
(declare-datatypes ((List!1038 0))(
  ( (Nil!1035) (Cons!1034 (h!1602 tuple2!1478) (t!3879 List!1038)) )
))
(declare-datatypes ((ListLongMap!1059 0))(
  ( (ListLongMap!1060 (toList!545 List!1038)) )
))
(declare-fun lm!266 () ListLongMap!1059)

(declare-fun value!232 () B!814)

(declare-fun getKeysOf!5 (List!1038 B!814) List!1037)

(assert (=> start!5304 (= lt!14113 (getKeysOf!5 (toList!545 lm!266) value!232))))

(assert (=> start!5304 e!24332))

(declare-fun e!24333 () Bool)

(declare-fun inv!1732 (ListLongMap!1059) Bool)

(assert (=> start!5304 (and (inv!1732 lm!266) e!24333)))

(declare-fun tp_is_empty!1737 () Bool)

(assert (=> start!5304 tp_is_empty!1737))

(declare-fun b!38280 () Bool)

(assert (=> b!38280 (= e!24332 (not (forall!183 lt!14113 lambda!237)))))

(declare-fun b!38281 () Bool)

(declare-fun tp!5708 () Bool)

(assert (=> b!38281 (= e!24333 tp!5708)))

(assert (= (and start!5304 res!23014) b!38280))

(assert (= start!5304 b!38281))

(declare-fun m!30887 () Bool)

(assert (=> start!5304 m!30887))

(declare-fun m!30889 () Bool)

(assert (=> start!5304 m!30889))

(declare-fun m!30891 () Bool)

(assert (=> start!5304 m!30891))

(assert (=> b!38280 m!30887))

(check-sat (not b!38280) (not start!5304) (not b!38281) tp_is_empty!1737)
(check-sat)
