; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118258 () Bool)

(assert start!118258)

(declare-fun b!1382959 () Bool)

(declare-fun e!783886 () Bool)

(assert (=> b!1382959 (= e!783886 false)))

(declare-fun lt!608455 () Bool)

(declare-datatypes ((array!94479 0))(
  ( (array!94480 (arr!45613 (Array (_ BitVec 32) (_ BitVec 64))) (size!46164 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94479)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94479 (_ BitVec 32)) Bool)

(assert (=> b!1382959 (= lt!608455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1382958 () Bool)

(declare-fun res!924660 () Bool)

(assert (=> b!1382958 (=> (not res!924660) (not e!783886))))

(declare-datatypes ((List!32321 0))(
  ( (Nil!32318) (Cons!32317 (h!33526 (_ BitVec 64)) (t!47022 List!32321)) )
))
(declare-fun arrayNoDuplicates!0 (array!94479 (_ BitVec 32) List!32321) Bool)

(assert (=> b!1382958 (= res!924660 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32318))))

(declare-fun b!1382957 () Bool)

(declare-fun res!924659 () Bool)

(assert (=> b!1382957 (=> (not res!924659) (not e!783886))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382957 (= res!924659 (validKeyInArray!0 (select (arr!45613 a!2938) i!1065)))))

(declare-fun res!924658 () Bool)

(assert (=> start!118258 (=> (not res!924658) (not e!783886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118258 (= res!924658 (validMask!0 mask!2987))))

(assert (=> start!118258 e!783886))

(assert (=> start!118258 true))

(declare-fun array_inv!34558 (array!94479) Bool)

(assert (=> start!118258 (array_inv!34558 a!2938)))

(declare-fun b!1382956 () Bool)

(declare-fun res!924657 () Bool)

(assert (=> b!1382956 (=> (not res!924657) (not e!783886))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382956 (= res!924657 (and (= (size!46164 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46164 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46164 a!2938))))))

(assert (= (and start!118258 res!924658) b!1382956))

(assert (= (and b!1382956 res!924657) b!1382957))

(assert (= (and b!1382957 res!924659) b!1382958))

(assert (= (and b!1382958 res!924660) b!1382959))

(declare-fun m!1268117 () Bool)

(assert (=> b!1382959 m!1268117))

(declare-fun m!1268119 () Bool)

(assert (=> b!1382958 m!1268119))

(declare-fun m!1268121 () Bool)

(assert (=> b!1382957 m!1268121))

(assert (=> b!1382957 m!1268121))

(declare-fun m!1268123 () Bool)

(assert (=> b!1382957 m!1268123))

(declare-fun m!1268125 () Bool)

(assert (=> start!118258 m!1268125))

(declare-fun m!1268127 () Bool)

(assert (=> start!118258 m!1268127))

(push 1)

(assert (not b!1382957))

(assert (not b!1382959))

(assert (not start!118258))

(assert (not b!1382958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

