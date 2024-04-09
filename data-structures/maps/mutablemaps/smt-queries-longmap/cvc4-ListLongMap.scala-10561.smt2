; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124550 () Bool)

(assert start!124550)

(declare-fun b!1440646 () Bool)

(declare-fun res!973190 () Bool)

(declare-fun e!812258 () Bool)

(assert (=> b!1440646 (=> (not res!973190) (not e!812258))))

(declare-datatypes ((array!97915 0))(
  ( (array!97916 (arr!47241 (Array (_ BitVec 32) (_ BitVec 64))) (size!47792 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97915)

(declare-datatypes ((List!33922 0))(
  ( (Nil!33919) (Cons!33918 (h!35268 (_ BitVec 64)) (t!48623 List!33922)) )
))
(declare-fun arrayNoDuplicates!0 (array!97915 (_ BitVec 32) List!33922) Bool)

(assert (=> b!1440646 (= res!973190 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33919))))

(declare-fun b!1440647 () Bool)

(declare-fun e!812256 () Bool)

(assert (=> b!1440647 (= e!812258 e!812256)))

(declare-fun res!973191 () Bool)

(assert (=> b!1440647 (=> (not res!973191) (not e!812256))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11516 0))(
  ( (MissingZero!11516 (index!48455 (_ BitVec 32))) (Found!11516 (index!48456 (_ BitVec 32))) (Intermediate!11516 (undefined!12328 Bool) (index!48457 (_ BitVec 32)) (x!130176 (_ BitVec 32))) (Undefined!11516) (MissingVacant!11516 (index!48458 (_ BitVec 32))) )
))
(declare-fun lt!632950 () SeekEntryResult!11516)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97915 (_ BitVec 32)) SeekEntryResult!11516)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440647 (= res!973191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47241 a!2862) j!93) mask!2687) (select (arr!47241 a!2862) j!93) a!2862 mask!2687) lt!632950))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440647 (= lt!632950 (Intermediate!11516 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440648 () Bool)

(declare-fun res!973183 () Bool)

(assert (=> b!1440648 (=> (not res!973183) (not e!812258))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440648 (= res!973183 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47792 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47792 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47792 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47241 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440649 () Bool)

(declare-fun res!973182 () Bool)

(assert (=> b!1440649 (=> (not res!973182) (not e!812256))))

(assert (=> b!1440649 (= res!973182 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47241 a!2862) j!93) a!2862 mask!2687) lt!632950))))

(declare-fun b!1440650 () Bool)

(declare-fun res!973187 () Bool)

(assert (=> b!1440650 (=> (not res!973187) (not e!812258))))

(assert (=> b!1440650 (= res!973187 (and (= (size!47792 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47792 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47792 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440651 () Bool)

(declare-fun res!973185 () Bool)

(assert (=> b!1440651 (=> (not res!973185) (not e!812258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97915 (_ BitVec 32)) Bool)

(assert (=> b!1440651 (= res!973185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440652 () Bool)

(declare-fun res!973186 () Bool)

(assert (=> b!1440652 (=> (not res!973186) (not e!812256))))

(assert (=> b!1440652 (= res!973186 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47241 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47241 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97916 (store (arr!47241 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47792 a!2862)) mask!2687) (Intermediate!11516 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440653 () Bool)

(declare-fun res!973184 () Bool)

(assert (=> b!1440653 (=> (not res!973184) (not e!812258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440653 (= res!973184 (validKeyInArray!0 (select (arr!47241 a!2862) i!1006)))))

(declare-fun b!1440655 () Bool)

(declare-fun res!973188 () Bool)

(assert (=> b!1440655 (=> (not res!973188) (not e!812258))))

(assert (=> b!1440655 (= res!973188 (validKeyInArray!0 (select (arr!47241 a!2862) j!93)))))

(declare-fun b!1440654 () Bool)

(assert (=> b!1440654 (= e!812256 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun res!973189 () Bool)

(assert (=> start!124550 (=> (not res!973189) (not e!812258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124550 (= res!973189 (validMask!0 mask!2687))))

(assert (=> start!124550 e!812258))

(assert (=> start!124550 true))

(declare-fun array_inv!36186 (array!97915) Bool)

(assert (=> start!124550 (array_inv!36186 a!2862)))

(assert (= (and start!124550 res!973189) b!1440650))

(assert (= (and b!1440650 res!973187) b!1440653))

(assert (= (and b!1440653 res!973184) b!1440655))

(assert (= (and b!1440655 res!973188) b!1440651))

(assert (= (and b!1440651 res!973185) b!1440646))

(assert (= (and b!1440646 res!973190) b!1440648))

(assert (= (and b!1440648 res!973183) b!1440647))

(assert (= (and b!1440647 res!973191) b!1440649))

(assert (= (and b!1440649 res!973182) b!1440652))

(assert (= (and b!1440652 res!973186) b!1440654))

(declare-fun m!1329925 () Bool)

(assert (=> b!1440655 m!1329925))

(assert (=> b!1440655 m!1329925))

(declare-fun m!1329927 () Bool)

(assert (=> b!1440655 m!1329927))

(assert (=> b!1440647 m!1329925))

(assert (=> b!1440647 m!1329925))

(declare-fun m!1329929 () Bool)

(assert (=> b!1440647 m!1329929))

(assert (=> b!1440647 m!1329929))

(assert (=> b!1440647 m!1329925))

(declare-fun m!1329931 () Bool)

(assert (=> b!1440647 m!1329931))

(declare-fun m!1329933 () Bool)

(assert (=> start!124550 m!1329933))

(declare-fun m!1329935 () Bool)

(assert (=> start!124550 m!1329935))

(declare-fun m!1329937 () Bool)

(assert (=> b!1440646 m!1329937))

(declare-fun m!1329939 () Bool)

(assert (=> b!1440653 m!1329939))

(assert (=> b!1440653 m!1329939))

(declare-fun m!1329941 () Bool)

(assert (=> b!1440653 m!1329941))

(declare-fun m!1329943 () Bool)

(assert (=> b!1440648 m!1329943))

(declare-fun m!1329945 () Bool)

(assert (=> b!1440648 m!1329945))

(declare-fun m!1329947 () Bool)

(assert (=> b!1440651 m!1329947))

(assert (=> b!1440652 m!1329943))

(declare-fun m!1329949 () Bool)

(assert (=> b!1440652 m!1329949))

(assert (=> b!1440652 m!1329949))

(declare-fun m!1329951 () Bool)

(assert (=> b!1440652 m!1329951))

(assert (=> b!1440652 m!1329951))

(assert (=> b!1440652 m!1329949))

(declare-fun m!1329953 () Bool)

(assert (=> b!1440652 m!1329953))

(assert (=> b!1440649 m!1329925))

(assert (=> b!1440649 m!1329925))

(declare-fun m!1329955 () Bool)

(assert (=> b!1440649 m!1329955))

(push 1)

(assert (not b!1440649))

(assert (not b!1440653))

(assert (not b!1440651))

(assert (not b!1440647))

(assert (not start!124550))

(assert (not b!1440646))

(assert (not b!1440652))

(assert (not b!1440655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

