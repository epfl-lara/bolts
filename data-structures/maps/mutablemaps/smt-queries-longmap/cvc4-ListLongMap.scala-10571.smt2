; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124610 () Bool)

(assert start!124610)

(declare-fun b!1441811 () Bool)

(declare-fun res!974208 () Bool)

(declare-fun e!812743 () Bool)

(assert (=> b!1441811 (=> (not res!974208) (not e!812743))))

(declare-datatypes ((array!97975 0))(
  ( (array!97976 (arr!47271 (Array (_ BitVec 32) (_ BitVec 64))) (size!47822 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97975)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441811 (= res!974208 (validKeyInArray!0 (select (arr!47271 a!2862) i!1006)))))

(declare-fun b!1441812 () Bool)

(declare-fun res!974210 () Bool)

(assert (=> b!1441812 (=> (not res!974210) (not e!812743))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441812 (= res!974210 (and (= (size!47822 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47822 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47822 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441813 () Bool)

(declare-fun e!812744 () Bool)

(assert (=> b!1441813 (= e!812743 e!812744)))

(declare-fun res!974213 () Bool)

(assert (=> b!1441813 (=> (not res!974213) (not e!812744))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441813 (= res!974213 (= (select (store (arr!47271 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633336 () array!97975)

(assert (=> b!1441813 (= lt!633336 (array!97976 (store (arr!47271 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47822 a!2862)))))

(declare-fun b!1441814 () Bool)

(declare-fun res!974206 () Bool)

(assert (=> b!1441814 (=> (not res!974206) (not e!812743))))

(assert (=> b!1441814 (= res!974206 (validKeyInArray!0 (select (arr!47271 a!2862) j!93)))))

(declare-fun b!1441815 () Bool)

(declare-fun res!974211 () Bool)

(declare-fun e!812741 () Bool)

(assert (=> b!1441815 (=> (not res!974211) (not e!812741))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11546 0))(
  ( (MissingZero!11546 (index!48575 (_ BitVec 32))) (Found!11546 (index!48576 (_ BitVec 32))) (Intermediate!11546 (undefined!12358 Bool) (index!48577 (_ BitVec 32)) (x!130286 (_ BitVec 32))) (Undefined!11546) (MissingVacant!11546 (index!48578 (_ BitVec 32))) )
))
(declare-fun lt!633333 () SeekEntryResult!11546)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97975 (_ BitVec 32)) SeekEntryResult!11546)

(assert (=> b!1441815 (= res!974211 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47271 a!2862) j!93) a!2862 mask!2687) lt!633333))))

(declare-fun e!812739 () Bool)

(declare-fun lt!633337 () (_ BitVec 64))

(declare-fun b!1441816 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97975 (_ BitVec 32)) SeekEntryResult!11546)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97975 (_ BitVec 32)) SeekEntryResult!11546)

(assert (=> b!1441816 (= e!812739 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633337 lt!633336 mask!2687) (seekEntryOrOpen!0 lt!633337 lt!633336 mask!2687)))))

(declare-fun b!1441817 () Bool)

(declare-fun res!974214 () Bool)

(assert (=> b!1441817 (=> (not res!974214) (not e!812743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97975 (_ BitVec 32)) Bool)

(assert (=> b!1441817 (= res!974214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441819 () Bool)

(declare-fun res!974209 () Bool)

(declare-fun e!812742 () Bool)

(assert (=> b!1441819 (=> (not res!974209) (not e!812742))))

(assert (=> b!1441819 (= res!974209 e!812739)))

(declare-fun c!133316 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441819 (= c!133316 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441820 () Bool)

(assert (=> b!1441820 (= e!812742 (not true))))

(assert (=> b!1441820 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48536 0))(
  ( (Unit!48537) )
))
(declare-fun lt!633335 () Unit!48536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48536)

(assert (=> b!1441820 (= lt!633335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441821 () Bool)

(assert (=> b!1441821 (= e!812744 e!812741)))

(declare-fun res!974205 () Bool)

(assert (=> b!1441821 (=> (not res!974205) (not e!812741))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441821 (= res!974205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47271 a!2862) j!93) mask!2687) (select (arr!47271 a!2862) j!93) a!2862 mask!2687) lt!633333))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441821 (= lt!633333 (Intermediate!11546 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441822 () Bool)

(assert (=> b!1441822 (= e!812741 e!812742)))

(declare-fun res!974216 () Bool)

(assert (=> b!1441822 (=> (not res!974216) (not e!812742))))

(declare-fun lt!633334 () SeekEntryResult!11546)

(assert (=> b!1441822 (= res!974216 (= lt!633334 (Intermediate!11546 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441822 (= lt!633334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633337 mask!2687) lt!633337 lt!633336 mask!2687))))

(assert (=> b!1441822 (= lt!633337 (select (store (arr!47271 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441823 () Bool)

(declare-fun res!974207 () Bool)

(assert (=> b!1441823 (=> (not res!974207) (not e!812742))))

(assert (=> b!1441823 (= res!974207 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441818 () Bool)

(assert (=> b!1441818 (= e!812739 (= lt!633334 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633337 lt!633336 mask!2687)))))

(declare-fun res!974215 () Bool)

(assert (=> start!124610 (=> (not res!974215) (not e!812743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124610 (= res!974215 (validMask!0 mask!2687))))

(assert (=> start!124610 e!812743))

(assert (=> start!124610 true))

(declare-fun array_inv!36216 (array!97975) Bool)

(assert (=> start!124610 (array_inv!36216 a!2862)))

(declare-fun b!1441824 () Bool)

(declare-fun res!974217 () Bool)

(assert (=> b!1441824 (=> (not res!974217) (not e!812743))))

(assert (=> b!1441824 (= res!974217 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47822 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47822 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47822 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441825 () Bool)

(declare-fun res!974212 () Bool)

(assert (=> b!1441825 (=> (not res!974212) (not e!812743))))

(declare-datatypes ((List!33952 0))(
  ( (Nil!33949) (Cons!33948 (h!35298 (_ BitVec 64)) (t!48653 List!33952)) )
))
(declare-fun arrayNoDuplicates!0 (array!97975 (_ BitVec 32) List!33952) Bool)

(assert (=> b!1441825 (= res!974212 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33949))))

(assert (= (and start!124610 res!974215) b!1441812))

(assert (= (and b!1441812 res!974210) b!1441811))

(assert (= (and b!1441811 res!974208) b!1441814))

(assert (= (and b!1441814 res!974206) b!1441817))

(assert (= (and b!1441817 res!974214) b!1441825))

(assert (= (and b!1441825 res!974212) b!1441824))

(assert (= (and b!1441824 res!974217) b!1441813))

(assert (= (and b!1441813 res!974213) b!1441821))

(assert (= (and b!1441821 res!974205) b!1441815))

(assert (= (and b!1441815 res!974211) b!1441822))

(assert (= (and b!1441822 res!974216) b!1441819))

(assert (= (and b!1441819 c!133316) b!1441818))

(assert (= (and b!1441819 (not c!133316)) b!1441816))

(assert (= (and b!1441819 res!974209) b!1441823))

(assert (= (and b!1441823 res!974207) b!1441820))

(declare-fun m!1331061 () Bool)

(assert (=> b!1441822 m!1331061))

(assert (=> b!1441822 m!1331061))

(declare-fun m!1331063 () Bool)

(assert (=> b!1441822 m!1331063))

(declare-fun m!1331065 () Bool)

(assert (=> b!1441822 m!1331065))

(declare-fun m!1331067 () Bool)

(assert (=> b!1441822 m!1331067))

(declare-fun m!1331069 () Bool)

(assert (=> b!1441814 m!1331069))

(assert (=> b!1441814 m!1331069))

(declare-fun m!1331071 () Bool)

(assert (=> b!1441814 m!1331071))

(declare-fun m!1331073 () Bool)

(assert (=> b!1441818 m!1331073))

(assert (=> b!1441813 m!1331065))

(declare-fun m!1331075 () Bool)

(assert (=> b!1441813 m!1331075))

(declare-fun m!1331077 () Bool)

(assert (=> b!1441817 m!1331077))

(declare-fun m!1331079 () Bool)

(assert (=> b!1441820 m!1331079))

(declare-fun m!1331081 () Bool)

(assert (=> b!1441820 m!1331081))

(declare-fun m!1331083 () Bool)

(assert (=> b!1441811 m!1331083))

(assert (=> b!1441811 m!1331083))

(declare-fun m!1331085 () Bool)

(assert (=> b!1441811 m!1331085))

(declare-fun m!1331087 () Bool)

(assert (=> b!1441816 m!1331087))

(declare-fun m!1331089 () Bool)

(assert (=> b!1441816 m!1331089))

(declare-fun m!1331091 () Bool)

(assert (=> start!124610 m!1331091))

(declare-fun m!1331093 () Bool)

(assert (=> start!124610 m!1331093))

(assert (=> b!1441821 m!1331069))

(assert (=> b!1441821 m!1331069))

(declare-fun m!1331095 () Bool)

(assert (=> b!1441821 m!1331095))

(assert (=> b!1441821 m!1331095))

(assert (=> b!1441821 m!1331069))

(declare-fun m!1331097 () Bool)

(assert (=> b!1441821 m!1331097))

(declare-fun m!1331099 () Bool)

(assert (=> b!1441825 m!1331099))

(assert (=> b!1441815 m!1331069))

(assert (=> b!1441815 m!1331069))

(declare-fun m!1331101 () Bool)

(assert (=> b!1441815 m!1331101))

(push 1)

(assert (not b!1441817))

