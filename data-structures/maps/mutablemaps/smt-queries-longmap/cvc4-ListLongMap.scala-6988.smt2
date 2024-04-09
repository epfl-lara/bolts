; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88638 () Bool)

(assert start!88638)

(declare-fun res!682884 () Bool)

(declare-fun e!572976 () Bool)

(assert (=> start!88638 (=> (not res!682884) (not e!572976))))

(declare-datatypes ((B!1638 0))(
  ( (B!1639 (val!11903 Int)) )
))
(declare-datatypes ((tuple2!15442 0))(
  ( (tuple2!15443 (_1!7731 (_ BitVec 64)) (_2!7731 B!1638)) )
))
(declare-datatypes ((List!21705 0))(
  ( (Nil!21702) (Cons!21701 (h!22899 tuple2!15442) (t!30714 List!21705)) )
))
(declare-fun l!996 () List!21705)

(declare-fun isStrictlySorted!652 (List!21705) Bool)

(assert (=> start!88638 (= res!682884 (isStrictlySorted!652 l!996))))

(assert (=> start!88638 e!572976))

(declare-fun e!572977 () Bool)

(assert (=> start!88638 e!572977))

(assert (=> start!88638 true))

(declare-fun tp_is_empty!23705 () Bool)

(assert (=> start!88638 tp_is_empty!23705))

(declare-fun b!1018256 () Bool)

(declare-fun res!682883 () Bool)

(assert (=> b!1018256 (=> (not res!682883) (not e!572976))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!517 (List!21705 (_ BitVec 64)) Bool)

(assert (=> b!1018256 (= res!682883 (containsKey!517 l!996 key!261))))

(declare-fun b!1018257 () Bool)

(assert (=> b!1018257 (= e!572976 false)))

(declare-fun value!172 () B!1638)

(declare-fun lt!449496 () List!21705)

(declare-fun insertStrictlySorted!337 (List!21705 (_ BitVec 64) B!1638) List!21705)

(assert (=> b!1018257 (= lt!449496 (insertStrictlySorted!337 l!996 key!261 value!172))))

(declare-fun b!1018258 () Bool)

(declare-fun tp!71027 () Bool)

(assert (=> b!1018258 (= e!572977 (and tp_is_empty!23705 tp!71027))))

(assert (= (and start!88638 res!682884) b!1018256))

(assert (= (and b!1018256 res!682883) b!1018257))

(assert (= (and start!88638 (is-Cons!21701 l!996)) b!1018258))

(declare-fun m!939323 () Bool)

(assert (=> start!88638 m!939323))

(declare-fun m!939325 () Bool)

(assert (=> b!1018256 m!939325))

(declare-fun m!939327 () Bool)

(assert (=> b!1018257 m!939327))

(push 1)

(assert tp_is_empty!23705)

(assert (not b!1018258))

(assert (not start!88638))

(assert (not b!1018257))

(assert (not b!1018256))

