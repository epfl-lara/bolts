; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129012 () Bool)

(assert start!129012)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100781 0))(
  ( (array!100782 (arr!48623 (Array (_ BitVec 32) (_ BitVec 64))) (size!49174 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100781)

(declare-fun e!844052 () Bool)

(declare-fun b!1511967 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511967 (= e!844052 (validKeyInArray!0 (select (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun b!1511968 () Bool)

(declare-fun e!844051 () Bool)

(declare-fun e!844055 () Bool)

(assert (=> b!1511968 (= e!844051 e!844055)))

(declare-fun res!1031946 () Bool)

(assert (=> b!1511968 (=> (not res!1031946) (not e!844055))))

(declare-datatypes ((SeekEntryResult!12815 0))(
  ( (MissingZero!12815 (index!53654 (_ BitVec 32))) (Found!12815 (index!53655 (_ BitVec 32))) (Intermediate!12815 (undefined!13627 Bool) (index!53656 (_ BitVec 32)) (x!135394 (_ BitVec 32))) (Undefined!12815) (MissingVacant!12815 (index!53657 (_ BitVec 32))) )
))
(declare-fun lt!655539 () SeekEntryResult!12815)

(declare-fun lt!655540 () SeekEntryResult!12815)

(assert (=> b!1511968 (= res!1031946 (= lt!655539 lt!655540))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511968 (= lt!655540 (Intermediate!12815 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100781 (_ BitVec 32)) SeekEntryResult!12815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511968 (= lt!655539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48623 a!2804) j!70) mask!2512) (select (arr!48623 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511969 () Bool)

(declare-fun res!1031953 () Bool)

(assert (=> b!1511969 (=> (not res!1031953) (not e!844051))))

(assert (=> b!1511969 (= res!1031953 (validKeyInArray!0 (select (arr!48623 a!2804) i!961)))))

(declare-fun b!1511970 () Bool)

(declare-fun res!1031952 () Bool)

(assert (=> b!1511970 (=> (not res!1031952) (not e!844051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100781 (_ BitVec 32)) Bool)

(assert (=> b!1511970 (= res!1031952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511971 () Bool)

(declare-fun res!1031949 () Bool)

(assert (=> b!1511971 (=> (not res!1031949) (not e!844051))))

(assert (=> b!1511971 (= res!1031949 (and (= (size!49174 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49174 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49174 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511972 () Bool)

(declare-fun res!1031944 () Bool)

(assert (=> b!1511972 (=> (not res!1031944) (not e!844055))))

(assert (=> b!1511972 (= res!1031944 (= lt!655539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100782 (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49174 a!2804)) mask!2512)))))

(declare-fun b!1511973 () Bool)

(assert (=> b!1511973 (= e!844055 (not e!844052))))

(declare-fun res!1031950 () Bool)

(assert (=> b!1511973 (=> res!1031950 e!844052)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511973 (= res!1031950 (or (not (= (select (arr!48623 a!2804) j!70) (select (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48623 a!2804) index!487) (select (arr!48623 a!2804) j!70)) (not (= (select (arr!48623 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(declare-fun e!844050 () Bool)

(assert (=> b!1511973 e!844050))

(declare-fun res!1031955 () Bool)

(assert (=> b!1511973 (=> (not res!1031955) (not e!844050))))

(assert (=> b!1511973 (= res!1031955 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50454 0))(
  ( (Unit!50455) )
))
(declare-fun lt!655538 () Unit!50454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50454)

(assert (=> b!1511973 (= lt!655538 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1031945 () Bool)

(assert (=> start!129012 (=> (not res!1031945) (not e!844051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129012 (= res!1031945 (validMask!0 mask!2512))))

(assert (=> start!129012 e!844051))

(assert (=> start!129012 true))

(declare-fun array_inv!37568 (array!100781) Bool)

(assert (=> start!129012 (array_inv!37568 a!2804)))

(declare-fun b!1511974 () Bool)

(declare-fun res!1031943 () Bool)

(assert (=> b!1511974 (=> (not res!1031943) (not e!844051))))

(assert (=> b!1511974 (= res!1031943 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49174 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49174 a!2804))))))

(declare-fun b!1511975 () Bool)

(declare-fun res!1031954 () Bool)

(assert (=> b!1511975 (=> (not res!1031954) (not e!844055))))

(assert (=> b!1511975 (= res!1031954 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48623 a!2804) j!70) a!2804 mask!2512) lt!655540))))

(declare-fun b!1511976 () Bool)

(declare-fun e!844053 () Bool)

(assert (=> b!1511976 (= e!844050 e!844053)))

(declare-fun res!1031951 () Bool)

(assert (=> b!1511976 (=> res!1031951 e!844053)))

(assert (=> b!1511976 (= res!1031951 (or (not (= (select (arr!48623 a!2804) j!70) (select (store (arr!48623 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48623 a!2804) index!487) (select (arr!48623 a!2804) j!70)) (not (= (select (arr!48623 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511977 () Bool)

(declare-fun res!1031942 () Bool)

(assert (=> b!1511977 (=> (not res!1031942) (not e!844051))))

(assert (=> b!1511977 (= res!1031942 (validKeyInArray!0 (select (arr!48623 a!2804) j!70)))))

(declare-fun b!1511978 () Bool)

(declare-fun res!1031948 () Bool)

(assert (=> b!1511978 (=> (not res!1031948) (not e!844050))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100781 (_ BitVec 32)) SeekEntryResult!12815)

(assert (=> b!1511978 (= res!1031948 (= (seekEntry!0 (select (arr!48623 a!2804) j!70) a!2804 mask!2512) (Found!12815 j!70)))))

(declare-fun b!1511979 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100781 (_ BitVec 32)) SeekEntryResult!12815)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100781 (_ BitVec 32)) SeekEntryResult!12815)

(assert (=> b!1511979 (= e!844053 (= (seekEntryOrOpen!0 (select (arr!48623 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48623 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511980 () Bool)

(declare-fun res!1031947 () Bool)

(assert (=> b!1511980 (=> (not res!1031947) (not e!844051))))

(declare-datatypes ((List!35286 0))(
  ( (Nil!35283) (Cons!35282 (h!36695 (_ BitVec 64)) (t!49987 List!35286)) )
))
(declare-fun arrayNoDuplicates!0 (array!100781 (_ BitVec 32) List!35286) Bool)

(assert (=> b!1511980 (= res!1031947 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35283))))

(assert (= (and start!129012 res!1031945) b!1511971))

(assert (= (and b!1511971 res!1031949) b!1511969))

(assert (= (and b!1511969 res!1031953) b!1511977))

(assert (= (and b!1511977 res!1031942) b!1511970))

(assert (= (and b!1511970 res!1031952) b!1511980))

(assert (= (and b!1511980 res!1031947) b!1511974))

(assert (= (and b!1511974 res!1031943) b!1511968))

(assert (= (and b!1511968 res!1031946) b!1511975))

(assert (= (and b!1511975 res!1031954) b!1511972))

(assert (= (and b!1511972 res!1031944) b!1511973))

(assert (= (and b!1511973 res!1031955) b!1511978))

(assert (= (and b!1511978 res!1031948) b!1511976))

(assert (= (and b!1511976 (not res!1031951)) b!1511979))

(assert (= (and b!1511973 (not res!1031950)) b!1511967))

(declare-fun m!1394759 () Bool)

(assert (=> b!1511970 m!1394759))

(declare-fun m!1394761 () Bool)

(assert (=> b!1511967 m!1394761))

(declare-fun m!1394763 () Bool)

(assert (=> b!1511967 m!1394763))

(assert (=> b!1511967 m!1394763))

(declare-fun m!1394765 () Bool)

(assert (=> b!1511967 m!1394765))

(declare-fun m!1394767 () Bool)

(assert (=> b!1511968 m!1394767))

(assert (=> b!1511968 m!1394767))

(declare-fun m!1394769 () Bool)

(assert (=> b!1511968 m!1394769))

(assert (=> b!1511968 m!1394769))

(assert (=> b!1511968 m!1394767))

(declare-fun m!1394771 () Bool)

(assert (=> b!1511968 m!1394771))

(assert (=> b!1511972 m!1394761))

(assert (=> b!1511972 m!1394763))

(assert (=> b!1511972 m!1394763))

(declare-fun m!1394773 () Bool)

(assert (=> b!1511972 m!1394773))

(assert (=> b!1511972 m!1394773))

(assert (=> b!1511972 m!1394763))

(declare-fun m!1394775 () Bool)

(assert (=> b!1511972 m!1394775))

(assert (=> b!1511978 m!1394767))

(assert (=> b!1511978 m!1394767))

(declare-fun m!1394777 () Bool)

(assert (=> b!1511978 m!1394777))

(assert (=> b!1511979 m!1394767))

(assert (=> b!1511979 m!1394767))

(declare-fun m!1394779 () Bool)

(assert (=> b!1511979 m!1394779))

(assert (=> b!1511979 m!1394767))

(declare-fun m!1394781 () Bool)

(assert (=> b!1511979 m!1394781))

(declare-fun m!1394783 () Bool)

(assert (=> b!1511969 m!1394783))

(assert (=> b!1511969 m!1394783))

(declare-fun m!1394785 () Bool)

(assert (=> b!1511969 m!1394785))

(assert (=> b!1511975 m!1394767))

(assert (=> b!1511975 m!1394767))

(declare-fun m!1394787 () Bool)

(assert (=> b!1511975 m!1394787))

(assert (=> b!1511977 m!1394767))

(assert (=> b!1511977 m!1394767))

(declare-fun m!1394789 () Bool)

(assert (=> b!1511977 m!1394789))

(assert (=> b!1511973 m!1394767))

(declare-fun m!1394791 () Bool)

(assert (=> b!1511973 m!1394791))

(assert (=> b!1511973 m!1394761))

(declare-fun m!1394793 () Bool)

(assert (=> b!1511973 m!1394793))

(assert (=> b!1511973 m!1394763))

(declare-fun m!1394795 () Bool)

(assert (=> b!1511973 m!1394795))

(declare-fun m!1394797 () Bool)

(assert (=> b!1511980 m!1394797))

(assert (=> b!1511976 m!1394767))

(assert (=> b!1511976 m!1394761))

(assert (=> b!1511976 m!1394763))

(assert (=> b!1511976 m!1394793))

(declare-fun m!1394799 () Bool)

(assert (=> start!129012 m!1394799))

(declare-fun m!1394801 () Bool)

(assert (=> start!129012 m!1394801))

(check-sat (not start!129012) (not b!1511978) (not b!1511967) (not b!1511970) (not b!1511977) (not b!1511968) (not b!1511979) (not b!1511969) (not b!1511975) (not b!1511980) (not b!1511972) (not b!1511973))
(check-sat)
