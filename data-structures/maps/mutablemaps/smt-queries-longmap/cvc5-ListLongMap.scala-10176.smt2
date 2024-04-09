; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120022 () Bool)

(assert start!120022)

(declare-fun b!1396631 () Bool)

(declare-fun e!790714 () Bool)

(declare-fun e!790713 () Bool)

(assert (=> b!1396631 (= e!790714 (not e!790713))))

(declare-fun res!935656 () Bool)

(assert (=> b!1396631 (=> res!935656 e!790713)))

(declare-datatypes ((SeekEntryResult!10423 0))(
  ( (MissingZero!10423 (index!44062 (_ BitVec 32))) (Found!10423 (index!44063 (_ BitVec 32))) (Intermediate!10423 (undefined!11235 Bool) (index!44064 (_ BitVec 32)) (x!125736 (_ BitVec 32))) (Undefined!10423) (MissingVacant!10423 (index!44065 (_ BitVec 32))) )
))
(declare-fun lt!613584 () SeekEntryResult!10423)

(assert (=> b!1396631 (= res!935656 (or (not (is-Intermediate!10423 lt!613584)) (undefined!11235 lt!613584)))))

(declare-fun e!790715 () Bool)

(assert (=> b!1396631 e!790715))

(declare-fun res!935660 () Bool)

