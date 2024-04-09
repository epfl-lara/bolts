; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125308 () Bool)

(assert start!125308)

(declare-fun b!1462165 () Bool)

(declare-fun res!991752 () Bool)

(declare-fun e!821965 () Bool)

(assert (=> b!1462165 (=> (not res!991752) (not e!821965))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98673 0))(
  ( (array!98674 (arr!47620 (Array (_ BitVec 32) (_ BitVec 64))) (size!48171 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98673)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462165 (= res!991752 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48171 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48171 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48171 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462166 () Bool)

(declare-fun res!991757 () Bool)

(declare-fun e!821970 () Bool)

(assert (=> b!1462166 (=> (not res!991757) (not e!821970))))

(declare-fun e!821964 () Bool)

(assert (=> b!1462166 (= res!991757 e!821964)))

(declare-fun c!134725 () Bool)

(assert (=> b!1462166 (= c!134725 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462167 () Bool)

(declare-fun res!991742 () Bool)

(assert (=> b!1462167 (=> (not res!991742) (not e!821965))))

(declare-datatypes ((List!34301 0))(
  ( (Nil!34298) (Cons!34297 (h!35647 (_ BitVec 64)) (t!49002 List!34301)) )
))
(declare-fun arrayNoDuplicates!0 (array!98673 (_ BitVec 32) List!34301) Bool)

(assert (=> b!1462167 (= res!991742 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34298))))

(declare-fun b!1462168 () Bool)

(declare-fun e!821972 () Bool)

(assert (=> b!1462168 (= e!821965 e!821972)))

(declare-fun res!991749 () Bool)

(assert (=> b!1462168 (=> (not res!991749) (not e!821972))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462168 (= res!991749 (= (select (store (arr!47620 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640327 () array!98673)

(assert (=> b!1462168 (= lt!640327 (array!98674 (store (arr!47620 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48171 a!2862)))))

(declare-datatypes ((SeekEntryResult!11895 0))(
  ( (MissingZero!11895 (index!49971 (_ BitVec 32))) (Found!11895 (index!49972 (_ BitVec 32))) (Intermediate!11895 (undefined!12707 Bool) (index!49973 (_ BitVec 32)) (x!131571 (_ BitVec 32))) (Undefined!11895) (MissingVacant!11895 (index!49974 (_ BitVec 32))) )
))
(declare-fun lt!640330 () SeekEntryResult!11895)

(declare-fun lt!640331 () (_ BitVec 64))

(declare-fun b!1462169 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98673 (_ BitVec 32)) SeekEntryResult!11895)

(assert (=> b!1462169 (= e!821964 (= lt!640330 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640331 lt!640327 mask!2687)))))

(declare-fun b!1462171 () Bool)

(declare-fun res!991745 () Bool)

(assert (=> b!1462171 (=> (not res!991745) (not e!821965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98673 (_ BitVec 32)) Bool)

(assert (=> b!1462171 (= res!991745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!640332 () (_ BitVec 32))

(declare-fun b!1462172 () Bool)

(declare-fun e!821968 () Bool)

(assert (=> b!1462172 (= e!821968 (not (= lt!640330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640332 lt!640331 lt!640327 mask!2687))))))

(declare-fun e!821966 () Bool)

(declare-fun b!1462173 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1462173 (= e!821966 (or (= (select (arr!47620 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47620 a!2862) intermediateBeforeIndex!19) (select (arr!47620 a!2862) j!93))))))

(declare-fun b!1462174 () Bool)

(declare-fun res!991758 () Bool)

(assert (=> b!1462174 (=> (not res!991758) (not e!821965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462174 (= res!991758 (validKeyInArray!0 (select (arr!47620 a!2862) j!93)))))

(declare-fun b!1462175 () Bool)

(declare-fun res!991741 () Bool)

(assert (=> b!1462175 (=> (not res!991741) (not e!821965))))

(assert (=> b!1462175 (= res!991741 (and (= (size!48171 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48171 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48171 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462176 () Bool)

(declare-fun res!991747 () Bool)

(declare-fun e!821969 () Bool)

(assert (=> b!1462176 (=> (not res!991747) (not e!821969))))

(declare-fun lt!640329 () SeekEntryResult!11895)

(assert (=> b!1462176 (= res!991747 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47620 a!2862) j!93) a!2862 mask!2687) lt!640329))))

(declare-fun b!1462177 () Bool)

(declare-fun e!821963 () Bool)

(assert (=> b!1462177 (= e!821963 true)))

(declare-fun lt!640333 () Bool)

(assert (=> b!1462177 (= lt!640333 e!821968)))

(declare-fun c!134726 () Bool)

(assert (=> b!1462177 (= c!134726 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!991756 () Bool)

(assert (=> start!125308 (=> (not res!991756) (not e!821965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125308 (= res!991756 (validMask!0 mask!2687))))

(assert (=> start!125308 e!821965))

(assert (=> start!125308 true))

(declare-fun array_inv!36565 (array!98673) Bool)

(assert (=> start!125308 (array_inv!36565 a!2862)))

(declare-fun b!1462170 () Bool)

(declare-fun res!991744 () Bool)

(assert (=> b!1462170 (=> (not res!991744) (not e!821966))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98673 (_ BitVec 32)) SeekEntryResult!11895)

(assert (=> b!1462170 (= res!991744 (= (seekEntryOrOpen!0 (select (arr!47620 a!2862) j!93) a!2862 mask!2687) (Found!11895 j!93)))))

(declare-fun b!1462178 () Bool)

(declare-fun res!991748 () Bool)

(assert (=> b!1462178 (=> res!991748 e!821963)))

(assert (=> b!1462178 (= res!991748 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640332 (select (arr!47620 a!2862) j!93) a!2862 mask!2687) lt!640329)))))

(declare-fun b!1462179 () Bool)

(declare-fun res!991755 () Bool)

(assert (=> b!1462179 (=> (not res!991755) (not e!821970))))

(assert (=> b!1462179 (= res!991755 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462180 () Bool)

(declare-fun res!991750 () Bool)

(assert (=> b!1462180 (=> (not res!991750) (not e!821965))))

(assert (=> b!1462180 (= res!991750 (validKeyInArray!0 (select (arr!47620 a!2862) i!1006)))))

(declare-fun b!1462181 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98673 (_ BitVec 32)) SeekEntryResult!11895)

(assert (=> b!1462181 (= e!821968 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640332 intermediateAfterIndex!19 lt!640331 lt!640327 mask!2687) (seekEntryOrOpen!0 lt!640331 lt!640327 mask!2687))))))

(declare-fun b!1462182 () Bool)

(assert (=> b!1462182 (= e!821964 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640331 lt!640327 mask!2687) (seekEntryOrOpen!0 lt!640331 lt!640327 mask!2687)))))

(declare-fun b!1462183 () Bool)

(assert (=> b!1462183 (= e!821969 e!821970)))

(declare-fun res!991751 () Bool)

(assert (=> b!1462183 (=> (not res!991751) (not e!821970))))

(assert (=> b!1462183 (= res!991751 (= lt!640330 (Intermediate!11895 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462183 (= lt!640330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640331 mask!2687) lt!640331 lt!640327 mask!2687))))

(assert (=> b!1462183 (= lt!640331 (select (store (arr!47620 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462184 () Bool)

(declare-fun e!821967 () Bool)

(assert (=> b!1462184 (= e!821970 (not e!821967))))

(declare-fun res!991743 () Bool)

(assert (=> b!1462184 (=> res!991743 e!821967)))

(assert (=> b!1462184 (= res!991743 (or (and (= (select (arr!47620 a!2862) index!646) (select (store (arr!47620 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47620 a!2862) index!646) (select (arr!47620 a!2862) j!93))) (= (select (arr!47620 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462184 e!821966))

(declare-fun res!991754 () Bool)

(assert (=> b!1462184 (=> (not res!991754) (not e!821966))))

(assert (=> b!1462184 (= res!991754 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49234 0))(
  ( (Unit!49235) )
))
(declare-fun lt!640328 () Unit!49234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49234)

(assert (=> b!1462184 (= lt!640328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462185 () Bool)

(assert (=> b!1462185 (= e!821972 e!821969)))

(declare-fun res!991753 () Bool)

(assert (=> b!1462185 (=> (not res!991753) (not e!821969))))

(assert (=> b!1462185 (= res!991753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47620 a!2862) j!93) mask!2687) (select (arr!47620 a!2862) j!93) a!2862 mask!2687) lt!640329))))

(assert (=> b!1462185 (= lt!640329 (Intermediate!11895 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462186 () Bool)

(assert (=> b!1462186 (= e!821967 e!821963)))

(declare-fun res!991746 () Bool)

(assert (=> b!1462186 (=> res!991746 e!821963)))

(assert (=> b!1462186 (= res!991746 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640332 #b00000000000000000000000000000000) (bvsge lt!640332 (size!48171 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462186 (= lt!640332 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125308 res!991756) b!1462175))

(assert (= (and b!1462175 res!991741) b!1462180))

(assert (= (and b!1462180 res!991750) b!1462174))

(assert (= (and b!1462174 res!991758) b!1462171))

(assert (= (and b!1462171 res!991745) b!1462167))

(assert (= (and b!1462167 res!991742) b!1462165))

(assert (= (and b!1462165 res!991752) b!1462168))

(assert (= (and b!1462168 res!991749) b!1462185))

(assert (= (and b!1462185 res!991753) b!1462176))

(assert (= (and b!1462176 res!991747) b!1462183))

(assert (= (and b!1462183 res!991751) b!1462166))

(assert (= (and b!1462166 c!134725) b!1462169))

(assert (= (and b!1462166 (not c!134725)) b!1462182))

(assert (= (and b!1462166 res!991757) b!1462179))

(assert (= (and b!1462179 res!991755) b!1462184))

(assert (= (and b!1462184 res!991754) b!1462170))

(assert (= (and b!1462170 res!991744) b!1462173))

(assert (= (and b!1462184 (not res!991743)) b!1462186))

(assert (= (and b!1462186 (not res!991746)) b!1462178))

(assert (= (and b!1462178 (not res!991748)) b!1462177))

(assert (= (and b!1462177 c!134726) b!1462172))

(assert (= (and b!1462177 (not c!134726)) b!1462181))

(declare-fun m!1349703 () Bool)

(assert (=> b!1462186 m!1349703))

(declare-fun m!1349705 () Bool)

(assert (=> b!1462172 m!1349705))

(declare-fun m!1349707 () Bool)

(assert (=> b!1462168 m!1349707))

(declare-fun m!1349709 () Bool)

(assert (=> b!1462168 m!1349709))

(declare-fun m!1349711 () Bool)

(assert (=> b!1462176 m!1349711))

(assert (=> b!1462176 m!1349711))

(declare-fun m!1349713 () Bool)

(assert (=> b!1462176 m!1349713))

(assert (=> b!1462170 m!1349711))

(assert (=> b!1462170 m!1349711))

(declare-fun m!1349715 () Bool)

(assert (=> b!1462170 m!1349715))

(declare-fun m!1349717 () Bool)

(assert (=> b!1462183 m!1349717))

(assert (=> b!1462183 m!1349717))

(declare-fun m!1349719 () Bool)

(assert (=> b!1462183 m!1349719))

(assert (=> b!1462183 m!1349707))

(declare-fun m!1349721 () Bool)

(assert (=> b!1462183 m!1349721))

(declare-fun m!1349723 () Bool)

(assert (=> b!1462169 m!1349723))

(declare-fun m!1349725 () Bool)

(assert (=> b!1462180 m!1349725))

(assert (=> b!1462180 m!1349725))

(declare-fun m!1349727 () Bool)

(assert (=> b!1462180 m!1349727))

(declare-fun m!1349729 () Bool)

(assert (=> b!1462181 m!1349729))

(declare-fun m!1349731 () Bool)

(assert (=> b!1462181 m!1349731))

(declare-fun m!1349733 () Bool)

(assert (=> b!1462167 m!1349733))

(declare-fun m!1349735 () Bool)

(assert (=> b!1462171 m!1349735))

(declare-fun m!1349737 () Bool)

(assert (=> b!1462184 m!1349737))

(assert (=> b!1462184 m!1349707))

(declare-fun m!1349739 () Bool)

(assert (=> b!1462184 m!1349739))

(declare-fun m!1349741 () Bool)

(assert (=> b!1462184 m!1349741))

(declare-fun m!1349743 () Bool)

(assert (=> b!1462184 m!1349743))

(assert (=> b!1462184 m!1349711))

(declare-fun m!1349745 () Bool)

(assert (=> start!125308 m!1349745))

(declare-fun m!1349747 () Bool)

(assert (=> start!125308 m!1349747))

(assert (=> b!1462174 m!1349711))

(assert (=> b!1462174 m!1349711))

(declare-fun m!1349749 () Bool)

(assert (=> b!1462174 m!1349749))

(declare-fun m!1349751 () Bool)

(assert (=> b!1462173 m!1349751))

(assert (=> b!1462173 m!1349711))

(assert (=> b!1462185 m!1349711))

(assert (=> b!1462185 m!1349711))

(declare-fun m!1349753 () Bool)

(assert (=> b!1462185 m!1349753))

(assert (=> b!1462185 m!1349753))

(assert (=> b!1462185 m!1349711))

(declare-fun m!1349755 () Bool)

(assert (=> b!1462185 m!1349755))

(declare-fun m!1349757 () Bool)

(assert (=> b!1462182 m!1349757))

(assert (=> b!1462182 m!1349731))

(assert (=> b!1462178 m!1349711))

(assert (=> b!1462178 m!1349711))

(declare-fun m!1349759 () Bool)

(assert (=> b!1462178 m!1349759))

(push 1)

