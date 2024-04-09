; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88642 () Bool)

(assert start!88642)

(declare-fun b!1018289 () Bool)

(declare-fun e!572995 () Bool)

(declare-fun e!572993 () Bool)

(assert (=> b!1018289 (= e!572995 e!572993)))

(declare-fun res!682913 () Bool)

(assert (=> b!1018289 (=> (not res!682913) (not e!572993))))

(declare-datatypes ((B!1642 0))(
  ( (B!1643 (val!11905 Int)) )
))
(declare-datatypes ((tuple2!15446 0))(
  ( (tuple2!15447 (_1!7733 (_ BitVec 64)) (_2!7733 B!1642)) )
))
(declare-datatypes ((List!21707 0))(
  ( (Nil!21704) (Cons!21703 (h!22901 tuple2!15446) (t!30716 List!21707)) )
))
(declare-fun l!996 () List!21707)

(declare-fun key!261 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1018289 (= res!682913 (and ((_ is Cons!21703) l!996) (bvslt (_1!7733 (h!22901 l!996)) key!261)))))

(declare-fun lt!449507 () List!21707)

(declare-fun value!172 () B!1642)

(declare-fun insertStrictlySorted!339 (List!21707 (_ BitVec 64) B!1642) List!21707)

(assert (=> b!1018289 (= lt!449507 (insertStrictlySorted!339 l!996 key!261 value!172))))

(declare-fun b!1018291 () Bool)

(declare-fun e!572994 () Bool)

(declare-fun tp_is_empty!23709 () Bool)

(declare-fun tp!71033 () Bool)

(assert (=> b!1018291 (= e!572994 (and tp_is_empty!23709 tp!71033))))

(declare-fun b!1018292 () Bool)

(declare-fun res!682912 () Bool)

(assert (=> b!1018292 (=> (not res!682912) (not e!572995))))

(declare-fun containsKey!519 (List!21707 (_ BitVec 64)) Bool)

(assert (=> b!1018292 (= res!682912 (containsKey!519 l!996 key!261))))

(declare-fun b!1018293 () Bool)

(assert (=> b!1018293 (= e!572993 (not true))))

(declare-fun length!42 (List!21707) Int)

(assert (=> b!1018293 (= (length!42 (insertStrictlySorted!339 (t!30716 l!996) key!261 value!172)) (length!42 (t!30716 l!996)))))

(declare-datatypes ((Unit!33248 0))(
  ( (Unit!33249) )
))
(declare-fun lt!449508 () Unit!33248)

(declare-fun lemmaAddExistingKeyPreservesSize!2 (List!21707 (_ BitVec 64) B!1642) Unit!33248)

(assert (=> b!1018293 (= lt!449508 (lemmaAddExistingKeyPreservesSize!2 (t!30716 l!996) key!261 value!172))))

(declare-fun b!1018294 () Bool)

(declare-fun res!682914 () Bool)

(assert (=> b!1018294 (=> (not res!682914) (not e!572993))))

(declare-fun isStrictlySorted!654 (List!21707) Bool)

(assert (=> b!1018294 (= res!682914 (isStrictlySorted!654 (t!30716 l!996)))))

(declare-fun b!1018290 () Bool)

(declare-fun res!682911 () Bool)

(assert (=> b!1018290 (=> (not res!682911) (not e!572993))))

(assert (=> b!1018290 (= res!682911 (containsKey!519 (t!30716 l!996) key!261))))

(declare-fun res!682910 () Bool)

(assert (=> start!88642 (=> (not res!682910) (not e!572995))))

(assert (=> start!88642 (= res!682910 (isStrictlySorted!654 l!996))))

(assert (=> start!88642 e!572995))

(assert (=> start!88642 e!572994))

(assert (=> start!88642 true))

(assert (=> start!88642 tp_is_empty!23709))

(assert (= (and start!88642 res!682910) b!1018292))

(assert (= (and b!1018292 res!682912) b!1018289))

(assert (= (and b!1018289 res!682913) b!1018294))

(assert (= (and b!1018294 res!682914) b!1018290))

(assert (= (and b!1018290 res!682911) b!1018293))

(assert (= (and start!88642 ((_ is Cons!21703) l!996)) b!1018291))

(declare-fun m!939347 () Bool)

(assert (=> start!88642 m!939347))

(declare-fun m!939349 () Bool)

(assert (=> b!1018289 m!939349))

(declare-fun m!939351 () Bool)

(assert (=> b!1018293 m!939351))

(assert (=> b!1018293 m!939351))

(declare-fun m!939353 () Bool)

(assert (=> b!1018293 m!939353))

(declare-fun m!939355 () Bool)

(assert (=> b!1018293 m!939355))

(declare-fun m!939357 () Bool)

(assert (=> b!1018293 m!939357))

(declare-fun m!939359 () Bool)

(assert (=> b!1018294 m!939359))

(declare-fun m!939361 () Bool)

(assert (=> b!1018292 m!939361))

(declare-fun m!939363 () Bool)

(assert (=> b!1018290 m!939363))

(check-sat (not b!1018294) (not b!1018289) (not b!1018290) (not b!1018292) tp_is_empty!23709 (not b!1018291) (not b!1018293) (not start!88642))
(check-sat)
