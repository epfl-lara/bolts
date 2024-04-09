; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125242 () Bool)

(assert start!125242)

(declare-fun b!1460157 () Bool)

(declare-fun res!990067 () Bool)

(declare-fun e!821081 () Bool)

(assert (=> b!1460157 (=> (not res!990067) (not e!821081))))

(declare-datatypes ((array!98607 0))(
  ( (array!98608 (arr!47587 (Array (_ BitVec 32) (_ BitVec 64))) (size!48138 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98607)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460157 (= res!990067 (validKeyInArray!0 (select (arr!47587 a!2862) j!93)))))

(declare-fun b!1460158 () Bool)

(declare-fun res!990074 () Bool)

(declare-fun e!821075 () Bool)

(assert (=> b!1460158 (=> (not res!990074) (not e!821075))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460158 (= res!990074 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460159 () Bool)

(declare-fun res!990065 () Bool)

(assert (=> b!1460159 (=> (not res!990065) (not e!821081))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1460159 (= res!990065 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48138 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48138 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48138 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460160 () Bool)

(declare-fun e!821076 () Bool)

(declare-fun e!821077 () Bool)

(assert (=> b!1460160 (= e!821076 e!821077)))

(declare-fun res!990061 () Bool)

(assert (=> b!1460160 (=> (not res!990061) (not e!821077))))

(declare-datatypes ((SeekEntryResult!11862 0))(
  ( (MissingZero!11862 (index!49839 (_ BitVec 32))) (Found!11862 (index!49840 (_ BitVec 32))) (Intermediate!11862 (undefined!12674 Bool) (index!49841 (_ BitVec 32)) (x!131450 (_ BitVec 32))) (Undefined!11862) (MissingVacant!11862 (index!49842 (_ BitVec 32))) )
))
(declare-fun lt!639704 () SeekEntryResult!11862)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98607 (_ BitVec 32)) SeekEntryResult!11862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460160 (= res!990061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47587 a!2862) j!93) mask!2687) (select (arr!47587 a!2862) j!93) a!2862 mask!2687) lt!639704))))

