; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119730 () Bool)

(assert start!119730)

(declare-fun res!933661 () Bool)

(declare-fun e!789389 () Bool)

(assert (=> start!119730 (=> (not res!933661) (not e!789389))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119730 (= res!933661 (validMask!0 mask!2840))))

(assert (=> start!119730 e!789389))

(assert (=> start!119730 true))

(declare-datatypes ((array!95330 0))(
  ( (array!95331 (arr!46019 (Array (_ BitVec 32) (_ BitVec 64))) (size!46570 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95330)

(declare-fun array_inv!34964 (array!95330) Bool)

(assert (=> start!119730 (array_inv!34964 a!2901)))

(declare-fun b!1394138 () Bool)

(declare-fun e!789391 () Bool)

(declare-fun e!789390 () Bool)

(assert (=> b!1394138 (= e!789391 e!789390)))

(declare-fun res!933659 () Bool)

(assert (=> b!1394138 (=> res!933659 e!789390)))

(declare-fun lt!612247 () (_ BitVec 64))

(declare-fun lt!612245 () array!95330)

(declare-datatypes ((SeekEntryResult!10358 0))(
  ( (MissingZero!10358 (index!43802 (_ BitVec 32))) (Found!10358 (index!43803 (_ BitVec 32))) (Intermediate!10358 (undefined!11170 Bool) (index!43804 (_ BitVec 32)) (x!125477 (_ BitVec 32))) (Undefined!10358) (MissingVacant!10358 (index!43805 (_ BitVec 32))) )
))
(declare-fun lt!612241 () SeekEntryResult!10358)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95330 (_ BitVec 32)) SeekEntryResult!10358)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394138 (= res!933659 (not (= lt!612241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612247 mask!2840) lt!612247 lt!612245 mask!2840))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394138 (= lt!612247 (select (store (arr!46019 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394138 (= lt!612245 (array!95331 (store (arr!46019 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46570 a!2901)))))

(declare-fun b!1394139 () Bool)

(declare-fun res!933656 () Bool)

(assert (=> b!1394139 (=> (not res!933656) (not e!789389))))

(declare-datatypes ((List!32718 0))(
  ( (Nil!32715) (Cons!32714 (h!33947 (_ BitVec 64)) (t!47419 List!32718)) )
))
(declare-fun arrayNoDuplicates!0 (array!95330 (_ BitVec 32) List!32718) Bool)

(assert (=> b!1394139 (= res!933656 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32715))))

(declare-fun b!1394140 () Bool)

(assert (=> b!1394140 (= e!789390 true)))

(declare-fun lt!612244 () SeekEntryResult!10358)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95330 (_ BitVec 32)) SeekEntryResult!10358)

(assert (=> b!1394140 (= lt!612244 (seekEntryOrOpen!0 lt!612247 lt!612245 mask!2840))))

(declare-fun lt!612242 () (_ BitVec 32))

(declare-datatypes ((Unit!46670 0))(
  ( (Unit!46671) )
))
(declare-fun lt!612243 () Unit!46670)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46670)

(assert (=> b!1394140 (= lt!612243 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612242 (x!125477 lt!612241) (index!43804 lt!612241) mask!2840))))

(declare-fun b!1394141 () Bool)

(declare-fun res!933655 () Bool)

