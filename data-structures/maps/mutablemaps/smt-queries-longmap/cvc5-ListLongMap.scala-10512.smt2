; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123928 () Bool)

(assert start!123928)

(declare-fun res!968798 () Bool)

(declare-fun e!810251 () Bool)

(assert (=> start!123928 (=> (not res!968798) (not e!810251))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123928 (= res!968798 (validMask!0 mask!2687))))

(assert (=> start!123928 e!810251))

(assert (=> start!123928 true))

(declare-datatypes ((array!97590 0))(
  ( (array!97591 (arr!47092 (Array (_ BitVec 32) (_ BitVec 64))) (size!47643 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97590)

(declare-fun array_inv!36037 (array!97590) Bool)

(assert (=> start!123928 (array_inv!36037 a!2862)))

(declare-fun b!1435683 () Bool)

(declare-fun res!968800 () Bool)

(assert (=> b!1435683 (=> (not res!968800) (not e!810251))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435683 (= res!968800 (and (= (size!47643 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47643 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47643 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435684 () Bool)

(declare-fun res!968802 () Bool)

(assert (=> b!1435684 (=> (not res!968802) (not e!810251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97590 (_ BitVec 32)) Bool)

(assert (=> b!1435684 (= res!968802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435685 () Bool)

(declare-fun res!968801 () Bool)

(assert (=> b!1435685 (=> (not res!968801) (not e!810251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435685 (= res!968801 (validKeyInArray!0 (select (arr!47092 a!2862) j!93)))))

(declare-fun b!1435686 () Bool)

(assert (=> b!1435686 (= e!810251 (bvsgt #b00000000000000000000000000000000 (size!47643 a!2862)))))

(declare-fun b!1435687 () Bool)

(declare-fun res!968799 () Bool)

(assert (=> b!1435687 (=> (not res!968799) (not e!810251))))

(assert (=> b!1435687 (= res!968799 (validKeyInArray!0 (select (arr!47092 a!2862) i!1006)))))

(assert (= (and start!123928 res!968798) b!1435683))

(assert (= (and b!1435683 res!968800) b!1435687))

(assert (= (and b!1435687 res!968799) b!1435685))

(assert (= (and b!1435685 res!968801) b!1435684))

(assert (= (and b!1435684 res!968802) b!1435686))

(declare-fun m!1325111 () Bool)

(assert (=> start!123928 m!1325111))

(declare-fun m!1325113 () Bool)

(assert (=> start!123928 m!1325113))

(declare-fun m!1325115 () Bool)

(assert (=> b!1435684 m!1325115))

(declare-fun m!1325117 () Bool)

(assert (=> b!1435685 m!1325117))

(assert (=> b!1435685 m!1325117))

(declare-fun m!1325119 () Bool)

(assert (=> b!1435685 m!1325119))

(declare-fun m!1325121 () Bool)

(assert (=> b!1435687 m!1325121))

(assert (=> b!1435687 m!1325121))

(declare-fun m!1325123 () Bool)

(assert (=> b!1435687 m!1325123))

(push 1)

(assert (not b!1435687))

(assert (not start!123928))