(assert (=> b!1460160 (= lt!639704 (Intermediate!11862 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460161 () Bool)

(declare-fun res!990066 () Bool)

(assert (=> b!1460161 (=> (not res!990066) (not e!821081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98607 (_ BitVec 32)) Bool)

(assert (=> b!1460161 (= res!990066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460162 () Bool)

(declare-fun res!990062 () Bool)

(assert (=> b!1460162 (=> (not res!990062) (not e!821081))))

(assert (=> b!1460162 (= res!990062 (validKeyInArray!0 (select (arr!47587 a!2862) i!1006)))))

(declare-fun b!1460163 () Bool)

(assert (=> b!1460163 (= e!821077 e!821075)))

(declare-fun res!990069 () Bool)

(assert (=> b!1460163 (=> (not res!990069) (not e!821075))))

(declare-fun lt!639703 () SeekEntryResult!11862)

(assert (=> b!1460163 (= res!990069 (= lt!639703 (Intermediate!11862 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639702 () (_ BitVec 64))

(declare-fun lt!639705 () array!98607)

(assert (=> b!1460163 (= lt!639703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639702 mask!2687) lt!639702 lt!639705 mask!2687))))

(assert (=> b!1460163 (= lt!639702 (select (store (arr!47587 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460164 () Bool)

(declare-fun res!990075 () Bool)

(assert (=> b!1460164 (=> (not res!990075) (not e!821081))))

(assert (=> b!1460164 (= res!990075 (and (= (size!48138 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48138 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48138 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!821079 () Bool)

(declare-fun b!1460165 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98607 (_ BitVec 32)) SeekEntryResult!11862)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98607 (_ BitVec 32)) SeekEntryResult!11862)

(assert (=> b!1460165 (= e!821079 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639702 lt!639705 mask!2687) (seekEntryOrOpen!0 lt!639702 lt!639705 mask!2687)))))

(declare-fun b!1460166 () Bool)

(declare-fun res!990068 () Bool)

(assert (=> b!1460166 (=> (not res!990068) (not e!821077))))

(assert (=> b!1460166 (= res!990068 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47587 a!2862) j!93) a!2862 mask!2687) lt!639704))))

(declare-fun b!1460167 () Bool)

(assert (=> b!1460167 (= e!821081 e!821076)))

(declare-fun res!990070 () Bool)

(assert (=> b!1460167 (=> (not res!990070) (not e!821076))))

(assert (=> b!1460167 (= res!990070 (= (select (store (arr!47587 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460167 (= lt!639705 (array!98608 (store (arr!47587 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48138 a!2862)))))

(declare-fun e!821080 () Bool)

(declare-fun b!1460168 () Bool)

(assert (=> b!1460168 (= e!821080 (or (= (select (arr!47587 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47587 a!2862) intermediateBeforeIndex!19) (select (arr!47587 a!2862) j!93))))))

(declare-fun res!990071 () Bool)

(assert (=> start!125242 (=> (not res!990071) (not e!821081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125242 (= res!990071 (validMask!0 mask!2687))))

(assert (=> start!125242 e!821081))

(assert (=> start!125242 true))

(declare-fun array_inv!36532 (array!98607) Bool)

(assert (=> start!125242 (array_inv!36532 a!2862)))

(declare-fun b!1460169 () Bool)

(declare-fun res!990072 () Bool)

(assert (=> b!1460169 (=> (not res!990072) (not e!821075))))

(assert (=> b!1460169 (= res!990072 e!821079)))

(declare-fun c!134561 () Bool)

(assert (=> b!1460169 (= c!134561 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460170 () Bool)

(assert (=> b!1460170 (= e!821075 (not true))))

(assert (=> b!1460170 e!821080))

(declare-fun res!990064 () Bool)

(assert (=> b!1460170 (=> (not res!990064) (not e!821080))))

(assert (=> b!1460170 (= res!990064 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49168 0))(
  ( (Unit!49169) )
))
(declare-fun lt!639706 () Unit!49168)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49168)

(assert (=> b!1460170 (= lt!639706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460171 () Bool)

(declare-fun res!990073 () Bool)

(assert (=> b!1460171 (=> (not res!990073) (not e!821081))))

(declare-datatypes ((List!34268 0))(
  ( (Nil!34265) (Cons!34264 (h!35614 (_ BitVec 64)) (t!48969 List!34268)) )
))
(declare-fun arrayNoDuplicates!0 (array!98607 (_ BitVec 32) List!34268) Bool)

(assert (=> b!1460171 (= res!990073 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34265))))

(declare-fun b!1460172 () Bool)

(assert (=> b!1460172 (= e!821079 (= lt!639703 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639702 lt!639705 mask!2687)))))

(declare-fun b!1460173 () Bool)

(declare-fun res!990063 () Bool)

(assert (=> b!1460173 (=> (not res!990063) (not e!821080))))

(assert (=> b!1460173 (= res!990063 (= (seekEntryOrOpen!0 (select (arr!47587 a!2862) j!93) a!2862 mask!2687) (Found!11862 j!93)))))

(assert (= (and start!125242 res!990071) b!1460164))

(assert (= (and b!1460164 res!990075) b!1460162))

(assert (= (and b!1460162 res!990062) b!1460157))

(assert (= (and b!1460157 res!990067) b!1460161))

(assert (= (and b!1460161 res!990066) b!1460171))

(assert (= (and b!1460171 res!990073) b!1460159))

(assert (= (and b!1460159 res!990065) b!1460167))

(assert (= (and b!1460167 res!990070) b!1460160))

(assert (= (and b!1460160 res!990061) b!1460166))

(assert (= (and b!1460166 res!990068) b!1460163))

(assert (= (and b!1460163 res!990069) b!1460169))

(assert (= (and b!1460169 c!134561) b!1460172))

(assert (= (and b!1460169 (not c!134561)) b!1460165))

(assert (= (and b!1460169 res!990072) b!1460158))

(assert (= (and b!1460158 res!990074) b!1460170))

(assert (= (and b!1460170 res!990064) b!1460173))

(assert (= (and b!1460173 res!990063) b!1460168))

(declare-fun m!1347909 () Bool)

(assert (=> b!1460160 m!1347909))

(assert (=> b!1460160 m!1347909))

(declare-fun m!1347911 () Bool)

(assert (=> b!1460160 m!1347911))

(assert (=> b!1460160 m!1347911))

(assert (=> b!1460160 m!1347909))

(declare-fun m!1347913 () Bool)

(assert (=> b!1460160 m!1347913))

(declare-fun m!1347915 () Bool)

(assert (=> b!1460168 m!1347915))

(assert (=> b!1460168 m!1347909))

(declare-fun m!1347917 () Bool)

(assert (=> b!1460162 m!1347917))

(assert (=> b!1460162 m!1347917))

(declare-fun m!1347919 () Bool)

(assert (=> b!1460162 m!1347919))

(declare-fun m!1347921 () Bool)

(assert (=> b!1460171 m!1347921))

(declare-fun m!1347923 () Bool)

(assert (=> b!1460172 m!1347923))

(assert (=> b!1460157 m!1347909))

(assert (=> b!1460157 m!1347909))

(declare-fun m!1347925 () Bool)

(assert (=> b!1460157 m!1347925))

(assert (=> b!1460173 m!1347909))

(assert (=> b!1460173 m!1347909))

(declare-fun m!1347927 () Bool)

(assert (=> b!1460173 m!1347927))

(declare-fun m!1347929 () Bool)

(assert (=> start!125242 m!1347929))

(declare-fun m!1347931 () Bool)

(assert (=> start!125242 m!1347931))

(assert (=> b!1460166 m!1347909))

(assert (=> b!1460166 m!1347909))

(declare-fun m!1347933 () Bool)

(assert (=> b!1460166 m!1347933))

(declare-fun m!1347935 () Bool)

(assert (=> b!1460163 m!1347935))

(assert (=> b!1460163 m!1347935))

(declare-fun m!1347937 () Bool)

(assert (=> b!1460163 m!1347937))

(declare-fun m!1347939 () Bool)

(assert (=> b!1460163 m!1347939))

(declare-fun m!1347941 () Bool)

(assert (=> b!1460163 m!1347941))

(declare-fun m!1347943 () Bool)

(assert (=> b!1460165 m!1347943))

(declare-fun m!1347945 () Bool)

(assert (=> b!1460165 m!1347945))

(declare-fun m!1347947 () Bool)

(assert (=> b!1460161 m!1347947))

(assert (=> b!1460167 m!1347939))

(declare-fun m!1347949 () Bool)

(assert (=> b!1460167 m!1347949))

(declare-fun m!1347951 () Bool)

(assert (=> b!1460170 m!1347951))

(declare-fun m!1347953 () Bool)

(assert (=> b!1460170 m!1347953))

(push 1)

