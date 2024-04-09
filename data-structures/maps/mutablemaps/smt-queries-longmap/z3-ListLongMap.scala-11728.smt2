; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137562 () Bool)

(assert start!137562)

(declare-fun res!1080715 () Bool)

(declare-fun e!882665 () Bool)

(assert (=> start!137562 (=> (not res!1080715) (not e!882665))))

(declare-datatypes ((B!2710 0))(
  ( (B!2711 (val!19717 Int)) )
))
(declare-datatypes ((tuple2!25766 0))(
  ( (tuple2!25767 (_1!12893 (_ BitVec 64)) (_2!12893 B!2710)) )
))
(declare-datatypes ((List!36998 0))(
  ( (Nil!36995) (Cons!36994 (h!38538 tuple2!25766) (t!51919 List!36998)) )
))
(declare-fun l!1390 () List!36998)

(declare-fun isStrictlySorted!1093 (List!36998) Bool)

(assert (=> start!137562 (= res!1080715 (isStrictlySorted!1093 l!1390))))

(assert (=> start!137562 e!882665))

(declare-fun e!882666 () Bool)

(assert (=> start!137562 e!882666))

(assert (=> start!137562 true))

(declare-fun tp_is_empty!39255 () Bool)

(assert (=> start!137562 tp_is_empty!39255))

(declare-fun b!1581744 () Bool)

(declare-fun res!1080716 () Bool)

(assert (=> b!1581744 (=> (not res!1080716) (not e!882665))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!939 (List!36998 (_ BitVec 64)) Bool)

(assert (=> b!1581744 (= res!1080716 (containsKey!939 l!1390 key!405))))

(declare-fun b!1581745 () Bool)

(assert (=> b!1581745 (= e!882665 false)))

(declare-fun lt!676945 () Bool)

(declare-fun value!194 () B!2710)

(declare-fun contains!10526 (List!36998 tuple2!25766) Bool)

(assert (=> b!1581745 (= lt!676945 (contains!10526 l!1390 (tuple2!25767 key!405 value!194)))))

(declare-fun b!1581746 () Bool)

(declare-fun tp!114619 () Bool)

(assert (=> b!1581746 (= e!882666 (and tp_is_empty!39255 tp!114619))))

(assert (= (and start!137562 res!1080715) b!1581744))

(assert (= (and b!1581744 res!1080716) b!1581745))

(get-info :version)

(assert (= (and start!137562 ((_ is Cons!36994) l!1390)) b!1581746))

(declare-fun m!1452557 () Bool)

(assert (=> start!137562 m!1452557))

(declare-fun m!1452559 () Bool)

(assert (=> b!1581744 m!1452559))

(declare-fun m!1452561 () Bool)

(assert (=> b!1581745 m!1452561))

(check-sat (not b!1581745) (not b!1581744) (not start!137562) (not b!1581746) tp_is_empty!39255)
(check-sat)
