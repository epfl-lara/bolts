; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129200 () Bool)

(assert start!129200)

(declare-fun b!1515790 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100969 0))(
  ( (array!100970 (arr!48717 (Array (_ BitVec 32) (_ BitVec 64))) (size!49268 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100969)

(declare-fun e!845904 () Bool)

(declare-datatypes ((SeekEntryResult!12909 0))(
  ( (MissingZero!12909 (index!54030 (_ BitVec 32))) (Found!12909 (index!54031 (_ BitVec 32))) (Intermediate!12909 (undefined!13721 Bool) (index!54032 (_ BitVec 32)) (x!135736 (_ BitVec 32))) (Undefined!12909) (MissingVacant!12909 (index!54033 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100969 (_ BitVec 32)) SeekEntryResult!12909)

(assert (=> b!1515790 (= e!845904 (= (seekEntry!0 (select (arr!48717 a!2804) j!70) a!2804 mask!2512) (Found!12909 j!70)))))

(declare-fun b!1515791 () Bool)

(declare-fun res!1035775 () Bool)

(declare-fun e!845909 () Bool)

(assert (=> b!1515791 (=> (not res!1035775) (not e!845909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515791 (= res!1035775 (validKeyInArray!0 (select (arr!48717 a!2804) j!70)))))

(declare-fun b!1515792 () Bool)

(declare-fun res!1035777 () Bool)

(assert (=> b!1515792 (=> (not res!1035777) (not e!845909))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515792 (= res!1035777 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49268 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49268 a!2804))))))

(declare-fun b!1515793 () Bool)

(declare-fun res!1035770 () Bool)

(assert (=> b!1515793 (=> (not res!1035770) (not e!845909))))

(declare-datatypes ((List!35380 0))(
  ( (Nil!35377) (Cons!35376 (h!36789 (_ BitVec 64)) (t!50081 List!35380)) )
))
(declare-fun arrayNoDuplicates!0 (array!100969 (_ BitVec 32) List!35380) Bool)

(assert (=> b!1515793 (= res!1035770 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35377))))

(declare-fun b!1515794 () Bool)

(declare-fun res!1035766 () Bool)

(assert (=> b!1515794 (=> (not res!1035766) (not e!845909))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515794 (= res!1035766 (validKeyInArray!0 (select (arr!48717 a!2804) i!961)))))

(declare-fun b!1515795 () Bool)

(declare-fun e!845903 () Bool)

(assert (=> b!1515795 (= e!845909 e!845903)))

(declare-fun res!1035773 () Bool)

(assert (=> b!1515795 (=> (not res!1035773) (not e!845903))))

(declare-fun lt!657125 () SeekEntryResult!12909)

(declare-fun lt!657133 () SeekEntryResult!12909)

(assert (=> b!1515795 (= res!1035773 (= lt!657125 lt!657133))))

(assert (=> b!1515795 (= lt!657133 (Intermediate!12909 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100969 (_ BitVec 32)) SeekEntryResult!12909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515795 (= lt!657125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48717 a!2804) j!70) mask!2512) (select (arr!48717 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515796 () Bool)

(declare-fun e!845908 () Bool)

(declare-fun e!845905 () Bool)

(assert (=> b!1515796 (= e!845908 (not e!845905))))

(declare-fun res!1035772 () Bool)

(assert (=> b!1515796 (=> res!1035772 e!845905)))

(declare-fun lt!657132 () (_ BitVec 64))

(assert (=> b!1515796 (= res!1035772 (or (not (= (select (arr!48717 a!2804) j!70) lt!657132)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48717 a!2804) index!487) (select (arr!48717 a!2804) j!70)) (not (= (select (arr!48717 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515796 e!845904))

(declare-fun res!1035774 () Bool)

(assert (=> b!1515796 (=> (not res!1035774) (not e!845904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100969 (_ BitVec 32)) Bool)

(assert (=> b!1515796 (= res!1035774 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50642 0))(
  ( (Unit!50643) )
))
(declare-fun lt!657130 () Unit!50642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50642)

(assert (=> b!1515796 (= lt!657130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515797 () Bool)

(declare-fun e!845906 () Bool)

(assert (=> b!1515797 (= e!845906 true)))

(declare-fun lt!657131 () SeekEntryResult!12909)

(declare-fun lt!657124 () SeekEntryResult!12909)

(assert (=> b!1515797 (= lt!657131 lt!657124)))

(declare-fun lt!657128 () Unit!50642)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50642)

(assert (=> b!1515797 (= lt!657128 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515798 () Bool)

(declare-fun res!1035768 () Bool)

(assert (=> b!1515798 (=> (not res!1035768) (not e!845909))))

(assert (=> b!1515798 (= res!1035768 (and (= (size!49268 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49268 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49268 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515799 () Bool)

(assert (=> b!1515799 (= e!845903 e!845908)))

(declare-fun res!1035765 () Bool)

(assert (=> b!1515799 (=> (not res!1035765) (not e!845908))))

(declare-fun lt!657129 () array!100969)

(assert (=> b!1515799 (= res!1035765 (= lt!657125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657132 mask!2512) lt!657132 lt!657129 mask!2512)))))

(assert (=> b!1515799 (= lt!657132 (select (store (arr!48717 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515799 (= lt!657129 (array!100970 (store (arr!48717 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49268 a!2804)))))

(declare-fun b!1515800 () Bool)

(assert (=> b!1515800 (= e!845905 e!845906)))

(declare-fun res!1035767 () Bool)

(assert (=> b!1515800 (=> res!1035767 e!845906)))

(assert (=> b!1515800 (= res!1035767 (not (= lt!657124 (Found!12909 j!70))))))

(declare-fun lt!657127 () SeekEntryResult!12909)

(assert (=> b!1515800 (= lt!657127 lt!657131)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100969 (_ BitVec 32)) SeekEntryResult!12909)

(assert (=> b!1515800 (= lt!657131 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657132 lt!657129 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100969 (_ BitVec 32)) SeekEntryResult!12909)

(assert (=> b!1515800 (= lt!657127 (seekEntryOrOpen!0 lt!657132 lt!657129 mask!2512))))

(declare-fun lt!657126 () SeekEntryResult!12909)

(assert (=> b!1515800 (= lt!657126 lt!657124)))

(assert (=> b!1515800 (= lt!657124 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48717 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515800 (= lt!657126 (seekEntryOrOpen!0 (select (arr!48717 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515802 () Bool)

(declare-fun res!1035771 () Bool)

(assert (=> b!1515802 (=> (not res!1035771) (not e!845903))))

(assert (=> b!1515802 (= res!1035771 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48717 a!2804) j!70) a!2804 mask!2512) lt!657133))))

(declare-fun res!1035769 () Bool)

(assert (=> start!129200 (=> (not res!1035769) (not e!845909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129200 (= res!1035769 (validMask!0 mask!2512))))

(assert (=> start!129200 e!845909))

(assert (=> start!129200 true))

(declare-fun array_inv!37662 (array!100969) Bool)

(assert (=> start!129200 (array_inv!37662 a!2804)))

(declare-fun b!1515801 () Bool)

(declare-fun res!1035776 () Bool)

(assert (=> b!1515801 (=> (not res!1035776) (not e!845909))))

(assert (=> b!1515801 (= res!1035776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129200 res!1035769) b!1515798))

(assert (= (and b!1515798 res!1035768) b!1515794))

(assert (= (and b!1515794 res!1035766) b!1515791))

(assert (= (and b!1515791 res!1035775) b!1515801))

(assert (= (and b!1515801 res!1035776) b!1515793))

(assert (= (and b!1515793 res!1035770) b!1515792))

(assert (= (and b!1515792 res!1035777) b!1515795))

(assert (= (and b!1515795 res!1035773) b!1515802))

(assert (= (and b!1515802 res!1035771) b!1515799))

(assert (= (and b!1515799 res!1035765) b!1515796))

(assert (= (and b!1515796 res!1035774) b!1515790))

(assert (= (and b!1515796 (not res!1035772)) b!1515800))

(assert (= (and b!1515800 (not res!1035767)) b!1515797))

(declare-fun m!1399041 () Bool)

(assert (=> b!1515796 m!1399041))

(declare-fun m!1399043 () Bool)

(assert (=> b!1515796 m!1399043))

(declare-fun m!1399045 () Bool)

(assert (=> b!1515796 m!1399045))

(declare-fun m!1399047 () Bool)

(assert (=> b!1515796 m!1399047))

(declare-fun m!1399049 () Bool)

(assert (=> b!1515793 m!1399049))

(assert (=> b!1515795 m!1399041))

(assert (=> b!1515795 m!1399041))

(declare-fun m!1399051 () Bool)

(assert (=> b!1515795 m!1399051))

(assert (=> b!1515795 m!1399051))

(assert (=> b!1515795 m!1399041))

(declare-fun m!1399053 () Bool)

(assert (=> b!1515795 m!1399053))

(declare-fun m!1399055 () Bool)

(assert (=> b!1515799 m!1399055))

(assert (=> b!1515799 m!1399055))

(declare-fun m!1399057 () Bool)

(assert (=> b!1515799 m!1399057))

(declare-fun m!1399059 () Bool)

(assert (=> b!1515799 m!1399059))

(declare-fun m!1399061 () Bool)

(assert (=> b!1515799 m!1399061))

(declare-fun m!1399063 () Bool)

(assert (=> b!1515801 m!1399063))

(declare-fun m!1399065 () Bool)

(assert (=> b!1515797 m!1399065))

(declare-fun m!1399067 () Bool)

(assert (=> b!1515794 m!1399067))

(assert (=> b!1515794 m!1399067))

(declare-fun m!1399069 () Bool)

(assert (=> b!1515794 m!1399069))

(assert (=> b!1515802 m!1399041))

(assert (=> b!1515802 m!1399041))

(declare-fun m!1399071 () Bool)

(assert (=> b!1515802 m!1399071))

(assert (=> b!1515791 m!1399041))

(assert (=> b!1515791 m!1399041))

(declare-fun m!1399073 () Bool)

(assert (=> b!1515791 m!1399073))

(assert (=> b!1515800 m!1399041))

(declare-fun m!1399075 () Bool)

(assert (=> b!1515800 m!1399075))

(assert (=> b!1515800 m!1399041))

(declare-fun m!1399077 () Bool)

(assert (=> b!1515800 m!1399077))

(declare-fun m!1399079 () Bool)

(assert (=> b!1515800 m!1399079))

(assert (=> b!1515800 m!1399041))

(declare-fun m!1399081 () Bool)

(assert (=> b!1515800 m!1399081))

(declare-fun m!1399083 () Bool)

(assert (=> start!129200 m!1399083))

(declare-fun m!1399085 () Bool)

(assert (=> start!129200 m!1399085))

(assert (=> b!1515790 m!1399041))

(assert (=> b!1515790 m!1399041))

(declare-fun m!1399087 () Bool)

(assert (=> b!1515790 m!1399087))

(push 1)

