; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7628 () Bool)

(assert start!7628)

(declare-fun b!48651 () Bool)

(declare-fun res!28241 () Bool)

(declare-fun e!31236 () Bool)

(assert (=> b!48651 (=> (not res!28241) (not e!31236))))

(declare-datatypes ((B!960 0))(
  ( (B!961 (val!1100 Int)) )
))
(declare-datatypes ((tuple2!1786 0))(
  ( (tuple2!1787 (_1!903 (_ BitVec 64)) (_2!903 B!960)) )
))
(declare-datatypes ((List!1316 0))(
  ( (Nil!1313) (Cons!1312 (h!1892 tuple2!1786) (t!4352 List!1316)) )
))
(declare-fun l!1333 () List!1316)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!112 (List!1316 (_ BitVec 64)) Bool)

(assert (=> b!48651 (= res!28241 (not (containsKey!112 l!1333 newKey!147)))))

(declare-fun b!48652 () Bool)

(declare-fun res!28240 () Bool)

(assert (=> b!48652 (=> (not res!28240) (not e!31236))))

(assert (=> b!48652 (= res!28240 (not (is-Nil!1313 l!1333)))))

(declare-fun b!48654 () Bool)

(declare-fun e!31237 () Bool)

(declare-fun tp_is_empty!2111 () Bool)

(declare-fun tp!6425 () Bool)

(assert (=> b!48654 (= e!31237 (and tp_is_empty!2111 tp!6425))))

(declare-fun b!48653 () Bool)

(assert (=> b!48653 (= e!31236 false)))

(declare-datatypes ((Unit!1368 0))(
  ( (Unit!1369) )
))
(declare-fun lt!20685 () Unit!1368)

(declare-fun newValue!147 () B!960)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!6 (List!1316 (_ BitVec 64) B!960) Unit!1368)

(assert (=> b!48653 (= lt!20685 (lemmaInsertStrictlySortedNotContainedContent!6 (t!4352 l!1333) newKey!147 newValue!147))))

(declare-fun res!28242 () Bool)

(assert (=> start!7628 (=> (not res!28242) (not e!31236))))

(declare-fun isStrictlySorted!260 (List!1316) Bool)

(assert (=> start!7628 (= res!28242 (isStrictlySorted!260 l!1333))))

(assert (=> start!7628 e!31236))

(assert (=> start!7628 e!31237))

(assert (=> start!7628 true))

(assert (=> start!7628 tp_is_empty!2111))

(assert (= (and start!7628 res!28242) b!48651))

(assert (= (and b!48651 res!28241) b!48652))

(assert (= (and b!48652 res!28240) b!48653))

(assert (= (and start!7628 (is-Cons!1312 l!1333)) b!48654))

(declare-fun m!42393 () Bool)

(assert (=> b!48651 m!42393))

(declare-fun m!42395 () Bool)

(assert (=> b!48653 m!42395))

(declare-fun m!42397 () Bool)

(assert (=> start!7628 m!42397))

(push 1)

(assert tp_is_empty!2111)

(assert (not b!48651))

(assert (not start!7628))

(assert (not b!48653))

(assert (not b!48654))

(check-sat)

(pop 1)

