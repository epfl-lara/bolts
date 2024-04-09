; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121124 () Bool)

(assert start!121124)

(declare-datatypes ((array!96196 0))(
  ( (array!96197 (arr!46437 (Array (_ BitVec 32) (_ BitVec 64))) (size!46988 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96196)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!796784 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1407722 () Bool)

(declare-datatypes ((SeekEntryResult!10770 0))(
  ( (MissingZero!10770 (index!45456 (_ BitVec 32))) (Found!10770 (index!45457 (_ BitVec 32))) (Intermediate!10770 (undefined!11582 Bool) (index!45458 (_ BitVec 32)) (x!127070 (_ BitVec 32))) (Undefined!10770) (MissingVacant!10770 (index!45459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96196 (_ BitVec 32)) SeekEntryResult!10770)

(assert (=> b!1407722 (= e!796784 (= (seekEntryOrOpen!0 (select (arr!46437 a!2901) j!112) a!2901 mask!2840) (Found!10770 j!112)))))

(declare-fun res!945555 () Bool)

(declare-fun e!796787 () Bool)

(assert (=> start!121124 (=> (not res!945555) (not e!796787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121124 (= res!945555 (validMask!0 mask!2840))))

(assert (=> start!121124 e!796787))

(assert (=> start!121124 true))

(declare-fun array_inv!35382 (array!96196) Bool)

(assert (=> start!121124 (array_inv!35382 a!2901)))

(declare-fun b!1407723 () Bool)

(declare-fun res!945558 () Bool)

(assert (=> b!1407723 (=> (not res!945558) (not e!796787))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407723 (= res!945558 (validKeyInArray!0 (select (arr!46437 a!2901) i!1037)))))

(declare-fun b!1407724 () Bool)

(declare-fun res!945561 () Bool)

(declare-fun e!796786 () Bool)

(assert (=> b!1407724 (=> res!945561 e!796786)))

(declare-fun lt!619887 () SeekEntryResult!10770)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96196 (_ BitVec 32)) SeekEntryResult!10770)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407724 (= res!945561 (not (= lt!619887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46437 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46437 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96197 (store (arr!46437 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46988 a!2901)) mask!2840))))))

(declare-fun b!1407725 () Bool)

(declare-fun res!945556 () Bool)

(assert (=> b!1407725 (=> (not res!945556) (not e!796787))))

(declare-datatypes ((List!33136 0))(
  ( (Nil!33133) (Cons!33132 (h!34395 (_ BitVec 64)) (t!47837 List!33136)) )
))
(declare-fun arrayNoDuplicates!0 (array!96196 (_ BitVec 32) List!33136) Bool)

(assert (=> b!1407725 (= res!945556 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33133))))

(declare-fun b!1407726 () Bool)

(declare-fun res!945560 () Bool)

(assert (=> b!1407726 (=> (not res!945560) (not e!796787))))

(assert (=> b!1407726 (= res!945560 (and (= (size!46988 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46988 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46988 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407727 () Bool)

(declare-fun lt!619886 () (_ BitVec 32))

(assert (=> b!1407727 (= e!796786 (or (bvslt (x!127070 lt!619887) #b00000000000000000000000000000000) (bvsgt (x!127070 lt!619887) #b01111111111111111111111111111110) (bvslt lt!619886 #b00000000000000000000000000000000) (bvsge lt!619886 (size!46988 a!2901)) (bvslt (index!45458 lt!619887) #b00000000000000000000000000000000) (bvsge (index!45458 lt!619887) (size!46988 a!2901)) (= lt!619887 (Intermediate!10770 false (index!45458 lt!619887) (x!127070 lt!619887)))))))

(declare-fun b!1407728 () Bool)

(declare-fun res!945559 () Bool)

(assert (=> b!1407728 (=> (not res!945559) (not e!796787))))

(assert (=> b!1407728 (= res!945559 (validKeyInArray!0 (select (arr!46437 a!2901) j!112)))))

(declare-fun b!1407729 () Bool)

(assert (=> b!1407729 (= e!796787 (not e!796786))))

(declare-fun res!945554 () Bool)

(assert (=> b!1407729 (=> res!945554 e!796786)))

(assert (=> b!1407729 (= res!945554 (or (not (is-Intermediate!10770 lt!619887)) (undefined!11582 lt!619887)))))

(assert (=> b!1407729 e!796784))

(declare-fun res!945557 () Bool)

(assert (=> b!1407729 (=> (not res!945557) (not e!796784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96196 (_ BitVec 32)) Bool)

(assert (=> b!1407729 (= res!945557 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47464 0))(
  ( (Unit!47465) )
))
(declare-fun lt!619888 () Unit!47464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47464)

(assert (=> b!1407729 (= lt!619888 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407729 (= lt!619887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619886 (select (arr!46437 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407729 (= lt!619886 (toIndex!0 (select (arr!46437 a!2901) j!112) mask!2840))))

(declare-fun b!1407730 () Bool)

(declare-fun res!945553 () Bool)

(assert (=> b!1407730 (=> (not res!945553) (not e!796787))))

(assert (=> b!1407730 (= res!945553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121124 res!945555) b!1407726))

(assert (= (and b!1407726 res!945560) b!1407723))

(assert (= (and b!1407723 res!945558) b!1407728))

(assert (= (and b!1407728 res!945559) b!1407730))

(assert (= (and b!1407730 res!945553) b!1407725))

(assert (= (and b!1407725 res!945556) b!1407729))

(assert (= (and b!1407729 res!945557) b!1407722))

(assert (= (and b!1407729 (not res!945554)) b!1407724))

(assert (= (and b!1407724 (not res!945561)) b!1407727))

(declare-fun m!1296823 () Bool)

(assert (=> b!1407730 m!1296823))

(declare-fun m!1296825 () Bool)

(assert (=> b!1407728 m!1296825))

(assert (=> b!1407728 m!1296825))

(declare-fun m!1296827 () Bool)

(assert (=> b!1407728 m!1296827))

(assert (=> b!1407722 m!1296825))

(assert (=> b!1407722 m!1296825))

(declare-fun m!1296829 () Bool)

(assert (=> b!1407722 m!1296829))

(declare-fun m!1296831 () Bool)

(assert (=> start!121124 m!1296831))

(declare-fun m!1296833 () Bool)

(assert (=> start!121124 m!1296833))

(declare-fun m!1296835 () Bool)

(assert (=> b!1407725 m!1296835))

(declare-fun m!1296837 () Bool)

(assert (=> b!1407723 m!1296837))

(assert (=> b!1407723 m!1296837))

(declare-fun m!1296839 () Bool)

(assert (=> b!1407723 m!1296839))

(declare-fun m!1296841 () Bool)

(assert (=> b!1407724 m!1296841))

(declare-fun m!1296843 () Bool)

(assert (=> b!1407724 m!1296843))

(assert (=> b!1407724 m!1296843))

(declare-fun m!1296845 () Bool)

(assert (=> b!1407724 m!1296845))

(assert (=> b!1407724 m!1296845))

(assert (=> b!1407724 m!1296843))

(declare-fun m!1296847 () Bool)

(assert (=> b!1407724 m!1296847))

(assert (=> b!1407729 m!1296825))

(declare-fun m!1296849 () Bool)

(assert (=> b!1407729 m!1296849))

(assert (=> b!1407729 m!1296825))

(declare-fun m!1296851 () Bool)

(assert (=> b!1407729 m!1296851))

(assert (=> b!1407729 m!1296825))

(declare-fun m!1296853 () Bool)

(assert (=> b!1407729 m!1296853))

(declare-fun m!1296855 () Bool)

(assert (=> b!1407729 m!1296855))

(push 1)

(assert (not b!1407725))

(assert (not b!1407730))

(assert (not b!1407723))

(assert (not b!1407724))

(assert (not start!121124))

(assert (not b!1407728))

(assert (not b!1407722))

(assert (not b!1407729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

