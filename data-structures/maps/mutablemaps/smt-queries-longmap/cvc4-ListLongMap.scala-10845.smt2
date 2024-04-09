; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126962 () Bool)

(assert start!126962)

(declare-fun b!1491566 () Bool)

(declare-fun res!1014819 () Bool)

(declare-fun e!835709 () Bool)

(assert (=> b!1491566 (=> (not res!1014819) (not e!835709))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99652 0))(
  ( (array!99653 (arr!48093 (Array (_ BitVec 32) (_ BitVec 64))) (size!48644 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99652)

(assert (=> b!1491566 (= res!1014819 (and (= (size!48644 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48644 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48644 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491567 () Bool)

(declare-fun e!835707 () Bool)

(declare-fun e!835708 () Bool)

(assert (=> b!1491567 (= e!835707 e!835708)))

(declare-fun res!1014823 () Bool)

(assert (=> b!1491567 (=> (not res!1014823) (not e!835708))))

(declare-datatypes ((SeekEntryResult!12356 0))(
  ( (MissingZero!12356 (index!51815 (_ BitVec 32))) (Found!12356 (index!51816 (_ BitVec 32))) (Intermediate!12356 (undefined!13168 Bool) (index!51817 (_ BitVec 32)) (x!133399 (_ BitVec 32))) (Undefined!12356) (MissingVacant!12356 (index!51818 (_ BitVec 32))) )
))
(declare-fun lt!650288 () SeekEntryResult!12356)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99652 (_ BitVec 32)) SeekEntryResult!12356)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491567 (= res!1014823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48093 a!2862) j!93) mask!2687) (select (arr!48093 a!2862) j!93) a!2862 mask!2687) lt!650288))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491567 (= lt!650288 (Intermediate!12356 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491568 () Bool)

(assert (=> b!1491568 (= e!835709 e!835707)))

(declare-fun res!1014825 () Bool)

(assert (=> b!1491568 (=> (not res!1014825) (not e!835707))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491568 (= res!1014825 (= (select (store (arr!48093 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650286 () array!99652)

(assert (=> b!1491568 (= lt!650286 (array!99653 (store (arr!48093 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48644 a!2862)))))

(declare-fun b!1491569 () Bool)

(declare-fun res!1014822 () Bool)

(assert (=> b!1491569 (=> (not res!1014822) (not e!835709))))

(declare-datatypes ((List!34774 0))(
  ( (Nil!34771) (Cons!34770 (h!36153 (_ BitVec 64)) (t!49475 List!34774)) )
))
(declare-fun arrayNoDuplicates!0 (array!99652 (_ BitVec 32) List!34774) Bool)

(assert (=> b!1491569 (= res!1014822 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34771))))

(declare-fun b!1491570 () Bool)

(declare-fun e!835704 () Bool)

(declare-fun e!835705 () Bool)

(assert (=> b!1491570 (= e!835704 (not e!835705))))

(declare-fun res!1014820 () Bool)

(assert (=> b!1491570 (=> res!1014820 e!835705)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1491570 (= res!1014820 (or (and (= (select (arr!48093 a!2862) index!646) (select (store (arr!48093 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48093 a!2862) index!646) (select (arr!48093 a!2862) j!93))) (= (select (arr!48093 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835706 () Bool)

(assert (=> b!1491570 e!835706))

(declare-fun res!1014834 () Bool)

(assert (=> b!1491570 (=> (not res!1014834) (not e!835706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99652 (_ BitVec 32)) Bool)

(assert (=> b!1491570 (= res!1014834 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50000 0))(
  ( (Unit!50001) )
))
(declare-fun lt!650287 () Unit!50000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50000)

(assert (=> b!1491570 (= lt!650287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491571 () Bool)

(declare-fun res!1014827 () Bool)

(assert (=> b!1491571 (=> (not res!1014827) (not e!835709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491571 (= res!1014827 (validKeyInArray!0 (select (arr!48093 a!2862) i!1006)))))

(declare-fun b!1491572 () Bool)

(assert (=> b!1491572 (= e!835706 (or (= (select (arr!48093 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48093 a!2862) intermediateBeforeIndex!19) (select (arr!48093 a!2862) j!93))))))

(declare-fun b!1491573 () Bool)

(declare-fun res!1014829 () Bool)

(assert (=> b!1491573 (=> (not res!1014829) (not e!835704))))

(declare-fun e!835702 () Bool)

(assert (=> b!1491573 (= res!1014829 e!835702)))

(declare-fun c!137903 () Bool)

(assert (=> b!1491573 (= c!137903 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491574 () Bool)

(declare-fun res!1014832 () Bool)

(assert (=> b!1491574 (=> (not res!1014832) (not e!835709))))

(assert (=> b!1491574 (= res!1014832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491575 () Bool)

(declare-fun res!1014824 () Bool)

(assert (=> b!1491575 (=> (not res!1014824) (not e!835709))))

(assert (=> b!1491575 (= res!1014824 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48644 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48644 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48644 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1014833 () Bool)

(assert (=> start!126962 (=> (not res!1014833) (not e!835709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126962 (= res!1014833 (validMask!0 mask!2687))))

(assert (=> start!126962 e!835709))

(assert (=> start!126962 true))

(declare-fun array_inv!37038 (array!99652) Bool)

(assert (=> start!126962 (array_inv!37038 a!2862)))

(declare-fun b!1491576 () Bool)

(assert (=> b!1491576 (= e!835705 true)))

(declare-fun lt!650289 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491576 (= lt!650289 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491577 () Bool)

(declare-fun res!1014821 () Bool)

(assert (=> b!1491577 (=> (not res!1014821) (not e!835708))))

(assert (=> b!1491577 (= res!1014821 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48093 a!2862) j!93) a!2862 mask!2687) lt!650288))))

(declare-fun b!1491578 () Bool)

(declare-fun res!1014826 () Bool)

(assert (=> b!1491578 (=> (not res!1014826) (not e!835709))))

(assert (=> b!1491578 (= res!1014826 (validKeyInArray!0 (select (arr!48093 a!2862) j!93)))))

(declare-fun b!1491579 () Bool)

(declare-fun res!1014831 () Bool)

(assert (=> b!1491579 (=> (not res!1014831) (not e!835706))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99652 (_ BitVec 32)) SeekEntryResult!12356)

(assert (=> b!1491579 (= res!1014831 (= (seekEntryOrOpen!0 (select (arr!48093 a!2862) j!93) a!2862 mask!2687) (Found!12356 j!93)))))

(declare-fun lt!650290 () (_ BitVec 64))

(declare-fun b!1491580 () Bool)

(declare-fun lt!650285 () SeekEntryResult!12356)

(assert (=> b!1491580 (= e!835702 (= lt!650285 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650290 lt!650286 mask!2687)))))

(declare-fun b!1491581 () Bool)

(declare-fun res!1014830 () Bool)

(assert (=> b!1491581 (=> (not res!1014830) (not e!835704))))

(assert (=> b!1491581 (= res!1014830 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491582 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99652 (_ BitVec 32)) SeekEntryResult!12356)

(assert (=> b!1491582 (= e!835702 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650290 lt!650286 mask!2687) (seekEntryOrOpen!0 lt!650290 lt!650286 mask!2687)))))

(declare-fun b!1491583 () Bool)

(assert (=> b!1491583 (= e!835708 e!835704)))

(declare-fun res!1014828 () Bool)

(assert (=> b!1491583 (=> (not res!1014828) (not e!835704))))

(assert (=> b!1491583 (= res!1014828 (= lt!650285 (Intermediate!12356 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491583 (= lt!650285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650290 mask!2687) lt!650290 lt!650286 mask!2687))))

(assert (=> b!1491583 (= lt!650290 (select (store (arr!48093 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!126962 res!1014833) b!1491566))

(assert (= (and b!1491566 res!1014819) b!1491571))

(assert (= (and b!1491571 res!1014827) b!1491578))

(assert (= (and b!1491578 res!1014826) b!1491574))

(assert (= (and b!1491574 res!1014832) b!1491569))

(assert (= (and b!1491569 res!1014822) b!1491575))

(assert (= (and b!1491575 res!1014824) b!1491568))

(assert (= (and b!1491568 res!1014825) b!1491567))

(assert (= (and b!1491567 res!1014823) b!1491577))

(assert (= (and b!1491577 res!1014821) b!1491583))

(assert (= (and b!1491583 res!1014828) b!1491573))

(assert (= (and b!1491573 c!137903) b!1491580))

(assert (= (and b!1491573 (not c!137903)) b!1491582))

(assert (= (and b!1491573 res!1014829) b!1491581))

(assert (= (and b!1491581 res!1014830) b!1491570))

(assert (= (and b!1491570 res!1014834) b!1491579))

(assert (= (and b!1491579 res!1014831) b!1491572))

(assert (= (and b!1491570 (not res!1014820)) b!1491576))

(declare-fun m!1375739 () Bool)

(assert (=> b!1491577 m!1375739))

(assert (=> b!1491577 m!1375739))

(declare-fun m!1375741 () Bool)

(assert (=> b!1491577 m!1375741))

(assert (=> b!1491578 m!1375739))

(assert (=> b!1491578 m!1375739))

(declare-fun m!1375743 () Bool)

(assert (=> b!1491578 m!1375743))

(assert (=> b!1491579 m!1375739))

(assert (=> b!1491579 m!1375739))

(declare-fun m!1375745 () Bool)

(assert (=> b!1491579 m!1375745))

(declare-fun m!1375747 () Bool)

(assert (=> b!1491582 m!1375747))

(declare-fun m!1375749 () Bool)

(assert (=> b!1491582 m!1375749))

(declare-fun m!1375751 () Bool)

(assert (=> b!1491568 m!1375751))

(declare-fun m!1375753 () Bool)

(assert (=> b!1491568 m!1375753))

(declare-fun m!1375755 () Bool)

(assert (=> b!1491574 m!1375755))

(declare-fun m!1375757 () Bool)

(assert (=> b!1491571 m!1375757))

(assert (=> b!1491571 m!1375757))

(declare-fun m!1375759 () Bool)

(assert (=> b!1491571 m!1375759))

(declare-fun m!1375761 () Bool)

(assert (=> b!1491569 m!1375761))

(declare-fun m!1375763 () Bool)

(assert (=> start!126962 m!1375763))

(declare-fun m!1375765 () Bool)

(assert (=> start!126962 m!1375765))

(declare-fun m!1375767 () Bool)

(assert (=> b!1491576 m!1375767))

(assert (=> b!1491567 m!1375739))

(assert (=> b!1491567 m!1375739))

(declare-fun m!1375769 () Bool)

(assert (=> b!1491567 m!1375769))

(assert (=> b!1491567 m!1375769))

(assert (=> b!1491567 m!1375739))

(declare-fun m!1375771 () Bool)

(assert (=> b!1491567 m!1375771))

(declare-fun m!1375773 () Bool)

(assert (=> b!1491580 m!1375773))

(declare-fun m!1375775 () Bool)

(assert (=> b!1491572 m!1375775))

(assert (=> b!1491572 m!1375739))

(declare-fun m!1375777 () Bool)

(assert (=> b!1491570 m!1375777))

(assert (=> b!1491570 m!1375751))

(declare-fun m!1375779 () Bool)

(assert (=> b!1491570 m!1375779))

(declare-fun m!1375781 () Bool)

(assert (=> b!1491570 m!1375781))

(declare-fun m!1375783 () Bool)

(assert (=> b!1491570 m!1375783))

(assert (=> b!1491570 m!1375739))

(declare-fun m!1375785 () Bool)

(assert (=> b!1491583 m!1375785))

(assert (=> b!1491583 m!1375785))

(declare-fun m!1375787 () Bool)

(assert (=> b!1491583 m!1375787))

(assert (=> b!1491583 m!1375751))

(declare-fun m!1375789 () Bool)

(assert (=> b!1491583 m!1375789))

(push 1)

