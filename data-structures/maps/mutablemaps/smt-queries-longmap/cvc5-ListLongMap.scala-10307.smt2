; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121204 () Bool)

(assert start!121204)

(declare-fun b!1408728 () Bool)

(declare-fun res!946565 () Bool)

(declare-fun e!797266 () Bool)

(assert (=> b!1408728 (=> (not res!946565) (not e!797266))))

(declare-datatypes ((array!96276 0))(
  ( (array!96277 (arr!46477 (Array (_ BitVec 32) (_ BitVec 64))) (size!47028 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96276)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408728 (= res!946565 (validKeyInArray!0 (select (arr!46477 a!2901) j!112)))))

(declare-fun b!1408729 () Bool)

(declare-fun e!797267 () Bool)

(assert (=> b!1408729 (= e!797267 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10810 0))(
  ( (MissingZero!10810 (index!45616 (_ BitVec 32))) (Found!10810 (index!45617 (_ BitVec 32))) (Intermediate!10810 (undefined!11622 Bool) (index!45618 (_ BitVec 32)) (x!127222 (_ BitVec 32))) (Undefined!10810) (MissingVacant!10810 (index!45619 (_ BitVec 32))) )
))
(declare-fun lt!620428 () SeekEntryResult!10810)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96276 (_ BitVec 32)) SeekEntryResult!10810)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408729 (= lt!620428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46477 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46477 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96277 (store (arr!46477 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47028 a!2901)) mask!2840))))

(declare-fun b!1408730 () Bool)

(declare-fun e!797265 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96276 (_ BitVec 32)) SeekEntryResult!10810)

(assert (=> b!1408730 (= e!797265 (= (seekEntryOrOpen!0 (select (arr!46477 a!2901) j!112) a!2901 mask!2840) (Found!10810 j!112)))))

(declare-fun b!1408731 () Bool)

(declare-fun res!946559 () Bool)

(assert (=> b!1408731 (=> (not res!946559) (not e!797266))))

(assert (=> b!1408731 (= res!946559 (and (= (size!47028 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47028 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47028 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408732 () Bool)

(declare-fun res!946563 () Bool)

(assert (=> b!1408732 (=> (not res!946563) (not e!797266))))

(assert (=> b!1408732 (= res!946563 (validKeyInArray!0 (select (arr!46477 a!2901) i!1037)))))

(declare-fun b!1408734 () Bool)

(declare-fun res!946562 () Bool)

(assert (=> b!1408734 (=> (not res!946562) (not e!797266))))

(declare-datatypes ((List!33176 0))(
  ( (Nil!33173) (Cons!33172 (h!34435 (_ BitVec 64)) (t!47877 List!33176)) )
))
(declare-fun arrayNoDuplicates!0 (array!96276 (_ BitVec 32) List!33176) Bool)

(assert (=> b!1408734 (= res!946562 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33173))))

(declare-fun b!1408735 () Bool)

(assert (=> b!1408735 (= e!797266 (not e!797267))))

(declare-fun res!946566 () Bool)

(assert (=> b!1408735 (=> res!946566 e!797267)))

(declare-fun lt!620426 () SeekEntryResult!10810)

(assert (=> b!1408735 (= res!946566 (or (not (is-Intermediate!10810 lt!620426)) (undefined!11622 lt!620426)))))

(assert (=> b!1408735 e!797265))

(declare-fun res!946561 () Bool)

(assert (=> b!1408735 (=> (not res!946561) (not e!797265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96276 (_ BitVec 32)) Bool)

(assert (=> b!1408735 (= res!946561 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47544 0))(
  ( (Unit!47545) )
))
(declare-fun lt!620427 () Unit!47544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47544)

(assert (=> b!1408735 (= lt!620427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408735 (= lt!620426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46477 a!2901) j!112) mask!2840) (select (arr!46477 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946564 () Bool)

(assert (=> start!121204 (=> (not res!946564) (not e!797266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121204 (= res!946564 (validMask!0 mask!2840))))

(assert (=> start!121204 e!797266))

(assert (=> start!121204 true))

(declare-fun array_inv!35422 (array!96276) Bool)

(assert (=> start!121204 (array_inv!35422 a!2901)))

(declare-fun b!1408733 () Bool)

(declare-fun res!946560 () Bool)

(assert (=> b!1408733 (=> (not res!946560) (not e!797266))))

(assert (=> b!1408733 (= res!946560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121204 res!946564) b!1408731))

(assert (= (and b!1408731 res!946559) b!1408732))

(assert (= (and b!1408732 res!946563) b!1408728))

(assert (= (and b!1408728 res!946565) b!1408733))

(assert (= (and b!1408733 res!946560) b!1408734))

(assert (= (and b!1408734 res!946562) b!1408735))

(assert (= (and b!1408735 res!946561) b!1408730))

(assert (= (and b!1408735 (not res!946566)) b!1408729))

(declare-fun m!1298243 () Bool)

(assert (=> b!1408732 m!1298243))

(assert (=> b!1408732 m!1298243))

(declare-fun m!1298245 () Bool)

(assert (=> b!1408732 m!1298245))

(declare-fun m!1298247 () Bool)

(assert (=> b!1408729 m!1298247))

(declare-fun m!1298249 () Bool)

(assert (=> b!1408729 m!1298249))

(assert (=> b!1408729 m!1298249))

(declare-fun m!1298251 () Bool)

(assert (=> b!1408729 m!1298251))

(assert (=> b!1408729 m!1298251))

(assert (=> b!1408729 m!1298249))

(declare-fun m!1298253 () Bool)

(assert (=> b!1408729 m!1298253))

(declare-fun m!1298255 () Bool)

(assert (=> b!1408733 m!1298255))

(declare-fun m!1298257 () Bool)

(assert (=> b!1408735 m!1298257))

(declare-fun m!1298259 () Bool)

(assert (=> b!1408735 m!1298259))

(assert (=> b!1408735 m!1298257))

(declare-fun m!1298261 () Bool)

(assert (=> b!1408735 m!1298261))

(assert (=> b!1408735 m!1298259))

(assert (=> b!1408735 m!1298257))

(declare-fun m!1298263 () Bool)

(assert (=> b!1408735 m!1298263))

(declare-fun m!1298265 () Bool)

(assert (=> b!1408735 m!1298265))

(assert (=> b!1408728 m!1298257))

(assert (=> b!1408728 m!1298257))

(declare-fun m!1298267 () Bool)

(assert (=> b!1408728 m!1298267))

(declare-fun m!1298269 () Bool)

(assert (=> b!1408734 m!1298269))

(declare-fun m!1298271 () Bool)

(assert (=> start!121204 m!1298271))

(declare-fun m!1298273 () Bool)

(assert (=> start!121204 m!1298273))

(assert (=> b!1408730 m!1298257))

(assert (=> b!1408730 m!1298257))

(declare-fun m!1298275 () Bool)

(assert (=> b!1408730 m!1298275))

(push 1)

(assert (not start!121204))

(assert (not b!1408730))

(assert (not b!1408729))

(assert (not b!1408733))

(assert (not b!1408734))

(assert (not b!1408732))

(assert (not b!1408735))

(assert (not b!1408728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

