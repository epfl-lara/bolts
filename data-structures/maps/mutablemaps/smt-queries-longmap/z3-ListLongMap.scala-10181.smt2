; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120054 () Bool)

(assert start!120054)

(declare-fun b!1397063 () Bool)

(declare-fun res!936092 () Bool)

(declare-fun e!790955 () Bool)

(assert (=> b!1397063 (=> (not res!936092) (not e!790955))))

(declare-datatypes ((array!95501 0))(
  ( (array!95502 (arr!46100 (Array (_ BitVec 32) (_ BitVec 64))) (size!46651 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95501)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397063 (= res!936092 (validKeyInArray!0 (select (arr!46100 a!2901) j!112)))))

(declare-fun res!936088 () Bool)

(assert (=> start!120054 (=> (not res!936088) (not e!790955))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120054 (= res!936088 (validMask!0 mask!2840))))

(assert (=> start!120054 e!790955))

(assert (=> start!120054 true))

(declare-fun array_inv!35045 (array!95501) Bool)

(assert (=> start!120054 (array_inv!35045 a!2901)))

(declare-fun b!1397064 () Bool)

(declare-fun res!936085 () Bool)

(assert (=> b!1397064 (=> (not res!936085) (not e!790955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95501 (_ BitVec 32)) Bool)

(assert (=> b!1397064 (= res!936085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397065 () Bool)

(declare-fun res!936089 () Bool)

(assert (=> b!1397065 (=> (not res!936089) (not e!790955))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397065 (= res!936089 (and (= (size!46651 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46651 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46651 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397066 () Bool)

(declare-fun res!936093 () Bool)

(assert (=> b!1397066 (=> (not res!936093) (not e!790955))))

(declare-datatypes ((List!32799 0))(
  ( (Nil!32796) (Cons!32795 (h!34037 (_ BitVec 64)) (t!47500 List!32799)) )
))
(declare-fun arrayNoDuplicates!0 (array!95501 (_ BitVec 32) List!32799) Bool)

(assert (=> b!1397066 (= res!936093 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32796))))

(declare-fun b!1397067 () Bool)

(declare-fun res!936091 () Bool)

(assert (=> b!1397067 (=> (not res!936091) (not e!790955))))

(assert (=> b!1397067 (= res!936091 (validKeyInArray!0 (select (arr!46100 a!2901) i!1037)))))

(declare-fun b!1397068 () Bool)

(declare-fun e!790951 () Bool)

(declare-datatypes ((SeekEntryResult!10439 0))(
  ( (MissingZero!10439 (index!44126 (_ BitVec 32))) (Found!10439 (index!44127 (_ BitVec 32))) (Intermediate!10439 (undefined!11251 Bool) (index!44128 (_ BitVec 32)) (x!125792 (_ BitVec 32))) (Undefined!10439) (MissingVacant!10439 (index!44129 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95501 (_ BitVec 32)) SeekEntryResult!10439)

(assert (=> b!1397068 (= e!790951 (= (seekEntryOrOpen!0 (select (arr!46100 a!2901) j!112) a!2901 mask!2840) (Found!10439 j!112)))))

(declare-fun b!1397069 () Bool)

(declare-fun e!790952 () Bool)

(assert (=> b!1397069 (= e!790952 true)))

(declare-fun lt!613916 () (_ BitVec 32))

(declare-fun lt!613918 () array!95501)

(declare-fun lt!613917 () SeekEntryResult!10439)

(declare-fun lt!613915 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95501 (_ BitVec 32)) SeekEntryResult!10439)

(assert (=> b!1397069 (= lt!613917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613916 lt!613915 lt!613918 mask!2840))))

(declare-fun b!1397070 () Bool)

(declare-fun e!790954 () Bool)

(assert (=> b!1397070 (= e!790954 e!790952)))

(declare-fun res!936087 () Bool)

(assert (=> b!1397070 (=> res!936087 e!790952)))

(declare-fun lt!613920 () SeekEntryResult!10439)

(declare-fun lt!613921 () SeekEntryResult!10439)

(get-info :version)

(assert (=> b!1397070 (= res!936087 (or (= lt!613921 lt!613920) (not ((_ is Intermediate!10439) lt!613920)) (bvslt (x!125792 lt!613921) #b00000000000000000000000000000000) (bvsgt (x!125792 lt!613921) #b01111111111111111111111111111110) (bvslt lt!613916 #b00000000000000000000000000000000) (bvsge lt!613916 (size!46651 a!2901)) (bvslt (index!44128 lt!613921) #b00000000000000000000000000000000) (bvsge (index!44128 lt!613921) (size!46651 a!2901)) (not (= lt!613921 (Intermediate!10439 false (index!44128 lt!613921) (x!125792 lt!613921)))) (not (= lt!613920 (Intermediate!10439 (undefined!11251 lt!613920) (index!44128 lt!613920) (x!125792 lt!613920))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397070 (= lt!613920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613915 mask!2840) lt!613915 lt!613918 mask!2840))))

(assert (=> b!1397070 (= lt!613915 (select (store (arr!46100 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397070 (= lt!613918 (array!95502 (store (arr!46100 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46651 a!2901)))))

(declare-fun b!1397071 () Bool)

(assert (=> b!1397071 (= e!790955 (not e!790954))))

(declare-fun res!936086 () Bool)

(assert (=> b!1397071 (=> res!936086 e!790954)))

(assert (=> b!1397071 (= res!936086 (or (not ((_ is Intermediate!10439) lt!613921)) (undefined!11251 lt!613921)))))

(assert (=> b!1397071 e!790951))

(declare-fun res!936090 () Bool)

(assert (=> b!1397071 (=> (not res!936090) (not e!790951))))

(assert (=> b!1397071 (= res!936090 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46832 0))(
  ( (Unit!46833) )
))
(declare-fun lt!613919 () Unit!46832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95501 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46832)

(assert (=> b!1397071 (= lt!613919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397071 (= lt!613921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613916 (select (arr!46100 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397071 (= lt!613916 (toIndex!0 (select (arr!46100 a!2901) j!112) mask!2840))))

(assert (= (and start!120054 res!936088) b!1397065))

(assert (= (and b!1397065 res!936089) b!1397067))

(assert (= (and b!1397067 res!936091) b!1397063))

(assert (= (and b!1397063 res!936092) b!1397064))

(assert (= (and b!1397064 res!936085) b!1397066))

(assert (= (and b!1397066 res!936093) b!1397071))

(assert (= (and b!1397071 res!936090) b!1397068))

(assert (= (and b!1397071 (not res!936086)) b!1397070))

(assert (= (and b!1397070 (not res!936087)) b!1397069))

(declare-fun m!1283795 () Bool)

(assert (=> b!1397068 m!1283795))

(assert (=> b!1397068 m!1283795))

(declare-fun m!1283797 () Bool)

(assert (=> b!1397068 m!1283797))

(assert (=> b!1397063 m!1283795))

(assert (=> b!1397063 m!1283795))

(declare-fun m!1283799 () Bool)

(assert (=> b!1397063 m!1283799))

(declare-fun m!1283801 () Bool)

(assert (=> b!1397067 m!1283801))

(assert (=> b!1397067 m!1283801))

(declare-fun m!1283803 () Bool)

(assert (=> b!1397067 m!1283803))

(assert (=> b!1397071 m!1283795))

(declare-fun m!1283805 () Bool)

(assert (=> b!1397071 m!1283805))

(assert (=> b!1397071 m!1283795))

(declare-fun m!1283807 () Bool)

(assert (=> b!1397071 m!1283807))

(declare-fun m!1283809 () Bool)

(assert (=> b!1397071 m!1283809))

(assert (=> b!1397071 m!1283795))

(declare-fun m!1283811 () Bool)

(assert (=> b!1397071 m!1283811))

(declare-fun m!1283813 () Bool)

(assert (=> b!1397066 m!1283813))

(declare-fun m!1283815 () Bool)

(assert (=> b!1397070 m!1283815))

(assert (=> b!1397070 m!1283815))

(declare-fun m!1283817 () Bool)

(assert (=> b!1397070 m!1283817))

(declare-fun m!1283819 () Bool)

(assert (=> b!1397070 m!1283819))

(declare-fun m!1283821 () Bool)

(assert (=> b!1397070 m!1283821))

(declare-fun m!1283823 () Bool)

(assert (=> b!1397064 m!1283823))

(declare-fun m!1283825 () Bool)

(assert (=> b!1397069 m!1283825))

(declare-fun m!1283827 () Bool)

(assert (=> start!120054 m!1283827))

(declare-fun m!1283829 () Bool)

(assert (=> start!120054 m!1283829))

(check-sat (not b!1397066) (not b!1397064) (not start!120054) (not b!1397067) (not b!1397070) (not b!1397069) (not b!1397068) (not b!1397063) (not b!1397071))
(check-sat)
