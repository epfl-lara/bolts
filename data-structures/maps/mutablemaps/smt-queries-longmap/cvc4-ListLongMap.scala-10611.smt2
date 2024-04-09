; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124850 () Bool)

(assert start!124850)

(declare-fun b!1448170 () Bool)

(declare-fun res!979859 () Bool)

(declare-fun e!815599 () Bool)

(assert (=> b!1448170 (=> (not res!979859) (not e!815599))))

(declare-datatypes ((array!98215 0))(
  ( (array!98216 (arr!47391 (Array (_ BitVec 32) (_ BitVec 64))) (size!47942 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98215)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448170 (= res!979859 (validKeyInArray!0 (select (arr!47391 a!2862) j!93)))))

(declare-fun b!1448172 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!815605 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!635407 () (_ BitVec 64))

(declare-fun lt!635404 () array!98215)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11666 0))(
  ( (MissingZero!11666 (index!49055 (_ BitVec 32))) (Found!11666 (index!49056 (_ BitVec 32))) (Intermediate!11666 (undefined!12478 Bool) (index!49057 (_ BitVec 32)) (x!130726 (_ BitVec 32))) (Undefined!11666) (MissingVacant!11666 (index!49058 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98215 (_ BitVec 32)) SeekEntryResult!11666)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98215 (_ BitVec 32)) SeekEntryResult!11666)

(assert (=> b!1448172 (= e!815605 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635407 lt!635404 mask!2687) (seekEntryOrOpen!0 lt!635407 lt!635404 mask!2687)))))

(declare-fun b!1448173 () Bool)

(declare-fun res!979854 () Bool)

