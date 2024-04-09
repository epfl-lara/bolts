; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118582 () Bool)

(assert start!118582)

(declare-fun b!1385784 () Bool)

(declare-fun res!927143 () Bool)

(declare-fun e!785174 () Bool)

(assert (=> b!1385784 (=> (not res!927143) (not e!785174))))

(declare-datatypes ((array!94776 0))(
  ( (array!94777 (arr!45760 (Array (_ BitVec 32) (_ BitVec 64))) (size!46311 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94776)

(declare-datatypes ((List!32468 0))(
  ( (Nil!32465) (Cons!32464 (h!33673 (_ BitVec 64)) (t!47169 List!32468)) )
))
(declare-fun arrayNoDuplicates!0 (array!94776 (_ BitVec 32) List!32468) Bool)

(assert (=> b!1385784 (= res!927143 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32465))))

(declare-fun b!1385785 () Bool)

(assert (=> b!1385785 (= e!785174 false)))

(declare-fun lt!609274 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94776 (_ BitVec 32)) Bool)

(assert (=> b!1385785 (= lt!609274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385783 () Bool)

(declare-fun res!927141 () Bool)

(assert (=> b!1385783 (=> (not res!927141) (not e!785174))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385783 (= res!927141 (validKeyInArray!0 (select (arr!45760 a!2938) i!1065)))))

(declare-fun b!1385782 () Bool)

(declare-fun res!927144 () Bool)

(assert (=> b!1385782 (=> (not res!927144) (not e!785174))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385782 (= res!927144 (and (= (size!46311 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46311 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46311 a!2938))))))

(declare-fun res!927142 () Bool)

(assert (=> start!118582 (=> (not res!927142) (not e!785174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118582 (= res!927142 (validMask!0 mask!2987))))

(assert (=> start!118582 e!785174))

(assert (=> start!118582 true))

(declare-fun array_inv!34705 (array!94776) Bool)

(assert (=> start!118582 (array_inv!34705 a!2938)))

(assert (= (and start!118582 res!927142) b!1385782))

(assert (= (and b!1385782 res!927144) b!1385783))

(assert (= (and b!1385783 res!927141) b!1385784))

(assert (= (and b!1385784 res!927143) b!1385785))

(declare-fun m!1271117 () Bool)

(assert (=> b!1385784 m!1271117))

(declare-fun m!1271119 () Bool)

(assert (=> b!1385785 m!1271119))

(declare-fun m!1271121 () Bool)

(assert (=> b!1385783 m!1271121))

(assert (=> b!1385783 m!1271121))

(declare-fun m!1271123 () Bool)

(assert (=> b!1385783 m!1271123))

(declare-fun m!1271125 () Bool)

(assert (=> start!118582 m!1271125))

(declare-fun m!1271127 () Bool)

(assert (=> start!118582 m!1271127))

(push 1)

(assert (not b!1385783))

(assert (not b!1385785))

(assert (not start!118582))

(assert (not b!1385784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

