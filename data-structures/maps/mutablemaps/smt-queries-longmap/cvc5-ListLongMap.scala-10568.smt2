; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124588 () Bool)

(assert start!124588)

(declare-fun e!812545 () Bool)

(declare-fun b!1441330 () Bool)

(declare-datatypes ((array!97953 0))(
  ( (array!97954 (arr!47260 (Array (_ BitVec 32) (_ BitVec 64))) (size!47811 (_ BitVec 32))) )
))
(declare-fun lt!633171 () array!97953)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633168 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11535 0))(
  ( (MissingZero!11535 (index!48531 (_ BitVec 32))) (Found!11535 (index!48532 (_ BitVec 32))) (Intermediate!11535 (undefined!12347 Bool) (index!48533 (_ BitVec 32)) (x!130251 (_ BitVec 32))) (Undefined!11535) (MissingVacant!11535 (index!48534 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97953 (_ BitVec 32)) SeekEntryResult!11535)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97953 (_ BitVec 32)) SeekEntryResult!11535)

(assert (=> b!1441330 (= e!812545 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633168 lt!633171 mask!2687) (seekEntryOrOpen!0 lt!633168 lt!633171 mask!2687))))))

(declare-fun b!1441331 () Bool)

(declare-fun res!973792 () Bool)

(declare-fun e!812544 () Bool)

(assert (=> b!1441331 (=> (not res!973792) (not e!812544))))

(declare-fun a!2862 () array!97953)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97953 (_ BitVec 32)) Bool)

