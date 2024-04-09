; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122054 () Bool)

(assert start!122054)

(declare-fun b!1416115 () Bool)

(declare-fun res!952273 () Bool)

(declare-fun e!801520 () Bool)

(assert (=> b!1416115 (=> (not res!952273) (not e!801520))))

(declare-datatypes ((array!96658 0))(
  ( (array!96659 (arr!46656 (Array (_ BitVec 32) (_ BitVec 64))) (size!47207 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96658)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416115 (= res!952273 (validKeyInArray!0 (select (arr!46656 a!2901) j!112)))))

(declare-fun b!1416116 () Bool)

(declare-fun res!952267 () Bool)

(assert (=> b!1416116 (=> (not res!952267) (not e!801520))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96658 (_ BitVec 32)) Bool)

(assert (=> b!1416116 (= res!952267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!952274 () Bool)

(assert (=> start!122054 (=> (not res!952274) (not e!801520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122054 (= res!952274 (validMask!0 mask!2840))))

(assert (=> start!122054 e!801520))

(assert (=> start!122054 true))

(declare-fun array_inv!35601 (array!96658) Bool)

(assert (=> start!122054 (array_inv!35601 a!2901)))

(declare-fun b!1416117 () Bool)

(declare-fun res!952275 () Bool)

(assert (=> b!1416117 (=> (not res!952275) (not e!801520))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416117 (= res!952275 (validKeyInArray!0 (select (arr!46656 a!2901) i!1037)))))

(declare-fun b!1416118 () Bool)

(declare-fun e!801524 () Bool)

(declare-fun e!801522 () Bool)

(assert (=> b!1416118 (= e!801524 e!801522)))

(declare-fun res!952270 () Bool)

(assert (=> b!1416118 (=> res!952270 e!801522)))

(declare-datatypes ((SeekEntryResult!10989 0))(
  ( (MissingZero!10989 (index!46347 (_ BitVec 32))) (Found!10989 (index!46348 (_ BitVec 32))) (Intermediate!10989 (undefined!11801 Bool) (index!46349 (_ BitVec 32)) (x!127951 (_ BitVec 32))) (Undefined!10989) (MissingVacant!10989 (index!46350 (_ BitVec 32))) )
))
(declare-fun lt!624696 () SeekEntryResult!10989)

(declare-fun lt!624693 () SeekEntryResult!10989)

(assert (=> b!1416118 (= res!952270 (or (= lt!624696 lt!624693) (not (is-Intermediate!10989 lt!624693))))))

(declare-fun lt!624698 () (_ BitVec 64))

(declare-fun lt!624699 () array!96658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96658 (_ BitVec 32)) SeekEntryResult!10989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416118 (= lt!624693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624698 mask!2840) lt!624698 lt!624699 mask!2840))))

(assert (=> b!1416118 (= lt!624698 (select (store (arr!46656 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416118 (= lt!624699 (array!96659 (store (arr!46656 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47207 a!2901)))))

(declare-fun b!1416119 () Bool)

(declare-fun e!801523 () Bool)

(assert (=> b!1416119 (= e!801523 true)))

(declare-fun lt!624694 () SeekEntryResult!10989)

(declare-fun lt!624695 () SeekEntryResult!10989)

(assert (=> b!1416119 (= lt!624694 lt!624695)))

(declare-datatypes ((Unit!47902 0))(
  ( (Unit!47903) )
))
(declare-fun lt!624700 () Unit!47902)

(declare-fun lt!624691 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47902)

(assert (=> b!1416119 (= lt!624700 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624691 (x!127951 lt!624696) (index!46349 lt!624696) (x!127951 lt!624693) (index!46349 lt!624693) mask!2840))))

(declare-fun b!1416120 () Bool)

(assert (=> b!1416120 (= e!801522 e!801523)))

(declare-fun res!952271 () Bool)

(assert (=> b!1416120 (=> res!952271 e!801523)))

(assert (=> b!1416120 (= res!952271 (or (bvslt (x!127951 lt!624696) #b00000000000000000000000000000000) (bvsgt (x!127951 lt!624696) #b01111111111111111111111111111110) (bvslt (x!127951 lt!624693) #b00000000000000000000000000000000) (bvsgt (x!127951 lt!624693) #b01111111111111111111111111111110) (bvslt lt!624691 #b00000000000000000000000000000000) (bvsge lt!624691 (size!47207 a!2901)) (bvslt (index!46349 lt!624696) #b00000000000000000000000000000000) (bvsge (index!46349 lt!624696) (size!47207 a!2901)) (bvslt (index!46349 lt!624693) #b00000000000000000000000000000000) (bvsge (index!46349 lt!624693) (size!47207 a!2901)) (not (= lt!624696 (Intermediate!10989 false (index!46349 lt!624696) (x!127951 lt!624696)))) (not (= lt!624693 (Intermediate!10989 false (index!46349 lt!624693) (x!127951 lt!624693))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96658 (_ BitVec 32)) SeekEntryResult!10989)

(assert (=> b!1416120 (= lt!624695 (seekKeyOrZeroReturnVacant!0 (x!127951 lt!624693) (index!46349 lt!624693) (index!46349 lt!624693) (select (arr!46656 a!2901) j!112) lt!624699 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96658 (_ BitVec 32)) SeekEntryResult!10989)

(assert (=> b!1416120 (= lt!624695 (seekEntryOrOpen!0 lt!624698 lt!624699 mask!2840))))

(assert (=> b!1416120 (and (not (undefined!11801 lt!624693)) (= (index!46349 lt!624693) i!1037) (bvslt (x!127951 lt!624693) (x!127951 lt!624696)) (= (select (store (arr!46656 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46349 lt!624693)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624697 () Unit!47902)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47902)

(assert (=> b!1416120 (= lt!624697 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624691 (x!127951 lt!624696) (index!46349 lt!624696) (x!127951 lt!624693) (index!46349 lt!624693) (undefined!11801 lt!624693) mask!2840))))

(declare-fun b!1416121 () Bool)

(declare-fun res!952269 () Bool)

(assert (=> b!1416121 (=> (not res!952269) (not e!801520))))

(assert (=> b!1416121 (= res!952269 (and (= (size!47207 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47207 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47207 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416122 () Bool)

(declare-fun res!952266 () Bool)

(assert (=> b!1416122 (=> (not res!952266) (not e!801520))))

(declare-datatypes ((List!33355 0))(
  ( (Nil!33352) (Cons!33351 (h!34638 (_ BitVec 64)) (t!48056 List!33355)) )
))
(declare-fun arrayNoDuplicates!0 (array!96658 (_ BitVec 32) List!33355) Bool)

(assert (=> b!1416122 (= res!952266 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33352))))

(declare-fun b!1416123 () Bool)

(assert (=> b!1416123 (= e!801520 (not e!801524))))

(declare-fun res!952272 () Bool)

(assert (=> b!1416123 (=> res!952272 e!801524)))

(assert (=> b!1416123 (= res!952272 (or (not (is-Intermediate!10989 lt!624696)) (undefined!11801 lt!624696)))))

(assert (=> b!1416123 (= lt!624694 (Found!10989 j!112))))

(assert (=> b!1416123 (= lt!624694 (seekEntryOrOpen!0 (select (arr!46656 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416123 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624692 () Unit!47902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47902)

(assert (=> b!1416123 (= lt!624692 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416123 (= lt!624696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624691 (select (arr!46656 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416123 (= lt!624691 (toIndex!0 (select (arr!46656 a!2901) j!112) mask!2840))))

(declare-fun b!1416124 () Bool)

(declare-fun res!952268 () Bool)

(assert (=> b!1416124 (=> res!952268 e!801523)))

(assert (=> b!1416124 (= res!952268 (not (= lt!624693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624691 lt!624698 lt!624699 mask!2840))))))

(assert (= (and start!122054 res!952274) b!1416121))

(assert (= (and b!1416121 res!952269) b!1416117))

(assert (= (and b!1416117 res!952275) b!1416115))

(assert (= (and b!1416115 res!952273) b!1416116))

(assert (= (and b!1416116 res!952267) b!1416122))

(assert (= (and b!1416122 res!952266) b!1416123))

(assert (= (and b!1416123 (not res!952272)) b!1416118))

(assert (= (and b!1416118 (not res!952270)) b!1416120))

(assert (= (and b!1416120 (not res!952271)) b!1416124))

(assert (= (and b!1416124 (not res!952268)) b!1416119))

(declare-fun m!1306771 () Bool)

(assert (=> b!1416116 m!1306771))

(declare-fun m!1306773 () Bool)

(assert (=> b!1416124 m!1306773))

(declare-fun m!1306775 () Bool)

(assert (=> b!1416119 m!1306775))

(declare-fun m!1306777 () Bool)

(assert (=> b!1416117 m!1306777))

(assert (=> b!1416117 m!1306777))

(declare-fun m!1306779 () Bool)

(assert (=> b!1416117 m!1306779))

(declare-fun m!1306781 () Bool)

(assert (=> b!1416115 m!1306781))

(assert (=> b!1416115 m!1306781))

(declare-fun m!1306783 () Bool)

(assert (=> b!1416115 m!1306783))

(declare-fun m!1306785 () Bool)

(assert (=> start!122054 m!1306785))

(declare-fun m!1306787 () Bool)

(assert (=> start!122054 m!1306787))

(assert (=> b!1416123 m!1306781))

(declare-fun m!1306789 () Bool)

(assert (=> b!1416123 m!1306789))

(declare-fun m!1306791 () Bool)

(assert (=> b!1416123 m!1306791))

(assert (=> b!1416123 m!1306781))

(declare-fun m!1306793 () Bool)

(assert (=> b!1416123 m!1306793))

(declare-fun m!1306795 () Bool)

(assert (=> b!1416123 m!1306795))

(assert (=> b!1416123 m!1306781))

(declare-fun m!1306797 () Bool)

(assert (=> b!1416123 m!1306797))

(assert (=> b!1416123 m!1306781))

(declare-fun m!1306799 () Bool)

(assert (=> b!1416122 m!1306799))

(declare-fun m!1306801 () Bool)

(assert (=> b!1416118 m!1306801))

(assert (=> b!1416118 m!1306801))

(declare-fun m!1306803 () Bool)

(assert (=> b!1416118 m!1306803))

(declare-fun m!1306805 () Bool)

(assert (=> b!1416118 m!1306805))

(declare-fun m!1306807 () Bool)

(assert (=> b!1416118 m!1306807))

(declare-fun m!1306809 () Bool)

(assert (=> b!1416120 m!1306809))

(assert (=> b!1416120 m!1306781))

(declare-fun m!1306811 () Bool)

(assert (=> b!1416120 m!1306811))

(declare-fun m!1306813 () Bool)

(assert (=> b!1416120 m!1306813))

(assert (=> b!1416120 m!1306781))

(declare-fun m!1306815 () Bool)

(assert (=> b!1416120 m!1306815))

(assert (=> b!1416120 m!1306805))

(push 1)

