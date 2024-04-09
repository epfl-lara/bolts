; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129356 () Bool)

(assert start!129356)

(declare-fun res!1038775 () Bool)

(declare-fun e!847282 () Bool)

(assert (=> start!129356 (=> (not res!1038775) (not e!847282))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129356 (= res!1038775 (validMask!0 mask!2512))))

(assert (=> start!129356 e!847282))

(assert (=> start!129356 true))

(declare-datatypes ((array!101125 0))(
  ( (array!101126 (arr!48795 (Array (_ BitVec 32) (_ BitVec 64))) (size!49346 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101125)

(declare-fun array_inv!37740 (array!101125) Bool)

(assert (=> start!129356 (array_inv!37740 a!2804)))

(declare-fun b!1518795 () Bool)

(declare-fun res!1038771 () Bool)

(assert (=> b!1518795 (=> (not res!1038771) (not e!847282))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1518795 (= res!1038771 (and (= (size!49346 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49346 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49346 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518796 () Bool)

(declare-fun res!1038782 () Bool)

(assert (=> b!1518796 (=> (not res!1038782) (not e!847282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518796 (= res!1038782 (validKeyInArray!0 (select (arr!48795 a!2804) j!70)))))

(declare-fun e!847284 () Bool)

(declare-fun b!1518797 () Bool)

(declare-datatypes ((SeekEntryResult!12987 0))(
  ( (MissingZero!12987 (index!54342 (_ BitVec 32))) (Found!12987 (index!54343 (_ BitVec 32))) (Intermediate!12987 (undefined!13799 Bool) (index!54344 (_ BitVec 32)) (x!136022 (_ BitVec 32))) (Undefined!12987) (MissingVacant!12987 (index!54345 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101125 (_ BitVec 32)) SeekEntryResult!12987)

(assert (=> b!1518797 (= e!847284 (= (seekEntry!0 (select (arr!48795 a!2804) j!70) a!2804 mask!2512) (Found!12987 j!70)))))

(declare-fun b!1518798 () Bool)

(declare-fun e!847286 () Bool)

(declare-fun e!847283 () Bool)

(assert (=> b!1518798 (= e!847286 e!847283)))

(declare-fun res!1038777 () Bool)

(assert (=> b!1518798 (=> res!1038777 e!847283)))

(declare-fun lt!658325 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518798 (= res!1038777 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658325 #b00000000000000000000000000000000) (bvsge lt!658325 (size!49346 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518798 (= lt!658325 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518799 () Bool)

(declare-fun res!1038778 () Bool)

(assert (=> b!1518799 (=> (not res!1038778) (not e!847282))))

(declare-datatypes ((List!35458 0))(
  ( (Nil!35455) (Cons!35454 (h!36867 (_ BitVec 64)) (t!50159 List!35458)) )
))
(declare-fun arrayNoDuplicates!0 (array!101125 (_ BitVec 32) List!35458) Bool)

(assert (=> b!1518799 (= res!1038778 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35455))))

(declare-fun b!1518800 () Bool)

(declare-fun res!1038770 () Bool)

(assert (=> b!1518800 (=> (not res!1038770) (not e!847282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101125 (_ BitVec 32)) Bool)

(assert (=> b!1518800 (= res!1038770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518801 () Bool)

(declare-fun e!847280 () Bool)

(declare-fun e!847285 () Bool)

(assert (=> b!1518801 (= e!847280 e!847285)))

(declare-fun res!1038774 () Bool)

(assert (=> b!1518801 (=> (not res!1038774) (not e!847285))))

(declare-fun lt!658324 () SeekEntryResult!12987)

(declare-fun lt!658329 () array!101125)

(declare-fun lt!658330 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101125 (_ BitVec 32)) SeekEntryResult!12987)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518801 (= res!1038774 (= lt!658324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658330 mask!2512) lt!658330 lt!658329 mask!2512)))))

(assert (=> b!1518801 (= lt!658330 (select (store (arr!48795 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518801 (= lt!658329 (array!101126 (store (arr!48795 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49346 a!2804)))))

(declare-fun b!1518802 () Bool)

(declare-fun res!1038776 () Bool)

(assert (=> b!1518802 (=> res!1038776 e!847283)))

(declare-fun lt!658326 () SeekEntryResult!12987)

(assert (=> b!1518802 (= res!1038776 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658325 (select (arr!48795 a!2804) j!70) a!2804 mask!2512) lt!658326)))))

(declare-fun b!1518803 () Bool)

(declare-fun res!1038773 () Bool)

(assert (=> b!1518803 (=> (not res!1038773) (not e!847280))))

(assert (=> b!1518803 (= res!1038773 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48795 a!2804) j!70) a!2804 mask!2512) lt!658326))))

(declare-fun b!1518804 () Bool)

(declare-fun res!1038780 () Bool)

(assert (=> b!1518804 (=> (not res!1038780) (not e!847282))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518804 (= res!1038780 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49346 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49346 a!2804))))))

(declare-fun b!1518805 () Bool)

(assert (=> b!1518805 (= e!847283 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101125 (_ BitVec 32)) SeekEntryResult!12987)

(assert (=> b!1518805 (= (seekEntryOrOpen!0 (select (arr!48795 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658330 lt!658329 mask!2512))))

(declare-datatypes ((Unit!50798 0))(
  ( (Unit!50799) )
))
(declare-fun lt!658327 () Unit!50798)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50798)

(assert (=> b!1518805 (= lt!658327 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658325 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518806 () Bool)

(declare-fun res!1038781 () Bool)

(assert (=> b!1518806 (=> (not res!1038781) (not e!847282))))

(assert (=> b!1518806 (= res!1038781 (validKeyInArray!0 (select (arr!48795 a!2804) i!961)))))

(declare-fun b!1518807 () Bool)

(assert (=> b!1518807 (= e!847282 e!847280)))

(declare-fun res!1038779 () Bool)

(assert (=> b!1518807 (=> (not res!1038779) (not e!847280))))

(assert (=> b!1518807 (= res!1038779 (= lt!658324 lt!658326))))

(assert (=> b!1518807 (= lt!658326 (Intermediate!12987 false resIndex!21 resX!21))))

(assert (=> b!1518807 (= lt!658324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48795 a!2804) j!70) mask!2512) (select (arr!48795 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518808 () Bool)

(assert (=> b!1518808 (= e!847285 (not e!847286))))

(declare-fun res!1038772 () Bool)

(assert (=> b!1518808 (=> res!1038772 e!847286)))

(assert (=> b!1518808 (= res!1038772 (or (not (= (select (arr!48795 a!2804) j!70) lt!658330)) (= x!534 resX!21)))))

(assert (=> b!1518808 e!847284))

(declare-fun res!1038783 () Bool)

(assert (=> b!1518808 (=> (not res!1038783) (not e!847284))))

(assert (=> b!1518808 (= res!1038783 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658328 () Unit!50798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50798)

(assert (=> b!1518808 (= lt!658328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129356 res!1038775) b!1518795))

(assert (= (and b!1518795 res!1038771) b!1518806))

(assert (= (and b!1518806 res!1038781) b!1518796))

(assert (= (and b!1518796 res!1038782) b!1518800))

(assert (= (and b!1518800 res!1038770) b!1518799))

(assert (= (and b!1518799 res!1038778) b!1518804))

(assert (= (and b!1518804 res!1038780) b!1518807))

(assert (= (and b!1518807 res!1038779) b!1518803))

(assert (= (and b!1518803 res!1038773) b!1518801))

(assert (= (and b!1518801 res!1038774) b!1518808))

(assert (= (and b!1518808 res!1038783) b!1518797))

(assert (= (and b!1518808 (not res!1038772)) b!1518798))

(assert (= (and b!1518798 (not res!1038777)) b!1518802))

(assert (= (and b!1518802 (not res!1038776)) b!1518805))

(declare-fun m!1402199 () Bool)

(assert (=> b!1518798 m!1402199))

(declare-fun m!1402201 () Bool)

(assert (=> b!1518806 m!1402201))

(assert (=> b!1518806 m!1402201))

(declare-fun m!1402203 () Bool)

(assert (=> b!1518806 m!1402203))

(declare-fun m!1402205 () Bool)

(assert (=> b!1518796 m!1402205))

(assert (=> b!1518796 m!1402205))

(declare-fun m!1402207 () Bool)

(assert (=> b!1518796 m!1402207))

(declare-fun m!1402209 () Bool)

(assert (=> b!1518800 m!1402209))

(assert (=> b!1518802 m!1402205))

(assert (=> b!1518802 m!1402205))

(declare-fun m!1402211 () Bool)

(assert (=> b!1518802 m!1402211))

(declare-fun m!1402213 () Bool)

(assert (=> b!1518801 m!1402213))

(assert (=> b!1518801 m!1402213))

(declare-fun m!1402215 () Bool)

(assert (=> b!1518801 m!1402215))

(declare-fun m!1402217 () Bool)

(assert (=> b!1518801 m!1402217))

(declare-fun m!1402219 () Bool)

(assert (=> b!1518801 m!1402219))

(assert (=> b!1518805 m!1402205))

(assert (=> b!1518805 m!1402205))

(declare-fun m!1402221 () Bool)

(assert (=> b!1518805 m!1402221))

(declare-fun m!1402223 () Bool)

(assert (=> b!1518805 m!1402223))

(declare-fun m!1402225 () Bool)

(assert (=> b!1518805 m!1402225))

(assert (=> b!1518807 m!1402205))

(assert (=> b!1518807 m!1402205))

(declare-fun m!1402227 () Bool)

(assert (=> b!1518807 m!1402227))

(assert (=> b!1518807 m!1402227))

(assert (=> b!1518807 m!1402205))

(declare-fun m!1402229 () Bool)

(assert (=> b!1518807 m!1402229))

(assert (=> b!1518803 m!1402205))

(assert (=> b!1518803 m!1402205))

(declare-fun m!1402231 () Bool)

(assert (=> b!1518803 m!1402231))

(assert (=> b!1518808 m!1402205))

(declare-fun m!1402233 () Bool)

(assert (=> b!1518808 m!1402233))

(declare-fun m!1402235 () Bool)

(assert (=> b!1518808 m!1402235))

(declare-fun m!1402237 () Bool)

(assert (=> b!1518799 m!1402237))

(assert (=> b!1518797 m!1402205))

(assert (=> b!1518797 m!1402205))

(declare-fun m!1402239 () Bool)

(assert (=> b!1518797 m!1402239))

(declare-fun m!1402241 () Bool)

(assert (=> start!129356 m!1402241))

(declare-fun m!1402243 () Bool)

(assert (=> start!129356 m!1402243))

(push 1)

