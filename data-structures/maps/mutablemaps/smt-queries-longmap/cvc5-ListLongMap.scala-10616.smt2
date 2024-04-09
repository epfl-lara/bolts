; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124876 () Bool)

(assert start!124876)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98241 0))(
  ( (array!98242 (arr!47404 (Array (_ BitVec 32) (_ BitVec 64))) (size!47955 (_ BitVec 32))) )
))
(declare-fun lt!635677 () array!98241)

(declare-fun lt!635675 () (_ BitVec 64))

(declare-fun b!1448911 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!815989 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11679 0))(
  ( (MissingZero!11679 (index!49107 (_ BitVec 32))) (Found!11679 (index!49108 (_ BitVec 32))) (Intermediate!11679 (undefined!12491 Bool) (index!49109 (_ BitVec 32)) (x!130779 (_ BitVec 32))) (Undefined!11679) (MissingVacant!11679 (index!49110 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98241 (_ BitVec 32)) SeekEntryResult!11679)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98241 (_ BitVec 32)) SeekEntryResult!11679)

(assert (=> b!1448911 (= e!815989 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635675 lt!635677 mask!2687) (seekEntryOrOpen!0 lt!635675 lt!635677 mask!2687)))))

(declare-fun b!1448912 () Bool)

(declare-fun res!980515 () Bool)

(declare-fun e!815991 () Bool)

(assert (=> b!1448912 (=> (not res!980515) (not e!815991))))

(declare-fun a!2862 () array!98241)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448912 (= res!980515 (validKeyInArray!0 (select (arr!47404 a!2862) i!1006)))))

(declare-fun b!1448913 () Bool)

(declare-fun res!980520 () Bool)

(declare-fun e!815988 () Bool)

