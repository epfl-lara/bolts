; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137960 () Bool)

(assert start!137960)

(declare-fun res!1081723 () Bool)

(declare-fun e!883874 () Bool)

(assert (=> start!137960 (=> (not res!1081723) (not e!883874))))

(declare-datatypes ((B!2862 0))(
  ( (B!2863 (val!19793 Int)) )
))
(declare-datatypes ((tuple2!25918 0))(
  ( (tuple2!25919 (_1!12969 (_ BitVec 64)) (_2!12969 B!2862)) )
))
(declare-datatypes ((List!37074 0))(
  ( (Nil!37071) (Cons!37070 (h!38614 tuple2!25918) (t!51995 List!37074)) )
))
(declare-fun l!548 () List!37074)

(declare-fun isStrictlySorted!1145 (List!37074) Bool)

(assert (=> start!137960 (= res!1081723 (isStrictlySorted!1145 l!548))))

(assert (=> start!137960 e!883874))

(declare-fun e!883875 () Bool)

(assert (=> start!137960 e!883875))

(assert (=> start!137960 true))

(declare-fun b!1583409 () Bool)

(declare-fun res!1081724 () Bool)

(assert (=> b!1583409 (=> (not res!1081724) (not e!883874))))

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583409 (= res!1081724 (and (not (= (_1!12969 (h!38614 l!548)) key!159)) (is-Cons!37070 l!548)))))

(declare-fun b!1583410 () Bool)

(declare-fun ListPrimitiveSize!216 (List!37074) Int)

(assert (=> b!1583410 (= e!883874 (>= (ListPrimitiveSize!216 (t!51995 l!548)) (ListPrimitiveSize!216 l!548)))))

(declare-fun b!1583411 () Bool)

(declare-fun tp_is_empty!39395 () Bool)

(declare-fun tp!114976 () Bool)

(assert (=> b!1583411 (= e!883875 (and tp_is_empty!39395 tp!114976))))

(assert (= (and start!137960 res!1081723) b!1583409))

(assert (= (and b!1583409 res!1081724) b!1583410))

(assert (= (and start!137960 (is-Cons!37070 l!548)) b!1583411))

(declare-fun m!1453271 () Bool)

(assert (=> start!137960 m!1453271))

(declare-fun m!1453273 () Bool)

(assert (=> b!1583410 m!1453273))

(declare-fun m!1453275 () Bool)

(assert (=> b!1583410 m!1453275))

(push 1)

(assert (not start!137960))

(assert (not b!1583410))

(assert (not b!1583411))

(assert tp_is_empty!39395)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167195 () Bool)

(declare-fun res!1081739 () Bool)

(declare-fun e!883890 () Bool)

(assert (=> d!167195 (=> res!1081739 e!883890)))

(assert (=> d!167195 (= res!1081739 (or (is-Nil!37071 l!548) (is-Nil!37071 (t!51995 l!548))))))

(assert (=> d!167195 (= (isStrictlySorted!1145 l!548) e!883890)))

(declare-fun b!1583426 () Bool)

(declare-fun e!883891 () Bool)

(assert (=> b!1583426 (= e!883890 e!883891)))

(declare-fun res!1081740 () Bool)

(assert (=> b!1583426 (=> (not res!1081740) (not e!883891))))

(assert (=> b!1583426 (= res!1081740 (bvslt (_1!12969 (h!38614 l!548)) (_1!12969 (h!38614 (t!51995 l!548)))))))

(declare-fun b!1583427 () Bool)

(assert (=> b!1583427 (= e!883891 (isStrictlySorted!1145 (t!51995 l!548)))))

(assert (= (and d!167195 (not res!1081739)) b!1583426))

(assert (= (and b!1583426 res!1081740) b!1583427))

(declare-fun m!1453279 () Bool)

(assert (=> b!1583427 m!1453279))

(assert (=> start!137960 d!167195))

(declare-fun d!167201 () Bool)

(declare-fun lt!677107 () Int)

(assert (=> d!167201 (>= lt!677107 0)))

(declare-fun e!883905 () Int)

(assert (=> d!167201 (= lt!677107 e!883905)))

(declare-fun c!146688 () Bool)

(assert (=> d!167201 (= c!146688 (is-Nil!37071 (t!51995 l!548)))))

(assert (=> d!167201 (= (ListPrimitiveSize!216 (t!51995 l!548)) lt!677107)))

(declare-fun b!1583451 () Bool)

(assert (=> b!1583451 (= e!883905 0)))

(declare-fun b!1583452 () Bool)

(assert (=> b!1583452 (= e!883905 (+ 1 (ListPrimitiveSize!216 (t!51995 (t!51995 l!548)))))))

(assert (= (and d!167201 c!146688) b!1583451))

(assert (= (and d!167201 (not c!146688)) b!1583452))

(declare-fun m!1453285 () Bool)

(assert (=> b!1583452 m!1453285))

(assert (=> b!1583410 d!167201))

(declare-fun d!167207 () Bool)

(declare-fun lt!677109 () Int)

(assert (=> d!167207 (>= lt!677109 0)))

(declare-fun e!883907 () Int)

(assert (=> d!167207 (= lt!677109 e!883907)))

(declare-fun c!146690 () Bool)

(assert (=> d!167207 (= c!146690 (is-Nil!37071 l!548))))

(assert (=> d!167207 (= (ListPrimitiveSize!216 l!548) lt!677109)))

(declare-fun b!1583455 () Bool)

(assert (=> b!1583455 (= e!883907 0)))

(declare-fun b!1583456 () Bool)

(assert (=> b!1583456 (= e!883907 (+ 1 (ListPrimitiveSize!216 (t!51995 l!548))))))

(assert (= (and d!167207 c!146690) b!1583455))

(assert (= (and d!167207 (not c!146690)) b!1583456))

(assert (=> b!1583456 m!1453273))