(assert (=> b!1396631 (=> (not res!935660) (not e!790715))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95469 0))(
  ( (array!95470 (arr!46084 (Array (_ BitVec 32) (_ BitVec 64))) (size!46635 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95469)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95469 (_ BitVec 32)) Bool)

(assert (=> b!1396631 (= res!935660 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46800 0))(
  ( (Unit!46801) )
))
(declare-fun lt!613583 () Unit!46800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46800)

(assert (=> b!1396631 (= lt!613583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613580 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95469 (_ BitVec 32)) SeekEntryResult!10423)

(assert (=> b!1396631 (= lt!613584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613580 (select (arr!46084 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396631 (= lt!613580 (toIndex!0 (select (arr!46084 a!2901) j!112) mask!2840))))

(declare-fun b!1396632 () Bool)

(declare-fun e!790712 () Bool)

(assert (=> b!1396632 (= e!790713 e!790712)))

(declare-fun res!935657 () Bool)

(assert (=> b!1396632 (=> res!935657 e!790712)))

(declare-fun lt!613585 () SeekEntryResult!10423)

(assert (=> b!1396632 (= res!935657 (or (= lt!613584 lt!613585) (not (is-Intermediate!10423 lt!613585)) (bvslt (x!125736 lt!613584) #b00000000000000000000000000000000) (bvsgt (x!125736 lt!613584) #b01111111111111111111111111111110) (bvslt lt!613580 #b00000000000000000000000000000000) (bvsge lt!613580 (size!46635 a!2901)) (bvslt (index!44064 lt!613584) #b00000000000000000000000000000000) (bvsge (index!44064 lt!613584) (size!46635 a!2901)) (not (= lt!613584 (Intermediate!10423 false (index!44064 lt!613584) (x!125736 lt!613584)))) (not (= lt!613585 (Intermediate!10423 (undefined!11235 lt!613585) (index!44064 lt!613585) (x!125736 lt!613585))))))))

(declare-fun lt!613581 () (_ BitVec 64))

(declare-fun lt!613579 () array!95469)

(assert (=> b!1396632 (= lt!613585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613581 mask!2840) lt!613581 lt!613579 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396632 (= lt!613581 (select (store (arr!46084 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396632 (= lt!613579 (array!95470 (store (arr!46084 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46635 a!2901)))))

(declare-fun b!1396633 () Bool)

(declare-fun res!935659 () Bool)

(assert (=> b!1396633 (=> (not res!935659) (not e!790714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396633 (= res!935659 (validKeyInArray!0 (select (arr!46084 a!2901) i!1037)))))

(declare-fun b!1396634 () Bool)

(assert (=> b!1396634 (= e!790712 true)))

(declare-fun lt!613582 () SeekEntryResult!10423)

(assert (=> b!1396634 (= lt!613582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613580 lt!613581 lt!613579 mask!2840))))

(declare-fun b!1396635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95469 (_ BitVec 32)) SeekEntryResult!10423)

(assert (=> b!1396635 (= e!790715 (= (seekEntryOrOpen!0 (select (arr!46084 a!2901) j!112) a!2901 mask!2840) (Found!10423 j!112)))))

(declare-fun b!1396636 () Bool)

(declare-fun res!935661 () Bool)

(assert (=> b!1396636 (=> (not res!935661) (not e!790714))))

(assert (=> b!1396636 (= res!935661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396637 () Bool)

(declare-fun res!935655 () Bool)

(assert (=> b!1396637 (=> (not res!935655) (not e!790714))))

(assert (=> b!1396637 (= res!935655 (validKeyInArray!0 (select (arr!46084 a!2901) j!112)))))

(declare-fun b!1396638 () Bool)

(declare-fun res!935653 () Bool)

(assert (=> b!1396638 (=> (not res!935653) (not e!790714))))

(declare-datatypes ((List!32783 0))(
  ( (Nil!32780) (Cons!32779 (h!34021 (_ BitVec 64)) (t!47484 List!32783)) )
))
(declare-fun arrayNoDuplicates!0 (array!95469 (_ BitVec 32) List!32783) Bool)

(assert (=> b!1396638 (= res!935653 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32780))))

(declare-fun res!935658 () Bool)

(assert (=> start!120022 (=> (not res!935658) (not e!790714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120022 (= res!935658 (validMask!0 mask!2840))))

(assert (=> start!120022 e!790714))

(assert (=> start!120022 true))

(declare-fun array_inv!35029 (array!95469) Bool)

(assert (=> start!120022 (array_inv!35029 a!2901)))

(declare-fun b!1396639 () Bool)

(declare-fun res!935654 () Bool)

(assert (=> b!1396639 (=> (not res!935654) (not e!790714))))

(assert (=> b!1396639 (= res!935654 (and (= (size!46635 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46635 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46635 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120022 res!935658) b!1396639))

(assert (= (and b!1396639 res!935654) b!1396633))

(assert (= (and b!1396633 res!935659) b!1396637))

(assert (= (and b!1396637 res!935655) b!1396636))

(assert (= (and b!1396636 res!935661) b!1396638))

(assert (= (and b!1396638 res!935653) b!1396631))

(assert (= (and b!1396631 res!935660) b!1396635))

(assert (= (and b!1396631 (not res!935656)) b!1396632))

(assert (= (and b!1396632 (not res!935657)) b!1396634))

(declare-fun m!1283219 () Bool)

(assert (=> b!1396638 m!1283219))

(declare-fun m!1283221 () Bool)

(assert (=> b!1396636 m!1283221))

(declare-fun m!1283223 () Bool)

(assert (=> b!1396635 m!1283223))

(assert (=> b!1396635 m!1283223))

(declare-fun m!1283225 () Bool)

(assert (=> b!1396635 m!1283225))

(declare-fun m!1283227 () Bool)

(assert (=> b!1396634 m!1283227))

(declare-fun m!1283229 () Bool)

(assert (=> b!1396632 m!1283229))

(assert (=> b!1396632 m!1283229))

(declare-fun m!1283231 () Bool)

(assert (=> b!1396632 m!1283231))

(declare-fun m!1283233 () Bool)

(assert (=> b!1396632 m!1283233))

(declare-fun m!1283235 () Bool)

(assert (=> b!1396632 m!1283235))

(declare-fun m!1283237 () Bool)

(assert (=> b!1396633 m!1283237))

(assert (=> b!1396633 m!1283237))

(declare-fun m!1283239 () Bool)

(assert (=> b!1396633 m!1283239))

(declare-fun m!1283241 () Bool)

(assert (=> start!120022 m!1283241))

(declare-fun m!1283243 () Bool)

(assert (=> start!120022 m!1283243))

(assert (=> b!1396631 m!1283223))

(declare-fun m!1283245 () Bool)

(assert (=> b!1396631 m!1283245))

(assert (=> b!1396631 m!1283223))

(declare-fun m!1283247 () Bool)

(assert (=> b!1396631 m!1283247))

(assert (=> b!1396631 m!1283223))

(declare-fun m!1283249 () Bool)

(assert (=> b!1396631 m!1283249))

(declare-fun m!1283251 () Bool)

(assert (=> b!1396631 m!1283251))

(assert (=> b!1396637 m!1283223))

(assert (=> b!1396637 m!1283223))

(declare-fun m!1283253 () Bool)

(assert (=> b!1396637 m!1283253))

(push 1)

