; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125306 () Bool)

(assert start!125306)

(declare-fun b!1462099 () Bool)

(declare-fun res!991691 () Bool)

(declare-fun e!821937 () Bool)

(assert (=> b!1462099 (=> (not res!991691) (not e!821937))))

(declare-datatypes ((array!98671 0))(
  ( (array!98672 (arr!47619 (Array (_ BitVec 32) (_ BitVec 64))) (size!48170 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98671)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11894 0))(
  ( (MissingZero!11894 (index!49967 (_ BitVec 32))) (Found!11894 (index!49968 (_ BitVec 32))) (Intermediate!11894 (undefined!12706 Bool) (index!49969 (_ BitVec 32)) (x!131562 (_ BitVec 32))) (Undefined!11894) (MissingVacant!11894 (index!49970 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98671 (_ BitVec 32)) SeekEntryResult!11894)

(assert (=> b!1462099 (= res!991691 (= (seekEntryOrOpen!0 (select (arr!47619 a!2862) j!93) a!2862 mask!2687) (Found!11894 j!93)))))

(declare-fun b!1462100 () Bool)

(declare-fun res!991702 () Bool)

(declare-fun e!821938 () Bool)

(assert (=> b!1462100 (=> res!991702 e!821938)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640308 () SeekEntryResult!11894)

(declare-fun lt!640306 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98671 (_ BitVec 32)) SeekEntryResult!11894)

(assert (=> b!1462100 (= res!991702 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640306 (select (arr!47619 a!2862) j!93) a!2862 mask!2687) lt!640308)))))

(declare-fun b!1462101 () Bool)

(declare-fun res!991696 () Bool)

(declare-fun e!821941 () Bool)

(assert (=> b!1462101 (=> (not res!991696) (not e!821941))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1462101 (= res!991696 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47619 a!2862) j!93) a!2862 mask!2687) lt!640308))))

(declare-fun lt!640309 () array!98671)

(declare-fun lt!640307 () SeekEntryResult!11894)

(declare-fun e!821934 () Bool)

(declare-fun lt!640310 () (_ BitVec 64))

(declare-fun b!1462102 () Bool)

(assert (=> b!1462102 (= e!821934 (= lt!640307 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640310 lt!640309 mask!2687)))))

(declare-fun b!1462103 () Bool)

(declare-fun res!991690 () Bool)

(declare-fun e!821940 () Bool)

(assert (=> b!1462103 (=> (not res!991690) (not e!821940))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462103 (= res!991690 (validKeyInArray!0 (select (arr!47619 a!2862) i!1006)))))

(declare-fun b!1462104 () Bool)

(declare-fun res!991703 () Bool)

(declare-fun e!821935 () Bool)

