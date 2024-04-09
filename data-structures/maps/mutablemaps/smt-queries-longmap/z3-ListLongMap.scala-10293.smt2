; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121122 () Bool)

(assert start!121122)

(declare-fun b!1407695 () Bool)

(declare-fun res!945527 () Bool)

(declare-fun e!796775 () Bool)

(assert (=> b!1407695 (=> res!945527 e!796775)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96194 0))(
  ( (array!96195 (arr!46436 (Array (_ BitVec 32) (_ BitVec 64))) (size!46987 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96194)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10769 0))(
  ( (MissingZero!10769 (index!45452 (_ BitVec 32))) (Found!10769 (index!45453 (_ BitVec 32))) (Intermediate!10769 (undefined!11581 Bool) (index!45454 (_ BitVec 32)) (x!127069 (_ BitVec 32))) (Undefined!10769) (MissingVacant!10769 (index!45455 (_ BitVec 32))) )
))
(declare-fun lt!619879 () SeekEntryResult!10769)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96194 (_ BitVec 32)) SeekEntryResult!10769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407695 (= res!945527 (not (= lt!619879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46436 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46436 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96195 (store (arr!46436 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46987 a!2901)) mask!2840))))))

(declare-fun b!1407696 () Bool)

(declare-fun res!945534 () Bool)

(declare-fun e!796773 () Bool)

