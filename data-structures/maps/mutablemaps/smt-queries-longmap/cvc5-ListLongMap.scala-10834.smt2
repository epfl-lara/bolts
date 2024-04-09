; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126892 () Bool)

(assert start!126892)

(declare-fun b!1489576 () Bool)

(declare-fun res!1013097 () Bool)

(declare-fun e!834844 () Bool)

(assert (=> b!1489576 (=> (not res!1013097) (not e!834844))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99582 0))(
  ( (array!99583 (arr!48058 (Array (_ BitVec 32) (_ BitVec 64))) (size!48609 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99582)

(assert (=> b!1489576 (= res!1013097 (and (= (size!48609 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48609 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48609 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489577 () Bool)

(declare-fun res!1013095 () Bool)

(assert (=> b!1489577 (=> (not res!1013095) (not e!834844))))

(declare-datatypes ((List!34739 0))(
  ( (Nil!34736) (Cons!34735 (h!36118 (_ BitVec 64)) (t!49440 List!34739)) )
))
(declare-fun arrayNoDuplicates!0 (array!99582 (_ BitVec 32) List!34739) Bool)

(assert (=> b!1489577 (= res!1013095 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34736))))

(declare-fun b!1489578 () Bool)

(declare-fun e!834839 () Bool)

(declare-fun e!834837 () Bool)

(assert (=> b!1489578 (= e!834839 (not e!834837))))

(declare-fun res!1013098 () Bool)

(assert (=> b!1489578 (=> res!1013098 e!834837)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1489578 (= res!1013098 (or (and (= (select (arr!48058 a!2862) index!646) (select (store (arr!48058 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48058 a!2862) index!646) (select (arr!48058 a!2862) j!93))) (= (select (arr!48058 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12321 0))(
  ( (MissingZero!12321 (index!51675 (_ BitVec 32))) (Found!12321 (index!51676 (_ BitVec 32))) (Intermediate!12321 (undefined!13133 Bool) (index!51677 (_ BitVec 32)) (x!133276 (_ BitVec 32))) (Undefined!12321) (MissingVacant!12321 (index!51678 (_ BitVec 32))) )
))
(declare-fun lt!649587 () SeekEntryResult!12321)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489578 (and (= lt!649587 (Found!12321 j!93)) (or (= (select (arr!48058 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48058 a!2862) intermediateBeforeIndex!19) (select (arr!48058 a!2862) j!93))) (let ((bdg!54738 (select (store (arr!48058 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48058 a!2862) index!646) bdg!54738) (= (select (arr!48058 a!2862) index!646) (select (arr!48058 a!2862) j!93))) (= (select (arr!48058 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54738 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99582 (_ BitVec 32)) SeekEntryResult!12321)

(assert (=> b!1489578 (= lt!649587 (seekEntryOrOpen!0 (select (arr!48058 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99582 (_ BitVec 32)) Bool)

(assert (=> b!1489578 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49930 0))(
  ( (Unit!49931) )
))
(declare-fun lt!649583 () Unit!49930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49930)

(assert (=> b!1489578 (= lt!649583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489579 () Bool)

(declare-fun res!1013091 () Bool)

(assert (=> b!1489579 (=> (not res!1013091) (not e!834844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489579 (= res!1013091 (validKeyInArray!0 (select (arr!48058 a!2862) j!93)))))

(declare-fun lt!649586 () (_ BitVec 64))

(declare-fun e!834842 () Bool)

(declare-fun lt!649580 () SeekEntryResult!12321)

(declare-fun b!1489580 () Bool)

(declare-fun lt!649585 () array!99582)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99582 (_ BitVec 32)) SeekEntryResult!12321)

(assert (=> b!1489580 (= e!834842 (= lt!649580 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649586 lt!649585 mask!2687)))))

(declare-fun b!1489582 () Bool)

(declare-fun res!1013104 () Bool)

(assert (=> b!1489582 (=> (not res!1013104) (not e!834839))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489582 (= res!1013104 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99582 (_ BitVec 32)) SeekEntryResult!12321)

(assert (=> b!1489583 (= e!834842 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649586 lt!649585 mask!2687) (seekEntryOrOpen!0 lt!649586 lt!649585 mask!2687)))))

(declare-fun b!1489584 () Bool)

(declare-fun e!834838 () Bool)

(assert (=> b!1489584 (= e!834838 true)))

(declare-fun lt!649581 () SeekEntryResult!12321)

(assert (=> b!1489584 (= lt!649587 lt!649581)))

(declare-fun lt!649582 () Unit!49930)

(declare-fun lt!649584 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49930)

(assert (=> b!1489584 (= lt!649582 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649584 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489585 () Bool)

(declare-fun res!1013090 () Bool)

(declare-fun e!834845 () Bool)

(assert (=> b!1489585 (=> (not res!1013090) (not e!834845))))

(declare-fun lt!649588 () SeekEntryResult!12321)

(assert (=> b!1489585 (= res!1013090 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48058 a!2862) j!93) a!2862 mask!2687) lt!649588))))

(declare-fun e!834841 () Bool)

(declare-fun b!1489586 () Bool)

(assert (=> b!1489586 (= e!834841 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649584 intermediateAfterIndex!19 lt!649586 lt!649585 mask!2687) lt!649581)))))

(declare-fun b!1489587 () Bool)

(declare-fun e!834840 () Bool)

(assert (=> b!1489587 (= e!834840 e!834845)))

(declare-fun res!1013089 () Bool)

(assert (=> b!1489587 (=> (not res!1013089) (not e!834845))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489587 (= res!1013089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48058 a!2862) j!93) mask!2687) (select (arr!48058 a!2862) j!93) a!2862 mask!2687) lt!649588))))

(assert (=> b!1489587 (= lt!649588 (Intermediate!12321 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489588 () Bool)

(declare-fun res!1013093 () Bool)

(assert (=> b!1489588 (=> res!1013093 e!834838)))

(assert (=> b!1489588 (= res!1013093 e!834841)))

(declare-fun c!137773 () Bool)

(assert (=> b!1489588 (= c!137773 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489589 () Bool)

(declare-fun res!1013094 () Bool)

(assert (=> b!1489589 (=> (not res!1013094) (not e!834844))))

(assert (=> b!1489589 (= res!1013094 (validKeyInArray!0 (select (arr!48058 a!2862) i!1006)))))

(declare-fun b!1489590 () Bool)

(assert (=> b!1489590 (= e!834841 (not (= lt!649580 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649584 lt!649586 lt!649585 mask!2687))))))

(declare-fun b!1489591 () Bool)

(declare-fun res!1013099 () Bool)

(assert (=> b!1489591 (=> res!1013099 e!834838)))

(assert (=> b!1489591 (= res!1013099 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649584 (select (arr!48058 a!2862) j!93) a!2862 mask!2687) lt!649588)))))

(declare-fun b!1489592 () Bool)

(declare-fun res!1013106 () Bool)

(assert (=> b!1489592 (=> res!1013106 e!834838)))

(assert (=> b!1489592 (= res!1013106 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489593 () Bool)

(declare-fun res!1013092 () Bool)

(assert (=> b!1489593 (=> (not res!1013092) (not e!834844))))

(assert (=> b!1489593 (= res!1013092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489581 () Bool)

(assert (=> b!1489581 (= e!834837 e!834838)))

(declare-fun res!1013101 () Bool)

(assert (=> b!1489581 (=> res!1013101 e!834838)))

(assert (=> b!1489581 (= res!1013101 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649584 #b00000000000000000000000000000000) (bvsge lt!649584 (size!48609 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489581 (= lt!649584 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489581 (= lt!649581 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649586 lt!649585 mask!2687))))

(assert (=> b!1489581 (= lt!649581 (seekEntryOrOpen!0 lt!649586 lt!649585 mask!2687))))

(declare-fun res!1013096 () Bool)

(assert (=> start!126892 (=> (not res!1013096) (not e!834844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126892 (= res!1013096 (validMask!0 mask!2687))))

(assert (=> start!126892 e!834844))

(assert (=> start!126892 true))

(declare-fun array_inv!37003 (array!99582) Bool)

(assert (=> start!126892 (array_inv!37003 a!2862)))

(declare-fun b!1489594 () Bool)

(declare-fun res!1013102 () Bool)

(assert (=> b!1489594 (=> (not res!1013102) (not e!834844))))

(assert (=> b!1489594 (= res!1013102 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48609 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48609 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48609 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489595 () Bool)

(assert (=> b!1489595 (= e!834845 e!834839)))

(declare-fun res!1013105 () Bool)

(assert (=> b!1489595 (=> (not res!1013105) (not e!834839))))

(assert (=> b!1489595 (= res!1013105 (= lt!649580 (Intermediate!12321 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489595 (= lt!649580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649586 mask!2687) lt!649586 lt!649585 mask!2687))))

(assert (=> b!1489595 (= lt!649586 (select (store (arr!48058 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489596 () Bool)

(assert (=> b!1489596 (= e!834844 e!834840)))

(declare-fun res!1013100 () Bool)

(assert (=> b!1489596 (=> (not res!1013100) (not e!834840))))

(assert (=> b!1489596 (= res!1013100 (= (select (store (arr!48058 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489596 (= lt!649585 (array!99583 (store (arr!48058 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48609 a!2862)))))

(declare-fun b!1489597 () Bool)

(declare-fun res!1013103 () Bool)

(assert (=> b!1489597 (=> (not res!1013103) (not e!834839))))

(assert (=> b!1489597 (= res!1013103 e!834842)))

(declare-fun c!137774 () Bool)

(assert (=> b!1489597 (= c!137774 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126892 res!1013096) b!1489576))

(assert (= (and b!1489576 res!1013097) b!1489589))

(assert (= (and b!1489589 res!1013094) b!1489579))

(assert (= (and b!1489579 res!1013091) b!1489593))

(assert (= (and b!1489593 res!1013092) b!1489577))

(assert (= (and b!1489577 res!1013095) b!1489594))

(assert (= (and b!1489594 res!1013102) b!1489596))

(assert (= (and b!1489596 res!1013100) b!1489587))

(assert (= (and b!1489587 res!1013089) b!1489585))

(assert (= (and b!1489585 res!1013090) b!1489595))

(assert (= (and b!1489595 res!1013105) b!1489597))

(assert (= (and b!1489597 c!137774) b!1489580))

(assert (= (and b!1489597 (not c!137774)) b!1489583))

(assert (= (and b!1489597 res!1013103) b!1489582))

(assert (= (and b!1489582 res!1013104) b!1489578))

(assert (= (and b!1489578 (not res!1013098)) b!1489581))

(assert (= (and b!1489581 (not res!1013101)) b!1489591))

(assert (= (and b!1489591 (not res!1013099)) b!1489588))

(assert (= (and b!1489588 c!137773) b!1489590))

(assert (= (and b!1489588 (not c!137773)) b!1489586))

(assert (= (and b!1489588 (not res!1013093)) b!1489592))

(assert (= (and b!1489592 (not res!1013106)) b!1489584))

(declare-fun m!1373847 () Bool)

(assert (=> b!1489585 m!1373847))

(assert (=> b!1489585 m!1373847))

(declare-fun m!1373849 () Bool)

(assert (=> b!1489585 m!1373849))

(declare-fun m!1373851 () Bool)

(assert (=> b!1489593 m!1373851))

(declare-fun m!1373853 () Bool)

(assert (=> b!1489578 m!1373853))

(declare-fun m!1373855 () Bool)

(assert (=> b!1489578 m!1373855))

(declare-fun m!1373857 () Bool)

(assert (=> b!1489578 m!1373857))

(declare-fun m!1373859 () Bool)

(assert (=> b!1489578 m!1373859))

(declare-fun m!1373861 () Bool)

(assert (=> b!1489578 m!1373861))

(assert (=> b!1489578 m!1373847))

(declare-fun m!1373863 () Bool)

(assert (=> b!1489578 m!1373863))

(declare-fun m!1373865 () Bool)

(assert (=> b!1489578 m!1373865))

(assert (=> b!1489578 m!1373847))

(declare-fun m!1373867 () Bool)

(assert (=> b!1489581 m!1373867))

(declare-fun m!1373869 () Bool)

(assert (=> b!1489581 m!1373869))

(declare-fun m!1373871 () Bool)

(assert (=> b!1489581 m!1373871))

(assert (=> b!1489587 m!1373847))

(assert (=> b!1489587 m!1373847))

(declare-fun m!1373873 () Bool)

(assert (=> b!1489587 m!1373873))

(assert (=> b!1489587 m!1373873))

(assert (=> b!1489587 m!1373847))

(declare-fun m!1373875 () Bool)

(assert (=> b!1489587 m!1373875))

(declare-fun m!1373877 () Bool)

(assert (=> b!1489584 m!1373877))

(declare-fun m!1373879 () Bool)

(assert (=> b!1489577 m!1373879))

(declare-fun m!1373881 () Bool)

(assert (=> b!1489580 m!1373881))

(declare-fun m!1373883 () Bool)

(assert (=> b!1489586 m!1373883))

(assert (=> b!1489579 m!1373847))

(assert (=> b!1489579 m!1373847))

(declare-fun m!1373885 () Bool)

(assert (=> b!1489579 m!1373885))

(declare-fun m!1373887 () Bool)

(assert (=> b!1489590 m!1373887))

(assert (=> b!1489583 m!1373869))

(assert (=> b!1489583 m!1373871))

(declare-fun m!1373889 () Bool)

(assert (=> start!126892 m!1373889))

(declare-fun m!1373891 () Bool)

(assert (=> start!126892 m!1373891))

(declare-fun m!1373893 () Bool)

(assert (=> b!1489589 m!1373893))

(assert (=> b!1489589 m!1373893))

(declare-fun m!1373895 () Bool)

(assert (=> b!1489589 m!1373895))

(assert (=> b!1489591 m!1373847))

(assert (=> b!1489591 m!1373847))

(declare-fun m!1373897 () Bool)

(assert (=> b!1489591 m!1373897))

(declare-fun m!1373899 () Bool)

(assert (=> b!1489595 m!1373899))

(assert (=> b!1489595 m!1373899))

(declare-fun m!1373901 () Bool)

(assert (=> b!1489595 m!1373901))

(assert (=> b!1489595 m!1373855))

(declare-fun m!1373903 () Bool)

(assert (=> b!1489595 m!1373903))

(assert (=> b!1489596 m!1373855))

(declare-fun m!1373905 () Bool)

(assert (=> b!1489596 m!1373905))

(push 1)

