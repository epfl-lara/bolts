; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126578 () Bool)

(assert start!126578)

(declare-fun b!1484588 () Bool)

(declare-fun e!832379 () Bool)

(declare-fun e!832373 () Bool)

(assert (=> b!1484588 (= e!832379 (not e!832373))))

(declare-fun res!1009452 () Bool)

(assert (=> b!1484588 (=> res!1009452 e!832373)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99457 0))(
  ( (array!99458 (arr!48000 (Array (_ BitVec 32) (_ BitVec 64))) (size!48551 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99457)

(assert (=> b!1484588 (= res!1009452 (or (and (= (select (arr!48000 a!2862) index!646) (select (store (arr!48000 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48000 a!2862) index!646) (select (arr!48000 a!2862) j!93))) (= (select (arr!48000 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832372 () Bool)

(assert (=> b!1484588 e!832372))

(declare-fun res!1009456 () Bool)

(assert (=> b!1484588 (=> (not res!1009456) (not e!832372))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99457 (_ BitVec 32)) Bool)

(assert (=> b!1484588 (= res!1009456 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49814 0))(
  ( (Unit!49815) )
))
(declare-fun lt!647776 () Unit!49814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49814)

(assert (=> b!1484588 (= lt!647776 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484589 () Bool)

(declare-fun res!1009464 () Bool)

(declare-fun e!832377 () Bool)

(assert (=> b!1484589 (=> (not res!1009464) (not e!832377))))

(declare-datatypes ((SeekEntryResult!12263 0))(
  ( (MissingZero!12263 (index!51443 (_ BitVec 32))) (Found!12263 (index!51444 (_ BitVec 32))) (Intermediate!12263 (undefined!13075 Bool) (index!51445 (_ BitVec 32)) (x!133022 (_ BitVec 32))) (Undefined!12263) (MissingVacant!12263 (index!51446 (_ BitVec 32))) )
))
(declare-fun lt!647779 () SeekEntryResult!12263)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99457 (_ BitVec 32)) SeekEntryResult!12263)

(assert (=> b!1484589 (= res!1009464 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48000 a!2862) j!93) a!2862 mask!2687) lt!647779))))

(declare-fun b!1484590 () Bool)

(declare-fun res!1009468 () Bool)

(assert (=> b!1484590 (=> (not res!1009468) (not e!832379))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484590 (= res!1009468 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!647777 () (_ BitVec 64))

(declare-fun b!1484591 () Bool)

(declare-fun e!832375 () Bool)

(declare-fun lt!647782 () array!99457)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99457 (_ BitVec 32)) SeekEntryResult!12263)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99457 (_ BitVec 32)) SeekEntryResult!12263)

(assert (=> b!1484591 (= e!832375 (= (seekEntryOrOpen!0 lt!647777 lt!647782 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647777 lt!647782 mask!2687)))))

(declare-fun b!1484592 () Bool)

(declare-fun res!1009457 () Bool)

(declare-fun e!832374 () Bool)

(assert (=> b!1484592 (=> (not res!1009457) (not e!832374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484592 (= res!1009457 (validKeyInArray!0 (select (arr!48000 a!2862) j!93)))))

(declare-fun b!1484594 () Bool)

(declare-fun res!1009469 () Bool)

(assert (=> b!1484594 (=> (not res!1009469) (not e!832374))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484594 (= res!1009469 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48551 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48551 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48551 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484595 () Bool)

(declare-fun res!1009461 () Bool)

(assert (=> b!1484595 (=> (not res!1009461) (not e!832372))))

(assert (=> b!1484595 (= res!1009461 (= (seekEntryOrOpen!0 (select (arr!48000 a!2862) j!93) a!2862 mask!2687) (Found!12263 j!93)))))

(declare-fun b!1484596 () Bool)

(declare-fun res!1009459 () Bool)

(assert (=> b!1484596 (=> (not res!1009459) (not e!832374))))

(assert (=> b!1484596 (= res!1009459 (validKeyInArray!0 (select (arr!48000 a!2862) i!1006)))))

(declare-fun b!1484597 () Bool)

(declare-fun e!832376 () Bool)

(assert (=> b!1484597 (= e!832372 e!832376)))

(declare-fun res!1009453 () Bool)

(assert (=> b!1484597 (=> res!1009453 e!832376)))

(declare-fun lt!647781 () (_ BitVec 64))

(assert (=> b!1484597 (= res!1009453 (or (and (= (select (arr!48000 a!2862) index!646) lt!647781) (= (select (arr!48000 a!2862) index!646) (select (arr!48000 a!2862) j!93))) (= (select (arr!48000 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484597 (= lt!647781 (select (store (arr!48000 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484598 () Bool)

(declare-fun res!1009470 () Bool)

(assert (=> b!1484598 (=> (not res!1009470) (not e!832372))))

(assert (=> b!1484598 (= res!1009470 (or (= (select (arr!48000 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48000 a!2862) intermediateBeforeIndex!19) (select (arr!48000 a!2862) j!93))))))

(declare-fun b!1484599 () Bool)

(declare-fun res!1009454 () Bool)

(assert (=> b!1484599 (=> (not res!1009454) (not e!832374))))

(assert (=> b!1484599 (= res!1009454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484600 () Bool)

(assert (=> b!1484600 (= e!832376 e!832375)))

(declare-fun res!1009462 () Bool)

(assert (=> b!1484600 (=> (not res!1009462) (not e!832375))))

(assert (=> b!1484600 (= res!1009462 (and (= index!646 intermediateAfterIndex!19) (= lt!647781 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484601 () Bool)

(assert (=> b!1484601 (= e!832373 true)))

(declare-fun lt!647780 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484601 (= lt!647780 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484602 () Bool)

(assert (=> b!1484602 (= e!832377 e!832379)))

(declare-fun res!1009466 () Bool)

(assert (=> b!1484602 (=> (not res!1009466) (not e!832379))))

(declare-fun lt!647778 () SeekEntryResult!12263)

(assert (=> b!1484602 (= res!1009466 (= lt!647778 (Intermediate!12263 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484602 (= lt!647778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647777 mask!2687) lt!647777 lt!647782 mask!2687))))

(assert (=> b!1484602 (= lt!647777 (select (store (arr!48000 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!832370 () Bool)

(declare-fun b!1484603 () Bool)

(assert (=> b!1484603 (= e!832370 (= lt!647778 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647777 lt!647782 mask!2687)))))

(declare-fun b!1484604 () Bool)

(declare-fun e!832371 () Bool)

(assert (=> b!1484604 (= e!832371 e!832377)))

(declare-fun res!1009455 () Bool)

(assert (=> b!1484604 (=> (not res!1009455) (not e!832377))))

(assert (=> b!1484604 (= res!1009455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48000 a!2862) j!93) mask!2687) (select (arr!48000 a!2862) j!93) a!2862 mask!2687) lt!647779))))

(assert (=> b!1484604 (= lt!647779 (Intermediate!12263 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484593 () Bool)

(assert (=> b!1484593 (= e!832370 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647777 lt!647782 mask!2687) (seekEntryOrOpen!0 lt!647777 lt!647782 mask!2687)))))

(declare-fun res!1009465 () Bool)

(assert (=> start!126578 (=> (not res!1009465) (not e!832374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126578 (= res!1009465 (validMask!0 mask!2687))))

(assert (=> start!126578 e!832374))

(assert (=> start!126578 true))

(declare-fun array_inv!36945 (array!99457) Bool)

(assert (=> start!126578 (array_inv!36945 a!2862)))

(declare-fun b!1484605 () Bool)

(declare-fun res!1009458 () Bool)

(assert (=> b!1484605 (=> (not res!1009458) (not e!832379))))

(assert (=> b!1484605 (= res!1009458 e!832370)))

(declare-fun c!137093 () Bool)

(assert (=> b!1484605 (= c!137093 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484606 () Bool)

(assert (=> b!1484606 (= e!832374 e!832371)))

(declare-fun res!1009467 () Bool)

(assert (=> b!1484606 (=> (not res!1009467) (not e!832371))))

(assert (=> b!1484606 (= res!1009467 (= (select (store (arr!48000 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484606 (= lt!647782 (array!99458 (store (arr!48000 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48551 a!2862)))))

(declare-fun b!1484607 () Bool)

(declare-fun res!1009460 () Bool)

(assert (=> b!1484607 (=> (not res!1009460) (not e!832374))))

(declare-datatypes ((List!34681 0))(
  ( (Nil!34678) (Cons!34677 (h!36051 (_ BitVec 64)) (t!49382 List!34681)) )
))
(declare-fun arrayNoDuplicates!0 (array!99457 (_ BitVec 32) List!34681) Bool)

(assert (=> b!1484607 (= res!1009460 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34678))))

(declare-fun b!1484608 () Bool)

(declare-fun res!1009463 () Bool)

(assert (=> b!1484608 (=> (not res!1009463) (not e!832374))))

(assert (=> b!1484608 (= res!1009463 (and (= (size!48551 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48551 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48551 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126578 res!1009465) b!1484608))

(assert (= (and b!1484608 res!1009463) b!1484596))

(assert (= (and b!1484596 res!1009459) b!1484592))

(assert (= (and b!1484592 res!1009457) b!1484599))

(assert (= (and b!1484599 res!1009454) b!1484607))

(assert (= (and b!1484607 res!1009460) b!1484594))

(assert (= (and b!1484594 res!1009469) b!1484606))

(assert (= (and b!1484606 res!1009467) b!1484604))

(assert (= (and b!1484604 res!1009455) b!1484589))

(assert (= (and b!1484589 res!1009464) b!1484602))

(assert (= (and b!1484602 res!1009466) b!1484605))

(assert (= (and b!1484605 c!137093) b!1484603))

(assert (= (and b!1484605 (not c!137093)) b!1484593))

(assert (= (and b!1484605 res!1009458) b!1484590))

(assert (= (and b!1484590 res!1009468) b!1484588))

(assert (= (and b!1484588 res!1009456) b!1484595))

(assert (= (and b!1484595 res!1009461) b!1484598))

(assert (= (and b!1484598 res!1009470) b!1484597))

(assert (= (and b!1484597 (not res!1009453)) b!1484600))

(assert (= (and b!1484600 res!1009462) b!1484591))

(assert (= (and b!1484588 (not res!1009452)) b!1484601))

(declare-fun m!1369913 () Bool)

(assert (=> b!1484596 m!1369913))

(assert (=> b!1484596 m!1369913))

(declare-fun m!1369915 () Bool)

(assert (=> b!1484596 m!1369915))

(declare-fun m!1369917 () Bool)

(assert (=> b!1484597 m!1369917))

(declare-fun m!1369919 () Bool)

(assert (=> b!1484597 m!1369919))

(declare-fun m!1369921 () Bool)

(assert (=> b!1484597 m!1369921))

(declare-fun m!1369923 () Bool)

(assert (=> b!1484597 m!1369923))

(assert (=> b!1484589 m!1369919))

(assert (=> b!1484589 m!1369919))

(declare-fun m!1369925 () Bool)

(assert (=> b!1484589 m!1369925))

(declare-fun m!1369927 () Bool)

(assert (=> b!1484599 m!1369927))

(declare-fun m!1369929 () Bool)

(assert (=> b!1484601 m!1369929))

(declare-fun m!1369931 () Bool)

(assert (=> b!1484588 m!1369931))

(assert (=> b!1484588 m!1369921))

(assert (=> b!1484588 m!1369923))

(assert (=> b!1484588 m!1369917))

(declare-fun m!1369933 () Bool)

(assert (=> b!1484588 m!1369933))

(assert (=> b!1484588 m!1369919))

(declare-fun m!1369935 () Bool)

(assert (=> b!1484603 m!1369935))

(declare-fun m!1369937 () Bool)

(assert (=> b!1484607 m!1369937))

(declare-fun m!1369939 () Bool)

(assert (=> start!126578 m!1369939))

(declare-fun m!1369941 () Bool)

(assert (=> start!126578 m!1369941))

(declare-fun m!1369943 () Bool)

(assert (=> b!1484602 m!1369943))

(assert (=> b!1484602 m!1369943))

(declare-fun m!1369945 () Bool)

(assert (=> b!1484602 m!1369945))

(assert (=> b!1484602 m!1369921))

(declare-fun m!1369947 () Bool)

(assert (=> b!1484602 m!1369947))

(assert (=> b!1484592 m!1369919))

(assert (=> b!1484592 m!1369919))

(declare-fun m!1369949 () Bool)

(assert (=> b!1484592 m!1369949))

(assert (=> b!1484595 m!1369919))

(assert (=> b!1484595 m!1369919))

(declare-fun m!1369951 () Bool)

(assert (=> b!1484595 m!1369951))

(assert (=> b!1484606 m!1369921))

(declare-fun m!1369953 () Bool)

(assert (=> b!1484606 m!1369953))

(assert (=> b!1484604 m!1369919))

(assert (=> b!1484604 m!1369919))

(declare-fun m!1369955 () Bool)

(assert (=> b!1484604 m!1369955))

(assert (=> b!1484604 m!1369955))

(assert (=> b!1484604 m!1369919))

(declare-fun m!1369957 () Bool)

(assert (=> b!1484604 m!1369957))

(declare-fun m!1369959 () Bool)

(assert (=> b!1484598 m!1369959))

(assert (=> b!1484598 m!1369919))

(declare-fun m!1369961 () Bool)

(assert (=> b!1484593 m!1369961))

(declare-fun m!1369963 () Bool)

(assert (=> b!1484593 m!1369963))

(assert (=> b!1484591 m!1369963))

(assert (=> b!1484591 m!1369961))

(push 1)

