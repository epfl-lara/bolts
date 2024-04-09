; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124470 () Bool)

(assert start!124470)

(declare-fun b!1439486 () Bool)

(declare-fun res!972030 () Bool)

(declare-fun e!811896 () Bool)

(assert (=> b!1439486 (=> (not res!972030) (not e!811896))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11476 0))(
  ( (MissingZero!11476 (index!48295 (_ BitVec 32))) (Found!11476 (index!48296 (_ BitVec 32))) (Intermediate!11476 (undefined!12288 Bool) (index!48297 (_ BitVec 32)) (x!130032 (_ BitVec 32))) (Undefined!11476) (MissingVacant!11476 (index!48298 (_ BitVec 32))) )
))
(declare-fun lt!632773 () SeekEntryResult!11476)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97835 0))(
  ( (array!97836 (arr!47201 (Array (_ BitVec 32) (_ BitVec 64))) (size!47752 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97835)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97835 (_ BitVec 32)) SeekEntryResult!11476)

(assert (=> b!1439486 (= res!972030 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47201 a!2862) j!93) a!2862 mask!2687) lt!632773))))

(declare-fun res!972028 () Bool)

(declare-fun e!811898 () Bool)

(assert (=> start!124470 (=> (not res!972028) (not e!811898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124470 (= res!972028 (validMask!0 mask!2687))))

(assert (=> start!124470 e!811898))

(assert (=> start!124470 true))

(declare-fun array_inv!36146 (array!97835) Bool)

(assert (=> start!124470 (array_inv!36146 a!2862)))

(declare-fun b!1439487 () Bool)

(declare-fun res!972026 () Bool)

(assert (=> b!1439487 (=> (not res!972026) (not e!811898))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439487 (= res!972026 (and (= (size!47752 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47752 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47752 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439488 () Bool)

(assert (=> b!1439488 (= e!811896 false)))

(declare-fun lt!632772 () SeekEntryResult!11476)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439488 (= lt!632772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47201 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47201 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97836 (store (arr!47201 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47752 a!2862)) mask!2687))))

(declare-fun b!1439489 () Bool)

(assert (=> b!1439489 (= e!811898 e!811896)))

(declare-fun res!972027 () Bool)

(assert (=> b!1439489 (=> (not res!972027) (not e!811896))))

(assert (=> b!1439489 (= res!972027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47201 a!2862) j!93) mask!2687) (select (arr!47201 a!2862) j!93) a!2862 mask!2687) lt!632773))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439489 (= lt!632773 (Intermediate!11476 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439490 () Bool)

(declare-fun res!972029 () Bool)

(assert (=> b!1439490 (=> (not res!972029) (not e!811898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439490 (= res!972029 (validKeyInArray!0 (select (arr!47201 a!2862) i!1006)))))

(declare-fun b!1439491 () Bool)

(declare-fun res!972024 () Bool)

(assert (=> b!1439491 (=> (not res!972024) (not e!811898))))

(declare-datatypes ((List!33882 0))(
  ( (Nil!33879) (Cons!33878 (h!35228 (_ BitVec 64)) (t!48583 List!33882)) )
))
(declare-fun arrayNoDuplicates!0 (array!97835 (_ BitVec 32) List!33882) Bool)

(assert (=> b!1439491 (= res!972024 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33879))))

(declare-fun b!1439492 () Bool)

(declare-fun res!972025 () Bool)

(assert (=> b!1439492 (=> (not res!972025) (not e!811898))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439492 (= res!972025 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47752 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47752 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47752 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47201 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439493 () Bool)

(declare-fun res!972023 () Bool)

(assert (=> b!1439493 (=> (not res!972023) (not e!811898))))

(assert (=> b!1439493 (= res!972023 (validKeyInArray!0 (select (arr!47201 a!2862) j!93)))))

(declare-fun b!1439494 () Bool)

(declare-fun res!972022 () Bool)

(assert (=> b!1439494 (=> (not res!972022) (not e!811898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97835 (_ BitVec 32)) Bool)

(assert (=> b!1439494 (= res!972022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124470 res!972028) b!1439487))

(assert (= (and b!1439487 res!972026) b!1439490))

(assert (= (and b!1439490 res!972029) b!1439493))

(assert (= (and b!1439493 res!972023) b!1439494))

(assert (= (and b!1439494 res!972022) b!1439491))

(assert (= (and b!1439491 res!972024) b!1439492))

(assert (= (and b!1439492 res!972025) b!1439489))

(assert (= (and b!1439489 res!972027) b!1439486))

(assert (= (and b!1439486 res!972030) b!1439488))

(declare-fun m!1328633 () Bool)

(assert (=> b!1439492 m!1328633))

(declare-fun m!1328635 () Bool)

(assert (=> b!1439492 m!1328635))

(declare-fun m!1328637 () Bool)

(assert (=> b!1439490 m!1328637))

(assert (=> b!1439490 m!1328637))

(declare-fun m!1328639 () Bool)

(assert (=> b!1439490 m!1328639))

(declare-fun m!1328641 () Bool)

(assert (=> start!124470 m!1328641))

(declare-fun m!1328643 () Bool)

(assert (=> start!124470 m!1328643))

(declare-fun m!1328645 () Bool)

(assert (=> b!1439494 m!1328645))

(assert (=> b!1439488 m!1328633))

(declare-fun m!1328647 () Bool)

(assert (=> b!1439488 m!1328647))

(assert (=> b!1439488 m!1328647))

(declare-fun m!1328649 () Bool)

(assert (=> b!1439488 m!1328649))

(assert (=> b!1439488 m!1328649))

(assert (=> b!1439488 m!1328647))

(declare-fun m!1328651 () Bool)

(assert (=> b!1439488 m!1328651))

(declare-fun m!1328653 () Bool)

(assert (=> b!1439489 m!1328653))

(assert (=> b!1439489 m!1328653))

(declare-fun m!1328655 () Bool)

(assert (=> b!1439489 m!1328655))

(assert (=> b!1439489 m!1328655))

(assert (=> b!1439489 m!1328653))

(declare-fun m!1328657 () Bool)

(assert (=> b!1439489 m!1328657))

(declare-fun m!1328659 () Bool)

(assert (=> b!1439491 m!1328659))

(assert (=> b!1439493 m!1328653))

(assert (=> b!1439493 m!1328653))

(declare-fun m!1328661 () Bool)

(assert (=> b!1439493 m!1328661))

(assert (=> b!1439486 m!1328653))

(assert (=> b!1439486 m!1328653))

(declare-fun m!1328663 () Bool)

(assert (=> b!1439486 m!1328663))

(check-sat (not start!124470) (not b!1439489) (not b!1439491) (not b!1439488) (not b!1439486) (not b!1439490) (not b!1439493) (not b!1439494))