(assert (=> b!1448913 (=> (not res!980520) (not e!815988))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448913 (= res!980520 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448914 () Bool)

(declare-fun res!980508 () Bool)

(assert (=> b!1448914 (=> (not res!980508) (not e!815991))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448914 (= res!980508 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47955 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47955 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47955 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!635678 () SeekEntryResult!11679)

(declare-fun b!1448915 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98241 (_ BitVec 32)) SeekEntryResult!11679)

(assert (=> b!1448915 (= e!815989 (= lt!635678 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635675 lt!635677 mask!2687)))))

(declare-fun b!1448916 () Bool)

(declare-fun e!815990 () Bool)

(assert (=> b!1448916 (= e!815990 e!815988)))

(declare-fun res!980517 () Bool)

(assert (=> b!1448916 (=> (not res!980517) (not e!815988))))

(assert (=> b!1448916 (= res!980517 (= lt!635678 (Intermediate!11679 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448916 (= lt!635678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635675 mask!2687) lt!635675 lt!635677 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448916 (= lt!635675 (select (store (arr!47404 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448917 () Bool)

(declare-fun res!980521 () Bool)

(assert (=> b!1448917 (=> (not res!980521) (not e!815991))))

(declare-datatypes ((List!34085 0))(
  ( (Nil!34082) (Cons!34081 (h!35431 (_ BitVec 64)) (t!48786 List!34085)) )
))
(declare-fun arrayNoDuplicates!0 (array!98241 (_ BitVec 32) List!34085) Bool)

(assert (=> b!1448917 (= res!980521 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34082))))

(declare-fun b!1448918 () Bool)

(declare-fun e!815987 () Bool)

(assert (=> b!1448918 (= e!815988 (not e!815987))))

(declare-fun res!980514 () Bool)

(assert (=> b!1448918 (=> res!980514 e!815987)))

(assert (=> b!1448918 (= res!980514 (or (and (= (select (arr!47404 a!2862) index!646) (select (store (arr!47404 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47404 a!2862) index!646) (select (arr!47404 a!2862) j!93))) (not (= (select (arr!47404 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47404 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815992 () Bool)

(assert (=> b!1448918 e!815992))

(declare-fun res!980512 () Bool)

(assert (=> b!1448918 (=> (not res!980512) (not e!815992))))

(declare-fun lt!635680 () SeekEntryResult!11679)

(assert (=> b!1448918 (= res!980512 (and (= lt!635680 (Found!11679 j!93)) (or (= (select (arr!47404 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47404 a!2862) intermediateBeforeIndex!19) (select (arr!47404 a!2862) j!93)))))))

(assert (=> b!1448918 (= lt!635680 (seekEntryOrOpen!0 (select (arr!47404 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98241 (_ BitVec 32)) Bool)

(assert (=> b!1448918 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48802 0))(
  ( (Unit!48803) )
))
(declare-fun lt!635674 () Unit!48802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48802)

(assert (=> b!1448918 (= lt!635674 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448919 () Bool)

(declare-fun e!815995 () Bool)

(assert (=> b!1448919 (= e!815995 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448920 () Bool)

(declare-fun e!815996 () Bool)

(assert (=> b!1448920 (= e!815991 e!815996)))

(declare-fun res!980511 () Bool)

(assert (=> b!1448920 (=> (not res!980511) (not e!815996))))

(assert (=> b!1448920 (= res!980511 (= (select (store (arr!47404 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448920 (= lt!635677 (array!98242 (store (arr!47404 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47955 a!2862)))))

(declare-fun b!1448921 () Bool)

(assert (=> b!1448921 (= e!815987 true)))

(declare-fun lt!635679 () SeekEntryResult!11679)

(assert (=> b!1448921 (= lt!635679 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47404 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!980523 () Bool)

(assert (=> start!124876 (=> (not res!980523) (not e!815991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124876 (= res!980523 (validMask!0 mask!2687))))

(assert (=> start!124876 e!815991))

(assert (=> start!124876 true))

(declare-fun array_inv!36349 (array!98241) Bool)

(assert (=> start!124876 (array_inv!36349 a!2862)))

(declare-fun b!1448922 () Bool)

(declare-fun res!980522 () Bool)

(assert (=> b!1448922 (=> (not res!980522) (not e!815988))))

(assert (=> b!1448922 (= res!980522 e!815989)))

(declare-fun c!133715 () Bool)

(assert (=> b!1448922 (= c!133715 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448923 () Bool)

(assert (=> b!1448923 (= e!815996 e!815990)))

(declare-fun res!980519 () Bool)

(assert (=> b!1448923 (=> (not res!980519) (not e!815990))))

(declare-fun lt!635676 () SeekEntryResult!11679)

(assert (=> b!1448923 (= res!980519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47404 a!2862) j!93) mask!2687) (select (arr!47404 a!2862) j!93) a!2862 mask!2687) lt!635676))))

(assert (=> b!1448923 (= lt!635676 (Intermediate!11679 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448924 () Bool)

(declare-fun res!980518 () Bool)

(assert (=> b!1448924 (=> (not res!980518) (not e!815991))))

(assert (=> b!1448924 (= res!980518 (and (= (size!47955 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47955 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47955 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448925 () Bool)

(declare-fun res!980513 () Bool)

(assert (=> b!1448925 (=> (not res!980513) (not e!815991))))

(assert (=> b!1448925 (= res!980513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448926 () Bool)

(declare-fun res!980510 () Bool)

(assert (=> b!1448926 (=> (not res!980510) (not e!815991))))

(assert (=> b!1448926 (= res!980510 (validKeyInArray!0 (select (arr!47404 a!2862) j!93)))))

(declare-fun b!1448927 () Bool)

(declare-fun res!980516 () Bool)

(assert (=> b!1448927 (=> (not res!980516) (not e!815990))))

(assert (=> b!1448927 (= res!980516 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47404 a!2862) j!93) a!2862 mask!2687) lt!635676))))

(declare-fun b!1448928 () Bool)

(declare-fun e!815994 () Bool)

(assert (=> b!1448928 (= e!815994 e!815995)))

(declare-fun res!980507 () Bool)

(assert (=> b!1448928 (=> (not res!980507) (not e!815995))))

(assert (=> b!1448928 (= res!980507 (= lt!635680 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47404 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448929 () Bool)

(assert (=> b!1448929 (= e!815992 e!815994)))

(declare-fun res!980509 () Bool)

(assert (=> b!1448929 (=> res!980509 e!815994)))

(assert (=> b!1448929 (= res!980509 (or (and (= (select (arr!47404 a!2862) index!646) (select (store (arr!47404 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47404 a!2862) index!646) (select (arr!47404 a!2862) j!93))) (not (= (select (arr!47404 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!124876 res!980523) b!1448924))

(assert (= (and b!1448924 res!980518) b!1448912))

(assert (= (and b!1448912 res!980515) b!1448926))

(assert (= (and b!1448926 res!980510) b!1448925))

(assert (= (and b!1448925 res!980513) b!1448917))

(assert (= (and b!1448917 res!980521) b!1448914))

(assert (= (and b!1448914 res!980508) b!1448920))

(assert (= (and b!1448920 res!980511) b!1448923))

(assert (= (and b!1448923 res!980519) b!1448927))

(assert (= (and b!1448927 res!980516) b!1448916))

(assert (= (and b!1448916 res!980517) b!1448922))

(assert (= (and b!1448922 c!133715) b!1448915))

(assert (= (and b!1448922 (not c!133715)) b!1448911))

(assert (= (and b!1448922 res!980522) b!1448913))

(assert (= (and b!1448913 res!980520) b!1448918))

(assert (= (and b!1448918 res!980512) b!1448929))

(assert (= (and b!1448929 (not res!980509)) b!1448928))

(assert (= (and b!1448928 res!980507) b!1448919))

(assert (= (and b!1448918 (not res!980514)) b!1448921))

(declare-fun m!1337703 () Bool)

(assert (=> b!1448912 m!1337703))

(assert (=> b!1448912 m!1337703))

(declare-fun m!1337705 () Bool)

(assert (=> b!1448912 m!1337705))

(declare-fun m!1337707 () Bool)

(assert (=> b!1448921 m!1337707))

(assert (=> b!1448921 m!1337707))

(declare-fun m!1337709 () Bool)

(assert (=> b!1448921 m!1337709))

(declare-fun m!1337711 () Bool)

(assert (=> b!1448916 m!1337711))

(assert (=> b!1448916 m!1337711))

(declare-fun m!1337713 () Bool)

(assert (=> b!1448916 m!1337713))

(declare-fun m!1337715 () Bool)

(assert (=> b!1448916 m!1337715))

(declare-fun m!1337717 () Bool)

(assert (=> b!1448916 m!1337717))

(declare-fun m!1337719 () Bool)

(assert (=> b!1448929 m!1337719))

(assert (=> b!1448929 m!1337715))

(declare-fun m!1337721 () Bool)

(assert (=> b!1448929 m!1337721))

(assert (=> b!1448929 m!1337707))

(declare-fun m!1337723 () Bool)

(assert (=> b!1448918 m!1337723))

(assert (=> b!1448918 m!1337715))

(declare-fun m!1337725 () Bool)

(assert (=> b!1448918 m!1337725))

(assert (=> b!1448918 m!1337721))

(assert (=> b!1448918 m!1337719))

(assert (=> b!1448918 m!1337707))

(declare-fun m!1337727 () Bool)

(assert (=> b!1448918 m!1337727))

(declare-fun m!1337729 () Bool)

(assert (=> b!1448918 m!1337729))

(assert (=> b!1448918 m!1337707))

(declare-fun m!1337731 () Bool)

(assert (=> start!124876 m!1337731))

(declare-fun m!1337733 () Bool)

(assert (=> start!124876 m!1337733))

(assert (=> b!1448927 m!1337707))

(assert (=> b!1448927 m!1337707))

(declare-fun m!1337735 () Bool)

(assert (=> b!1448927 m!1337735))

(declare-fun m!1337737 () Bool)

(assert (=> b!1448925 m!1337737))

(declare-fun m!1337739 () Bool)

(assert (=> b!1448915 m!1337739))

(declare-fun m!1337741 () Bool)

(assert (=> b!1448911 m!1337741))

(declare-fun m!1337743 () Bool)

(assert (=> b!1448911 m!1337743))

(declare-fun m!1337745 () Bool)

(assert (=> b!1448917 m!1337745))

(assert (=> b!1448926 m!1337707))

(assert (=> b!1448926 m!1337707))

(declare-fun m!1337747 () Bool)

(assert (=> b!1448926 m!1337747))

(assert (=> b!1448920 m!1337715))

(declare-fun m!1337749 () Bool)

(assert (=> b!1448920 m!1337749))

(assert (=> b!1448923 m!1337707))

(assert (=> b!1448923 m!1337707))

(declare-fun m!1337751 () Bool)

(assert (=> b!1448923 m!1337751))

(assert (=> b!1448923 m!1337751))

(assert (=> b!1448923 m!1337707))

(declare-fun m!1337753 () Bool)

(assert (=> b!1448923 m!1337753))

(assert (=> b!1448928 m!1337707))

(assert (=> b!1448928 m!1337707))

(declare-fun m!1337755 () Bool)

(assert (=> b!1448928 m!1337755))

(push 1)