(assert (=> b!1441331 (= res!973792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441332 () Bool)

(declare-fun e!812543 () Bool)

(assert (=> b!1441332 (= e!812544 e!812543)))

(declare-fun res!973794 () Bool)

(assert (=> b!1441332 (=> (not res!973794) (not e!812543))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441332 (= res!973794 (= (select (store (arr!47260 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441332 (= lt!633171 (array!97954 (store (arr!47260 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47811 a!2862)))))

(declare-fun b!1441333 () Bool)

(declare-fun res!973795 () Bool)

(assert (=> b!1441333 (=> (not res!973795) (not e!812544))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441333 (= res!973795 (validKeyInArray!0 (select (arr!47260 a!2862) j!93)))))

(declare-fun b!1441334 () Bool)

(declare-fun e!812541 () Bool)

(assert (=> b!1441334 (= e!812541 false)))

(declare-fun lt!633172 () Bool)

(assert (=> b!1441334 (= lt!633172 e!812545)))

(declare-fun c!133283 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441334 (= c!133283 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441335 () Bool)

(declare-fun e!812542 () Bool)

(assert (=> b!1441335 (= e!812542 e!812541)))

(declare-fun res!973793 () Bool)

(assert (=> b!1441335 (=> (not res!973793) (not e!812541))))

(declare-fun lt!633169 () SeekEntryResult!11535)

(assert (=> b!1441335 (= res!973793 (= lt!633169 (Intermediate!11535 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97953 (_ BitVec 32)) SeekEntryResult!11535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441335 (= lt!633169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633168 mask!2687) lt!633168 lt!633171 mask!2687))))

(assert (=> b!1441335 (= lt!633168 (select (store (arr!47260 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441336 () Bool)

(assert (=> b!1441336 (= e!812543 e!812542)))

(declare-fun res!973797 () Bool)

(assert (=> b!1441336 (=> (not res!973797) (not e!812542))))

(declare-fun lt!633170 () SeekEntryResult!11535)

(assert (=> b!1441336 (= res!973797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47260 a!2862) j!93) mask!2687) (select (arr!47260 a!2862) j!93) a!2862 mask!2687) lt!633170))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441336 (= lt!633170 (Intermediate!11535 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!973799 () Bool)

(assert (=> start!124588 (=> (not res!973799) (not e!812544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124588 (= res!973799 (validMask!0 mask!2687))))

(assert (=> start!124588 e!812544))

(assert (=> start!124588 true))

(declare-fun array_inv!36205 (array!97953) Bool)

(assert (=> start!124588 (array_inv!36205 a!2862)))

(declare-fun b!1441337 () Bool)

(declare-fun res!973798 () Bool)

(assert (=> b!1441337 (=> (not res!973798) (not e!812544))))

(declare-datatypes ((List!33941 0))(
  ( (Nil!33938) (Cons!33937 (h!35287 (_ BitVec 64)) (t!48642 List!33941)) )
))
(declare-fun arrayNoDuplicates!0 (array!97953 (_ BitVec 32) List!33941) Bool)

(assert (=> b!1441337 (= res!973798 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33938))))

(declare-fun b!1441338 () Bool)

(declare-fun res!973790 () Bool)

(assert (=> b!1441338 (=> (not res!973790) (not e!812544))))

(assert (=> b!1441338 (= res!973790 (validKeyInArray!0 (select (arr!47260 a!2862) i!1006)))))

(declare-fun b!1441339 () Bool)

(declare-fun res!973800 () Bool)

(assert (=> b!1441339 (=> (not res!973800) (not e!812544))))

(assert (=> b!1441339 (= res!973800 (and (= (size!47811 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47811 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47811 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441340 () Bool)

(declare-fun res!973796 () Bool)

(assert (=> b!1441340 (=> (not res!973796) (not e!812542))))

(assert (=> b!1441340 (= res!973796 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47260 a!2862) j!93) a!2862 mask!2687) lt!633170))))

(declare-fun b!1441341 () Bool)

(assert (=> b!1441341 (= e!812545 (not (= lt!633169 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633168 lt!633171 mask!2687))))))

(declare-fun b!1441342 () Bool)

(declare-fun res!973791 () Bool)

(assert (=> b!1441342 (=> (not res!973791) (not e!812544))))

(assert (=> b!1441342 (= res!973791 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47811 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47811 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47811 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124588 res!973799) b!1441339))

(assert (= (and b!1441339 res!973800) b!1441338))

(assert (= (and b!1441338 res!973790) b!1441333))

(assert (= (and b!1441333 res!973795) b!1441331))

(assert (= (and b!1441331 res!973792) b!1441337))

(assert (= (and b!1441337 res!973798) b!1441342))

(assert (= (and b!1441342 res!973791) b!1441332))

(assert (= (and b!1441332 res!973794) b!1441336))

(assert (= (and b!1441336 res!973797) b!1441340))

(assert (= (and b!1441340 res!973796) b!1441335))

(assert (= (and b!1441335 res!973793) b!1441334))

(assert (= (and b!1441334 c!133283) b!1441341))

(assert (= (and b!1441334 (not c!133283)) b!1441330))

(declare-fun m!1330611 () Bool)

(assert (=> b!1441335 m!1330611))

(assert (=> b!1441335 m!1330611))

(declare-fun m!1330613 () Bool)

(assert (=> b!1441335 m!1330613))

(declare-fun m!1330615 () Bool)

(assert (=> b!1441335 m!1330615))

(declare-fun m!1330617 () Bool)

(assert (=> b!1441335 m!1330617))

(declare-fun m!1330619 () Bool)

(assert (=> b!1441330 m!1330619))

(declare-fun m!1330621 () Bool)

(assert (=> b!1441330 m!1330621))

(declare-fun m!1330623 () Bool)

(assert (=> b!1441331 m!1330623))

(declare-fun m!1330625 () Bool)

(assert (=> b!1441336 m!1330625))

(assert (=> b!1441336 m!1330625))

(declare-fun m!1330627 () Bool)

(assert (=> b!1441336 m!1330627))

(assert (=> b!1441336 m!1330627))

(assert (=> b!1441336 m!1330625))

(declare-fun m!1330629 () Bool)

(assert (=> b!1441336 m!1330629))

(assert (=> b!1441332 m!1330615))

(declare-fun m!1330631 () Bool)

(assert (=> b!1441332 m!1330631))

(declare-fun m!1330633 () Bool)

(assert (=> start!124588 m!1330633))

(declare-fun m!1330635 () Bool)

(assert (=> start!124588 m!1330635))

(assert (=> b!1441333 m!1330625))

(assert (=> b!1441333 m!1330625))

(declare-fun m!1330637 () Bool)

(assert (=> b!1441333 m!1330637))

(declare-fun m!1330639 () Bool)

(assert (=> b!1441341 m!1330639))

(declare-fun m!1330641 () Bool)

(assert (=> b!1441337 m!1330641))

(assert (=> b!1441340 m!1330625))

(assert (=> b!1441340 m!1330625))

(declare-fun m!1330643 () Bool)

(assert (=> b!1441340 m!1330643))

(declare-fun m!1330645 () Bool)

(assert (=> b!1441338 m!1330645))

(assert (=> b!1441338 m!1330645))

(declare-fun m!1330647 () Bool)

(assert (=> b!1441338 m!1330647))

(push 1)

