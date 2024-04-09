; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120530 () Bool)

(assert start!120530)

(declare-fun b!1402920 () Bool)

(declare-fun e!794411 () Bool)

(declare-fun e!794410 () Bool)

(assert (=> b!1402920 (= e!794411 (not e!794410))))

(declare-fun res!941544 () Bool)

(assert (=> b!1402920 (=> res!941544 e!794410)))

(declare-datatypes ((SeekEntryResult!10614 0))(
  ( (MissingZero!10614 (index!44832 (_ BitVec 32))) (Found!10614 (index!44833 (_ BitVec 32))) (Intermediate!10614 (undefined!11426 Bool) (index!44834 (_ BitVec 32)) (x!126452 (_ BitVec 32))) (Undefined!10614) (MissingVacant!10614 (index!44835 (_ BitVec 32))) )
))
(declare-fun lt!618177 () SeekEntryResult!10614)

(assert (=> b!1402920 (= res!941544 (or (not (is-Intermediate!10614 lt!618177)) (undefined!11426 lt!618177)))))

(declare-fun e!794408 () Bool)

(assert (=> b!1402920 e!794408))

(declare-fun res!941545 () Bool)

(assert (=> b!1402920 (=> (not res!941545) (not e!794408))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95857 0))(
  ( (array!95858 (arr!46275 (Array (_ BitVec 32) (_ BitVec 64))) (size!46826 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95857)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95857 (_ BitVec 32)) Bool)

(assert (=> b!1402920 (= res!941545 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47182 0))(
  ( (Unit!47183) )
))
(declare-fun lt!618176 () Unit!47182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47182)

(assert (=> b!1402920 (= lt!618176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95857 (_ BitVec 32)) SeekEntryResult!10614)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402920 (= lt!618177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46275 a!2901) j!112) mask!2840) (select (arr!46275 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1402921 () Bool)

(declare-fun res!941542 () Bool)

(assert (=> b!1402921 (=> (not res!941542) (not e!794411))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402921 (= res!941542 (and (= (size!46826 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46826 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46826 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402923 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95857 (_ BitVec 32)) SeekEntryResult!10614)

(assert (=> b!1402923 (= e!794408 (= (seekEntryOrOpen!0 (select (arr!46275 a!2901) j!112) a!2901 mask!2840) (Found!10614 j!112)))))

(declare-fun b!1402924 () Bool)

(declare-fun res!941540 () Bool)

(assert (=> b!1402924 (=> (not res!941540) (not e!794411))))

(assert (=> b!1402924 (= res!941540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402925 () Bool)

(assert (=> b!1402925 (= e!794410 true)))

(declare-fun lt!618178 () SeekEntryResult!10614)

(assert (=> b!1402925 (= lt!618178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46275 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46275 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95858 (store (arr!46275 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46826 a!2901)) mask!2840))))

(declare-fun b!1402922 () Bool)

(declare-fun res!941546 () Bool)

(assert (=> b!1402922 (=> (not res!941546) (not e!794411))))

(declare-datatypes ((List!32974 0))(
  ( (Nil!32971) (Cons!32970 (h!34218 (_ BitVec 64)) (t!47675 List!32974)) )
))
(declare-fun arrayNoDuplicates!0 (array!95857 (_ BitVec 32) List!32974) Bool)

(assert (=> b!1402922 (= res!941546 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32971))))

(declare-fun res!941547 () Bool)

(assert (=> start!120530 (=> (not res!941547) (not e!794411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120530 (= res!941547 (validMask!0 mask!2840))))

(assert (=> start!120530 e!794411))

(assert (=> start!120530 true))

(declare-fun array_inv!35220 (array!95857) Bool)

(assert (=> start!120530 (array_inv!35220 a!2901)))

(declare-fun b!1402926 () Bool)

(declare-fun res!941543 () Bool)

(assert (=> b!1402926 (=> (not res!941543) (not e!794411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402926 (= res!941543 (validKeyInArray!0 (select (arr!46275 a!2901) j!112)))))

(declare-fun b!1402927 () Bool)

(declare-fun res!941541 () Bool)

(assert (=> b!1402927 (=> (not res!941541) (not e!794411))))

(assert (=> b!1402927 (= res!941541 (validKeyInArray!0 (select (arr!46275 a!2901) i!1037)))))

(assert (= (and start!120530 res!941547) b!1402921))

(assert (= (and b!1402921 res!941542) b!1402927))

(assert (= (and b!1402927 res!941541) b!1402926))

(assert (= (and b!1402926 res!941543) b!1402924))

(assert (= (and b!1402924 res!941540) b!1402922))

(assert (= (and b!1402922 res!941546) b!1402920))

(assert (= (and b!1402920 res!941545) b!1402923))

(assert (= (and b!1402920 (not res!941544)) b!1402925))

(declare-fun m!1291435 () Bool)

(assert (=> b!1402920 m!1291435))

(declare-fun m!1291437 () Bool)

(assert (=> b!1402920 m!1291437))

(assert (=> b!1402920 m!1291435))

(declare-fun m!1291439 () Bool)

(assert (=> b!1402920 m!1291439))

(assert (=> b!1402920 m!1291437))

(assert (=> b!1402920 m!1291435))

(declare-fun m!1291441 () Bool)

(assert (=> b!1402920 m!1291441))

(declare-fun m!1291443 () Bool)

(assert (=> b!1402920 m!1291443))

(declare-fun m!1291445 () Bool)

(assert (=> b!1402927 m!1291445))

(assert (=> b!1402927 m!1291445))

(declare-fun m!1291447 () Bool)

(assert (=> b!1402927 m!1291447))

(declare-fun m!1291449 () Bool)

(assert (=> b!1402922 m!1291449))

(declare-fun m!1291451 () Bool)

(assert (=> b!1402924 m!1291451))

(assert (=> b!1402926 m!1291435))

(assert (=> b!1402926 m!1291435))

(declare-fun m!1291453 () Bool)

(assert (=> b!1402926 m!1291453))

(assert (=> b!1402923 m!1291435))

(assert (=> b!1402923 m!1291435))

(declare-fun m!1291455 () Bool)

(assert (=> b!1402923 m!1291455))

(declare-fun m!1291457 () Bool)

(assert (=> b!1402925 m!1291457))

(declare-fun m!1291459 () Bool)

(assert (=> b!1402925 m!1291459))

(assert (=> b!1402925 m!1291459))

(declare-fun m!1291461 () Bool)

(assert (=> b!1402925 m!1291461))

(assert (=> b!1402925 m!1291461))

(assert (=> b!1402925 m!1291459))

(declare-fun m!1291463 () Bool)

(assert (=> b!1402925 m!1291463))

(declare-fun m!1291465 () Bool)

(assert (=> start!120530 m!1291465))

(declare-fun m!1291467 () Bool)

(assert (=> start!120530 m!1291467))

(push 1)

(assert (not b!1402924))

(assert (not b!1402926))

(assert (not b!1402920))

(assert (not b!1402922))

(assert (not b!1402927))

(assert (not b!1402923))

(assert (not start!120530))

(assert (not b!1402925))

(check-sat)

(pop 1)

