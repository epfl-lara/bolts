; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123932 () Bool)

(assert start!123932)

(declare-fun b!1435713 () Bool)

(declare-fun res!968831 () Bool)

(declare-fun e!810262 () Bool)

(assert (=> b!1435713 (=> (not res!968831) (not e!810262))))

(declare-datatypes ((array!97594 0))(
  ( (array!97595 (arr!47094 (Array (_ BitVec 32) (_ BitVec 64))) (size!47645 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97594)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435713 (= res!968831 (validKeyInArray!0 (select (arr!47094 a!2862) j!93)))))

(declare-fun b!1435714 () Bool)

(declare-fun res!968830 () Bool)

(assert (=> b!1435714 (=> (not res!968830) (not e!810262))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435714 (= res!968830 (validKeyInArray!0 (select (arr!47094 a!2862) i!1006)))))

(declare-fun b!1435715 () Bool)

(declare-fun res!968829 () Bool)

(assert (=> b!1435715 (=> (not res!968829) (not e!810262))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1435715 (= res!968829 (and (= (size!47645 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47645 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47645 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!968832 () Bool)

(assert (=> start!123932 (=> (not res!968832) (not e!810262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123932 (= res!968832 (validMask!0 mask!2687))))

(assert (=> start!123932 e!810262))

(assert (=> start!123932 true))

(declare-fun array_inv!36039 (array!97594) Bool)

(assert (=> start!123932 (array_inv!36039 a!2862)))

(declare-fun b!1435716 () Bool)

(assert (=> b!1435716 (= e!810262 (bvsgt #b00000000000000000000000000000000 (size!47645 a!2862)))))

(declare-fun b!1435717 () Bool)

(declare-fun res!968828 () Bool)

(assert (=> b!1435717 (=> (not res!968828) (not e!810262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97594 (_ BitVec 32)) Bool)

(assert (=> b!1435717 (= res!968828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!123932 res!968832) b!1435715))

(assert (= (and b!1435715 res!968829) b!1435714))

(assert (= (and b!1435714 res!968830) b!1435713))

(assert (= (and b!1435713 res!968831) b!1435717))

(assert (= (and b!1435717 res!968828) b!1435716))

(declare-fun m!1325139 () Bool)

(assert (=> b!1435713 m!1325139))

(assert (=> b!1435713 m!1325139))

(declare-fun m!1325141 () Bool)

(assert (=> b!1435713 m!1325141))

(declare-fun m!1325143 () Bool)

(assert (=> b!1435714 m!1325143))

(assert (=> b!1435714 m!1325143))

(declare-fun m!1325145 () Bool)

(assert (=> b!1435714 m!1325145))

(declare-fun m!1325147 () Bool)

(assert (=> start!123932 m!1325147))

(declare-fun m!1325149 () Bool)

(assert (=> start!123932 m!1325149))

(declare-fun m!1325151 () Bool)

(assert (=> b!1435717 m!1325151))

(push 1)

(assert (not b!1435714))

(assert (not b!1435717))

(assert (not b!1435713))

(assert (not start!123932))

(check-sat)

(pop 1)

