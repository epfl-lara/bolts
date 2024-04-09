; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132464 () Bool)

(assert start!132464)

(declare-fun b!1553448 () Bool)

(declare-fun e!864937 () Bool)

(assert (=> b!1553448 (= e!864937 (not true))))

(declare-fun e!864938 () Bool)

(assert (=> b!1553448 e!864938))

(declare-fun res!1063345 () Bool)

(assert (=> b!1553448 (=> (not res!1063345) (not e!864938))))

(declare-datatypes ((B!2214 0))(
  ( (B!2215 (val!19193 Int)) )
))
(declare-datatypes ((tuple2!24902 0))(
  ( (tuple2!24903 (_1!12461 (_ BitVec 64)) (_2!12461 B!2214)) )
))
(declare-datatypes ((List!36373 0))(
  ( (Nil!36370) (Cons!36369 (h!37816 tuple2!24902) (t!51101 List!36373)) )
))
(declare-fun lt!669634 () List!36373)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!758 (List!36373 (_ BitVec 64)) Bool)

(assert (=> b!1553448 (= res!1063345 (containsKey!758 lt!669634 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2214)

(declare-datatypes ((ListLongMap!22523 0))(
  ( (ListLongMap!22524 (toList!11277 List!36373)) )
))
(declare-fun lm!249 () ListLongMap!22523)

(declare-fun insertStrictlySorted!506 (List!36373 (_ BitVec 64) B!2214) List!36373)

(assert (=> b!1553448 (= lt!669634 (insertStrictlySorted!506 (toList!11277 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51682 0))(
  ( (Unit!51683) )
))
(declare-fun lt!669635 () Unit!51682)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!3 (List!36373 (_ BitVec 64) B!2214 (_ BitVec 64)) Unit!51682)

(assert (=> b!1553448 (= lt!669635 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!3 (toList!11277 lm!249) a!523 b!96 a0!49))))

(declare-fun res!1063344 () Bool)

(assert (=> start!132464 (=> (not res!1063344) (not e!864937))))

(declare-fun contains!10149 (ListLongMap!22523 (_ BitVec 64)) Bool)

(assert (=> start!132464 (= res!1063344 (contains!10149 lm!249 a0!49))))

(assert (=> start!132464 e!864937))

(declare-fun e!864939 () Bool)

(declare-fun inv!57305 (ListLongMap!22523) Bool)

(assert (=> start!132464 (and (inv!57305 lm!249) e!864939)))

(assert (=> start!132464 true))

(declare-fun tp_is_empty!38225 () Bool)

(assert (=> start!132464 tp_is_empty!38225))

(declare-fun b!1553449 () Bool)

(declare-fun res!1063346 () Bool)

(assert (=> b!1553449 (=> (not res!1063346) (not e!864937))))

(assert (=> b!1553449 (= res!1063346 (not (= a0!49 a!523)))))

(declare-fun b!1553450 () Bool)

(declare-datatypes ((Option!815 0))(
  ( (Some!814 (v!21995 B!2214)) (None!813) )
))
(declare-fun getValueByKey!740 (List!36373 (_ BitVec 64)) Option!815)

(assert (=> b!1553450 (= e!864938 (= (getValueByKey!740 lt!669634 a0!49) (getValueByKey!740 (toList!11277 lm!249) a0!49)))))

(declare-fun b!1553451 () Bool)

(declare-fun tp!112117 () Bool)

(assert (=> b!1553451 (= e!864939 tp!112117)))

(declare-fun b!1553452 () Bool)

(declare-fun res!1063347 () Bool)

(assert (=> b!1553452 (=> (not res!1063347) (not e!864937))))

(assert (=> b!1553452 (= res!1063347 (containsKey!758 (toList!11277 lm!249) a0!49))))

(assert (= (and start!132464 res!1063344) b!1553449))

(assert (= (and b!1553449 res!1063346) b!1553452))

(assert (= (and b!1553452 res!1063347) b!1553448))

(assert (= (and b!1553448 res!1063345) b!1553450))

(assert (= start!132464 b!1553451))

(declare-fun m!1432139 () Bool)

(assert (=> b!1553448 m!1432139))

(declare-fun m!1432141 () Bool)

(assert (=> b!1553448 m!1432141))

(declare-fun m!1432143 () Bool)

(assert (=> b!1553448 m!1432143))

(declare-fun m!1432145 () Bool)

(assert (=> start!132464 m!1432145))

(declare-fun m!1432147 () Bool)

(assert (=> start!132464 m!1432147))

(declare-fun m!1432149 () Bool)

(assert (=> b!1553450 m!1432149))

(declare-fun m!1432151 () Bool)

(assert (=> b!1553450 m!1432151))

(declare-fun m!1432153 () Bool)

(assert (=> b!1553452 m!1432153))

(push 1)

(assert tp_is_empty!38225)

(assert (not b!1553450))

(assert (not start!132464))

(assert (not b!1553448))

(assert (not b!1553452))

(assert (not b!1553451))

(check-sat)

