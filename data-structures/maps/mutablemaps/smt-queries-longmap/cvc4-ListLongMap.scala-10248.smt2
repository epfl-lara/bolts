; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120584 () Bool)

(assert start!120584)

(declare-fun res!942171 () Bool)

(declare-fun e!794717 () Bool)

(assert (=> start!120584 (=> (not res!942171) (not e!794717))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120584 (= res!942171 (validMask!0 mask!2840))))

(assert (=> start!120584 e!794717))

(assert (=> start!120584 true))

(declare-datatypes ((array!95911 0))(
  ( (array!95912 (arr!46302 (Array (_ BitVec 32) (_ BitVec 64))) (size!46853 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95911)

(declare-fun array_inv!35247 (array!95911) Bool)

(assert (=> start!120584 (array_inv!35247 a!2901)))

(declare-fun b!1403551 () Bool)

(declare-fun res!942172 () Bool)

(assert (=> b!1403551 (=> (not res!942172) (not e!794717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95911 (_ BitVec 32)) Bool)

(assert (=> b!1403551 (= res!942172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403552 () Bool)

(assert (=> b!1403552 (= e!794717 (not true))))

(declare-fun e!794715 () Bool)

(assert (=> b!1403552 e!794715))

(declare-fun res!942176 () Bool)

(assert (=> b!1403552 (=> (not res!942176) (not e!794715))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403552 (= res!942176 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47236 0))(
  ( (Unit!47237) )
))
(declare-fun lt!618402 () Unit!47236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47236)

(assert (=> b!1403552 (= lt!618402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10641 0))(
  ( (MissingZero!10641 (index!44940 (_ BitVec 32))) (Found!10641 (index!44941 (_ BitVec 32))) (Intermediate!10641 (undefined!11453 Bool) (index!44942 (_ BitVec 32)) (x!126551 (_ BitVec 32))) (Undefined!10641) (MissingVacant!10641 (index!44943 (_ BitVec 32))) )
))
(declare-fun lt!618403 () SeekEntryResult!10641)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95911 (_ BitVec 32)) SeekEntryResult!10641)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403552 (= lt!618403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46302 a!2901) j!112) mask!2840) (select (arr!46302 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403553 () Bool)

(declare-fun res!942173 () Bool)

(assert (=> b!1403553 (=> (not res!942173) (not e!794717))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403553 (= res!942173 (validKeyInArray!0 (select (arr!46302 a!2901) i!1037)))))

(declare-fun b!1403554 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95911 (_ BitVec 32)) SeekEntryResult!10641)

(assert (=> b!1403554 (= e!794715 (= (seekEntryOrOpen!0 (select (arr!46302 a!2901) j!112) a!2901 mask!2840) (Found!10641 j!112)))))

(declare-fun b!1403555 () Bool)

(declare-fun res!942174 () Bool)

(assert (=> b!1403555 (=> (not res!942174) (not e!794717))))

(assert (=> b!1403555 (= res!942174 (and (= (size!46853 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46853 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46853 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403556 () Bool)

(declare-fun res!942175 () Bool)

(assert (=> b!1403556 (=> (not res!942175) (not e!794717))))

(assert (=> b!1403556 (= res!942175 (validKeyInArray!0 (select (arr!46302 a!2901) j!112)))))

(declare-fun b!1403557 () Bool)

(declare-fun res!942177 () Bool)

(assert (=> b!1403557 (=> (not res!942177) (not e!794717))))

(declare-datatypes ((List!33001 0))(
  ( (Nil!32998) (Cons!32997 (h!34245 (_ BitVec 64)) (t!47702 List!33001)) )
))
(declare-fun arrayNoDuplicates!0 (array!95911 (_ BitVec 32) List!33001) Bool)

(assert (=> b!1403557 (= res!942177 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32998))))

(assert (= (and start!120584 res!942171) b!1403555))

(assert (= (and b!1403555 res!942174) b!1403553))

(assert (= (and b!1403553 res!942173) b!1403556))

(assert (= (and b!1403556 res!942175) b!1403551))

(assert (= (and b!1403551 res!942172) b!1403557))

(assert (= (and b!1403557 res!942177) b!1403552))

(assert (= (and b!1403552 res!942176) b!1403554))

(declare-fun m!1292313 () Bool)

(assert (=> b!1403552 m!1292313))

(declare-fun m!1292315 () Bool)

(assert (=> b!1403552 m!1292315))

(assert (=> b!1403552 m!1292313))

(declare-fun m!1292317 () Bool)

(assert (=> b!1403552 m!1292317))

(assert (=> b!1403552 m!1292315))

(assert (=> b!1403552 m!1292313))

(declare-fun m!1292319 () Bool)

(assert (=> b!1403552 m!1292319))

(declare-fun m!1292321 () Bool)

(assert (=> b!1403552 m!1292321))

(declare-fun m!1292323 () Bool)

(assert (=> b!1403551 m!1292323))

(declare-fun m!1292325 () Bool)

(assert (=> b!1403553 m!1292325))

(assert (=> b!1403553 m!1292325))

(declare-fun m!1292327 () Bool)

(assert (=> b!1403553 m!1292327))

(declare-fun m!1292329 () Bool)

(assert (=> start!120584 m!1292329))

(declare-fun m!1292331 () Bool)

(assert (=> start!120584 m!1292331))

(assert (=> b!1403554 m!1292313))

(assert (=> b!1403554 m!1292313))

(declare-fun m!1292333 () Bool)

(assert (=> b!1403554 m!1292333))

(declare-fun m!1292335 () Bool)

(assert (=> b!1403557 m!1292335))

(assert (=> b!1403556 m!1292313))

(assert (=> b!1403556 m!1292313))

(declare-fun m!1292337 () Bool)

(assert (=> b!1403556 m!1292337))

(push 1)

(assert (not b!1403554))

(assert (not b!1403551))

(assert (not b!1403552))

(assert (not b!1403553))

(assert (not b!1403557))

(assert (not start!120584))

(assert (not b!1403556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

