; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129014 () Bool)

(assert start!129014)

(declare-fun b!1512009 () Bool)

(declare-fun e!844070 () Bool)

(declare-fun e!844071 () Bool)

(assert (=> b!1512009 (= e!844070 e!844071)))

(declare-fun res!1031987 () Bool)

(assert (=> b!1512009 (=> (not res!1031987) (not e!844071))))

(declare-datatypes ((SeekEntryResult!12816 0))(
  ( (MissingZero!12816 (index!53658 (_ BitVec 32))) (Found!12816 (index!53659 (_ BitVec 32))) (Intermediate!12816 (undefined!13628 Bool) (index!53660 (_ BitVec 32)) (x!135395 (_ BitVec 32))) (Undefined!12816) (MissingVacant!12816 (index!53661 (_ BitVec 32))) )
))
(declare-fun lt!655547 () SeekEntryResult!12816)

(declare-fun lt!655548 () SeekEntryResult!12816)

(assert (=> b!1512009 (= res!1031987 (= lt!655547 lt!655548))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512009 (= lt!655548 (Intermediate!12816 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100783 0))(
  ( (array!100784 (arr!48624 (Array (_ BitVec 32) (_ BitVec 64))) (size!49175 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100783)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100783 (_ BitVec 32)) SeekEntryResult!12816)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512009 (= lt!655547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48624 a!2804) j!70) mask!2512) (select (arr!48624 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512010 () Bool)

(declare-fun res!1031997 () Bool)

(assert (=> b!1512010 (=> (not res!1031997) (not e!844070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100783 (_ BitVec 32)) Bool)

(assert (=> b!1512010 (= res!1031997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!844072 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun b!1512011 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512011 (= e!844072 (validKeyInArray!0 (select (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun b!1512012 () Bool)

(declare-fun res!1031995 () Bool)

(declare-fun e!844073 () Bool)

(assert (=> b!1512012 (=> (not res!1031995) (not e!844073))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100783 (_ BitVec 32)) SeekEntryResult!12816)

(assert (=> b!1512012 (= res!1031995 (= (seekEntry!0 (select (arr!48624 a!2804) j!70) a!2804 mask!2512) (Found!12816 j!70)))))

(declare-fun b!1512013 () Bool)

(declare-fun res!1031993 () Bool)

(assert (=> b!1512013 (=> (not res!1031993) (not e!844070))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1512013 (= res!1031993 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49175 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49175 a!2804))))))

(declare-fun res!1031984 () Bool)

(assert (=> start!129014 (=> (not res!1031984) (not e!844070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129014 (= res!1031984 (validMask!0 mask!2512))))

(assert (=> start!129014 e!844070))

(assert (=> start!129014 true))

(declare-fun array_inv!37569 (array!100783) Bool)

(assert (=> start!129014 (array_inv!37569 a!2804)))

(declare-fun b!1512014 () Bool)

(declare-fun res!1031986 () Bool)

(assert (=> b!1512014 (=> (not res!1031986) (not e!844070))))

(assert (=> b!1512014 (= res!1031986 (validKeyInArray!0 (select (arr!48624 a!2804) i!961)))))

(declare-fun b!1512015 () Bool)

(declare-fun res!1031992 () Bool)

(assert (=> b!1512015 (=> (not res!1031992) (not e!844071))))

(assert (=> b!1512015 (= res!1031992 (= lt!655547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100784 (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49175 a!2804)) mask!2512)))))

(declare-fun e!844068 () Bool)

(declare-fun b!1512016 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100783 (_ BitVec 32)) SeekEntryResult!12816)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100783 (_ BitVec 32)) SeekEntryResult!12816)

(assert (=> b!1512016 (= e!844068 (= (seekEntryOrOpen!0 (select (arr!48624 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48624 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512017 () Bool)

(declare-fun res!1031990 () Bool)

(assert (=> b!1512017 (=> (not res!1031990) (not e!844070))))

(assert (=> b!1512017 (= res!1031990 (validKeyInArray!0 (select (arr!48624 a!2804) j!70)))))

(declare-fun b!1512018 () Bool)

(assert (=> b!1512018 (= e!844073 e!844068)))

(declare-fun res!1031996 () Bool)

(assert (=> b!1512018 (=> res!1031996 e!844068)))

(assert (=> b!1512018 (= res!1031996 (or (not (= (select (arr!48624 a!2804) j!70) (select (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48624 a!2804) index!487) (select (arr!48624 a!2804) j!70)) (not (= (select (arr!48624 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512019 () Bool)

(declare-fun res!1031988 () Bool)

(assert (=> b!1512019 (=> (not res!1031988) (not e!844070))))

(assert (=> b!1512019 (= res!1031988 (and (= (size!49175 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49175 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49175 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512020 () Bool)

(assert (=> b!1512020 (= e!844071 (not e!844072))))

(declare-fun res!1031994 () Bool)

(assert (=> b!1512020 (=> res!1031994 e!844072)))

(assert (=> b!1512020 (= res!1031994 (or (not (= (select (arr!48624 a!2804) j!70) (select (store (arr!48624 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48624 a!2804) index!487) (select (arr!48624 a!2804) j!70)) (not (= (select (arr!48624 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(assert (=> b!1512020 e!844073))

(declare-fun res!1031991 () Bool)

(assert (=> b!1512020 (=> (not res!1031991) (not e!844073))))

(assert (=> b!1512020 (= res!1031991 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50456 0))(
  ( (Unit!50457) )
))
(declare-fun lt!655549 () Unit!50456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50456)

(assert (=> b!1512020 (= lt!655549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512021 () Bool)

(declare-fun res!1031989 () Bool)

(assert (=> b!1512021 (=> (not res!1031989) (not e!844071))))

(assert (=> b!1512021 (= res!1031989 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48624 a!2804) j!70) a!2804 mask!2512) lt!655548))))

(declare-fun b!1512022 () Bool)

(declare-fun res!1031985 () Bool)

(assert (=> b!1512022 (=> (not res!1031985) (not e!844070))))

(declare-datatypes ((List!35287 0))(
  ( (Nil!35284) (Cons!35283 (h!36696 (_ BitVec 64)) (t!49988 List!35287)) )
))
(declare-fun arrayNoDuplicates!0 (array!100783 (_ BitVec 32) List!35287) Bool)

(assert (=> b!1512022 (= res!1031985 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35284))))

(assert (= (and start!129014 res!1031984) b!1512019))

(assert (= (and b!1512019 res!1031988) b!1512014))

(assert (= (and b!1512014 res!1031986) b!1512017))

(assert (= (and b!1512017 res!1031990) b!1512010))

(assert (= (and b!1512010 res!1031997) b!1512022))

(assert (= (and b!1512022 res!1031985) b!1512013))

(assert (= (and b!1512013 res!1031993) b!1512009))

(assert (= (and b!1512009 res!1031987) b!1512021))

(assert (= (and b!1512021 res!1031989) b!1512015))

(assert (= (and b!1512015 res!1031992) b!1512020))

(assert (= (and b!1512020 res!1031991) b!1512012))

(assert (= (and b!1512012 res!1031995) b!1512018))

(assert (= (and b!1512018 (not res!1031996)) b!1512016))

(assert (= (and b!1512020 (not res!1031994)) b!1512011))

(declare-fun m!1394803 () Bool)

(assert (=> b!1512017 m!1394803))

(assert (=> b!1512017 m!1394803))

(declare-fun m!1394805 () Bool)

(assert (=> b!1512017 m!1394805))

(assert (=> b!1512016 m!1394803))

(assert (=> b!1512016 m!1394803))

(declare-fun m!1394807 () Bool)

(assert (=> b!1512016 m!1394807))

(assert (=> b!1512016 m!1394803))

(declare-fun m!1394809 () Bool)

(assert (=> b!1512016 m!1394809))

(declare-fun m!1394811 () Bool)

(assert (=> b!1512015 m!1394811))

(declare-fun m!1394813 () Bool)

(assert (=> b!1512015 m!1394813))

(assert (=> b!1512015 m!1394813))

(declare-fun m!1394815 () Bool)

(assert (=> b!1512015 m!1394815))

(assert (=> b!1512015 m!1394815))

(assert (=> b!1512015 m!1394813))

(declare-fun m!1394817 () Bool)

(assert (=> b!1512015 m!1394817))

(assert (=> b!1512021 m!1394803))

(assert (=> b!1512021 m!1394803))

(declare-fun m!1394819 () Bool)

(assert (=> b!1512021 m!1394819))

(declare-fun m!1394821 () Bool)

(assert (=> b!1512010 m!1394821))

(assert (=> b!1512018 m!1394803))

(assert (=> b!1512018 m!1394811))

(assert (=> b!1512018 m!1394813))

(declare-fun m!1394823 () Bool)

(assert (=> b!1512018 m!1394823))

(assert (=> b!1512012 m!1394803))

(assert (=> b!1512012 m!1394803))

(declare-fun m!1394825 () Bool)

(assert (=> b!1512012 m!1394825))

(assert (=> b!1512020 m!1394803))

(declare-fun m!1394827 () Bool)

(assert (=> b!1512020 m!1394827))

(assert (=> b!1512020 m!1394811))

(assert (=> b!1512020 m!1394823))

(assert (=> b!1512020 m!1394813))

(declare-fun m!1394829 () Bool)

(assert (=> b!1512020 m!1394829))

(declare-fun m!1394831 () Bool)

(assert (=> b!1512014 m!1394831))

(assert (=> b!1512014 m!1394831))

(declare-fun m!1394833 () Bool)

(assert (=> b!1512014 m!1394833))

(assert (=> b!1512009 m!1394803))

(assert (=> b!1512009 m!1394803))

(declare-fun m!1394835 () Bool)

(assert (=> b!1512009 m!1394835))

(assert (=> b!1512009 m!1394835))

(assert (=> b!1512009 m!1394803))

(declare-fun m!1394837 () Bool)

(assert (=> b!1512009 m!1394837))

(declare-fun m!1394839 () Bool)

(assert (=> b!1512022 m!1394839))

(assert (=> b!1512011 m!1394811))

(assert (=> b!1512011 m!1394813))

(assert (=> b!1512011 m!1394813))

(declare-fun m!1394841 () Bool)

(assert (=> b!1512011 m!1394841))

(declare-fun m!1394843 () Bool)

(assert (=> start!129014 m!1394843))

(declare-fun m!1394845 () Bool)

(assert (=> start!129014 m!1394845))

(push 1)

