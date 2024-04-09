; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126450 () Bool)

(assert start!126450)

(declare-fun b!1482144 () Bool)

(declare-fun res!1007487 () Bool)

(declare-fun e!831186 () Bool)

(assert (=> b!1482144 (=> (not res!1007487) (not e!831186))))

(declare-datatypes ((array!99386 0))(
  ( (array!99387 (arr!47966 (Array (_ BitVec 32) (_ BitVec 64))) (size!48517 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99386)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482144 (= res!1007487 (validKeyInArray!0 (select (arr!47966 a!2862) i!1006)))))

(declare-fun b!1482145 () Bool)

(declare-fun res!1007486 () Bool)

(assert (=> b!1482145 (=> (not res!1007486) (not e!831186))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1482145 (= res!1007486 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48517 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48517 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48517 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482146 () Bool)

(declare-fun res!1007498 () Bool)

(declare-fun e!831182 () Bool)

(assert (=> b!1482146 (=> (not res!1007498) (not e!831182))))

(declare-fun e!831183 () Bool)

(assert (=> b!1482146 (= res!1007498 e!831183)))

(declare-fun c!136853 () Bool)

(assert (=> b!1482146 (= c!136853 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482147 () Bool)

(declare-fun res!1007497 () Bool)

(assert (=> b!1482147 (=> (not res!1007497) (not e!831186))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99386 (_ BitVec 32)) Bool)

(assert (=> b!1482147 (= res!1007497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1007491 () Bool)

(assert (=> start!126450 (=> (not res!1007491) (not e!831186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126450 (= res!1007491 (validMask!0 mask!2687))))

(assert (=> start!126450 e!831186))

(assert (=> start!126450 true))

(declare-fun array_inv!36911 (array!99386) Bool)

(assert (=> start!126450 (array_inv!36911 a!2862)))

(declare-fun b!1482148 () Bool)

(declare-fun e!831188 () Bool)

(assert (=> b!1482148 (= e!831188 e!831182)))

(declare-fun res!1007485 () Bool)

(assert (=> b!1482148 (=> (not res!1007485) (not e!831182))))

(declare-datatypes ((SeekEntryResult!12229 0))(
  ( (MissingZero!12229 (index!51307 (_ BitVec 32))) (Found!12229 (index!51308 (_ BitVec 32))) (Intermediate!12229 (undefined!13041 Bool) (index!51309 (_ BitVec 32)) (x!132891 (_ BitVec 32))) (Undefined!12229) (MissingVacant!12229 (index!51310 (_ BitVec 32))) )
))
(declare-fun lt!646950 () SeekEntryResult!12229)

(assert (=> b!1482148 (= res!1007485 (= lt!646950 (Intermediate!12229 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646948 () array!99386)

(declare-fun lt!646951 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99386 (_ BitVec 32)) SeekEntryResult!12229)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482148 (= lt!646950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646951 mask!2687) lt!646951 lt!646948 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1482148 (= lt!646951 (select (store (arr!47966 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482149 () Bool)

(declare-fun res!1007493 () Bool)

(assert (=> b!1482149 (=> (not res!1007493) (not e!831186))))

(declare-datatypes ((List!34647 0))(
  ( (Nil!34644) (Cons!34643 (h!36014 (_ BitVec 64)) (t!49348 List!34647)) )
))
(declare-fun arrayNoDuplicates!0 (array!99386 (_ BitVec 32) List!34647) Bool)

(assert (=> b!1482149 (= res!1007493 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34644))))

(declare-fun b!1482150 () Bool)

(declare-fun res!1007494 () Bool)

(declare-fun e!831187 () Bool)

(assert (=> b!1482150 (=> (not res!1007494) (not e!831187))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99386 (_ BitVec 32)) SeekEntryResult!12229)

(assert (=> b!1482150 (= res!1007494 (= (seekEntryOrOpen!0 (select (arr!47966 a!2862) j!93) a!2862 mask!2687) (Found!12229 j!93)))))

(declare-fun b!1482151 () Bool)

(declare-fun e!831185 () Bool)

(assert (=> b!1482151 (= e!831186 e!831185)))

(declare-fun res!1007488 () Bool)

(assert (=> b!1482151 (=> (not res!1007488) (not e!831185))))

(assert (=> b!1482151 (= res!1007488 (= (select (store (arr!47966 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482151 (= lt!646948 (array!99387 (store (arr!47966 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48517 a!2862)))))

(declare-fun b!1482152 () Bool)

(declare-fun res!1007490 () Bool)

(assert (=> b!1482152 (=> (not res!1007490) (not e!831182))))

(assert (=> b!1482152 (= res!1007490 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482153 () Bool)

(assert (=> b!1482153 (= e!831182 (not true))))

(assert (=> b!1482153 e!831187))

(declare-fun res!1007492 () Bool)

(assert (=> b!1482153 (=> (not res!1007492) (not e!831187))))

(assert (=> b!1482153 (= res!1007492 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49746 0))(
  ( (Unit!49747) )
))
(declare-fun lt!646947 () Unit!49746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49746)

(assert (=> b!1482153 (= lt!646947 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482154 () Bool)

(assert (=> b!1482154 (= e!831187 (and (or (= (select (arr!47966 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47966 a!2862) intermediateBeforeIndex!19) (select (arr!47966 a!2862) j!93))) (or (and (= (select (arr!47966 a!2862) index!646) (select (store (arr!47966 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47966 a!2862) index!646) (select (arr!47966 a!2862) j!93))) (= (select (arr!47966 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47966 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482155 () Bool)

(declare-fun res!1007499 () Bool)

(assert (=> b!1482155 (=> (not res!1007499) (not e!831186))))

(assert (=> b!1482155 (= res!1007499 (and (= (size!48517 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48517 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48517 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482156 () Bool)

(assert (=> b!1482156 (= e!831183 (= lt!646950 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646951 lt!646948 mask!2687)))))

(declare-fun b!1482157 () Bool)

(declare-fun res!1007495 () Bool)

(assert (=> b!1482157 (=> (not res!1007495) (not e!831186))))

(assert (=> b!1482157 (= res!1007495 (validKeyInArray!0 (select (arr!47966 a!2862) j!93)))))

(declare-fun b!1482158 () Bool)

(declare-fun res!1007496 () Bool)

(assert (=> b!1482158 (=> (not res!1007496) (not e!831188))))

(declare-fun lt!646949 () SeekEntryResult!12229)

(assert (=> b!1482158 (= res!1007496 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47966 a!2862) j!93) a!2862 mask!2687) lt!646949))))

(declare-fun b!1482159 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99386 (_ BitVec 32)) SeekEntryResult!12229)

(assert (=> b!1482159 (= e!831183 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646951 lt!646948 mask!2687) (seekEntryOrOpen!0 lt!646951 lt!646948 mask!2687)))))

(declare-fun b!1482160 () Bool)

(assert (=> b!1482160 (= e!831185 e!831188)))

(declare-fun res!1007489 () Bool)

(assert (=> b!1482160 (=> (not res!1007489) (not e!831188))))

(assert (=> b!1482160 (= res!1007489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47966 a!2862) j!93) mask!2687) (select (arr!47966 a!2862) j!93) a!2862 mask!2687) lt!646949))))

(assert (=> b!1482160 (= lt!646949 (Intermediate!12229 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126450 res!1007491) b!1482155))

(assert (= (and b!1482155 res!1007499) b!1482144))

(assert (= (and b!1482144 res!1007487) b!1482157))

(assert (= (and b!1482157 res!1007495) b!1482147))

(assert (= (and b!1482147 res!1007497) b!1482149))

(assert (= (and b!1482149 res!1007493) b!1482145))

(assert (= (and b!1482145 res!1007486) b!1482151))

(assert (= (and b!1482151 res!1007488) b!1482160))

(assert (= (and b!1482160 res!1007489) b!1482158))

(assert (= (and b!1482158 res!1007496) b!1482148))

(assert (= (and b!1482148 res!1007485) b!1482146))

(assert (= (and b!1482146 c!136853) b!1482156))

(assert (= (and b!1482146 (not c!136853)) b!1482159))

(assert (= (and b!1482146 res!1007498) b!1482152))

(assert (= (and b!1482152 res!1007490) b!1482153))

(assert (= (and b!1482153 res!1007492) b!1482150))

(assert (= (and b!1482150 res!1007494) b!1482154))

(declare-fun m!1367927 () Bool)

(assert (=> b!1482150 m!1367927))

(assert (=> b!1482150 m!1367927))

(declare-fun m!1367929 () Bool)

(assert (=> b!1482150 m!1367929))

(declare-fun m!1367931 () Bool)

(assert (=> b!1482151 m!1367931))

(declare-fun m!1367933 () Bool)

(assert (=> b!1482151 m!1367933))

(assert (=> b!1482154 m!1367931))

(declare-fun m!1367935 () Bool)

(assert (=> b!1482154 m!1367935))

(declare-fun m!1367937 () Bool)

(assert (=> b!1482154 m!1367937))

(declare-fun m!1367939 () Bool)

(assert (=> b!1482154 m!1367939))

(assert (=> b!1482154 m!1367927))

(declare-fun m!1367941 () Bool)

(assert (=> b!1482149 m!1367941))

(declare-fun m!1367943 () Bool)

(assert (=> b!1482144 m!1367943))

(assert (=> b!1482144 m!1367943))

(declare-fun m!1367945 () Bool)

(assert (=> b!1482144 m!1367945))

(declare-fun m!1367947 () Bool)

(assert (=> b!1482147 m!1367947))

(assert (=> b!1482157 m!1367927))

(assert (=> b!1482157 m!1367927))

(declare-fun m!1367949 () Bool)

(assert (=> b!1482157 m!1367949))

(declare-fun m!1367951 () Bool)

(assert (=> b!1482148 m!1367951))

(assert (=> b!1482148 m!1367951))

(declare-fun m!1367953 () Bool)

(assert (=> b!1482148 m!1367953))

(assert (=> b!1482148 m!1367931))

(declare-fun m!1367955 () Bool)

(assert (=> b!1482148 m!1367955))

(declare-fun m!1367957 () Bool)

(assert (=> b!1482159 m!1367957))

(declare-fun m!1367959 () Bool)

(assert (=> b!1482159 m!1367959))

(assert (=> b!1482160 m!1367927))

(assert (=> b!1482160 m!1367927))

(declare-fun m!1367961 () Bool)

(assert (=> b!1482160 m!1367961))

(assert (=> b!1482160 m!1367961))

(assert (=> b!1482160 m!1367927))

(declare-fun m!1367963 () Bool)

(assert (=> b!1482160 m!1367963))

(declare-fun m!1367965 () Bool)

(assert (=> b!1482153 m!1367965))

(declare-fun m!1367967 () Bool)

(assert (=> b!1482153 m!1367967))

(declare-fun m!1367969 () Bool)

(assert (=> start!126450 m!1367969))

(declare-fun m!1367971 () Bool)

(assert (=> start!126450 m!1367971))

(declare-fun m!1367973 () Bool)

(assert (=> b!1482156 m!1367973))

(assert (=> b!1482158 m!1367927))

(assert (=> b!1482158 m!1367927))

(declare-fun m!1367975 () Bool)

(assert (=> b!1482158 m!1367975))

(check-sat (not b!1482150) (not b!1482159) (not b!1482148) (not b!1482144) (not b!1482160) (not b!1482156) (not b!1482157) (not b!1482158) (not b!1482147) (not b!1482153) (not b!1482149) (not start!126450))
(check-sat)