(assert (=> b!1407696 (=> (not res!945534) (not e!796773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96194 (_ BitVec 32)) Bool)

(assert (=> b!1407696 (= res!945534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407697 () Bool)

(assert (=> b!1407697 (= e!796773 (not e!796775))))

(declare-fun res!945533 () Bool)

(assert (=> b!1407697 (=> res!945533 e!796775)))

(get-info :version)

(assert (=> b!1407697 (= res!945533 (or (not ((_ is Intermediate!10769) lt!619879)) (undefined!11581 lt!619879)))))

(declare-fun e!796772 () Bool)

(assert (=> b!1407697 e!796772))

(declare-fun res!945531 () Bool)

(assert (=> b!1407697 (=> (not res!945531) (not e!796772))))

(assert (=> b!1407697 (= res!945531 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47462 0))(
  ( (Unit!47463) )
))
(declare-fun lt!619878 () Unit!47462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96194 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47462)

(assert (=> b!1407697 (= lt!619878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619877 () (_ BitVec 32))

(assert (=> b!1407697 (= lt!619879 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619877 (select (arr!46436 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407697 (= lt!619877 (toIndex!0 (select (arr!46436 a!2901) j!112) mask!2840))))

(declare-fun b!1407699 () Bool)

(assert (=> b!1407699 (= e!796775 (or (bvslt (x!127069 lt!619879) #b00000000000000000000000000000000) (bvsgt (x!127069 lt!619879) #b01111111111111111111111111111110) (bvslt lt!619877 #b00000000000000000000000000000000) (bvsge lt!619877 (size!46987 a!2901)) (bvslt (index!45454 lt!619879) #b00000000000000000000000000000000) (bvsge (index!45454 lt!619879) (size!46987 a!2901)) (= lt!619879 (Intermediate!10769 false (index!45454 lt!619879) (x!127069 lt!619879)))))))

(declare-fun b!1407700 () Bool)

(declare-fun res!945530 () Bool)

(assert (=> b!1407700 (=> (not res!945530) (not e!796773))))

(assert (=> b!1407700 (= res!945530 (and (= (size!46987 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46987 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46987 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407701 () Bool)

(declare-fun res!945529 () Bool)

(assert (=> b!1407701 (=> (not res!945529) (not e!796773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407701 (= res!945529 (validKeyInArray!0 (select (arr!46436 a!2901) j!112)))))

(declare-fun b!1407702 () Bool)

(declare-fun res!945528 () Bool)

(assert (=> b!1407702 (=> (not res!945528) (not e!796773))))

(declare-datatypes ((List!33135 0))(
  ( (Nil!33132) (Cons!33131 (h!34394 (_ BitVec 64)) (t!47836 List!33135)) )
))
(declare-fun arrayNoDuplicates!0 (array!96194 (_ BitVec 32) List!33135) Bool)

(assert (=> b!1407702 (= res!945528 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33132))))

(declare-fun b!1407703 () Bool)

(declare-fun res!945532 () Bool)

(assert (=> b!1407703 (=> (not res!945532) (not e!796773))))

(assert (=> b!1407703 (= res!945532 (validKeyInArray!0 (select (arr!46436 a!2901) i!1037)))))

(declare-fun b!1407698 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96194 (_ BitVec 32)) SeekEntryResult!10769)

(assert (=> b!1407698 (= e!796772 (= (seekEntryOrOpen!0 (select (arr!46436 a!2901) j!112) a!2901 mask!2840) (Found!10769 j!112)))))

(declare-fun res!945526 () Bool)

(assert (=> start!121122 (=> (not res!945526) (not e!796773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121122 (= res!945526 (validMask!0 mask!2840))))

(assert (=> start!121122 e!796773))

(assert (=> start!121122 true))

(declare-fun array_inv!35381 (array!96194) Bool)

(assert (=> start!121122 (array_inv!35381 a!2901)))

(assert (= (and start!121122 res!945526) b!1407700))

(assert (= (and b!1407700 res!945530) b!1407703))

(assert (= (and b!1407703 res!945532) b!1407701))

(assert (= (and b!1407701 res!945529) b!1407696))

(assert (= (and b!1407696 res!945534) b!1407702))

(assert (= (and b!1407702 res!945528) b!1407697))

(assert (= (and b!1407697 res!945531) b!1407698))

(assert (= (and b!1407697 (not res!945533)) b!1407695))

(assert (= (and b!1407695 (not res!945527)) b!1407699))

(declare-fun m!1296789 () Bool)

(assert (=> b!1407695 m!1296789))

(declare-fun m!1296791 () Bool)

(assert (=> b!1407695 m!1296791))

(assert (=> b!1407695 m!1296791))

(declare-fun m!1296793 () Bool)

(assert (=> b!1407695 m!1296793))

(assert (=> b!1407695 m!1296793))

(assert (=> b!1407695 m!1296791))

(declare-fun m!1296795 () Bool)

(assert (=> b!1407695 m!1296795))

(declare-fun m!1296797 () Bool)

(assert (=> b!1407696 m!1296797))

(declare-fun m!1296799 () Bool)

(assert (=> b!1407703 m!1296799))

(assert (=> b!1407703 m!1296799))

(declare-fun m!1296801 () Bool)

(assert (=> b!1407703 m!1296801))

(declare-fun m!1296803 () Bool)

(assert (=> b!1407702 m!1296803))

(declare-fun m!1296805 () Bool)

(assert (=> b!1407698 m!1296805))

(assert (=> b!1407698 m!1296805))

(declare-fun m!1296807 () Bool)

(assert (=> b!1407698 m!1296807))

(assert (=> b!1407701 m!1296805))

(assert (=> b!1407701 m!1296805))

(declare-fun m!1296809 () Bool)

(assert (=> b!1407701 m!1296809))

(assert (=> b!1407697 m!1296805))

(declare-fun m!1296811 () Bool)

(assert (=> b!1407697 m!1296811))

(assert (=> b!1407697 m!1296805))

(assert (=> b!1407697 m!1296805))

(declare-fun m!1296813 () Bool)

(assert (=> b!1407697 m!1296813))

(declare-fun m!1296815 () Bool)

(assert (=> b!1407697 m!1296815))

(declare-fun m!1296817 () Bool)

(assert (=> b!1407697 m!1296817))

(declare-fun m!1296819 () Bool)

(assert (=> start!121122 m!1296819))

(declare-fun m!1296821 () Bool)

(assert (=> start!121122 m!1296821))

(check-sat (not b!1407698) (not b!1407696) (not b!1407702) (not b!1407695) (not b!1407697) (not b!1407703) (not start!121122) (not b!1407701))
(check-sat)