(assert (=> b!1394141 (=> (not res!933655) (not e!789389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95330 (_ BitVec 32)) Bool)

(assert (=> b!1394141 (= res!933655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394142 () Bool)

(declare-fun res!933657 () Bool)

(assert (=> b!1394142 (=> (not res!933657) (not e!789389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394142 (= res!933657 (validKeyInArray!0 (select (arr!46019 a!2901) j!112)))))

(declare-fun b!1394143 () Bool)

(declare-fun res!933660 () Bool)

(assert (=> b!1394143 (=> (not res!933660) (not e!789389))))

(assert (=> b!1394143 (= res!933660 (and (= (size!46570 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46570 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46570 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394144 () Bool)

(declare-fun res!933663 () Bool)

(assert (=> b!1394144 (=> (not res!933663) (not e!789389))))

(assert (=> b!1394144 (= res!933663 (validKeyInArray!0 (select (arr!46019 a!2901) i!1037)))))

(declare-fun b!1394145 () Bool)

(declare-fun res!933662 () Bool)

(assert (=> b!1394145 (=> res!933662 e!789390)))

(assert (=> b!1394145 (= res!933662 (or (bvslt (x!125477 lt!612241) #b00000000000000000000000000000000) (bvsgt (x!125477 lt!612241) #b01111111111111111111111111111110) (bvslt lt!612242 #b00000000000000000000000000000000) (bvsge lt!612242 (size!46570 a!2901)) (bvslt (index!43804 lt!612241) #b00000000000000000000000000000000) (bvsge (index!43804 lt!612241) (size!46570 a!2901)) (not (= lt!612241 (Intermediate!10358 false (index!43804 lt!612241) (x!125477 lt!612241))))))))

(declare-fun b!1394146 () Bool)

(assert (=> b!1394146 (= e!789389 (not e!789391))))

(declare-fun res!933658 () Bool)

(assert (=> b!1394146 (=> res!933658 e!789391)))

(get-info :version)

(assert (=> b!1394146 (= res!933658 (or (not ((_ is Intermediate!10358) lt!612241)) (undefined!11170 lt!612241)))))

(assert (=> b!1394146 (= lt!612244 (Found!10358 j!112))))

(assert (=> b!1394146 (= lt!612244 (seekEntryOrOpen!0 (select (arr!46019 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394146 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612246 () Unit!46670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46670)

(assert (=> b!1394146 (= lt!612246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394146 (= lt!612241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612242 (select (arr!46019 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394146 (= lt!612242 (toIndex!0 (select (arr!46019 a!2901) j!112) mask!2840))))

(assert (= (and start!119730 res!933661) b!1394143))

(assert (= (and b!1394143 res!933660) b!1394144))

(assert (= (and b!1394144 res!933663) b!1394142))

(assert (= (and b!1394142 res!933657) b!1394141))

(assert (= (and b!1394141 res!933655) b!1394139))

(assert (= (and b!1394139 res!933656) b!1394146))

(assert (= (and b!1394146 (not res!933658)) b!1394138))

(assert (= (and b!1394138 (not res!933659)) b!1394145))

(assert (= (and b!1394145 (not res!933662)) b!1394140))

(declare-fun m!1280431 () Bool)

(assert (=> b!1394139 m!1280431))

(declare-fun m!1280433 () Bool)

(assert (=> b!1394142 m!1280433))

(assert (=> b!1394142 m!1280433))

(declare-fun m!1280435 () Bool)

(assert (=> b!1394142 m!1280435))

(assert (=> b!1394146 m!1280433))

(declare-fun m!1280437 () Bool)

(assert (=> b!1394146 m!1280437))

(assert (=> b!1394146 m!1280433))

(assert (=> b!1394146 m!1280433))

(declare-fun m!1280439 () Bool)

(assert (=> b!1394146 m!1280439))

(declare-fun m!1280441 () Bool)

(assert (=> b!1394146 m!1280441))

(assert (=> b!1394146 m!1280433))

(declare-fun m!1280443 () Bool)

(assert (=> b!1394146 m!1280443))

(declare-fun m!1280445 () Bool)

(assert (=> b!1394146 m!1280445))

(declare-fun m!1280447 () Bool)

(assert (=> b!1394140 m!1280447))

(declare-fun m!1280449 () Bool)

(assert (=> b!1394140 m!1280449))

(declare-fun m!1280451 () Bool)

(assert (=> b!1394141 m!1280451))

(declare-fun m!1280453 () Bool)

(assert (=> b!1394144 m!1280453))

(assert (=> b!1394144 m!1280453))

(declare-fun m!1280455 () Bool)

(assert (=> b!1394144 m!1280455))

(declare-fun m!1280457 () Bool)

(assert (=> start!119730 m!1280457))

(declare-fun m!1280459 () Bool)

(assert (=> start!119730 m!1280459))

(declare-fun m!1280461 () Bool)

(assert (=> b!1394138 m!1280461))

(assert (=> b!1394138 m!1280461))

(declare-fun m!1280463 () Bool)

(assert (=> b!1394138 m!1280463))

(declare-fun m!1280465 () Bool)

(assert (=> b!1394138 m!1280465))

(declare-fun m!1280467 () Bool)

(assert (=> b!1394138 m!1280467))

(check-sat (not b!1394144) (not b!1394141) (not b!1394138) (not b!1394140) (not b!1394146) (not b!1394142) (not b!1394139) (not start!119730))
(check-sat)
