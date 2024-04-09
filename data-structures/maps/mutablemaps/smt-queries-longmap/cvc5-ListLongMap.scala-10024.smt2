; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118288 () Bool)

(assert start!118288)

(declare-fun b!1383138 () Bool)

(declare-fun res!924839 () Bool)

(declare-fun e!783976 () Bool)

(assert (=> b!1383138 (=> (not res!924839) (not e!783976))))

(declare-datatypes ((array!94509 0))(
  ( (array!94510 (arr!45628 (Array (_ BitVec 32) (_ BitVec 64))) (size!46179 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94509)

(declare-datatypes ((List!32336 0))(
  ( (Nil!32333) (Cons!32332 (h!33541 (_ BitVec 64)) (t!47037 List!32336)) )
))
(declare-fun arrayNoDuplicates!0 (array!94509 (_ BitVec 32) List!32336) Bool)

(assert (=> b!1383138 (= res!924839 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32333))))

(declare-fun b!1383136 () Bool)

(declare-fun res!924837 () Bool)

(assert (=> b!1383136 (=> (not res!924837) (not e!783976))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383136 (= res!924837 (and (= (size!46179 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46179 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46179 a!2938))))))

(declare-fun res!924838 () Bool)

(assert (=> start!118288 (=> (not res!924838) (not e!783976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118288 (= res!924838 (validMask!0 mask!2987))))

(assert (=> start!118288 e!783976))

(assert (=> start!118288 true))

(declare-fun array_inv!34573 (array!94509) Bool)

(assert (=> start!118288 (array_inv!34573 a!2938)))

(declare-fun b!1383139 () Bool)

(assert (=> b!1383139 (= e!783976 false)))

(declare-fun lt!608500 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94509 (_ BitVec 32)) Bool)

(assert (=> b!1383139 (= lt!608500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383137 () Bool)

(declare-fun res!924840 () Bool)

(assert (=> b!1383137 (=> (not res!924840) (not e!783976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383137 (= res!924840 (validKeyInArray!0 (select (arr!45628 a!2938) i!1065)))))

(assert (= (and start!118288 res!924838) b!1383136))

(assert (= (and b!1383136 res!924837) b!1383137))

(assert (= (and b!1383137 res!924840) b!1383138))

(assert (= (and b!1383138 res!924839) b!1383139))

(declare-fun m!1268297 () Bool)

(assert (=> b!1383138 m!1268297))

(declare-fun m!1268299 () Bool)

(assert (=> start!118288 m!1268299))

(declare-fun m!1268301 () Bool)

(assert (=> start!118288 m!1268301))

(declare-fun m!1268303 () Bool)

(assert (=> b!1383139 m!1268303))

(declare-fun m!1268305 () Bool)

(assert (=> b!1383137 m!1268305))

(assert (=> b!1383137 m!1268305))

(declare-fun m!1268307 () Bool)

(assert (=> b!1383137 m!1268307))

(push 1)

(assert (not b!1383137))

(assert (not start!118288))

(assert (not b!1383138))

(assert (not b!1383139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

