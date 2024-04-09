; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120114 () Bool)

(assert start!120114)

(declare-fun b!1397873 () Bool)

(declare-fun res!936896 () Bool)

(declare-fun e!791404 () Bool)

(assert (=> b!1397873 (=> (not res!936896) (not e!791404))))

(declare-datatypes ((array!95561 0))(
  ( (array!95562 (arr!46130 (Array (_ BitVec 32) (_ BitVec 64))) (size!46681 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95561)

(declare-datatypes ((List!32829 0))(
  ( (Nil!32826) (Cons!32825 (h!34067 (_ BitVec 64)) (t!47530 List!32829)) )
))
(declare-fun arrayNoDuplicates!0 (array!95561 (_ BitVec 32) List!32829) Bool)

(assert (=> b!1397873 (= res!936896 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32826))))

(declare-fun b!1397874 () Bool)

(declare-fun res!936901 () Bool)

(assert (=> b!1397874 (=> (not res!936901) (not e!791404))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95561 (_ BitVec 32)) Bool)

(assert (=> b!1397874 (= res!936901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397875 () Bool)

(declare-fun e!791405 () Bool)

(assert (=> b!1397875 (= e!791404 (not e!791405))))

(declare-fun res!936898 () Bool)

(assert (=> b!1397875 (=> res!936898 e!791405)))

(declare-datatypes ((SeekEntryResult!10469 0))(
  ( (MissingZero!10469 (index!44246 (_ BitVec 32))) (Found!10469 (index!44247 (_ BitVec 32))) (Intermediate!10469 (undefined!11281 Bool) (index!44248 (_ BitVec 32)) (x!125902 (_ BitVec 32))) (Undefined!10469) (MissingVacant!10469 (index!44249 (_ BitVec 32))) )
))
(declare-fun lt!614546 () SeekEntryResult!10469)

(get-info :version)

(assert (=> b!1397875 (= res!936898 (or (not ((_ is Intermediate!10469) lt!614546)) (undefined!11281 lt!614546)))))

(declare-fun e!791402 () Bool)

(assert (=> b!1397875 e!791402))

(declare-fun res!936895 () Bool)

(assert (=> b!1397875 (=> (not res!936895) (not e!791402))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397875 (= res!936895 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46892 0))(
  ( (Unit!46893) )
))
(declare-fun lt!614549 () Unit!46892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46892)

(assert (=> b!1397875 (= lt!614549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614545 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95561 (_ BitVec 32)) SeekEntryResult!10469)

(assert (=> b!1397875 (= lt!614546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614545 (select (arr!46130 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397875 (= lt!614545 (toIndex!0 (select (arr!46130 a!2901) j!112) mask!2840))))

(declare-fun b!1397877 () Bool)

(declare-fun e!791401 () Bool)

(assert (=> b!1397877 (= e!791401 true)))

(declare-fun lt!614547 () SeekEntryResult!10469)

(declare-fun lt!614548 () (_ BitVec 64))

(declare-fun lt!614550 () array!95561)

(assert (=> b!1397877 (= lt!614547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614545 lt!614548 lt!614550 mask!2840))))

(declare-fun b!1397878 () Bool)

(assert (=> b!1397878 (= e!791405 e!791401)))

(declare-fun res!936900 () Bool)

(assert (=> b!1397878 (=> res!936900 e!791401)))

(declare-fun lt!614551 () SeekEntryResult!10469)

(assert (=> b!1397878 (= res!936900 (or (= lt!614546 lt!614551) (not ((_ is Intermediate!10469) lt!614551)) (bvslt (x!125902 lt!614546) #b00000000000000000000000000000000) (bvsgt (x!125902 lt!614546) #b01111111111111111111111111111110) (bvslt lt!614545 #b00000000000000000000000000000000) (bvsge lt!614545 (size!46681 a!2901)) (bvslt (index!44248 lt!614546) #b00000000000000000000000000000000) (bvsge (index!44248 lt!614546) (size!46681 a!2901)) (not (= lt!614546 (Intermediate!10469 false (index!44248 lt!614546) (x!125902 lt!614546)))) (not (= lt!614551 (Intermediate!10469 (undefined!11281 lt!614551) (index!44248 lt!614551) (x!125902 lt!614551))))))))

(assert (=> b!1397878 (= lt!614551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614548 mask!2840) lt!614548 lt!614550 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397878 (= lt!614548 (select (store (arr!46130 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397878 (= lt!614550 (array!95562 (store (arr!46130 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46681 a!2901)))))

(declare-fun b!1397879 () Bool)

(declare-fun res!936899 () Bool)

(assert (=> b!1397879 (=> (not res!936899) (not e!791404))))

(assert (=> b!1397879 (= res!936899 (and (= (size!46681 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46681 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46681 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397880 () Bool)

(declare-fun res!936897 () Bool)

(assert (=> b!1397880 (=> (not res!936897) (not e!791404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397880 (= res!936897 (validKeyInArray!0 (select (arr!46130 a!2901) j!112)))))

(declare-fun b!1397881 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95561 (_ BitVec 32)) SeekEntryResult!10469)

(assert (=> b!1397881 (= e!791402 (= (seekEntryOrOpen!0 (select (arr!46130 a!2901) j!112) a!2901 mask!2840) (Found!10469 j!112)))))

(declare-fun b!1397876 () Bool)

(declare-fun res!936903 () Bool)

(assert (=> b!1397876 (=> (not res!936903) (not e!791404))))

(assert (=> b!1397876 (= res!936903 (validKeyInArray!0 (select (arr!46130 a!2901) i!1037)))))

(declare-fun res!936902 () Bool)

(assert (=> start!120114 (=> (not res!936902) (not e!791404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120114 (= res!936902 (validMask!0 mask!2840))))

(assert (=> start!120114 e!791404))

(assert (=> start!120114 true))

(declare-fun array_inv!35075 (array!95561) Bool)

(assert (=> start!120114 (array_inv!35075 a!2901)))

(assert (= (and start!120114 res!936902) b!1397879))

(assert (= (and b!1397879 res!936899) b!1397876))

(assert (= (and b!1397876 res!936903) b!1397880))

(assert (= (and b!1397880 res!936897) b!1397874))

(assert (= (and b!1397874 res!936901) b!1397873))

(assert (= (and b!1397873 res!936896) b!1397875))

(assert (= (and b!1397875 res!936895) b!1397881))

(assert (= (and b!1397875 (not res!936898)) b!1397878))

(assert (= (and b!1397878 (not res!936900)) b!1397877))

(declare-fun m!1284875 () Bool)

(assert (=> start!120114 m!1284875))

(declare-fun m!1284877 () Bool)

(assert (=> start!120114 m!1284877))

(declare-fun m!1284879 () Bool)

(assert (=> b!1397876 m!1284879))

(assert (=> b!1397876 m!1284879))

(declare-fun m!1284881 () Bool)

(assert (=> b!1397876 m!1284881))

(declare-fun m!1284883 () Bool)

(assert (=> b!1397875 m!1284883))

(declare-fun m!1284885 () Bool)

(assert (=> b!1397875 m!1284885))

(assert (=> b!1397875 m!1284883))

(declare-fun m!1284887 () Bool)

(assert (=> b!1397875 m!1284887))

(declare-fun m!1284889 () Bool)

(assert (=> b!1397875 m!1284889))

(assert (=> b!1397875 m!1284883))

(declare-fun m!1284891 () Bool)

(assert (=> b!1397875 m!1284891))

(assert (=> b!1397880 m!1284883))

(assert (=> b!1397880 m!1284883))

(declare-fun m!1284893 () Bool)

(assert (=> b!1397880 m!1284893))

(assert (=> b!1397881 m!1284883))

(assert (=> b!1397881 m!1284883))

(declare-fun m!1284895 () Bool)

(assert (=> b!1397881 m!1284895))

(declare-fun m!1284897 () Bool)

(assert (=> b!1397877 m!1284897))

(declare-fun m!1284899 () Bool)

(assert (=> b!1397873 m!1284899))

(declare-fun m!1284901 () Bool)

(assert (=> b!1397874 m!1284901))

(declare-fun m!1284903 () Bool)

(assert (=> b!1397878 m!1284903))

(assert (=> b!1397878 m!1284903))

(declare-fun m!1284905 () Bool)

(assert (=> b!1397878 m!1284905))

(declare-fun m!1284907 () Bool)

(assert (=> b!1397878 m!1284907))

(declare-fun m!1284909 () Bool)

(assert (=> b!1397878 m!1284909))

(check-sat (not b!1397877) (not b!1397874) (not b!1397881) (not b!1397873) (not b!1397878) (not b!1397880) (not b!1397875) (not start!120114) (not b!1397876))
(check-sat)
