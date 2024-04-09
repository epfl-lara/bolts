; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119146 () Bool)

(assert start!119146)

(declare-fun b!1389473 () Bool)

(declare-fun e!787063 () Bool)

(assert (=> b!1389473 (= e!787063 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95001 0))(
  ( (array!95002 (arr!45862 (Array (_ BitVec 32) (_ BitVec 64))) (size!46413 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95001)

(declare-datatypes ((SeekEntryResult!10201 0))(
  ( (MissingZero!10201 (index!43174 (_ BitVec 32))) (Found!10201 (index!43175 (_ BitVec 32))) (Intermediate!10201 (undefined!11013 Bool) (index!43176 (_ BitVec 32)) (x!124874 (_ BitVec 32))) (Undefined!10201) (MissingVacant!10201 (index!43177 (_ BitVec 32))) )
))
(declare-fun lt!610525 () SeekEntryResult!10201)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95001 (_ BitVec 32)) SeekEntryResult!10201)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389473 (= lt!610525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45862 a!2901) j!112) mask!2840) (select (arr!45862 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389474 () Bool)

(declare-fun res!929743 () Bool)

(assert (=> b!1389474 (=> (not res!929743) (not e!787063))))

(declare-datatypes ((List!32561 0))(
  ( (Nil!32558) (Cons!32557 (h!33775 (_ BitVec 64)) (t!47262 List!32561)) )
))
(declare-fun arrayNoDuplicates!0 (array!95001 (_ BitVec 32) List!32561) Bool)

(assert (=> b!1389474 (= res!929743 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32558))))

(declare-fun b!1389475 () Bool)

(declare-fun res!929745 () Bool)

(assert (=> b!1389475 (=> (not res!929745) (not e!787063))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389475 (= res!929745 (and (= (size!46413 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46413 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46413 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389476 () Bool)

(declare-fun res!929744 () Bool)

(assert (=> b!1389476 (=> (not res!929744) (not e!787063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389476 (= res!929744 (validKeyInArray!0 (select (arr!45862 a!2901) i!1037)))))

(declare-fun b!1389477 () Bool)

(declare-fun res!929746 () Bool)

(assert (=> b!1389477 (=> (not res!929746) (not e!787063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95001 (_ BitVec 32)) Bool)

(assert (=> b!1389477 (= res!929746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389478 () Bool)

(declare-fun res!929748 () Bool)

(assert (=> b!1389478 (=> (not res!929748) (not e!787063))))

(assert (=> b!1389478 (= res!929748 (validKeyInArray!0 (select (arr!45862 a!2901) j!112)))))

(declare-fun res!929747 () Bool)

(assert (=> start!119146 (=> (not res!929747) (not e!787063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119146 (= res!929747 (validMask!0 mask!2840))))

(assert (=> start!119146 e!787063))

(assert (=> start!119146 true))

(declare-fun array_inv!34807 (array!95001) Bool)

(assert (=> start!119146 (array_inv!34807 a!2901)))

(assert (= (and start!119146 res!929747) b!1389475))

(assert (= (and b!1389475 res!929745) b!1389476))

(assert (= (and b!1389476 res!929744) b!1389478))

(assert (= (and b!1389478 res!929748) b!1389477))

(assert (= (and b!1389477 res!929746) b!1389474))

(assert (= (and b!1389474 res!929743) b!1389473))

(declare-fun m!1275179 () Bool)

(assert (=> start!119146 m!1275179))

(declare-fun m!1275181 () Bool)

(assert (=> start!119146 m!1275181))

(declare-fun m!1275183 () Bool)

(assert (=> b!1389473 m!1275183))

(assert (=> b!1389473 m!1275183))

(declare-fun m!1275185 () Bool)

(assert (=> b!1389473 m!1275185))

(assert (=> b!1389473 m!1275185))

(assert (=> b!1389473 m!1275183))

(declare-fun m!1275187 () Bool)

(assert (=> b!1389473 m!1275187))

(declare-fun m!1275189 () Bool)

(assert (=> b!1389474 m!1275189))

(declare-fun m!1275191 () Bool)

(assert (=> b!1389477 m!1275191))

(assert (=> b!1389478 m!1275183))

(assert (=> b!1389478 m!1275183))

(declare-fun m!1275193 () Bool)

(assert (=> b!1389478 m!1275193))

(declare-fun m!1275195 () Bool)

(assert (=> b!1389476 m!1275195))

(assert (=> b!1389476 m!1275195))

(declare-fun m!1275197 () Bool)

(assert (=> b!1389476 m!1275197))

(push 1)

(assert (not b!1389478))

(assert (not b!1389477))

(assert (not start!119146))

(assert (not b!1389474))

(assert (not b!1389473))

(assert (not b!1389476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