(assert (=> b!1462104 (=> (not res!991703) (not e!821935))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462104 (= res!991703 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462105 () Bool)

(declare-fun res!991692 () Bool)

(assert (=> b!1462105 (=> (not res!991692) (not e!821935))))

(assert (=> b!1462105 (= res!991692 e!821934)))

(declare-fun c!134720 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462105 (= c!134720 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!991694 () Bool)

(assert (=> start!125306 (=> (not res!991694) (not e!821940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125306 (= res!991694 (validMask!0 mask!2687))))

(assert (=> start!125306 e!821940))

(assert (=> start!125306 true))

(declare-fun array_inv!36564 (array!98671) Bool)

(assert (=> start!125306 (array_inv!36564 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1462106 () Bool)

(assert (=> b!1462106 (= e!821937 (or (= (select (arr!47619 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47619 a!2862) intermediateBeforeIndex!19) (select (arr!47619 a!2862) j!93))))))

(declare-fun b!1462107 () Bool)

(declare-fun res!991689 () Bool)

(assert (=> b!1462107 (=> (not res!991689) (not e!821940))))

(assert (=> b!1462107 (= res!991689 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48170 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48170 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48170 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462108 () Bool)

(declare-fun res!991688 () Bool)

(assert (=> b!1462108 (=> (not res!991688) (not e!821940))))

(assert (=> b!1462108 (= res!991688 (and (= (size!48170 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48170 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48170 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462109 () Bool)

(assert (=> b!1462109 (= e!821941 e!821935)))

(declare-fun res!991699 () Bool)

(assert (=> b!1462109 (=> (not res!991699) (not e!821935))))

(assert (=> b!1462109 (= res!991699 (= lt!640307 (Intermediate!11894 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462109 (= lt!640307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640310 mask!2687) lt!640310 lt!640309 mask!2687))))

(assert (=> b!1462109 (= lt!640310 (select (store (arr!47619 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462110 () Bool)

(declare-fun e!821939 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98671 (_ BitVec 32)) SeekEntryResult!11894)

(assert (=> b!1462110 (= e!821939 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640306 intermediateAfterIndex!19 lt!640310 lt!640309 mask!2687) (seekEntryOrOpen!0 lt!640310 lt!640309 mask!2687))))))

(declare-fun b!1462111 () Bool)

(assert (=> b!1462111 (= e!821939 (not (= lt!640307 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640306 lt!640310 lt!640309 mask!2687))))))

(declare-fun b!1462112 () Bool)

(declare-fun e!821933 () Bool)

(assert (=> b!1462112 (= e!821935 (not e!821933))))

(declare-fun res!991698 () Bool)

(assert (=> b!1462112 (=> res!991698 e!821933)))

(assert (=> b!1462112 (= res!991698 (or (and (= (select (arr!47619 a!2862) index!646) (select (store (arr!47619 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47619 a!2862) index!646) (select (arr!47619 a!2862) j!93))) (= (select (arr!47619 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462112 e!821937))

(declare-fun res!991693 () Bool)

(assert (=> b!1462112 (=> (not res!991693) (not e!821937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98671 (_ BitVec 32)) Bool)

(assert (=> b!1462112 (= res!991693 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49232 0))(
  ( (Unit!49233) )
))
(declare-fun lt!640311 () Unit!49232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49232)

(assert (=> b!1462112 (= lt!640311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462113 () Bool)

(declare-fun res!991701 () Bool)

(assert (=> b!1462113 (=> (not res!991701) (not e!821940))))

(declare-datatypes ((List!34300 0))(
  ( (Nil!34297) (Cons!34296 (h!35646 (_ BitVec 64)) (t!49001 List!34300)) )
))
(declare-fun arrayNoDuplicates!0 (array!98671 (_ BitVec 32) List!34300) Bool)

(assert (=> b!1462113 (= res!991701 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34297))))

(declare-fun b!1462114 () Bool)

(assert (=> b!1462114 (= e!821938 true)))

(declare-fun lt!640312 () Bool)

(assert (=> b!1462114 (= lt!640312 e!821939)))

(declare-fun c!134719 () Bool)

(assert (=> b!1462114 (= c!134719 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462115 () Bool)

(declare-fun res!991687 () Bool)

(assert (=> b!1462115 (=> (not res!991687) (not e!821940))))

(assert (=> b!1462115 (= res!991687 (validKeyInArray!0 (select (arr!47619 a!2862) j!93)))))

(declare-fun b!1462116 () Bool)

(assert (=> b!1462116 (= e!821934 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640310 lt!640309 mask!2687) (seekEntryOrOpen!0 lt!640310 lt!640309 mask!2687)))))

(declare-fun b!1462117 () Bool)

(assert (=> b!1462117 (= e!821933 e!821938)))

(declare-fun res!991695 () Bool)

(assert (=> b!1462117 (=> res!991695 e!821938)))

(assert (=> b!1462117 (= res!991695 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640306 #b00000000000000000000000000000000) (bvsge lt!640306 (size!48170 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462117 (= lt!640306 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462118 () Bool)

(declare-fun e!821942 () Bool)

(assert (=> b!1462118 (= e!821942 e!821941)))

(declare-fun res!991704 () Bool)

(assert (=> b!1462118 (=> (not res!991704) (not e!821941))))

(assert (=> b!1462118 (= res!991704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47619 a!2862) j!93) mask!2687) (select (arr!47619 a!2862) j!93) a!2862 mask!2687) lt!640308))))

(assert (=> b!1462118 (= lt!640308 (Intermediate!11894 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462119 () Bool)

(declare-fun res!991697 () Bool)

(assert (=> b!1462119 (=> (not res!991697) (not e!821940))))

(assert (=> b!1462119 (= res!991697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462120 () Bool)

(assert (=> b!1462120 (= e!821940 e!821942)))

(declare-fun res!991700 () Bool)

(assert (=> b!1462120 (=> (not res!991700) (not e!821942))))

(assert (=> b!1462120 (= res!991700 (= (select (store (arr!47619 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462120 (= lt!640309 (array!98672 (store (arr!47619 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48170 a!2862)))))

(assert (= (and start!125306 res!991694) b!1462108))

(assert (= (and b!1462108 res!991688) b!1462103))

(assert (= (and b!1462103 res!991690) b!1462115))

(assert (= (and b!1462115 res!991687) b!1462119))

(assert (= (and b!1462119 res!991697) b!1462113))

(assert (= (and b!1462113 res!991701) b!1462107))

(assert (= (and b!1462107 res!991689) b!1462120))

(assert (= (and b!1462120 res!991700) b!1462118))

(assert (= (and b!1462118 res!991704) b!1462101))

(assert (= (and b!1462101 res!991696) b!1462109))

(assert (= (and b!1462109 res!991699) b!1462105))

(assert (= (and b!1462105 c!134720) b!1462102))

(assert (= (and b!1462105 (not c!134720)) b!1462116))

(assert (= (and b!1462105 res!991692) b!1462104))

(assert (= (and b!1462104 res!991703) b!1462112))

(assert (= (and b!1462112 res!991693) b!1462099))

(assert (= (and b!1462099 res!991691) b!1462106))

(assert (= (and b!1462112 (not res!991698)) b!1462117))

(assert (= (and b!1462117 (not res!991695)) b!1462100))

(assert (= (and b!1462100 (not res!991702)) b!1462114))

(assert (= (and b!1462114 c!134719) b!1462111))

(assert (= (and b!1462114 (not c!134719)) b!1462110))

(declare-fun m!1349645 () Bool)

(assert (=> b!1462117 m!1349645))

(declare-fun m!1349647 () Bool)

(assert (=> b!1462115 m!1349647))

(assert (=> b!1462115 m!1349647))

(declare-fun m!1349649 () Bool)

(assert (=> b!1462115 m!1349649))

(declare-fun m!1349651 () Bool)

(assert (=> b!1462106 m!1349651))

(assert (=> b!1462106 m!1349647))

(assert (=> b!1462101 m!1349647))

(assert (=> b!1462101 m!1349647))

(declare-fun m!1349653 () Bool)

(assert (=> b!1462101 m!1349653))

(declare-fun m!1349655 () Bool)

(assert (=> b!1462103 m!1349655))

(assert (=> b!1462103 m!1349655))

(declare-fun m!1349657 () Bool)

(assert (=> b!1462103 m!1349657))

(assert (=> b!1462099 m!1349647))

(assert (=> b!1462099 m!1349647))

(declare-fun m!1349659 () Bool)

(assert (=> b!1462099 m!1349659))

(declare-fun m!1349661 () Bool)

(assert (=> b!1462102 m!1349661))

(declare-fun m!1349663 () Bool)

(assert (=> start!125306 m!1349663))

(declare-fun m!1349665 () Bool)

(assert (=> start!125306 m!1349665))

(declare-fun m!1349667 () Bool)

(assert (=> b!1462112 m!1349667))

(declare-fun m!1349669 () Bool)

(assert (=> b!1462112 m!1349669))

(declare-fun m!1349671 () Bool)

(assert (=> b!1462112 m!1349671))

(declare-fun m!1349673 () Bool)

(assert (=> b!1462112 m!1349673))

(declare-fun m!1349675 () Bool)

(assert (=> b!1462112 m!1349675))

(assert (=> b!1462112 m!1349647))

(assert (=> b!1462100 m!1349647))

(assert (=> b!1462100 m!1349647))

(declare-fun m!1349677 () Bool)

(assert (=> b!1462100 m!1349677))

(declare-fun m!1349679 () Bool)

(assert (=> b!1462119 m!1349679))

(declare-fun m!1349681 () Bool)

(assert (=> b!1462110 m!1349681))

(declare-fun m!1349683 () Bool)

(assert (=> b!1462110 m!1349683))

(assert (=> b!1462118 m!1349647))

(assert (=> b!1462118 m!1349647))

(declare-fun m!1349685 () Bool)

(assert (=> b!1462118 m!1349685))

(assert (=> b!1462118 m!1349685))

(assert (=> b!1462118 m!1349647))

(declare-fun m!1349687 () Bool)

(assert (=> b!1462118 m!1349687))

(declare-fun m!1349689 () Bool)

(assert (=> b!1462111 m!1349689))

(declare-fun m!1349691 () Bool)

(assert (=> b!1462113 m!1349691))

(declare-fun m!1349693 () Bool)

(assert (=> b!1462109 m!1349693))

(assert (=> b!1462109 m!1349693))

(declare-fun m!1349695 () Bool)

(assert (=> b!1462109 m!1349695))

(assert (=> b!1462109 m!1349669))

(declare-fun m!1349697 () Bool)

(assert (=> b!1462109 m!1349697))

(declare-fun m!1349699 () Bool)

(assert (=> b!1462116 m!1349699))

(assert (=> b!1462116 m!1349683))

(assert (=> b!1462120 m!1349669))

(declare-fun m!1349701 () Bool)

(assert (=> b!1462120 m!1349701))

(push 1)

