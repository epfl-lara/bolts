; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129394 () Bool)

(assert start!129394)

(declare-fun b!1519569 () Bool)

(declare-fun res!1039553 () Bool)

(declare-fun e!847657 () Bool)

(assert (=> b!1519569 (=> (not res!1039553) (not e!847657))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101163 0))(
  ( (array!101164 (arr!48814 (Array (_ BitVec 32) (_ BitVec 64))) (size!49365 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101163)

(declare-datatypes ((SeekEntryResult!13006 0))(
  ( (MissingZero!13006 (index!54418 (_ BitVec 32))) (Found!13006 (index!54419 (_ BitVec 32))) (Intermediate!13006 (undefined!13818 Bool) (index!54420 (_ BitVec 32)) (x!136097 (_ BitVec 32))) (Undefined!13006) (MissingVacant!13006 (index!54421 (_ BitVec 32))) )
))
(declare-fun lt!658680 () SeekEntryResult!13006)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101163 (_ BitVec 32)) SeekEntryResult!13006)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519569 (= res!1039553 (= lt!658680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)) mask!2512)))))

(declare-fun b!1519570 () Bool)

(declare-fun res!1039552 () Bool)

(declare-fun e!847658 () Bool)

(assert (=> b!1519570 (=> (not res!1039552) (not e!847658))))

(declare-datatypes ((List!35477 0))(
  ( (Nil!35474) (Cons!35473 (h!36886 (_ BitVec 64)) (t!50178 List!35477)) )
))
(declare-fun arrayNoDuplicates!0 (array!101163 (_ BitVec 32) List!35477) Bool)

(assert (=> b!1519570 (= res!1039552 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35474))))

(declare-fun b!1519571 () Bool)

(declare-fun res!1039546 () Bool)

(assert (=> b!1519571 (=> (not res!1039546) (not e!847658))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519571 (= res!1039546 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49365 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49365 a!2804))))))

(declare-fun res!1039545 () Bool)

