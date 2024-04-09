; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126528 () Bool)

(assert start!126528)

(declare-fun b!1483013 () Bool)

(declare-fun res!1008043 () Bool)

(declare-fun e!831624 () Bool)

(assert (=> b!1483013 (=> (not res!1008043) (not e!831624))))

(declare-datatypes ((array!99407 0))(
  ( (array!99408 (arr!47975 (Array (_ BitVec 32) (_ BitVec 64))) (size!48526 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99407)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483013 (= res!1008043 (validKeyInArray!0 (select (arr!47975 a!2862) i!1006)))))

(declare-fun b!1483014 () Bool)

(declare-fun res!1008044 () Bool)

(assert (=> b!1483014 (=> (not res!1008044) (not e!831624))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483014 (= res!1008044 (and (= (size!48526 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48526 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48526 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483015 () Bool)

(declare-fun e!831620 () Bool)

(assert (=> b!1483015 (= e!831620 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647251 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483015 (= lt!647251 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!647253 () (_ BitVec 64))

(declare-fun lt!647257 () array!99407)

(declare-fun e!831625 () Bool)

(declare-datatypes ((SeekEntryResult!12238 0))(
  ( (MissingZero!12238 (index!51343 (_ BitVec 32))) (Found!12238 (index!51344 (_ BitVec 32))) (Intermediate!12238 (undefined!13050 Bool) (index!51345 (_ BitVec 32)) (x!132933 (_ BitVec 32))) (Undefined!12238) (MissingVacant!12238 (index!51346 (_ BitVec 32))) )
))
(declare-fun lt!647256 () SeekEntryResult!12238)

(declare-fun b!1483016 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99407 (_ BitVec 32)) SeekEntryResult!12238)

(assert (=> b!1483016 (= e!831625 (= lt!647256 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647253 lt!647257 mask!2687)))))

(declare-fun b!1483017 () Bool)

(declare-fun res!1008033 () Bool)

(declare-fun e!831629 () Bool)

(assert (=> b!1483017 (=> (not res!1008033) (not e!831629))))

(declare-fun lt!647252 () SeekEntryResult!12238)

(assert (=> b!1483017 (= res!1008033 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47975 a!2862) j!93) a!2862 mask!2687) lt!647252))))

(declare-fun b!1483018 () Bool)

(declare-fun res!1008035 () Bool)

(declare-fun e!831626 () Bool)

(assert (=> b!1483018 (=> (not res!1008035) (not e!831626))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99407 (_ BitVec 32)) SeekEntryResult!12238)

(assert (=> b!1483018 (= res!1008035 (= (seekEntryOrOpen!0 (select (arr!47975 a!2862) j!93) a!2862 mask!2687) (Found!12238 j!93)))))

(declare-fun b!1483019 () Bool)

(declare-fun e!831628 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99407 (_ BitVec 32)) SeekEntryResult!12238)

(assert (=> b!1483019 (= e!831628 (= (seekEntryOrOpen!0 lt!647253 lt!647257 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647253 lt!647257 mask!2687)))))

(declare-fun b!1483020 () Bool)

(declare-fun e!831622 () Bool)

(assert (=> b!1483020 (= e!831622 e!831628)))

(declare-fun res!1008036 () Bool)

(assert (=> b!1483020 (=> (not res!1008036) (not e!831628))))

(declare-fun lt!647255 () (_ BitVec 64))

(assert (=> b!1483020 (= res!1008036 (and (= index!646 intermediateAfterIndex!19) (= lt!647255 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1008027 () Bool)

(assert (=> start!126528 (=> (not res!1008027) (not e!831624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126528 (= res!1008027 (validMask!0 mask!2687))))

(assert (=> start!126528 e!831624))

(assert (=> start!126528 true))

(declare-fun array_inv!36920 (array!99407) Bool)

(assert (=> start!126528 (array_inv!36920 a!2862)))

(declare-fun b!1483021 () Bool)

(assert (=> b!1483021 (= e!831625 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647253 lt!647257 mask!2687) (seekEntryOrOpen!0 lt!647253 lt!647257 mask!2687)))))

(declare-fun b!1483022 () Bool)

(declare-fun e!831627 () Bool)

(assert (=> b!1483022 (= e!831627 e!831629)))

(declare-fun res!1008041 () Bool)

(assert (=> b!1483022 (=> (not res!1008041) (not e!831629))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483022 (= res!1008041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47975 a!2862) j!93) mask!2687) (select (arr!47975 a!2862) j!93) a!2862 mask!2687) lt!647252))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483022 (= lt!647252 (Intermediate!12238 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483023 () Bool)

(declare-fun res!1008031 () Bool)

(assert (=> b!1483023 (=> (not res!1008031) (not e!831624))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483023 (= res!1008031 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48526 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48526 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48526 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483024 () Bool)

(declare-fun res!1008042 () Bool)

(assert (=> b!1483024 (=> (not res!1008042) (not e!831624))))

(assert (=> b!1483024 (= res!1008042 (validKeyInArray!0 (select (arr!47975 a!2862) j!93)))))

(declare-fun b!1483025 () Bool)

(declare-fun res!1008039 () Bool)

(assert (=> b!1483025 (=> (not res!1008039) (not e!831624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99407 (_ BitVec 32)) Bool)

(assert (=> b!1483025 (= res!1008039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483026 () Bool)

(declare-fun res!1008030 () Bool)

(assert (=> b!1483026 (=> (not res!1008030) (not e!831626))))

(assert (=> b!1483026 (= res!1008030 (or (= (select (arr!47975 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47975 a!2862) intermediateBeforeIndex!19) (select (arr!47975 a!2862) j!93))))))

(declare-fun b!1483027 () Bool)

(assert (=> b!1483027 (= e!831626 e!831622)))

(declare-fun res!1008038 () Bool)

(assert (=> b!1483027 (=> res!1008038 e!831622)))

(assert (=> b!1483027 (= res!1008038 (or (and (= (select (arr!47975 a!2862) index!646) lt!647255) (= (select (arr!47975 a!2862) index!646) (select (arr!47975 a!2862) j!93))) (= (select (arr!47975 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483027 (= lt!647255 (select (store (arr!47975 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483028 () Bool)

(declare-fun e!831623 () Bool)

(assert (=> b!1483028 (= e!831623 (not e!831620))))

(declare-fun res!1008028 () Bool)

(assert (=> b!1483028 (=> res!1008028 e!831620)))

(assert (=> b!1483028 (= res!1008028 (or (and (= (select (arr!47975 a!2862) index!646) (select (store (arr!47975 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47975 a!2862) index!646) (select (arr!47975 a!2862) j!93))) (= (select (arr!47975 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483028 e!831626))

(declare-fun res!1008037 () Bool)

(assert (=> b!1483028 (=> (not res!1008037) (not e!831626))))

(assert (=> b!1483028 (= res!1008037 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49764 0))(
  ( (Unit!49765) )
))
(declare-fun lt!647254 () Unit!49764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49764)

(assert (=> b!1483028 (= lt!647254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483029 () Bool)

(assert (=> b!1483029 (= e!831624 e!831627)))

(declare-fun res!1008040 () Bool)

(assert (=> b!1483029 (=> (not res!1008040) (not e!831627))))

(assert (=> b!1483029 (= res!1008040 (= (select (store (arr!47975 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483029 (= lt!647257 (array!99408 (store (arr!47975 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48526 a!2862)))))

(declare-fun b!1483030 () Bool)

(declare-fun res!1008032 () Bool)

(assert (=> b!1483030 (=> (not res!1008032) (not e!831623))))

(assert (=> b!1483030 (= res!1008032 e!831625)))

(declare-fun c!137018 () Bool)

(assert (=> b!1483030 (= c!137018 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483031 () Bool)

(declare-fun res!1008029 () Bool)

(assert (=> b!1483031 (=> (not res!1008029) (not e!831623))))

(assert (=> b!1483031 (= res!1008029 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483032 () Bool)

(declare-fun res!1008034 () Bool)

(assert (=> b!1483032 (=> (not res!1008034) (not e!831624))))

(declare-datatypes ((List!34656 0))(
  ( (Nil!34653) (Cons!34652 (h!36026 (_ BitVec 64)) (t!49357 List!34656)) )
))
(declare-fun arrayNoDuplicates!0 (array!99407 (_ BitVec 32) List!34656) Bool)

(assert (=> b!1483032 (= res!1008034 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34653))))

(declare-fun b!1483033 () Bool)

(assert (=> b!1483033 (= e!831629 e!831623)))

(declare-fun res!1008045 () Bool)

(assert (=> b!1483033 (=> (not res!1008045) (not e!831623))))

(assert (=> b!1483033 (= res!1008045 (= lt!647256 (Intermediate!12238 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483033 (= lt!647256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647253 mask!2687) lt!647253 lt!647257 mask!2687))))

(assert (=> b!1483033 (= lt!647253 (select (store (arr!47975 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!126528 res!1008027) b!1483014))

(assert (= (and b!1483014 res!1008044) b!1483013))

(assert (= (and b!1483013 res!1008043) b!1483024))

(assert (= (and b!1483024 res!1008042) b!1483025))

(assert (= (and b!1483025 res!1008039) b!1483032))

(assert (= (and b!1483032 res!1008034) b!1483023))

(assert (= (and b!1483023 res!1008031) b!1483029))

(assert (= (and b!1483029 res!1008040) b!1483022))

(assert (= (and b!1483022 res!1008041) b!1483017))

(assert (= (and b!1483017 res!1008033) b!1483033))

(assert (= (and b!1483033 res!1008045) b!1483030))

(assert (= (and b!1483030 c!137018) b!1483016))

(assert (= (and b!1483030 (not c!137018)) b!1483021))

(assert (= (and b!1483030 res!1008032) b!1483031))

(assert (= (and b!1483031 res!1008029) b!1483028))

(assert (= (and b!1483028 res!1008037) b!1483018))

(assert (= (and b!1483018 res!1008035) b!1483026))

(assert (= (and b!1483026 res!1008030) b!1483027))

(assert (= (and b!1483027 (not res!1008038)) b!1483020))

(assert (= (and b!1483020 res!1008036) b!1483019))

(assert (= (and b!1483028 (not res!1008028)) b!1483015))

(declare-fun m!1368613 () Bool)

(assert (=> b!1483032 m!1368613))

(declare-fun m!1368615 () Bool)

(assert (=> b!1483018 m!1368615))

(assert (=> b!1483018 m!1368615))

(declare-fun m!1368617 () Bool)

(assert (=> b!1483018 m!1368617))

(declare-fun m!1368619 () Bool)

(assert (=> b!1483016 m!1368619))

(assert (=> b!1483024 m!1368615))

(assert (=> b!1483024 m!1368615))

(declare-fun m!1368621 () Bool)

(assert (=> b!1483024 m!1368621))

(assert (=> b!1483022 m!1368615))

(assert (=> b!1483022 m!1368615))

(declare-fun m!1368623 () Bool)

(assert (=> b!1483022 m!1368623))

(assert (=> b!1483022 m!1368623))

(assert (=> b!1483022 m!1368615))

(declare-fun m!1368625 () Bool)

(assert (=> b!1483022 m!1368625))

(declare-fun m!1368627 () Bool)

(assert (=> b!1483025 m!1368627))

(declare-fun m!1368629 () Bool)

(assert (=> b!1483013 m!1368629))

(assert (=> b!1483013 m!1368629))

(declare-fun m!1368631 () Bool)

(assert (=> b!1483013 m!1368631))

(assert (=> b!1483017 m!1368615))

(assert (=> b!1483017 m!1368615))

(declare-fun m!1368633 () Bool)

(assert (=> b!1483017 m!1368633))

(declare-fun m!1368635 () Bool)

(assert (=> b!1483028 m!1368635))

(declare-fun m!1368637 () Bool)

(assert (=> b!1483028 m!1368637))

(declare-fun m!1368639 () Bool)

(assert (=> b!1483028 m!1368639))

(declare-fun m!1368641 () Bool)

(assert (=> b!1483028 m!1368641))

(declare-fun m!1368643 () Bool)

(assert (=> b!1483028 m!1368643))

(assert (=> b!1483028 m!1368615))

(assert (=> b!1483029 m!1368637))

(declare-fun m!1368645 () Bool)

(assert (=> b!1483029 m!1368645))

(declare-fun m!1368647 () Bool)

(assert (=> start!126528 m!1368647))

(declare-fun m!1368649 () Bool)

(assert (=> start!126528 m!1368649))

(declare-fun m!1368651 () Bool)

(assert (=> b!1483033 m!1368651))

(assert (=> b!1483033 m!1368651))

(declare-fun m!1368653 () Bool)

(assert (=> b!1483033 m!1368653))

(assert (=> b!1483033 m!1368637))

(declare-fun m!1368655 () Bool)

(assert (=> b!1483033 m!1368655))

(declare-fun m!1368657 () Bool)

(assert (=> b!1483021 m!1368657))

(declare-fun m!1368659 () Bool)

(assert (=> b!1483021 m!1368659))

(declare-fun m!1368661 () Bool)

(assert (=> b!1483015 m!1368661))

(declare-fun m!1368663 () Bool)

(assert (=> b!1483026 m!1368663))

(assert (=> b!1483026 m!1368615))

(assert (=> b!1483019 m!1368659))

(assert (=> b!1483019 m!1368657))

(assert (=> b!1483027 m!1368641))

(assert (=> b!1483027 m!1368615))

(assert (=> b!1483027 m!1368637))

(assert (=> b!1483027 m!1368639))

(check-sat (not b!1483032) (not b!1483018) (not b!1483028) (not b!1483016) (not b!1483022) (not b!1483021) (not b!1483013) (not b!1483019) (not b!1483033) (not start!126528) (not b!1483017) (not b!1483015) (not b!1483025) (not b!1483024))
(check-sat)
