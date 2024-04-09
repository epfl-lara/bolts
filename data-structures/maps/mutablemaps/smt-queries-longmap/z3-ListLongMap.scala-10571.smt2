; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124608 () Bool)

(assert start!124608)

(declare-fun b!1441766 () Bool)

(declare-fun res!974166 () Bool)

(declare-fun e!812725 () Bool)

(assert (=> b!1441766 (=> (not res!974166) (not e!812725))))

(declare-datatypes ((array!97973 0))(
  ( (array!97974 (arr!47270 (Array (_ BitVec 32) (_ BitVec 64))) (size!47821 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97973)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97973 (_ BitVec 32)) Bool)

(assert (=> b!1441766 (= res!974166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441767 () Bool)

(declare-fun res!974168 () Bool)

(declare-fun e!812724 () Bool)

(assert (=> b!1441767 (=> (not res!974168) (not e!812724))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11545 0))(
  ( (MissingZero!11545 (index!48571 (_ BitVec 32))) (Found!11545 (index!48572 (_ BitVec 32))) (Intermediate!11545 (undefined!12357 Bool) (index!48573 (_ BitVec 32)) (x!130285 (_ BitVec 32))) (Undefined!11545) (MissingVacant!11545 (index!48574 (_ BitVec 32))) )
))
(declare-fun lt!633320 () SeekEntryResult!11545)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97973 (_ BitVec 32)) SeekEntryResult!11545)

(assert (=> b!1441767 (= res!974168 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47270 a!2862) j!93) a!2862 mask!2687) lt!633320))))

(declare-fun b!1441768 () Bool)

(declare-fun res!974178 () Bool)