(assert (=> b!1448173 (=> (not res!979854) (not e!815599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98215 (_ BitVec 32)) Bool)

(assert (=> b!1448173 (= res!979854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448174 () Bool)

(declare-fun e!815604 () Bool)

(declare-fun e!815601 () Bool)

(assert (=> b!1448174 (= e!815604 e!815601)))

(declare-fun res!979855 () Bool)

(assert (=> b!1448174 (=> (not res!979855) (not e!815601))))

(declare-fun lt!635402 () SeekEntryResult!11666)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98215 (_ BitVec 32)) SeekEntryResult!11666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448174 (= res!979855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47391 a!2862) j!93) mask!2687) (select (arr!47391 a!2862) j!93) a!2862 mask!2687) lt!635402))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448174 (= lt!635402 (Intermediate!11666 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448175 () Bool)

(assert (=> b!1448175 (= e!815599 e!815604)))

(declare-fun res!979845 () Bool)

(assert (=> b!1448175 (=> (not res!979845) (not e!815604))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448175 (= res!979845 (= (select (store (arr!47391 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448175 (= lt!635404 (array!98216 (store (arr!47391 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47942 a!2862)))))

(declare-fun b!1448176 () Bool)

(declare-fun res!979847 () Bool)

(assert (=> b!1448176 (=> (not res!979847) (not e!815599))))

(assert (=> b!1448176 (= res!979847 (and (= (size!47942 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47942 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47942 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448177 () Bool)

(declare-fun res!979848 () Bool)

(declare-fun e!815606 () Bool)

(assert (=> b!1448177 (=> (not res!979848) (not e!815606))))

(assert (=> b!1448177 (= res!979848 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448178 () Bool)

(declare-fun e!815597 () Bool)

(assert (=> b!1448178 (= e!815597 true)))

(declare-fun lt!635403 () SeekEntryResult!11666)

(assert (=> b!1448178 (= lt!635403 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47391 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448179 () Bool)

(declare-fun res!979860 () Bool)

(assert (=> b!1448179 (=> (not res!979860) (not e!815599))))

(assert (=> b!1448179 (= res!979860 (validKeyInArray!0 (select (arr!47391 a!2862) i!1006)))))

(declare-fun b!1448180 () Bool)

(declare-fun res!979846 () Bool)

(assert (=> b!1448180 (=> (not res!979846) (not e!815599))))

(declare-datatypes ((List!34072 0))(
  ( (Nil!34069) (Cons!34068 (h!35418 (_ BitVec 64)) (t!48773 List!34072)) )
))
(declare-fun arrayNoDuplicates!0 (array!98215 (_ BitVec 32) List!34072) Bool)

(assert (=> b!1448180 (= res!979846 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34069))))

(declare-fun b!1448171 () Bool)

(declare-fun res!979856 () Bool)

(assert (=> b!1448171 (=> (not res!979856) (not e!815601))))

(assert (=> b!1448171 (= res!979856 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47391 a!2862) j!93) a!2862 mask!2687) lt!635402))))

(declare-fun res!979844 () Bool)

(assert (=> start!124850 (=> (not res!979844) (not e!815599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124850 (= res!979844 (validMask!0 mask!2687))))

(assert (=> start!124850 e!815599))

(assert (=> start!124850 true))

(declare-fun array_inv!36336 (array!98215) Bool)

(assert (=> start!124850 (array_inv!36336 a!2862)))

(declare-fun b!1448181 () Bool)

(assert (=> b!1448181 (= e!815606 (not e!815597))))

(declare-fun res!979858 () Bool)

(assert (=> b!1448181 (=> res!979858 e!815597)))

(assert (=> b!1448181 (= res!979858 (or (and (= (select (arr!47391 a!2862) index!646) (select (store (arr!47391 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47391 a!2862) index!646) (select (arr!47391 a!2862) j!93))) (not (= (select (arr!47391 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47391 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815598 () Bool)

(assert (=> b!1448181 e!815598))

(declare-fun res!979852 () Bool)

(assert (=> b!1448181 (=> (not res!979852) (not e!815598))))

(declare-fun lt!635406 () SeekEntryResult!11666)

(assert (=> b!1448181 (= res!979852 (and (= lt!635406 (Found!11666 j!93)) (or (= (select (arr!47391 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47391 a!2862) intermediateBeforeIndex!19) (select (arr!47391 a!2862) j!93)))))))

(assert (=> b!1448181 (= lt!635406 (seekEntryOrOpen!0 (select (arr!47391 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448181 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48776 0))(
  ( (Unit!48777) )
))
(declare-fun lt!635401 () Unit!48776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48776)

(assert (=> b!1448181 (= lt!635401 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448182 () Bool)

(declare-fun e!815600 () Bool)

(declare-fun e!815603 () Bool)

(assert (=> b!1448182 (= e!815600 e!815603)))

(declare-fun res!979853 () Bool)

(assert (=> b!1448182 (=> (not res!979853) (not e!815603))))

(assert (=> b!1448182 (= res!979853 (= lt!635406 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47391 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448183 () Bool)

(assert (=> b!1448183 (= e!815603 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448184 () Bool)

(declare-fun res!979850 () Bool)

(assert (=> b!1448184 (=> (not res!979850) (not e!815606))))

(assert (=> b!1448184 (= res!979850 e!815605)))

(declare-fun c!133676 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448184 (= c!133676 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448185 () Bool)

(declare-fun lt!635405 () SeekEntryResult!11666)

(assert (=> b!1448185 (= e!815605 (= lt!635405 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635407 lt!635404 mask!2687)))))

(declare-fun b!1448186 () Bool)

(assert (=> b!1448186 (= e!815598 e!815600)))

(declare-fun res!979857 () Bool)

(assert (=> b!1448186 (=> res!979857 e!815600)))

(assert (=> b!1448186 (= res!979857 (or (and (= (select (arr!47391 a!2862) index!646) (select (store (arr!47391 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47391 a!2862) index!646) (select (arr!47391 a!2862) j!93))) (not (= (select (arr!47391 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448187 () Bool)

(assert (=> b!1448187 (= e!815601 e!815606)))

(declare-fun res!979849 () Bool)

(assert (=> b!1448187 (=> (not res!979849) (not e!815606))))

(assert (=> b!1448187 (= res!979849 (= lt!635405 (Intermediate!11666 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448187 (= lt!635405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635407 mask!2687) lt!635407 lt!635404 mask!2687))))

(assert (=> b!1448187 (= lt!635407 (select (store (arr!47391 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448188 () Bool)

(declare-fun res!979851 () Bool)

(assert (=> b!1448188 (=> (not res!979851) (not e!815599))))

(assert (=> b!1448188 (= res!979851 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47942 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47942 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47942 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124850 res!979844) b!1448176))

(assert (= (and b!1448176 res!979847) b!1448179))

(assert (= (and b!1448179 res!979860) b!1448170))

(assert (= (and b!1448170 res!979859) b!1448173))

(assert (= (and b!1448173 res!979854) b!1448180))

(assert (= (and b!1448180 res!979846) b!1448188))

(assert (= (and b!1448188 res!979851) b!1448175))

(assert (= (and b!1448175 res!979845) b!1448174))

(assert (= (and b!1448174 res!979855) b!1448171))

(assert (= (and b!1448171 res!979856) b!1448187))

(assert (= (and b!1448187 res!979849) b!1448184))

(assert (= (and b!1448184 c!133676) b!1448185))

(assert (= (and b!1448184 (not c!133676)) b!1448172))

(assert (= (and b!1448184 res!979850) b!1448177))

(assert (= (and b!1448177 res!979848) b!1448181))

(assert (= (and b!1448181 res!979852) b!1448186))

(assert (= (and b!1448186 (not res!979857)) b!1448182))

(assert (= (and b!1448182 res!979853) b!1448183))

(assert (= (and b!1448181 (not res!979858)) b!1448178))

(declare-fun m!1337001 () Bool)

(assert (=> b!1448174 m!1337001))

(assert (=> b!1448174 m!1337001))

(declare-fun m!1337003 () Bool)

(assert (=> b!1448174 m!1337003))

(assert (=> b!1448174 m!1337003))

(assert (=> b!1448174 m!1337001))

(declare-fun m!1337005 () Bool)

(assert (=> b!1448174 m!1337005))

(assert (=> b!1448170 m!1337001))

(assert (=> b!1448170 m!1337001))

(declare-fun m!1337007 () Bool)

(assert (=> b!1448170 m!1337007))

(declare-fun m!1337009 () Bool)

(assert (=> b!1448179 m!1337009))

(assert (=> b!1448179 m!1337009))

(declare-fun m!1337011 () Bool)

(assert (=> b!1448179 m!1337011))

(assert (=> b!1448178 m!1337001))

(assert (=> b!1448178 m!1337001))

(declare-fun m!1337013 () Bool)

(assert (=> b!1448178 m!1337013))

(declare-fun m!1337015 () Bool)

(assert (=> b!1448181 m!1337015))

(declare-fun m!1337017 () Bool)

(assert (=> b!1448181 m!1337017))

(declare-fun m!1337019 () Bool)

(assert (=> b!1448181 m!1337019))

(declare-fun m!1337021 () Bool)

(assert (=> b!1448181 m!1337021))

(declare-fun m!1337023 () Bool)

(assert (=> b!1448181 m!1337023))

(assert (=> b!1448181 m!1337001))

(declare-fun m!1337025 () Bool)

(assert (=> b!1448181 m!1337025))

(declare-fun m!1337027 () Bool)

(assert (=> b!1448181 m!1337027))

(assert (=> b!1448181 m!1337001))

(declare-fun m!1337029 () Bool)

(assert (=> b!1448172 m!1337029))

(declare-fun m!1337031 () Bool)

(assert (=> b!1448172 m!1337031))

(declare-fun m!1337033 () Bool)

(assert (=> b!1448185 m!1337033))

(assert (=> b!1448171 m!1337001))

(assert (=> b!1448171 m!1337001))

(declare-fun m!1337035 () Bool)

(assert (=> b!1448171 m!1337035))

(declare-fun m!1337037 () Bool)

(assert (=> b!1448187 m!1337037))

(assert (=> b!1448187 m!1337037))

(declare-fun m!1337039 () Bool)

(assert (=> b!1448187 m!1337039))

(assert (=> b!1448187 m!1337017))

(declare-fun m!1337041 () Bool)

(assert (=> b!1448187 m!1337041))

(declare-fun m!1337043 () Bool)

(assert (=> b!1448173 m!1337043))

(assert (=> b!1448186 m!1337023))

(assert (=> b!1448186 m!1337017))

(assert (=> b!1448186 m!1337021))

(assert (=> b!1448186 m!1337001))

(assert (=> b!1448175 m!1337017))

(declare-fun m!1337045 () Bool)

(assert (=> b!1448175 m!1337045))

(declare-fun m!1337047 () Bool)

(assert (=> b!1448180 m!1337047))

(declare-fun m!1337049 () Bool)

(assert (=> start!124850 m!1337049))

(declare-fun m!1337051 () Bool)

(assert (=> start!124850 m!1337051))

(assert (=> b!1448182 m!1337001))

(assert (=> b!1448182 m!1337001))

(declare-fun m!1337053 () Bool)

(assert (=> b!1448182 m!1337053))

(push 1)

