; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88644 () Bool)

(assert start!88644)

(declare-fun b!1018307 () Bool)

(declare-fun e!573002 () Bool)

(assert (=> b!1018307 (= e!573002 (not true))))

(declare-datatypes ((B!1644 0))(
  ( (B!1645 (val!11906 Int)) )
))
(declare-datatypes ((tuple2!15448 0))(
  ( (tuple2!15449 (_1!7734 (_ BitVec 64)) (_2!7734 B!1644)) )
))
(declare-datatypes ((List!21708 0))(
  ( (Nil!21705) (Cons!21704 (h!22902 tuple2!15448) (t!30717 List!21708)) )
))
(declare-fun l!996 () List!21708)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun value!172 () B!1644)

(declare-fun length!43 (List!21708) Int)

(declare-fun insertStrictlySorted!340 (List!21708 (_ BitVec 64) B!1644) List!21708)

(assert (=> b!1018307 (= (length!43 (insertStrictlySorted!340 (t!30717 l!996) key!261 value!172)) (length!43 (t!30717 l!996)))))

(declare-datatypes ((Unit!33250 0))(
  ( (Unit!33251) )
))
(declare-fun lt!449513 () Unit!33250)

(declare-fun lemmaAddExistingKeyPreservesSize!3 (List!21708 (_ BitVec 64) B!1644) Unit!33250)

(assert (=> b!1018307 (= lt!449513 (lemmaAddExistingKeyPreservesSize!3 (t!30717 l!996) key!261 value!172))))

(declare-fun b!1018309 () Bool)

(declare-fun e!573003 () Bool)

(assert (=> b!1018309 (= e!573003 e!573002)))

(declare-fun res!682928 () Bool)

(assert (=> b!1018309 (=> (not res!682928) (not e!573002))))

(assert (=> b!1018309 (= res!682928 (and (is-Cons!21704 l!996) (bvslt (_1!7734 (h!22902 l!996)) key!261)))))

(declare-fun lt!449514 () List!21708)

(assert (=> b!1018309 (= lt!449514 (insertStrictlySorted!340 l!996 key!261 value!172))))

(declare-fun b!1018310 () Bool)

(declare-fun e!573004 () Bool)

(declare-fun tp_is_empty!23711 () Bool)

(declare-fun tp!71036 () Bool)

(assert (=> b!1018310 (= e!573004 (and tp_is_empty!23711 tp!71036))))

(declare-fun b!1018311 () Bool)

(declare-fun res!682926 () Bool)

(assert (=> b!1018311 (=> (not res!682926) (not e!573002))))

(declare-fun containsKey!520 (List!21708 (_ BitVec 64)) Bool)

(assert (=> b!1018311 (= res!682926 (containsKey!520 (t!30717 l!996) key!261))))

(declare-fun b!1018312 () Bool)

(declare-fun res!682929 () Bool)

(assert (=> b!1018312 (=> (not res!682929) (not e!573002))))

(declare-fun isStrictlySorted!655 (List!21708) Bool)

(assert (=> b!1018312 (= res!682929 (isStrictlySorted!655 (t!30717 l!996)))))

(declare-fun res!682927 () Bool)

(assert (=> start!88644 (=> (not res!682927) (not e!573003))))

(assert (=> start!88644 (= res!682927 (isStrictlySorted!655 l!996))))

(assert (=> start!88644 e!573003))

(assert (=> start!88644 e!573004))

(assert (=> start!88644 true))

(assert (=> start!88644 tp_is_empty!23711))

(declare-fun b!1018308 () Bool)

(declare-fun res!682925 () Bool)

(assert (=> b!1018308 (=> (not res!682925) (not e!573003))))

(assert (=> b!1018308 (= res!682925 (containsKey!520 l!996 key!261))))

(assert (= (and start!88644 res!682927) b!1018308))

(assert (= (and b!1018308 res!682925) b!1018309))

(assert (= (and b!1018309 res!682928) b!1018312))

(assert (= (and b!1018312 res!682929) b!1018311))

(assert (= (and b!1018311 res!682926) b!1018307))

(assert (= (and start!88644 (is-Cons!21704 l!996)) b!1018310))

(declare-fun m!939365 () Bool)

(assert (=> b!1018312 m!939365))

(declare-fun m!939367 () Bool)

(assert (=> b!1018308 m!939367))

(declare-fun m!939369 () Bool)

(assert (=> b!1018307 m!939369))

(assert (=> b!1018307 m!939369))

(declare-fun m!939371 () Bool)

(assert (=> b!1018307 m!939371))

(declare-fun m!939373 () Bool)

(assert (=> b!1018307 m!939373))

(declare-fun m!939375 () Bool)

(assert (=> b!1018307 m!939375))

(declare-fun m!939377 () Bool)

(assert (=> b!1018309 m!939377))

(declare-fun m!939379 () Bool)

(assert (=> start!88644 m!939379))

(declare-fun m!939381 () Bool)

(assert (=> b!1018311 m!939381))

(push 1)