(assert (=> start!129394 (=> (not res!1039545) (not e!847658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129394 (= res!1039545 (validMask!0 mask!2512))))

(assert (=> start!129394 e!847658))

(assert (=> start!129394 true))

(declare-fun array_inv!37759 (array!101163) Bool)

(assert (=> start!129394 (array_inv!37759 a!2804)))

(declare-fun b!1519572 () Bool)

(declare-fun res!1039550 () Bool)

(assert (=> b!1519572 (=> (not res!1039550) (not e!847658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519572 (= res!1039550 (validKeyInArray!0 (select (arr!48814 a!2804) j!70)))))

(declare-fun b!1519573 () Bool)

(declare-fun res!1039548 () Bool)

(assert (=> b!1519573 (=> (not res!1039548) (not e!847658))))

(assert (=> b!1519573 (= res!1039548 (validKeyInArray!0 (select (arr!48814 a!2804) i!961)))))

(declare-fun b!1519574 () Bool)

(declare-fun e!847656 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101163 (_ BitVec 32)) SeekEntryResult!13006)

(assert (=> b!1519574 (= e!847656 (= (seekEntry!0 (select (arr!48814 a!2804) j!70) a!2804 mask!2512) (Found!13006 j!70)))))

(declare-fun b!1519575 () Bool)

(assert (=> b!1519575 (= e!847658 e!847657)))

(declare-fun res!1039547 () Bool)

(assert (=> b!1519575 (=> (not res!1039547) (not e!847657))))

(declare-fun lt!658681 () SeekEntryResult!13006)

(assert (=> b!1519575 (= res!1039547 (= lt!658680 lt!658681))))

(assert (=> b!1519575 (= lt!658681 (Intermediate!13006 false resIndex!21 resX!21))))

(assert (=> b!1519575 (= lt!658680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) (select (arr!48814 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519576 () Bool)

(declare-fun res!1039551 () Bool)

(assert (=> b!1519576 (=> (not res!1039551) (not e!847658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101163 (_ BitVec 32)) Bool)

(assert (=> b!1519576 (= res!1039551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519577 () Bool)

(assert (=> b!1519577 (= e!847657 (not (or (not (= (select (arr!48814 a!2804) j!70) (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (= index!487 resIndex!21))))))

(assert (=> b!1519577 e!847656))

(declare-fun res!1039549 () Bool)

(assert (=> b!1519577 (=> (not res!1039549) (not e!847656))))

(assert (=> b!1519577 (= res!1039549 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50836 0))(
  ( (Unit!50837) )
))
(declare-fun lt!658679 () Unit!50836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50836)

(assert (=> b!1519577 (= lt!658679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519578 () Bool)

(declare-fun res!1039544 () Bool)

(assert (=> b!1519578 (=> (not res!1039544) (not e!847658))))

(assert (=> b!1519578 (= res!1039544 (and (= (size!49365 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49365 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49365 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519579 () Bool)

(declare-fun res!1039554 () Bool)

(assert (=> b!1519579 (=> (not res!1039554) (not e!847657))))

(assert (=> b!1519579 (= res!1039554 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48814 a!2804) j!70) a!2804 mask!2512) lt!658681))))

(assert (= (and start!129394 res!1039545) b!1519578))

(assert (= (and b!1519578 res!1039544) b!1519573))

(assert (= (and b!1519573 res!1039548) b!1519572))

(assert (= (and b!1519572 res!1039550) b!1519576))

(assert (= (and b!1519576 res!1039551) b!1519570))

(assert (= (and b!1519570 res!1039552) b!1519571))

(assert (= (and b!1519571 res!1039546) b!1519575))

(assert (= (and b!1519575 res!1039547) b!1519579))

(assert (= (and b!1519579 res!1039554) b!1519569))

(assert (= (and b!1519569 res!1039553) b!1519577))

(assert (= (and b!1519577 res!1039549) b!1519574))

(declare-fun m!1403049 () Bool)

(assert (=> b!1519576 m!1403049))

(declare-fun m!1403051 () Bool)

(assert (=> b!1519579 m!1403051))

(assert (=> b!1519579 m!1403051))

(declare-fun m!1403053 () Bool)

(assert (=> b!1519579 m!1403053))

(declare-fun m!1403055 () Bool)

(assert (=> b!1519569 m!1403055))

(declare-fun m!1403057 () Bool)

(assert (=> b!1519569 m!1403057))

(assert (=> b!1519569 m!1403057))

(declare-fun m!1403059 () Bool)

(assert (=> b!1519569 m!1403059))

(assert (=> b!1519569 m!1403059))

(assert (=> b!1519569 m!1403057))

(declare-fun m!1403061 () Bool)

(assert (=> b!1519569 m!1403061))

(declare-fun m!1403063 () Bool)

(assert (=> b!1519573 m!1403063))

(assert (=> b!1519573 m!1403063))

(declare-fun m!1403065 () Bool)

(assert (=> b!1519573 m!1403065))

(assert (=> b!1519572 m!1403051))

(assert (=> b!1519572 m!1403051))

(declare-fun m!1403067 () Bool)

(assert (=> b!1519572 m!1403067))

(declare-fun m!1403069 () Bool)

(assert (=> start!129394 m!1403069))

(declare-fun m!1403071 () Bool)

(assert (=> start!129394 m!1403071))

(assert (=> b!1519574 m!1403051))

(assert (=> b!1519574 m!1403051))

(declare-fun m!1403073 () Bool)

(assert (=> b!1519574 m!1403073))

(assert (=> b!1519575 m!1403051))

(assert (=> b!1519575 m!1403051))

(declare-fun m!1403075 () Bool)

(assert (=> b!1519575 m!1403075))

(assert (=> b!1519575 m!1403075))

(assert (=> b!1519575 m!1403051))

(declare-fun m!1403077 () Bool)

(assert (=> b!1519575 m!1403077))

(declare-fun m!1403079 () Bool)

(assert (=> b!1519570 m!1403079))

(assert (=> b!1519577 m!1403051))

(declare-fun m!1403081 () Bool)

(assert (=> b!1519577 m!1403081))

(assert (=> b!1519577 m!1403055))

(assert (=> b!1519577 m!1403057))

(declare-fun m!1403083 () Bool)

(assert (=> b!1519577 m!1403083))

(push 1)

(assert (not b!1519579))

(assert (not b!1519572))

(assert (not b!1519574))

(assert (not b!1519577))

(assert (not b!1519569))

(assert (not b!1519575))

(assert (not b!1519573))

(assert (not start!129394))

(assert (not b!1519570))

(assert (not b!1519576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158661 () Bool)

(assert (=> d!158661 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129394 d!158661))

(declare-fun d!158667 () Bool)

(assert (=> d!158667 (= (array_inv!37759 a!2804) (bvsge (size!49365 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129394 d!158667))

(declare-fun d!158669 () Bool)

(assert (=> d!158669 (= (validKeyInArray!0 (select (arr!48814 a!2804) j!70)) (and (not (= (select (arr!48814 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48814 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519572 d!158669))

(declare-fun d!158671 () Bool)

(assert (=> d!158671 (= (validKeyInArray!0 (select (arr!48814 a!2804) i!961)) (and (not (= (select (arr!48814 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48814 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519573 d!158671))

(declare-fun e!847746 () SeekEntryResult!13006)

(declare-fun b!1519751 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519751 (= e!847746 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48814 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519752 () Bool)

(declare-fun lt!658734 () SeekEntryResult!13006)

(assert (=> b!1519752 (and (bvsge (index!54420 lt!658734) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658734) (size!49365 a!2804)))))

(declare-fun e!847748 () Bool)

(assert (=> b!1519752 (= e!847748 (= (select (arr!48814 a!2804) (index!54420 lt!658734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519753 () Bool)

(assert (=> b!1519753 (and (bvsge (index!54420 lt!658734) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658734) (size!49365 a!2804)))))

(declare-fun res!1039656 () Bool)

(assert (=> b!1519753 (= res!1039656 (= (select (arr!48814 a!2804) (index!54420 lt!658734)) (select (arr!48814 a!2804) j!70)))))

(assert (=> b!1519753 (=> res!1039656 e!847748)))

(declare-fun e!847744 () Bool)

(assert (=> b!1519753 (= e!847744 e!847748)))

(declare-fun b!1519754 () Bool)

(declare-fun e!847745 () SeekEntryResult!13006)

(assert (=> b!1519754 (= e!847745 e!847746)))

(declare-fun c!139595 () Bool)

(declare-fun lt!658735 () (_ BitVec 64))

(assert (=> b!1519754 (= c!139595 (or (= lt!658735 (select (arr!48814 a!2804) j!70)) (= (bvadd lt!658735 lt!658735) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519755 () Bool)

(declare-fun e!847747 () Bool)

(assert (=> b!1519755 (= e!847747 e!847744)))

(declare-fun res!1039657 () Bool)

(assert (=> b!1519755 (= res!1039657 (and (is-Intermediate!13006 lt!658734) (not (undefined!13818 lt!658734)) (bvslt (x!136097 lt!658734) #b01111111111111111111111111111110) (bvsge (x!136097 lt!658734) #b00000000000000000000000000000000) (bvsge (x!136097 lt!658734) x!534)))))

(assert (=> b!1519755 (=> (not res!1039657) (not e!847744))))

(declare-fun b!1519756 () Bool)

(assert (=> b!1519756 (= e!847746 (Intermediate!13006 false index!487 x!534))))

(declare-fun d!158673 () Bool)

(assert (=> d!158673 e!847747))

(declare-fun c!139594 () Bool)

(assert (=> d!158673 (= c!139594 (and (is-Intermediate!13006 lt!658734) (undefined!13818 lt!658734)))))

(assert (=> d!158673 (= lt!658734 e!847745)))

(declare-fun c!139593 () Bool)

(assert (=> d!158673 (= c!139593 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158673 (= lt!658735 (select (arr!48814 a!2804) index!487))))

(assert (=> d!158673 (validMask!0 mask!2512)))

(assert (=> d!158673 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48814 a!2804) j!70) a!2804 mask!2512) lt!658734)))

(declare-fun b!1519757 () Bool)

(assert (=> b!1519757 (= e!847745 (Intermediate!13006 true index!487 x!534))))

(declare-fun b!1519758 () Bool)

(assert (=> b!1519758 (and (bvsge (index!54420 lt!658734) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658734) (size!49365 a!2804)))))

(declare-fun res!1039658 () Bool)

(assert (=> b!1519758 (= res!1039658 (= (select (arr!48814 a!2804) (index!54420 lt!658734)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1519758 (=> res!1039658 e!847748)))

(declare-fun b!1519759 () Bool)

(assert (=> b!1519759 (= e!847747 (bvsge (x!136097 lt!658734) #b01111111111111111111111111111110))))

(assert (= (and d!158673 c!139593) b!1519757))

(assert (= (and d!158673 (not c!139593)) b!1519754))

(assert (= (and b!1519754 c!139595) b!1519756))

(assert (= (and b!1519754 (not c!139595)) b!1519751))

(assert (= (and d!158673 c!139594) b!1519759))

(assert (= (and d!158673 (not c!139594)) b!1519755))

(assert (= (and b!1519755 res!1039657) b!1519753))

(assert (= (and b!1519753 (not res!1039656)) b!1519758))

(assert (= (and b!1519758 (not res!1039658)) b!1519752))

(declare-fun m!1403187 () Bool)

(assert (=> d!158673 m!1403187))

(assert (=> d!158673 m!1403069))

(declare-fun m!1403189 () Bool)

(assert (=> b!1519753 m!1403189))

(assert (=> b!1519752 m!1403189))

(declare-fun m!1403191 () Bool)

(assert (=> b!1519751 m!1403191))

(assert (=> b!1519751 m!1403191))

(assert (=> b!1519751 m!1403051))

(declare-fun m!1403193 () Bool)

(assert (=> b!1519751 m!1403193))

(assert (=> b!1519758 m!1403189))

(assert (=> b!1519579 d!158673))

(declare-fun b!1519760 () Bool)

(declare-fun e!847751 () SeekEntryResult!13006)

(assert (=> b!1519760 (= e!847751 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)) mask!2512))))

(declare-fun b!1519761 () Bool)

(declare-fun lt!658736 () SeekEntryResult!13006)

(assert (=> b!1519761 (and (bvsge (index!54420 lt!658736) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658736) (size!49365 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)))))))

(declare-fun e!847753 () Bool)

(assert (=> b!1519761 (= e!847753 (= (select (arr!48814 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804))) (index!54420 lt!658736)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519762 () Bool)

(assert (=> b!1519762 (and (bvsge (index!54420 lt!658736) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658736) (size!49365 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)))))))

(declare-fun res!1039659 () Bool)

(assert (=> b!1519762 (= res!1039659 (= (select (arr!48814 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804))) (index!54420 lt!658736)) (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1519762 (=> res!1039659 e!847753)))

(declare-fun e!847749 () Bool)

(assert (=> b!1519762 (= e!847749 e!847753)))

(declare-fun b!1519763 () Bool)

(declare-fun e!847750 () SeekEntryResult!13006)

(assert (=> b!1519763 (= e!847750 e!847751)))

(declare-fun lt!658737 () (_ BitVec 64))

(declare-fun c!139598 () Bool)

(assert (=> b!1519763 (= c!139598 (or (= lt!658737 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!658737 lt!658737) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519764 () Bool)

(declare-fun e!847752 () Bool)

(assert (=> b!1519764 (= e!847752 e!847749)))

(declare-fun res!1039660 () Bool)

(assert (=> b!1519764 (= res!1039660 (and (is-Intermediate!13006 lt!658736) (not (undefined!13818 lt!658736)) (bvslt (x!136097 lt!658736) #b01111111111111111111111111111110) (bvsge (x!136097 lt!658736) #b00000000000000000000000000000000) (bvsge (x!136097 lt!658736) #b00000000000000000000000000000000)))))

(assert (=> b!1519764 (=> (not res!1039660) (not e!847749))))

(declare-fun b!1519765 () Bool)

(assert (=> b!1519765 (= e!847751 (Intermediate!13006 false (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!158681 () Bool)

(assert (=> d!158681 e!847752))

(declare-fun c!139597 () Bool)

(assert (=> d!158681 (= c!139597 (and (is-Intermediate!13006 lt!658736) (undefined!13818 lt!658736)))))

(assert (=> d!158681 (= lt!658736 e!847750)))

(declare-fun c!139596 () Bool)

(assert (=> d!158681 (= c!139596 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158681 (= lt!658737 (select (arr!48814 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804))) (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158681 (validMask!0 mask!2512)))

(assert (=> d!158681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)) mask!2512) lt!658736)))

(declare-fun b!1519766 () Bool)

(assert (=> b!1519766 (= e!847750 (Intermediate!13006 true (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519767 () Bool)

(assert (=> b!1519767 (and (bvsge (index!54420 lt!658736) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658736) (size!49365 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804)))))))

(declare-fun res!1039661 () Bool)

(assert (=> b!1519767 (= res!1039661 (= (select (arr!48814 (array!101164 (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49365 a!2804))) (index!54420 lt!658736)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1519767 (=> res!1039661 e!847753)))

(declare-fun b!1519768 () Bool)

(assert (=> b!1519768 (= e!847752 (bvsge (x!136097 lt!658736) #b01111111111111111111111111111110))))

(assert (= (and d!158681 c!139596) b!1519766))

(assert (= (and d!158681 (not c!139596)) b!1519763))

(assert (= (and b!1519763 c!139598) b!1519765))

(assert (= (and b!1519763 (not c!139598)) b!1519760))

(assert (= (and d!158681 c!139597) b!1519768))

(assert (= (and d!158681 (not c!139597)) b!1519764))

(assert (= (and b!1519764 res!1039660) b!1519762))

(assert (= (and b!1519762 (not res!1039659)) b!1519767))

(assert (= (and b!1519767 (not res!1039661)) b!1519761))

(assert (=> d!158681 m!1403059))

(declare-fun m!1403195 () Bool)

(assert (=> d!158681 m!1403195))

(assert (=> d!158681 m!1403069))

(declare-fun m!1403197 () Bool)

(assert (=> b!1519762 m!1403197))

(assert (=> b!1519761 m!1403197))

(assert (=> b!1519760 m!1403059))

(declare-fun m!1403199 () Bool)

(assert (=> b!1519760 m!1403199))

(assert (=> b!1519760 m!1403199))

(assert (=> b!1519760 m!1403057))

(declare-fun m!1403201 () Bool)

(assert (=> b!1519760 m!1403201))

(assert (=> b!1519767 m!1403197))

(assert (=> b!1519569 d!158681))

(declare-fun d!158683 () Bool)

(declare-fun lt!658765 () (_ BitVec 32))

(declare-fun lt!658764 () (_ BitVec 32))

(assert (=> d!158683 (= lt!658765 (bvmul (bvxor lt!658764 (bvlshr lt!658764 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158683 (= lt!658764 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158683 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039669 (let ((h!36891 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136105 (bvmul (bvxor h!36891 (bvlshr h!36891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136105 (bvlshr x!136105 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039669 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039669 #b00000000000000000000000000000000))))))

(assert (=> d!158683 (= (toIndex!0 (select (store (arr!48814 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!658765 (bvlshr lt!658765 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519569 d!158683))

(declare-fun b!1519827 () Bool)

(declare-fun e!847791 () SeekEntryResult!13006)

(declare-fun lt!658789 () SeekEntryResult!13006)

(assert (=> b!1519827 (= e!847791 (MissingZero!13006 (index!54420 lt!658789)))))

(declare-fun b!1519829 () Bool)

(declare-fun e!847792 () SeekEntryResult!13006)

(assert (=> b!1519829 (= e!847792 (Found!13006 (index!54420 lt!658789)))))

(declare-fun b!1519830 () Bool)

(declare-fun e!847793 () SeekEntryResult!13006)

(assert (=> b!1519830 (= e!847793 e!847792)))

(declare-fun lt!658790 () (_ BitVec 64))

(assert (=> b!1519830 (= lt!658790 (select (arr!48814 a!2804) (index!54420 lt!658789)))))

(declare-fun c!139620 () Bool)

(assert (=> b!1519830 (= c!139620 (= lt!658790 (select (arr!48814 a!2804) j!70)))))

(declare-fun b!1519831 () Bool)

(declare-fun c!139618 () Bool)

(assert (=> b!1519831 (= c!139618 (= lt!658790 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1519831 (= e!847792 e!847791)))

(declare-fun b!1519832 () Bool)

(declare-fun lt!658788 () SeekEntryResult!13006)

(assert (=> b!1519832 (= e!847791 (ite (is-MissingVacant!13006 lt!658788) (MissingZero!13006 (index!54421 lt!658788)) lt!658788))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101163 (_ BitVec 32)) SeekEntryResult!13006)

(assert (=> b!1519832 (= lt!658788 (seekKeyOrZeroReturnVacant!0 (x!136097 lt!658789) (index!54420 lt!658789) (index!54420 lt!658789) (select (arr!48814 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158695 () Bool)

(declare-fun lt!658791 () SeekEntryResult!13006)

(assert (=> d!158695 (and (or (is-MissingVacant!13006 lt!658791) (not (is-Found!13006 lt!658791)) (and (bvsge (index!54419 lt!658791) #b00000000000000000000000000000000) (bvslt (index!54419 lt!658791) (size!49365 a!2804)))) (not (is-MissingVacant!13006 lt!658791)) (or (not (is-Found!13006 lt!658791)) (= (select (arr!48814 a!2804) (index!54419 lt!658791)) (select (arr!48814 a!2804) j!70))))))

(assert (=> d!158695 (= lt!658791 e!847793)))

(declare-fun c!139619 () Bool)

(assert (=> d!158695 (= c!139619 (and (is-Intermediate!13006 lt!658789) (undefined!13818 lt!658789)))))

(assert (=> d!158695 (= lt!658789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) (select (arr!48814 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158695 (validMask!0 mask!2512)))

(assert (=> d!158695 (= (seekEntry!0 (select (arr!48814 a!2804) j!70) a!2804 mask!2512) lt!658791)))

(declare-fun b!1519828 () Bool)

(assert (=> b!1519828 (= e!847793 Undefined!13006)))

(assert (= (and d!158695 c!139619) b!1519828))

(assert (= (and d!158695 (not c!139619)) b!1519830))

(assert (= (and b!1519830 c!139620) b!1519829))

(assert (= (and b!1519830 (not c!139620)) b!1519831))

(assert (= (and b!1519831 c!139618) b!1519827))

(assert (= (and b!1519831 (not c!139618)) b!1519832))

(declare-fun m!1403249 () Bool)

(assert (=> b!1519830 m!1403249))

(assert (=> b!1519832 m!1403051))

(declare-fun m!1403251 () Bool)

(assert (=> b!1519832 m!1403251))

(declare-fun m!1403253 () Bool)

(assert (=> d!158695 m!1403253))

(assert (=> d!158695 m!1403051))

(assert (=> d!158695 m!1403075))

(assert (=> d!158695 m!1403075))

(assert (=> d!158695 m!1403051))

(assert (=> d!158695 m!1403077))

(assert (=> d!158695 m!1403069))

(assert (=> b!1519574 d!158695))

(declare-fun b!1519845 () Bool)

(declare-fun e!847802 () SeekEntryResult!13006)

(assert (=> b!1519845 (= e!847802 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48814 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519846 () Bool)

(declare-fun lt!658800 () SeekEntryResult!13006)

(assert (=> b!1519846 (and (bvsge (index!54420 lt!658800) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658800) (size!49365 a!2804)))))

(declare-fun e!847804 () Bool)

(assert (=> b!1519846 (= e!847804 (= (select (arr!48814 a!2804) (index!54420 lt!658800)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519847 () Bool)

(assert (=> b!1519847 (and (bvsge (index!54420 lt!658800) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658800) (size!49365 a!2804)))))

(declare-fun res!1039683 () Bool)

(assert (=> b!1519847 (= res!1039683 (= (select (arr!48814 a!2804) (index!54420 lt!658800)) (select (arr!48814 a!2804) j!70)))))

(assert (=> b!1519847 (=> res!1039683 e!847804)))

(declare-fun e!847800 () Bool)

(assert (=> b!1519847 (= e!847800 e!847804)))

(declare-fun b!1519848 () Bool)

(declare-fun e!847801 () SeekEntryResult!13006)

(assert (=> b!1519848 (= e!847801 e!847802)))

(declare-fun c!139629 () Bool)

(declare-fun lt!658801 () (_ BitVec 64))

(assert (=> b!1519848 (= c!139629 (or (= lt!658801 (select (arr!48814 a!2804) j!70)) (= (bvadd lt!658801 lt!658801) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519849 () Bool)

(declare-fun e!847803 () Bool)

(assert (=> b!1519849 (= e!847803 e!847800)))

(declare-fun res!1039684 () Bool)

(assert (=> b!1519849 (= res!1039684 (and (is-Intermediate!13006 lt!658800) (not (undefined!13818 lt!658800)) (bvslt (x!136097 lt!658800) #b01111111111111111111111111111110) (bvsge (x!136097 lt!658800) #b00000000000000000000000000000000) (bvsge (x!136097 lt!658800) #b00000000000000000000000000000000)))))

(assert (=> b!1519849 (=> (not res!1039684) (not e!847800))))

(declare-fun b!1519850 () Bool)

(assert (=> b!1519850 (= e!847802 (Intermediate!13006 false (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!158707 () Bool)

(assert (=> d!158707 e!847803))

(declare-fun c!139628 () Bool)

(assert (=> d!158707 (= c!139628 (and (is-Intermediate!13006 lt!658800) (undefined!13818 lt!658800)))))

(assert (=> d!158707 (= lt!658800 e!847801)))

(declare-fun c!139627 () Bool)

(assert (=> d!158707 (= c!139627 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158707 (= lt!658801 (select (arr!48814 a!2804) (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512)))))

(assert (=> d!158707 (validMask!0 mask!2512)))

(assert (=> d!158707 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) (select (arr!48814 a!2804) j!70) a!2804 mask!2512) lt!658800)))

(declare-fun b!1519851 () Bool)

(assert (=> b!1519851 (= e!847801 (Intermediate!13006 true (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519852 () Bool)

(assert (=> b!1519852 (and (bvsge (index!54420 lt!658800) #b00000000000000000000000000000000) (bvslt (index!54420 lt!658800) (size!49365 a!2804)))))

(declare-fun res!1039685 () Bool)

(assert (=> b!1519852 (= res!1039685 (= (select (arr!48814 a!2804) (index!54420 lt!658800)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1519852 (=> res!1039685 e!847804)))

(declare-fun b!1519853 () Bool)

(assert (=> b!1519853 (= e!847803 (bvsge (x!136097 lt!658800) #b01111111111111111111111111111110))))

(assert (= (and d!158707 c!139627) b!1519851))

(assert (= (and d!158707 (not c!139627)) b!1519848))

(assert (= (and b!1519848 c!139629) b!1519850))

(assert (= (and b!1519848 (not c!139629)) b!1519845))

(assert (= (and d!158707 c!139628) b!1519853))

(assert (= (and d!158707 (not c!139628)) b!1519849))

(assert (= (and b!1519849 res!1039684) b!1519847))

(assert (= (and b!1519847 (not res!1039683)) b!1519852))

(assert (= (and b!1519852 (not res!1039685)) b!1519846))

(assert (=> d!158707 m!1403075))

(declare-fun m!1403255 () Bool)

(assert (=> d!158707 m!1403255))

(assert (=> d!158707 m!1403069))

(declare-fun m!1403257 () Bool)

(assert (=> b!1519847 m!1403257))

(assert (=> b!1519846 m!1403257))

(assert (=> b!1519845 m!1403075))

(declare-fun m!1403259 () Bool)

(assert (=> b!1519845 m!1403259))

(assert (=> b!1519845 m!1403259))

(assert (=> b!1519845 m!1403051))

(declare-fun m!1403261 () Bool)

(assert (=> b!1519845 m!1403261))

(assert (=> b!1519852 m!1403257))

(assert (=> b!1519575 d!158707))

(declare-fun d!158709 () Bool)

(declare-fun lt!658803 () (_ BitVec 32))

(declare-fun lt!658802 () (_ BitVec 32))

(assert (=> d!158709 (= lt!658803 (bvmul (bvxor lt!658802 (bvlshr lt!658802 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158709 (= lt!658802 ((_ extract 31 0) (bvand (bvxor (select (arr!48814 a!2804) j!70) (bvlshr (select (arr!48814 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158709 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039669 (let ((h!36891 ((_ extract 31 0) (bvand (bvxor (select (arr!48814 a!2804) j!70) (bvlshr (select (arr!48814 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136105 (bvmul (bvxor h!36891 (bvlshr h!36891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136105 (bvlshr x!136105 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039669 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039669 #b00000000000000000000000000000000))))))

(assert (=> d!158709 (= (toIndex!0 (select (arr!48814 a!2804) j!70) mask!2512) (bvand (bvxor lt!658803 (bvlshr lt!658803 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519575 d!158709))

(declare-fun bm!68321 () Bool)

(declare-fun call!68324 () Bool)

(declare-fun c!139636 () Bool)

(assert (=> bm!68321 (= call!68324 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139636 (Cons!35473 (select (arr!48814 a!2804) #b00000000000000000000000000000000) Nil!35474) Nil!35474)))))

(declare-fun b!1519880 () Bool)

(declare-fun e!847825 () Bool)

(assert (=> b!1519880 (= e!847825 call!68324)))

(declare-fun d!158711 () Bool)

(declare-fun res!1039702 () Bool)

(declare-fun e!847826 () Bool)

(assert (=> d!158711 (=> res!1039702 e!847826)))

(assert (=> d!158711 (= res!1039702 (bvsge #b00000000000000000000000000000000 (size!49365 a!2804)))))

(assert (=> d!158711 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35474) e!847826)))

(declare-fun b!1519881 () Bool)

(declare-fun e!847827 () Bool)

(assert (=> b!1519881 (= e!847827 e!847825)))

(assert (=> b!1519881 (= c!139636 (validKeyInArray!0 (select (arr!48814 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519882 () Bool)

(declare-fun e!847828 () Bool)

(declare-fun contains!9988 (List!35477 (_ BitVec 64)) Bool)

(assert (=> b!1519882 (= e!847828 (contains!9988 Nil!35474 (select (arr!48814 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519883 () Bool)

(assert (=> b!1519883 (= e!847825 call!68324)))

(declare-fun b!1519884 () Bool)

(assert (=> b!1519884 (= e!847826 e!847827)))

(declare-fun res!1039700 () Bool)

(assert (=> b!1519884 (=> (not res!1039700) (not e!847827))))

(assert (=> b!1519884 (= res!1039700 (not e!847828))))

(declare-fun res!1039701 () Bool)

(assert (=> b!1519884 (=> (not res!1039701) (not e!847828))))

(assert (=> b!1519884 (= res!1039701 (validKeyInArray!0 (select (arr!48814 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158711 (not res!1039702)) b!1519884))

(assert (= (and b!1519884 res!1039701) b!1519882))

(assert (= (and b!1519884 res!1039700) b!1519881))

(assert (= (and b!1519881 c!139636) b!1519883))

(assert (= (and b!1519881 (not c!139636)) b!1519880))

(assert (= (or b!1519883 b!1519880) bm!68321))

(declare-fun m!1403277 () Bool)

(assert (=> bm!68321 m!1403277))

(declare-fun m!1403279 () Bool)

(assert (=> bm!68321 m!1403279))

(assert (=> b!1519881 m!1403277))

(assert (=> b!1519881 m!1403277))

(declare-fun m!1403281 () Bool)

(assert (=> b!1519881 m!1403281))

(assert (=> b!1519882 m!1403277))

(assert (=> b!1519882 m!1403277))

(declare-fun m!1403283 () Bool)

(assert (=> b!1519882 m!1403283))

(assert (=> b!1519884 m!1403277))

(assert (=> b!1519884 m!1403277))

(assert (=> b!1519884 m!1403281))

(assert (=> b!1519570 d!158711))

(declare-fun b!1519911 () Bool)

(declare-fun e!847848 () Bool)

(declare-fun e!847847 () Bool)

(assert (=> b!1519911 (= e!847848 e!847847)))

(declare-fun c!139645 () Bool)

(assert (=> b!1519911 (= c!139645 (validKeyInArray!0 (select (arr!48814 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68327 () Bool)

(declare-fun call!68330 () Bool)

(assert (=> bm!68327 (= call!68330 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1519912 () Bool)

(assert (=> b!1519912 (= e!847847 call!68330)))

(declare-fun d!158721 () Bool)

(declare-fun res!1039713 () Bool)

(assert (=> d!158721 (=> res!1039713 e!847848)))

(assert (=> d!158721 (= res!1039713 (bvsge #b00000000000000000000000000000000 (size!49365 a!2804)))))

(assert (=> d!158721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!847848)))

(declare-fun b!1519913 () Bool)

(declare-fun e!847846 () Bool)

(assert (=> b!1519913 (= e!847847 e!847846)))

(declare-fun lt!658823 () (_ BitVec 64))

(assert (=> b!1519913 (= lt!658823 (select (arr!48814 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658824 () Unit!50836)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101163 (_ BitVec 64) (_ BitVec 32)) Unit!50836)

(assert (=> b!1519913 (= lt!658824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658823 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1519913 (arrayContainsKey!0 a!2804 lt!658823 #b00000000000000000000000000000000)))

(declare-fun lt!658822 () Unit!50836)

(assert (=> b!1519913 (= lt!658822 lt!658824)))

(declare-fun res!1039714 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101163 (_ BitVec 32)) SeekEntryResult!13006)

(assert (=> b!1519913 (= res!1039714 (= (seekEntryOrOpen!0 (select (arr!48814 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13006 #b00000000000000000000000000000000)))))

(assert (=> b!1519913 (=> (not res!1039714) (not e!847846))))

(declare-fun b!1519914 () Bool)

(assert (=> b!1519914 (= e!847846 call!68330)))

(assert (= (and d!158721 (not res!1039713)) b!1519911))

(assert (= (and b!1519911 c!139645) b!1519913))

(assert (= (and b!1519911 (not c!139645)) b!1519912))

(assert (= (and b!1519913 res!1039714) b!1519914))

(assert (= (or b!1519914 b!1519912) bm!68327))

(assert (=> b!1519911 m!1403277))

(assert (=> b!1519911 m!1403277))

(assert (=> b!1519911 m!1403281))

(declare-fun m!1403299 () Bool)

(assert (=> bm!68327 m!1403299))

(assert (=> b!1519913 m!1403277))

(declare-fun m!1403301 () Bool)

(assert (=> b!1519913 m!1403301))

(declare-fun m!1403303 () Bool)

(assert (=> b!1519913 m!1403303))

(assert (=> b!1519913 m!1403277))

(declare-fun m!1403305 () Bool)

(assert (=> b!1519913 m!1403305))

(assert (=> b!1519576 d!158721))

(declare-fun b!1519915 () Bool)

(declare-fun e!847851 () Bool)

(declare-fun e!847850 () Bool)

(assert (=> b!1519915 (= e!847851 e!847850)))

(declare-fun c!139646 () Bool)

(assert (=> b!1519915 (= c!139646 (validKeyInArray!0 (select (arr!48814 a!2804) j!70)))))

(declare-fun call!68331 () Bool)

(declare-fun bm!68328 () Bool)

(assert (=> bm!68328 (= call!68331 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1519916 () Bool)

(assert (=> b!1519916 (= e!847850 call!68331)))

(declare-fun d!158731 () Bool)

(declare-fun res!1039715 () Bool)

(assert (=> d!158731 (=> res!1039715 e!847851)))

(assert (=> d!158731 (= res!1039715 (bvsge j!70 (size!49365 a!2804)))))

(assert (=> d!158731 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!847851)))

(declare-fun b!1519917 () Bool)

(declare-fun e!847849 () Bool)

(assert (=> b!1519917 (= e!847850 e!847849)))

(declare-fun lt!658826 () (_ BitVec 64))

(assert (=> b!1519917 (= lt!658826 (select (arr!48814 a!2804) j!70))))

(declare-fun lt!658827 () Unit!50836)

(assert (=> b!1519917 (= lt!658827 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658826 j!70))))

(assert (=> b!1519917 (arrayContainsKey!0 a!2804 lt!658826 #b00000000000000000000000000000000)))

(declare-fun lt!658825 () Unit!50836)

(assert (=> b!1519917 (= lt!658825 lt!658827)))

(declare-fun res!1039716 () Bool)

(assert (=> b!1519917 (= res!1039716 (= (seekEntryOrOpen!0 (select (arr!48814 a!2804) j!70) a!2804 mask!2512) (Found!13006 j!70)))))

(assert (=> b!1519917 (=> (not res!1039716) (not e!847849))))

(declare-fun b!1519918 () Bool)

(assert (=> b!1519918 (= e!847849 call!68331)))

(assert (= (and d!158731 (not res!1039715)) b!1519915))

(assert (= (and b!1519915 c!139646) b!1519917))

(assert (= (and b!1519915 (not c!139646)) b!1519916))

(assert (= (and b!1519917 res!1039716) b!1519918))

(assert (= (or b!1519918 b!1519916) bm!68328))

(assert (=> b!1519915 m!1403051))

(assert (=> b!1519915 m!1403051))

(assert (=> b!1519915 m!1403067))

(declare-fun m!1403307 () Bool)

(assert (=> bm!68328 m!1403307))

(assert (=> b!1519917 m!1403051))

(declare-fun m!1403309 () Bool)

(assert (=> b!1519917 m!1403309))

(declare-fun m!1403311 () Bool)

(assert (=> b!1519917 m!1403311))

(assert (=> b!1519917 m!1403051))

(declare-fun m!1403313 () Bool)

(assert (=> b!1519917 m!1403313))

(assert (=> b!1519577 d!158731))

(declare-fun d!158733 () Bool)

(assert (=> d!158733 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!658832 () Unit!50836)

(declare-fun choose!38 (array!101163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50836)

(assert (=> d!158733 (= lt!658832 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158733 (validMask!0 mask!2512)))

(assert (=> d!158733 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!658832)))

(declare-fun bs!43612 () Bool)

(assert (= bs!43612 d!158733))

(assert (=> bs!43612 m!1403083))

(declare-fun m!1403323 () Bool)

(assert (=> bs!43612 m!1403323))

(assert (=> bs!43612 m!1403069))

(assert (=> b!1519577 d!158733))

(push 1)

(assert (not bm!68327))

(assert (not b!1519845))

(assert (not bm!68321))

(assert (not b!1519882))

(assert (not b!1519915))

(assert (not d!158673))

(assert (not b!1519751))

(assert (not d!158681))

(assert (not b!1519760))

(assert (not b!1519913))

(assert (not d!158707))

(assert (not d!158695))

(assert (not b!1519832))

(assert (not b!1519884))

(assert (not b!1519881))

(assert (not bm!68328))

(assert (not d!158733))

(assert (not b!1519917))

(assert (not b!1519911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

