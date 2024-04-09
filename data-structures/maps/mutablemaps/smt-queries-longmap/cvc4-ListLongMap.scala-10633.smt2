; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124982 () Bool)

(assert start!124982)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1451916 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!817441 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98347 0))(
  ( (array!98348 (arr!47457 (Array (_ BitVec 32) (_ BitVec 64))) (size!48008 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98347)

(assert (=> b!1451916 (= e!817441 (and (or (= (select (arr!47457 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47457 a!2862) intermediateBeforeIndex!19) (select (arr!47457 a!2862) j!93))) (or (and (= (select (arr!47457 a!2862) index!646) (select (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47457 a!2862) index!646) (select (arr!47457 a!2862) j!93))) (= (select (arr!47457 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451917 () Bool)

(declare-fun e!817436 () Bool)

(declare-fun e!817442 () Bool)

(assert (=> b!1451917 (= e!817436 e!817442)))

(declare-fun res!983200 () Bool)

(assert (=> b!1451917 (=> (not res!983200) (not e!817442))))

(declare-datatypes ((SeekEntryResult!11732 0))(
  ( (MissingZero!11732 (index!49319 (_ BitVec 32))) (Found!11732 (index!49320 (_ BitVec 32))) (Intermediate!11732 (undefined!12544 Bool) (index!49321 (_ BitVec 32)) (x!130968 (_ BitVec 32))) (Undefined!11732) (MissingVacant!11732 (index!49322 (_ BitVec 32))) )
))
(declare-fun lt!636756 () SeekEntryResult!11732)

(assert (=> b!1451917 (= res!983200 (= lt!636756 (Intermediate!11732 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636755 () (_ BitVec 64))

(declare-fun lt!636753 () array!98347)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98347 (_ BitVec 32)) SeekEntryResult!11732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451917 (= lt!636756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636755 mask!2687) lt!636755 lt!636753 mask!2687))))

(assert (=> b!1451917 (= lt!636755 (select (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451918 () Bool)

(declare-fun e!817440 () Bool)

(assert (=> b!1451918 (= e!817440 (= lt!636756 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636755 lt!636753 mask!2687)))))

(declare-fun b!1451920 () Bool)

(assert (=> b!1451920 (= e!817442 (not (or (and (= (select (arr!47457 a!2862) index!646) (select (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47457 a!2862) index!646) (select (arr!47457 a!2862) j!93))) (= (select (arr!47457 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1451920 e!817441))

(declare-fun res!983204 () Bool)

(assert (=> b!1451920 (=> (not res!983204) (not e!817441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98347 (_ BitVec 32)) Bool)

(assert (=> b!1451920 (= res!983204 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48908 0))(
  ( (Unit!48909) )
))
(declare-fun lt!636754 () Unit!48908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48908)

(assert (=> b!1451920 (= lt!636754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451921 () Bool)

(declare-fun e!817437 () Bool)

(assert (=> b!1451921 (= e!817437 e!817436)))

(declare-fun res!983201 () Bool)

(assert (=> b!1451921 (=> (not res!983201) (not e!817436))))

(declare-fun lt!636757 () SeekEntryResult!11732)

(assert (=> b!1451921 (= res!983201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47457 a!2862) j!93) mask!2687) (select (arr!47457 a!2862) j!93) a!2862 mask!2687) lt!636757))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451921 (= lt!636757 (Intermediate!11732 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451922 () Bool)

(declare-fun res!983203 () Bool)

(assert (=> b!1451922 (=> (not res!983203) (not e!817441))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98347 (_ BitVec 32)) SeekEntryResult!11732)

(assert (=> b!1451922 (= res!983203 (= (seekEntryOrOpen!0 (select (arr!47457 a!2862) j!93) a!2862 mask!2687) (Found!11732 j!93)))))

(declare-fun b!1451923 () Bool)

(declare-fun res!983207 () Bool)

(declare-fun e!817439 () Bool)

(assert (=> b!1451923 (=> (not res!983207) (not e!817439))))

(assert (=> b!1451923 (= res!983207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451924 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98347 (_ BitVec 32)) SeekEntryResult!11732)

(assert (=> b!1451924 (= e!817440 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636755 lt!636753 mask!2687) (seekEntryOrOpen!0 lt!636755 lt!636753 mask!2687)))))

(declare-fun b!1451925 () Bool)

(assert (=> b!1451925 (= e!817439 e!817437)))

(declare-fun res!983208 () Bool)

(assert (=> b!1451925 (=> (not res!983208) (not e!817437))))

(assert (=> b!1451925 (= res!983208 (= (select (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451925 (= lt!636753 (array!98348 (store (arr!47457 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48008 a!2862)))))

(declare-fun b!1451926 () Bool)

(declare-fun res!983199 () Bool)

(assert (=> b!1451926 (=> (not res!983199) (not e!817439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451926 (= res!983199 (validKeyInArray!0 (select (arr!47457 a!2862) i!1006)))))

(declare-fun b!1451927 () Bool)

(declare-fun res!983196 () Bool)

(assert (=> b!1451927 (=> (not res!983196) (not e!817442))))

(assert (=> b!1451927 (= res!983196 e!817440)))

(declare-fun c!133874 () Bool)

(assert (=> b!1451927 (= c!133874 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451928 () Bool)

(declare-fun res!983197 () Bool)

(assert (=> b!1451928 (=> (not res!983197) (not e!817442))))

(assert (=> b!1451928 (= res!983197 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451929 () Bool)

(declare-fun res!983195 () Bool)

(assert (=> b!1451929 (=> (not res!983195) (not e!817439))))

(assert (=> b!1451929 (= res!983195 (and (= (size!48008 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48008 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48008 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451930 () Bool)

(declare-fun res!983206 () Bool)

(assert (=> b!1451930 (=> (not res!983206) (not e!817439))))

(assert (=> b!1451930 (= res!983206 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48008 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48008 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48008 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!983205 () Bool)

(assert (=> start!124982 (=> (not res!983205) (not e!817439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124982 (= res!983205 (validMask!0 mask!2687))))

(assert (=> start!124982 e!817439))

(assert (=> start!124982 true))

(declare-fun array_inv!36402 (array!98347) Bool)

(assert (=> start!124982 (array_inv!36402 a!2862)))

(declare-fun b!1451919 () Bool)

(declare-fun res!983202 () Bool)

(assert (=> b!1451919 (=> (not res!983202) (not e!817439))))

(declare-datatypes ((List!34138 0))(
  ( (Nil!34135) (Cons!34134 (h!35484 (_ BitVec 64)) (t!48839 List!34138)) )
))
(declare-fun arrayNoDuplicates!0 (array!98347 (_ BitVec 32) List!34138) Bool)

(assert (=> b!1451919 (= res!983202 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34135))))

(declare-fun b!1451931 () Bool)

(declare-fun res!983194 () Bool)

(assert (=> b!1451931 (=> (not res!983194) (not e!817439))))

(assert (=> b!1451931 (= res!983194 (validKeyInArray!0 (select (arr!47457 a!2862) j!93)))))

(declare-fun b!1451932 () Bool)

(declare-fun res!983198 () Bool)

(assert (=> b!1451932 (=> (not res!983198) (not e!817436))))

(assert (=> b!1451932 (= res!983198 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47457 a!2862) j!93) a!2862 mask!2687) lt!636757))))

(assert (= (and start!124982 res!983205) b!1451929))

(assert (= (and b!1451929 res!983195) b!1451926))

(assert (= (and b!1451926 res!983199) b!1451931))

(assert (= (and b!1451931 res!983194) b!1451923))

(assert (= (and b!1451923 res!983207) b!1451919))

(assert (= (and b!1451919 res!983202) b!1451930))

(assert (= (and b!1451930 res!983206) b!1451925))

(assert (= (and b!1451925 res!983208) b!1451921))

(assert (= (and b!1451921 res!983201) b!1451932))

(assert (= (and b!1451932 res!983198) b!1451917))

(assert (= (and b!1451917 res!983200) b!1451927))

(assert (= (and b!1451927 c!133874) b!1451918))

(assert (= (and b!1451927 (not c!133874)) b!1451924))

(assert (= (and b!1451927 res!983196) b!1451928))

(assert (= (and b!1451928 res!983197) b!1451920))

(assert (= (and b!1451920 res!983204) b!1451922))

(assert (= (and b!1451922 res!983203) b!1451916))

(declare-fun m!1340557 () Bool)

(assert (=> b!1451917 m!1340557))

(assert (=> b!1451917 m!1340557))

(declare-fun m!1340559 () Bool)

(assert (=> b!1451917 m!1340559))

(declare-fun m!1340561 () Bool)

(assert (=> b!1451917 m!1340561))

(declare-fun m!1340563 () Bool)

(assert (=> b!1451917 m!1340563))

(declare-fun m!1340565 () Bool)

(assert (=> b!1451923 m!1340565))

(declare-fun m!1340567 () Bool)

(assert (=> b!1451921 m!1340567))

(assert (=> b!1451921 m!1340567))

(declare-fun m!1340569 () Bool)

(assert (=> b!1451921 m!1340569))

(assert (=> b!1451921 m!1340569))

(assert (=> b!1451921 m!1340567))

(declare-fun m!1340571 () Bool)

(assert (=> b!1451921 m!1340571))

(declare-fun m!1340573 () Bool)

(assert (=> b!1451924 m!1340573))

(declare-fun m!1340575 () Bool)

(assert (=> b!1451924 m!1340575))

(assert (=> b!1451932 m!1340567))

(assert (=> b!1451932 m!1340567))

(declare-fun m!1340577 () Bool)

(assert (=> b!1451932 m!1340577))

(assert (=> b!1451925 m!1340561))

(declare-fun m!1340579 () Bool)

(assert (=> b!1451925 m!1340579))

(declare-fun m!1340581 () Bool)

(assert (=> b!1451920 m!1340581))

(assert (=> b!1451920 m!1340561))

(declare-fun m!1340583 () Bool)

(assert (=> b!1451920 m!1340583))

(declare-fun m!1340585 () Bool)

(assert (=> b!1451920 m!1340585))

(declare-fun m!1340587 () Bool)

(assert (=> b!1451920 m!1340587))

(assert (=> b!1451920 m!1340567))

(declare-fun m!1340589 () Bool)

(assert (=> b!1451919 m!1340589))

(assert (=> b!1451931 m!1340567))

(assert (=> b!1451931 m!1340567))

(declare-fun m!1340591 () Bool)

(assert (=> b!1451931 m!1340591))

(assert (=> b!1451922 m!1340567))

(assert (=> b!1451922 m!1340567))

(declare-fun m!1340593 () Bool)

(assert (=> b!1451922 m!1340593))

(declare-fun m!1340595 () Bool)

(assert (=> b!1451918 m!1340595))

(declare-fun m!1340597 () Bool)

(assert (=> b!1451926 m!1340597))

(assert (=> b!1451926 m!1340597))

(declare-fun m!1340599 () Bool)

(assert (=> b!1451926 m!1340599))

(assert (=> b!1451916 m!1340561))

(declare-fun m!1340601 () Bool)

(assert (=> b!1451916 m!1340601))

(assert (=> b!1451916 m!1340583))

(assert (=> b!1451916 m!1340585))

(assert (=> b!1451916 m!1340567))

(declare-fun m!1340603 () Bool)

(assert (=> start!124982 m!1340603))

(declare-fun m!1340605 () Bool)

(assert (=> start!124982 m!1340605))

(push 1)

(assert (not b!1451922))

(assert (not b!1451923))

