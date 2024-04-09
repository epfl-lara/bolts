; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124498 () Bool)

(assert start!124498)

(declare-fun b!1439893 () Bool)

(declare-fun res!972431 () Bool)

(declare-fun e!812022 () Bool)

(assert (=> b!1439893 (=> (not res!972431) (not e!812022))))

(declare-datatypes ((array!97863 0))(
  ( (array!97864 (arr!47215 (Array (_ BitVec 32) (_ BitVec 64))) (size!47766 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97863)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97863 (_ BitVec 32)) Bool)

(assert (=> b!1439893 (= res!972431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439894 () Bool)

(declare-fun res!972434 () Bool)

(assert (=> b!1439894 (=> (not res!972434) (not e!812022))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439894 (= res!972434 (and (= (size!47766 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47766 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47766 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!972438 () Bool)

(assert (=> start!124498 (=> (not res!972438) (not e!812022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124498 (= res!972438 (validMask!0 mask!2687))))

(assert (=> start!124498 e!812022))

(assert (=> start!124498 true))

(declare-fun array_inv!36160 (array!97863) Bool)

(assert (=> start!124498 (array_inv!36160 a!2862)))

(declare-fun b!1439895 () Bool)

(declare-fun res!972436 () Bool)

(assert (=> b!1439895 (=> (not res!972436) (not e!812022))))

(declare-datatypes ((List!33896 0))(
  ( (Nil!33893) (Cons!33892 (h!35242 (_ BitVec 64)) (t!48597 List!33896)) )
))
(declare-fun arrayNoDuplicates!0 (array!97863 (_ BitVec 32) List!33896) Bool)

(assert (=> b!1439895 (= res!972436 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33893))))

(declare-fun b!1439896 () Bool)

(declare-fun res!972429 () Bool)

(declare-fun e!812023 () Bool)

(assert (=> b!1439896 (=> (not res!972429) (not e!812023))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11490 0))(
  ( (MissingZero!11490 (index!48351 (_ BitVec 32))) (Found!11490 (index!48352 (_ BitVec 32))) (Intermediate!11490 (undefined!12302 Bool) (index!48353 (_ BitVec 32)) (x!130086 (_ BitVec 32))) (Undefined!11490) (MissingVacant!11490 (index!48354 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97863 (_ BitVec 32)) SeekEntryResult!11490)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439896 (= res!972429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47215 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47215 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97864 (store (arr!47215 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47766 a!2862)) mask!2687) (Intermediate!11490 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439897 () Bool)

(declare-fun res!972437 () Bool)

(assert (=> b!1439897 (=> (not res!972437) (not e!812022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439897 (= res!972437 (validKeyInArray!0 (select (arr!47215 a!2862) i!1006)))))

(declare-fun b!1439898 () Bool)

(declare-fun res!972430 () Bool)

(assert (=> b!1439898 (=> (not res!972430) (not e!812022))))

(assert (=> b!1439898 (= res!972430 (validKeyInArray!0 (select (arr!47215 a!2862) j!93)))))

(declare-fun b!1439899 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1439899 (= e!812023 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439900 () Bool)

(declare-fun res!972432 () Bool)

(assert (=> b!1439900 (=> (not res!972432) (not e!812023))))

(declare-fun lt!632836 () SeekEntryResult!11490)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439900 (= res!972432 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47215 a!2862) j!93) a!2862 mask!2687) lt!632836))))

(declare-fun b!1439901 () Bool)

(declare-fun res!972433 () Bool)

(assert (=> b!1439901 (=> (not res!972433) (not e!812022))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439901 (= res!972433 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47766 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47766 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47766 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47215 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439902 () Bool)

(assert (=> b!1439902 (= e!812022 e!812023)))

(declare-fun res!972435 () Bool)

(assert (=> b!1439902 (=> (not res!972435) (not e!812023))))

(assert (=> b!1439902 (= res!972435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47215 a!2862) j!93) mask!2687) (select (arr!47215 a!2862) j!93) a!2862 mask!2687) lt!632836))))

(assert (=> b!1439902 (= lt!632836 (Intermediate!11490 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124498 res!972438) b!1439894))

(assert (= (and b!1439894 res!972434) b!1439897))

(assert (= (and b!1439897 res!972437) b!1439898))

(assert (= (and b!1439898 res!972430) b!1439893))

(assert (= (and b!1439893 res!972431) b!1439895))

(assert (= (and b!1439895 res!972436) b!1439901))

(assert (= (and b!1439901 res!972433) b!1439902))

(assert (= (and b!1439902 res!972435) b!1439900))

(assert (= (and b!1439900 res!972432) b!1439896))

(assert (= (and b!1439896 res!972429) b!1439899))

(declare-fun m!1329087 () Bool)

(assert (=> b!1439895 m!1329087))

(declare-fun m!1329089 () Bool)

(assert (=> b!1439898 m!1329089))

(assert (=> b!1439898 m!1329089))

(declare-fun m!1329091 () Bool)

(assert (=> b!1439898 m!1329091))

(declare-fun m!1329093 () Bool)

(assert (=> b!1439893 m!1329093))

(assert (=> b!1439900 m!1329089))

(assert (=> b!1439900 m!1329089))

(declare-fun m!1329095 () Bool)

(assert (=> b!1439900 m!1329095))

(declare-fun m!1329097 () Bool)

(assert (=> start!124498 m!1329097))

(declare-fun m!1329099 () Bool)

(assert (=> start!124498 m!1329099))

(declare-fun m!1329101 () Bool)

(assert (=> b!1439896 m!1329101))

(declare-fun m!1329103 () Bool)

(assert (=> b!1439896 m!1329103))

(assert (=> b!1439896 m!1329103))

(declare-fun m!1329105 () Bool)

(assert (=> b!1439896 m!1329105))

(assert (=> b!1439896 m!1329105))

(assert (=> b!1439896 m!1329103))

(declare-fun m!1329107 () Bool)

(assert (=> b!1439896 m!1329107))

(declare-fun m!1329109 () Bool)

(assert (=> b!1439897 m!1329109))

(assert (=> b!1439897 m!1329109))

(declare-fun m!1329111 () Bool)

(assert (=> b!1439897 m!1329111))

(assert (=> b!1439901 m!1329101))

(declare-fun m!1329113 () Bool)

(assert (=> b!1439901 m!1329113))

(assert (=> b!1439902 m!1329089))

(assert (=> b!1439902 m!1329089))

(declare-fun m!1329115 () Bool)

(assert (=> b!1439902 m!1329115))

(assert (=> b!1439902 m!1329115))

(assert (=> b!1439902 m!1329089))

(declare-fun m!1329117 () Bool)

(assert (=> b!1439902 m!1329117))

(push 1)

(assert (not b!1439897))

(assert (not b!1439893))

(assert (not start!124498))

(assert (not b!1439898))

(assert (not b!1439900))

