; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119170 () Bool)

(assert start!119170)

(declare-fun b!1389689 () Bool)

(declare-fun e!787136 () Bool)

(assert (=> b!1389689 (= e!787136 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95025 0))(
  ( (array!95026 (arr!45874 (Array (_ BitVec 32) (_ BitVec 64))) (size!46425 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95025)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95025 (_ BitVec 32)) Bool)

(assert (=> b!1389689 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46380 0))(
  ( (Unit!46381) )
))
(declare-fun lt!610564 () Unit!46380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46380)

(assert (=> b!1389689 (= lt!610564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10213 0))(
  ( (MissingZero!10213 (index!43222 (_ BitVec 32))) (Found!10213 (index!43223 (_ BitVec 32))) (Intermediate!10213 (undefined!11025 Bool) (index!43224 (_ BitVec 32)) (x!124918 (_ BitVec 32))) (Undefined!10213) (MissingVacant!10213 (index!43225 (_ BitVec 32))) )
))
(declare-fun lt!610563 () SeekEntryResult!10213)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95025 (_ BitVec 32)) SeekEntryResult!10213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389689 (= lt!610563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45874 a!2901) j!112) mask!2840) (select (arr!45874 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389690 () Bool)

(declare-fun res!929961 () Bool)

(assert (=> b!1389690 (=> (not res!929961) (not e!787136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389690 (= res!929961 (validKeyInArray!0 (select (arr!45874 a!2901) j!112)))))

(declare-fun b!1389691 () Bool)

(declare-fun res!929960 () Bool)

(assert (=> b!1389691 (=> (not res!929960) (not e!787136))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389691 (= res!929960 (validKeyInArray!0 (select (arr!45874 a!2901) i!1037)))))

(declare-fun b!1389692 () Bool)

(declare-fun res!929964 () Bool)

(assert (=> b!1389692 (=> (not res!929964) (not e!787136))))

(assert (=> b!1389692 (= res!929964 (and (= (size!46425 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46425 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46425 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389693 () Bool)

(declare-fun res!929963 () Bool)

(assert (=> b!1389693 (=> (not res!929963) (not e!787136))))

(assert (=> b!1389693 (= res!929963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389694 () Bool)

(declare-fun res!929962 () Bool)

(assert (=> b!1389694 (=> (not res!929962) (not e!787136))))

(declare-datatypes ((List!32573 0))(
  ( (Nil!32570) (Cons!32569 (h!33787 (_ BitVec 64)) (t!47274 List!32573)) )
))
(declare-fun arrayNoDuplicates!0 (array!95025 (_ BitVec 32) List!32573) Bool)

(assert (=> b!1389694 (= res!929962 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32570))))

(declare-fun res!929959 () Bool)

(assert (=> start!119170 (=> (not res!929959) (not e!787136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119170 (= res!929959 (validMask!0 mask!2840))))

(assert (=> start!119170 e!787136))

(assert (=> start!119170 true))

(declare-fun array_inv!34819 (array!95025) Bool)

(assert (=> start!119170 (array_inv!34819 a!2901)))

(assert (= (and start!119170 res!929959) b!1389692))

(assert (= (and b!1389692 res!929964) b!1389691))

(assert (= (and b!1389691 res!929960) b!1389690))

(assert (= (and b!1389690 res!929961) b!1389693))

(assert (= (and b!1389693 res!929963) b!1389694))

(assert (= (and b!1389694 res!929962) b!1389689))

(declare-fun m!1275419 () Bool)

(assert (=> start!119170 m!1275419))

(declare-fun m!1275421 () Bool)

(assert (=> start!119170 m!1275421))

(declare-fun m!1275423 () Bool)

(assert (=> b!1389690 m!1275423))

(assert (=> b!1389690 m!1275423))

(declare-fun m!1275425 () Bool)

(assert (=> b!1389690 m!1275425))

(declare-fun m!1275427 () Bool)

(assert (=> b!1389693 m!1275427))

(declare-fun m!1275429 () Bool)

(assert (=> b!1389694 m!1275429))

(assert (=> b!1389689 m!1275423))

(declare-fun m!1275431 () Bool)

(assert (=> b!1389689 m!1275431))

(assert (=> b!1389689 m!1275423))

(declare-fun m!1275433 () Bool)

(assert (=> b!1389689 m!1275433))

(assert (=> b!1389689 m!1275431))

(assert (=> b!1389689 m!1275423))

(declare-fun m!1275435 () Bool)

(assert (=> b!1389689 m!1275435))

(declare-fun m!1275437 () Bool)

(assert (=> b!1389689 m!1275437))

(declare-fun m!1275439 () Bool)

(assert (=> b!1389691 m!1275439))

(assert (=> b!1389691 m!1275439))

(declare-fun m!1275441 () Bool)

(assert (=> b!1389691 m!1275441))

(push 1)

(assert (not b!1389694))

(assert (not b!1389693))

(assert (not b!1389691))

(assert (not b!1389690))

(assert (not b!1389689))

(assert (not start!119170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

