; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122218 () Bool)

(assert start!122218)

(declare-fun b!1417297 () Bool)

(declare-fun e!802169 () Bool)

(assert (=> b!1417297 (= e!802169 (not true))))

(declare-fun e!802167 () Bool)

(assert (=> b!1417297 e!802167))

(declare-fun res!953141 () Bool)

(assert (=> b!1417297 (=> (not res!953141) (not e!802167))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96720 0))(
  ( (array!96721 (arr!46684 (Array (_ BitVec 32) (_ BitVec 64))) (size!47235 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96720)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96720 (_ BitVec 32)) Bool)

(assert (=> b!1417297 (= res!953141 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47958 0))(
  ( (Unit!47959) )
))
(declare-fun lt!625294 () Unit!47958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47958)

(assert (=> b!1417297 (= lt!625294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11017 0))(
  ( (MissingZero!11017 (index!46459 (_ BitVec 32))) (Found!11017 (index!46460 (_ BitVec 32))) (Intermediate!11017 (undefined!11829 Bool) (index!46461 (_ BitVec 32)) (x!128071 (_ BitVec 32))) (Undefined!11017) (MissingVacant!11017 (index!46462 (_ BitVec 32))) )
))
(declare-fun lt!625293 () SeekEntryResult!11017)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96720 (_ BitVec 32)) SeekEntryResult!11017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417297 (= lt!625293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46684 a!2901) j!112) mask!2840) (select (arr!46684 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417298 () Bool)

(declare-fun res!953139 () Bool)

(assert (=> b!1417298 (=> (not res!953139) (not e!802169))))

(declare-datatypes ((List!33383 0))(
  ( (Nil!33380) (Cons!33379 (h!34672 (_ BitVec 64)) (t!48084 List!33383)) )
))
(declare-fun arrayNoDuplicates!0 (array!96720 (_ BitVec 32) List!33383) Bool)

(assert (=> b!1417298 (= res!953139 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33380))))

(declare-fun res!953138 () Bool)

(assert (=> start!122218 (=> (not res!953138) (not e!802169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122218 (= res!953138 (validMask!0 mask!2840))))

(assert (=> start!122218 e!802169))

(assert (=> start!122218 true))

(declare-fun array_inv!35629 (array!96720) Bool)

(assert (=> start!122218 (array_inv!35629 a!2901)))

(declare-fun b!1417299 () Bool)

(declare-fun res!953142 () Bool)

(assert (=> b!1417299 (=> (not res!953142) (not e!802169))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417299 (= res!953142 (validKeyInArray!0 (select (arr!46684 a!2901) i!1037)))))

(declare-fun b!1417300 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96720 (_ BitVec 32)) SeekEntryResult!11017)

(assert (=> b!1417300 (= e!802167 (= (seekEntryOrOpen!0 (select (arr!46684 a!2901) j!112) a!2901 mask!2840) (Found!11017 j!112)))))

(declare-fun b!1417301 () Bool)

(declare-fun res!953137 () Bool)

(assert (=> b!1417301 (=> (not res!953137) (not e!802169))))

(assert (=> b!1417301 (= res!953137 (validKeyInArray!0 (select (arr!46684 a!2901) j!112)))))

(declare-fun b!1417302 () Bool)

(declare-fun res!953140 () Bool)

(assert (=> b!1417302 (=> (not res!953140) (not e!802169))))

(assert (=> b!1417302 (= res!953140 (and (= (size!47235 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47235 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47235 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417303 () Bool)

(declare-fun res!953136 () Bool)

(assert (=> b!1417303 (=> (not res!953136) (not e!802169))))

(assert (=> b!1417303 (= res!953136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122218 res!953138) b!1417302))

(assert (= (and b!1417302 res!953140) b!1417299))

(assert (= (and b!1417299 res!953142) b!1417301))

(assert (= (and b!1417301 res!953137) b!1417303))

(assert (= (and b!1417303 res!953136) b!1417298))

(assert (= (and b!1417298 res!953139) b!1417297))

(assert (= (and b!1417297 res!953141) b!1417300))

(declare-fun m!1308059 () Bool)

(assert (=> b!1417297 m!1308059))

(declare-fun m!1308061 () Bool)

(assert (=> b!1417297 m!1308061))

(assert (=> b!1417297 m!1308059))

(declare-fun m!1308063 () Bool)

(assert (=> b!1417297 m!1308063))

(assert (=> b!1417297 m!1308061))

(assert (=> b!1417297 m!1308059))

(declare-fun m!1308065 () Bool)

(assert (=> b!1417297 m!1308065))

(declare-fun m!1308067 () Bool)

(assert (=> b!1417297 m!1308067))

(assert (=> b!1417301 m!1308059))

(assert (=> b!1417301 m!1308059))

(declare-fun m!1308069 () Bool)

(assert (=> b!1417301 m!1308069))

(declare-fun m!1308071 () Bool)

(assert (=> b!1417298 m!1308071))

(assert (=> b!1417300 m!1308059))

(assert (=> b!1417300 m!1308059))

(declare-fun m!1308073 () Bool)

(assert (=> b!1417300 m!1308073))

(declare-fun m!1308075 () Bool)

(assert (=> b!1417299 m!1308075))

(assert (=> b!1417299 m!1308075))

(declare-fun m!1308077 () Bool)

(assert (=> b!1417299 m!1308077))

(declare-fun m!1308079 () Bool)

(assert (=> b!1417303 m!1308079))

(declare-fun m!1308081 () Bool)

(assert (=> start!122218 m!1308081))

(declare-fun m!1308083 () Bool)

(assert (=> start!122218 m!1308083))

(push 1)

(assert (not b!1417301))

(assert (not b!1417300))

(assert (not b!1417299))

(assert (not b!1417303))

(assert (not start!122218))

(assert (not b!1417297))

(assert (not b!1417298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

