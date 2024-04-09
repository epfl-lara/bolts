; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130568 () Bool)

(assert start!130568)

(declare-fun b!1531788 () Bool)

(declare-fun res!1049069 () Bool)

(declare-fun e!853521 () Bool)

(assert (=> b!1531788 (=> (not res!1049069) (not e!853521))))

(declare-datatypes ((array!101674 0))(
  ( (array!101675 (arr!49053 (Array (_ BitVec 32) (_ BitVec 64))) (size!49604 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101674)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531788 (= res!1049069 (validKeyInArray!0 (select (arr!49053 a!2804) i!961)))))

(declare-fun b!1531789 () Bool)

(declare-fun res!1049073 () Bool)

(assert (=> b!1531789 (=> (not res!1049073) (not e!853521))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531789 (= res!1049073 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49604 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49604 a!2804))))))

(declare-fun b!1531790 () Bool)

(declare-fun res!1049076 () Bool)

(assert (=> b!1531790 (=> (not res!1049076) (not e!853521))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101674 (_ BitVec 32)) Bool)

(assert (=> b!1531790 (= res!1049076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531791 () Bool)

(declare-fun res!1049078 () Bool)

(assert (=> b!1531791 (=> (not res!1049078) (not e!853521))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1531791 (= res!1049078 (and (= (size!49604 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49604 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49604 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531792 () Bool)

(declare-fun res!1049075 () Bool)

(declare-fun e!853520 () Bool)

(assert (=> b!1531792 (=> (not res!1049075) (not e!853520))))

(declare-datatypes ((SeekEntryResult!13239 0))(
  ( (MissingZero!13239 (index!55350 (_ BitVec 32))) (Found!13239 (index!55351 (_ BitVec 32))) (Intermediate!13239 (undefined!14051 Bool) (index!55352 (_ BitVec 32)) (x!137052 (_ BitVec 32))) (Undefined!13239) (MissingVacant!13239 (index!55353 (_ BitVec 32))) )
))
(declare-fun lt!663364 () SeekEntryResult!13239)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101674 (_ BitVec 32)) SeekEntryResult!13239)

(assert (=> b!1531792 (= res!1049075 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49053 a!2804) j!70) a!2804 mask!2512) lt!663364))))

(declare-fun b!1531793 () Bool)

(declare-fun res!1049066 () Bool)

(assert (=> b!1531793 (=> (not res!1049066) (not e!853521))))

(assert (=> b!1531793 (= res!1049066 (validKeyInArray!0 (select (arr!49053 a!2804) j!70)))))

(declare-fun b!1531795 () Bool)

(assert (=> b!1531795 (= e!853521 e!853520)))

(declare-fun res!1049077 () Bool)

(assert (=> b!1531795 (=> (not res!1049077) (not e!853520))))

(declare-fun lt!663370 () SeekEntryResult!13239)

(assert (=> b!1531795 (= res!1049077 (= lt!663370 lt!663364))))

(assert (=> b!1531795 (= lt!663364 (Intermediate!13239 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531795 (= lt!663370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49053 a!2804) j!70) mask!2512) (select (arr!49053 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531796 () Bool)

(declare-fun e!853525 () Bool)

(declare-fun e!853526 () Bool)

(assert (=> b!1531796 (= e!853525 e!853526)))

(declare-fun res!1049068 () Bool)

(assert (=> b!1531796 (=> res!1049068 e!853526)))

(declare-fun lt!663367 () (_ BitVec 32))

(assert (=> b!1531796 (= res!1049068 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663367 #b00000000000000000000000000000000) (bvsge lt!663367 (size!49604 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531796 (= lt!663367 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531797 () Bool)

(declare-fun e!853522 () Bool)

(assert (=> b!1531797 (= e!853520 e!853522)))

(declare-fun res!1049072 () Bool)

(assert (=> b!1531797 (=> (not res!1049072) (not e!853522))))

(declare-fun lt!663366 () array!101674)

(declare-fun lt!663369 () (_ BitVec 64))

(assert (=> b!1531797 (= res!1049072 (= lt!663370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663369 mask!2512) lt!663369 lt!663366 mask!2512)))))

(assert (=> b!1531797 (= lt!663369 (select (store (arr!49053 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531797 (= lt!663366 (array!101675 (store (arr!49053 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49604 a!2804)))))

(declare-fun e!853524 () Bool)

(declare-fun b!1531798 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101674 (_ BitVec 32)) SeekEntryResult!13239)

(assert (=> b!1531798 (= e!853524 (= (seekEntry!0 (select (arr!49053 a!2804) j!70) a!2804 mask!2512) (Found!13239 j!70)))))

(declare-fun b!1531799 () Bool)

(assert (=> b!1531799 (= e!853526 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101674 (_ BitVec 32)) SeekEntryResult!13239)

(assert (=> b!1531799 (= (seekEntryOrOpen!0 (select (arr!49053 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663369 lt!663366 mask!2512))))

(declare-datatypes ((Unit!51218 0))(
  ( (Unit!51219) )
))
(declare-fun lt!663365 () Unit!51218)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51218)

(assert (=> b!1531799 (= lt!663365 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663367 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531800 () Bool)

(assert (=> b!1531800 (= e!853522 (not e!853525))))

(declare-fun res!1049071 () Bool)

(assert (=> b!1531800 (=> res!1049071 e!853525)))

(assert (=> b!1531800 (= res!1049071 (or (not (= (select (arr!49053 a!2804) j!70) lt!663369)) (= x!534 resX!21)))))

(assert (=> b!1531800 e!853524))

(declare-fun res!1049074 () Bool)

(assert (=> b!1531800 (=> (not res!1049074) (not e!853524))))

(assert (=> b!1531800 (= res!1049074 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663368 () Unit!51218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51218)

(assert (=> b!1531800 (= lt!663368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531801 () Bool)

(declare-fun res!1049079 () Bool)

(assert (=> b!1531801 (=> (not res!1049079) (not e!853521))))

(declare-datatypes ((List!35716 0))(
  ( (Nil!35713) (Cons!35712 (h!37158 (_ BitVec 64)) (t!50417 List!35716)) )
))
(declare-fun arrayNoDuplicates!0 (array!101674 (_ BitVec 32) List!35716) Bool)

(assert (=> b!1531801 (= res!1049079 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35713))))

(declare-fun b!1531794 () Bool)

(declare-fun res!1049067 () Bool)

(assert (=> b!1531794 (=> res!1049067 e!853526)))

(assert (=> b!1531794 (= res!1049067 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663367 (select (arr!49053 a!2804) j!70) a!2804 mask!2512) lt!663364)))))

(declare-fun res!1049070 () Bool)

(assert (=> start!130568 (=> (not res!1049070) (not e!853521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130568 (= res!1049070 (validMask!0 mask!2512))))

(assert (=> start!130568 e!853521))

(assert (=> start!130568 true))

(declare-fun array_inv!37998 (array!101674) Bool)

(assert (=> start!130568 (array_inv!37998 a!2804)))

(assert (= (and start!130568 res!1049070) b!1531791))

(assert (= (and b!1531791 res!1049078) b!1531788))

(assert (= (and b!1531788 res!1049069) b!1531793))

(assert (= (and b!1531793 res!1049066) b!1531790))

(assert (= (and b!1531790 res!1049076) b!1531801))

(assert (= (and b!1531801 res!1049079) b!1531789))

(assert (= (and b!1531789 res!1049073) b!1531795))

(assert (= (and b!1531795 res!1049077) b!1531792))

(assert (= (and b!1531792 res!1049075) b!1531797))

(assert (= (and b!1531797 res!1049072) b!1531800))

(assert (= (and b!1531800 res!1049074) b!1531798))

(assert (= (and b!1531800 (not res!1049071)) b!1531796))

(assert (= (and b!1531796 (not res!1049068)) b!1531794))

(assert (= (and b!1531794 (not res!1049067)) b!1531799))

(declare-fun m!1414511 () Bool)

(assert (=> b!1531800 m!1414511))

(declare-fun m!1414513 () Bool)

(assert (=> b!1531800 m!1414513))

(declare-fun m!1414515 () Bool)

(assert (=> b!1531800 m!1414515))

(declare-fun m!1414517 () Bool)

(assert (=> start!130568 m!1414517))

(declare-fun m!1414519 () Bool)

(assert (=> start!130568 m!1414519))

(declare-fun m!1414521 () Bool)

(assert (=> b!1531797 m!1414521))

(assert (=> b!1531797 m!1414521))

(declare-fun m!1414523 () Bool)

(assert (=> b!1531797 m!1414523))

(declare-fun m!1414525 () Bool)

(assert (=> b!1531797 m!1414525))

(declare-fun m!1414527 () Bool)

(assert (=> b!1531797 m!1414527))

(assert (=> b!1531795 m!1414511))

(assert (=> b!1531795 m!1414511))

(declare-fun m!1414529 () Bool)

(assert (=> b!1531795 m!1414529))

(assert (=> b!1531795 m!1414529))

(assert (=> b!1531795 m!1414511))

(declare-fun m!1414531 () Bool)

(assert (=> b!1531795 m!1414531))

(assert (=> b!1531793 m!1414511))

(assert (=> b!1531793 m!1414511))

(declare-fun m!1414533 () Bool)

(assert (=> b!1531793 m!1414533))

(assert (=> b!1531799 m!1414511))

(assert (=> b!1531799 m!1414511))

(declare-fun m!1414535 () Bool)

(assert (=> b!1531799 m!1414535))

(declare-fun m!1414537 () Bool)

(assert (=> b!1531799 m!1414537))

(declare-fun m!1414539 () Bool)

(assert (=> b!1531799 m!1414539))

(declare-fun m!1414541 () Bool)

(assert (=> b!1531790 m!1414541))

(assert (=> b!1531798 m!1414511))

(assert (=> b!1531798 m!1414511))

(declare-fun m!1414543 () Bool)

(assert (=> b!1531798 m!1414543))

(declare-fun m!1414545 () Bool)

(assert (=> b!1531796 m!1414545))

(declare-fun m!1414547 () Bool)

(assert (=> b!1531801 m!1414547))

(assert (=> b!1531792 m!1414511))

(assert (=> b!1531792 m!1414511))

(declare-fun m!1414549 () Bool)

(assert (=> b!1531792 m!1414549))

(assert (=> b!1531794 m!1414511))

(assert (=> b!1531794 m!1414511))

(declare-fun m!1414551 () Bool)

(assert (=> b!1531794 m!1414551))

(declare-fun m!1414553 () Bool)

(assert (=> b!1531788 m!1414553))

(assert (=> b!1531788 m!1414553))

(declare-fun m!1414555 () Bool)

(assert (=> b!1531788 m!1414555))

(push 1)