(assert (=> b!1441768 (=> (not res!974178) (not e!812725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441768 (= res!974178 (validKeyInArray!0 (select (arr!47270 a!2862) j!93)))))

(declare-fun b!1441769 () Bool)

(declare-fun res!974171 () Bool)

(assert (=> b!1441769 (=> (not res!974171) (not e!812725))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441769 (= res!974171 (and (= (size!47821 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47821 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47821 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441770 () Bool)

(declare-fun lt!633321 () array!97973)

(declare-fun lt!633319 () (_ BitVec 64))

(declare-fun e!812722 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97973 (_ BitVec 32)) SeekEntryResult!11545)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97973 (_ BitVec 32)) SeekEntryResult!11545)

(assert (=> b!1441770 (= e!812722 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633319 lt!633321 mask!2687) (seekEntryOrOpen!0 lt!633319 lt!633321 mask!2687)))))

(declare-fun res!974174 () Bool)

(assert (=> start!124608 (=> (not res!974174) (not e!812725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124608 (= res!974174 (validMask!0 mask!2687))))

(assert (=> start!124608 e!812725))

(assert (=> start!124608 true))

(declare-fun array_inv!36215 (array!97973) Bool)

(assert (=> start!124608 (array_inv!36215 a!2862)))

(declare-fun b!1441771 () Bool)

(declare-fun res!974173 () Bool)

(declare-fun e!812726 () Bool)

(assert (=> b!1441771 (=> (not res!974173) (not e!812726))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441771 (= res!974173 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441772 () Bool)

(declare-fun res!974172 () Bool)

(assert (=> b!1441772 (=> (not res!974172) (not e!812726))))

(assert (=> b!1441772 (= res!974172 e!812722)))

(declare-fun c!133313 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441772 (= c!133313 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441773 () Bool)

(declare-fun res!974167 () Bool)

(assert (=> b!1441773 (=> (not res!974167) (not e!812725))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1441773 (= res!974167 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47821 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47821 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47821 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441774 () Bool)

(declare-fun lt!633318 () SeekEntryResult!11545)

(assert (=> b!1441774 (= e!812722 (= lt!633318 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633319 lt!633321 mask!2687)))))

(declare-fun b!1441775 () Bool)

(declare-fun e!812721 () Bool)

(assert (=> b!1441775 (= e!812725 e!812721)))

(declare-fun res!974176 () Bool)

(assert (=> b!1441775 (=> (not res!974176) (not e!812721))))

(assert (=> b!1441775 (= res!974176 (= (select (store (arr!47270 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441775 (= lt!633321 (array!97974 (store (arr!47270 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47821 a!2862)))))

(declare-fun b!1441776 () Bool)

(assert (=> b!1441776 (= e!812724 e!812726)))

(declare-fun res!974177 () Bool)

(assert (=> b!1441776 (=> (not res!974177) (not e!812726))))

(assert (=> b!1441776 (= res!974177 (= lt!633318 (Intermediate!11545 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441776 (= lt!633318 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633319 mask!2687) lt!633319 lt!633321 mask!2687))))

(assert (=> b!1441776 (= lt!633319 (select (store (arr!47270 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441777 () Bool)

(assert (=> b!1441777 (= e!812726 (not true))))

(assert (=> b!1441777 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48534 0))(
  ( (Unit!48535) )
))
(declare-fun lt!633322 () Unit!48534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48534)

(assert (=> b!1441777 (= lt!633322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441778 () Bool)

(assert (=> b!1441778 (= e!812721 e!812724)))

(declare-fun res!974170 () Bool)

(assert (=> b!1441778 (=> (not res!974170) (not e!812724))))

(assert (=> b!1441778 (= res!974170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47270 a!2862) j!93) mask!2687) (select (arr!47270 a!2862) j!93) a!2862 mask!2687) lt!633320))))

(assert (=> b!1441778 (= lt!633320 (Intermediate!11545 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441779 () Bool)

(declare-fun res!974169 () Bool)

(assert (=> b!1441779 (=> (not res!974169) (not e!812725))))

(declare-datatypes ((List!33951 0))(
  ( (Nil!33948) (Cons!33947 (h!35297 (_ BitVec 64)) (t!48652 List!33951)) )
))
(declare-fun arrayNoDuplicates!0 (array!97973 (_ BitVec 32) List!33951) Bool)

(assert (=> b!1441779 (= res!974169 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33948))))

(declare-fun b!1441780 () Bool)

(declare-fun res!974175 () Bool)

(assert (=> b!1441780 (=> (not res!974175) (not e!812725))))

(assert (=> b!1441780 (= res!974175 (validKeyInArray!0 (select (arr!47270 a!2862) i!1006)))))

(assert (= (and start!124608 res!974174) b!1441769))

(assert (= (and b!1441769 res!974171) b!1441780))

(assert (= (and b!1441780 res!974175) b!1441768))

(assert (= (and b!1441768 res!974178) b!1441766))

(assert (= (and b!1441766 res!974166) b!1441779))

(assert (= (and b!1441779 res!974169) b!1441773))

(assert (= (and b!1441773 res!974167) b!1441775))

(assert (= (and b!1441775 res!974176) b!1441778))

(assert (= (and b!1441778 res!974170) b!1441767))

(assert (= (and b!1441767 res!974168) b!1441776))

(assert (= (and b!1441776 res!974177) b!1441772))

(assert (= (and b!1441772 c!133313) b!1441774))

(assert (= (and b!1441772 (not c!133313)) b!1441770))

(assert (= (and b!1441772 res!974172) b!1441771))

(assert (= (and b!1441771 res!974173) b!1441777))

(declare-fun m!1331019 () Bool)

(assert (=> b!1441779 m!1331019))

(declare-fun m!1331021 () Bool)

(assert (=> b!1441766 m!1331021))

(declare-fun m!1331023 () Bool)

(assert (=> b!1441768 m!1331023))

(assert (=> b!1441768 m!1331023))

(declare-fun m!1331025 () Bool)

(assert (=> b!1441768 m!1331025))

(assert (=> b!1441778 m!1331023))

(assert (=> b!1441778 m!1331023))

(declare-fun m!1331027 () Bool)

(assert (=> b!1441778 m!1331027))

(assert (=> b!1441778 m!1331027))

(assert (=> b!1441778 m!1331023))

(declare-fun m!1331029 () Bool)

(assert (=> b!1441778 m!1331029))

(declare-fun m!1331031 () Bool)

(assert (=> b!1441774 m!1331031))

(declare-fun m!1331033 () Bool)

(assert (=> b!1441770 m!1331033))

(declare-fun m!1331035 () Bool)

(assert (=> b!1441770 m!1331035))

(declare-fun m!1331037 () Bool)

(assert (=> b!1441780 m!1331037))

(assert (=> b!1441780 m!1331037))

(declare-fun m!1331039 () Bool)

(assert (=> b!1441780 m!1331039))

(declare-fun m!1331041 () Bool)

(assert (=> b!1441775 m!1331041))

(declare-fun m!1331043 () Bool)

(assert (=> b!1441775 m!1331043))

(declare-fun m!1331045 () Bool)

(assert (=> b!1441776 m!1331045))

(assert (=> b!1441776 m!1331045))

(declare-fun m!1331047 () Bool)

(assert (=> b!1441776 m!1331047))

(assert (=> b!1441776 m!1331041))

(declare-fun m!1331049 () Bool)

(assert (=> b!1441776 m!1331049))

(declare-fun m!1331051 () Bool)

(assert (=> b!1441777 m!1331051))

(declare-fun m!1331053 () Bool)

(assert (=> b!1441777 m!1331053))

(assert (=> b!1441767 m!1331023))

(assert (=> b!1441767 m!1331023))

(declare-fun m!1331055 () Bool)

(assert (=> b!1441767 m!1331055))

(declare-fun m!1331057 () Bool)

(assert (=> start!124608 m!1331057))

(declare-fun m!1331059 () Bool)

(assert (=> start!124608 m!1331059))

(check-sat (not start!124608) (not b!1441768) (not b!1441778) (not b!1441766) (not b!1441774) (not b!1441777) (not b!1441770) (not b!1441776) (not b!1441779) (not b!1441780) (not b!1441767))
(check-sat)
