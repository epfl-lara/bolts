; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126580 () Bool)

(assert start!126580)

(declare-fun b!1484651 () Bool)

(declare-fun res!1009521 () Bool)

(declare-fun e!832404 () Bool)

(assert (=> b!1484651 (=> (not res!1009521) (not e!832404))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99459 0))(
  ( (array!99460 (arr!48001 (Array (_ BitVec 32) (_ BitVec 64))) (size!48552 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99459)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484651 (= res!1009521 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48552 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48552 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48552 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484652 () Bool)

(declare-fun e!832408 () Bool)

(assert (=> b!1484652 (= e!832404 e!832408)))

(declare-fun res!1009527 () Bool)

(assert (=> b!1484652 (=> (not res!1009527) (not e!832408))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484652 (= res!1009527 (= (select (store (arr!48001 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647801 () array!99459)

(assert (=> b!1484652 (= lt!647801 (array!99460 (store (arr!48001 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48552 a!2862)))))

(declare-fun b!1484653 () Bool)

(declare-fun res!1009514 () Bool)

(declare-fun e!832403 () Bool)

(assert (=> b!1484653 (=> (not res!1009514) (not e!832403))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1484653 (= res!1009514 (or (= (select (arr!48001 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48001 a!2862) intermediateBeforeIndex!19) (select (arr!48001 a!2862) j!93))))))

(declare-fun b!1484654 () Bool)

(declare-fun res!1009523 () Bool)

(declare-fun e!832400 () Bool)

(assert (=> b!1484654 (=> (not res!1009523) (not e!832400))))

(declare-fun e!832407 () Bool)

(assert (=> b!1484654 (= res!1009523 e!832407)))

(declare-fun c!137096 () Bool)

(assert (=> b!1484654 (= c!137096 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484655 () Bool)

(declare-fun res!1009509 () Bool)

(assert (=> b!1484655 (=> (not res!1009509) (not e!832404))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1484655 (= res!1009509 (and (= (size!48552 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48552 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48552 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1009520 () Bool)

(assert (=> start!126580 (=> (not res!1009520) (not e!832404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126580 (= res!1009520 (validMask!0 mask!2687))))

(assert (=> start!126580 e!832404))

(assert (=> start!126580 true))

(declare-fun array_inv!36946 (array!99459) Bool)

(assert (=> start!126580 (array_inv!36946 a!2862)))

(declare-fun b!1484656 () Bool)

(declare-fun lt!647797 () (_ BitVec 64))

(declare-fun e!832406 () Bool)

(declare-datatypes ((SeekEntryResult!12264 0))(
  ( (MissingZero!12264 (index!51447 (_ BitVec 32))) (Found!12264 (index!51448 (_ BitVec 32))) (Intermediate!12264 (undefined!13076 Bool) (index!51449 (_ BitVec 32)) (x!133031 (_ BitVec 32))) (Undefined!12264) (MissingVacant!12264 (index!51450 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99459 (_ BitVec 32)) SeekEntryResult!12264)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99459 (_ BitVec 32)) SeekEntryResult!12264)

(assert (=> b!1484656 (= e!832406 (= (seekEntryOrOpen!0 lt!647797 lt!647801 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647797 lt!647801 mask!2687)))))

(declare-fun b!1484657 () Bool)

(declare-fun res!1009512 () Bool)

(assert (=> b!1484657 (=> (not res!1009512) (not e!832404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99459 (_ BitVec 32)) Bool)

(assert (=> b!1484657 (= res!1009512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484658 () Bool)

(declare-fun e!832401 () Bool)

(assert (=> b!1484658 (= e!832403 e!832401)))

(declare-fun res!1009524 () Bool)

(assert (=> b!1484658 (=> res!1009524 e!832401)))

(declare-fun lt!647803 () (_ BitVec 64))

(assert (=> b!1484658 (= res!1009524 (or (and (= (select (arr!48001 a!2862) index!646) lt!647803) (= (select (arr!48001 a!2862) index!646) (select (arr!48001 a!2862) j!93))) (= (select (arr!48001 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484658 (= lt!647803 (select (store (arr!48001 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484659 () Bool)

(declare-fun e!832402 () Bool)

(assert (=> b!1484659 (= e!832402 true)))

(declare-fun lt!647800 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484659 (= lt!647800 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484660 () Bool)

(assert (=> b!1484660 (= e!832401 e!832406)))

(declare-fun res!1009516 () Bool)

(assert (=> b!1484660 (=> (not res!1009516) (not e!832406))))

(assert (=> b!1484660 (= res!1009516 (and (= index!646 intermediateAfterIndex!19) (= lt!647803 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484661 () Bool)

(declare-fun res!1009510 () Bool)

(declare-fun e!832409 () Bool)

(assert (=> b!1484661 (=> (not res!1009510) (not e!832409))))

(declare-fun lt!647802 () SeekEntryResult!12264)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99459 (_ BitVec 32)) SeekEntryResult!12264)

(assert (=> b!1484661 (= res!1009510 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48001 a!2862) j!93) a!2862 mask!2687) lt!647802))))

(declare-fun b!1484662 () Bool)

(declare-fun res!1009526 () Bool)

(assert (=> b!1484662 (=> (not res!1009526) (not e!832404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484662 (= res!1009526 (validKeyInArray!0 (select (arr!48001 a!2862) i!1006)))))

(declare-fun b!1484663 () Bool)

(assert (=> b!1484663 (= e!832409 e!832400)))

(declare-fun res!1009513 () Bool)

(assert (=> b!1484663 (=> (not res!1009513) (not e!832400))))

(declare-fun lt!647798 () SeekEntryResult!12264)

(assert (=> b!1484663 (= res!1009513 (= lt!647798 (Intermediate!12264 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484663 (= lt!647798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647797 mask!2687) lt!647797 lt!647801 mask!2687))))

(assert (=> b!1484663 (= lt!647797 (select (store (arr!48001 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484664 () Bool)

(assert (=> b!1484664 (= e!832400 (not e!832402))))

(declare-fun res!1009522 () Bool)

(assert (=> b!1484664 (=> res!1009522 e!832402)))

(assert (=> b!1484664 (= res!1009522 (or (and (= (select (arr!48001 a!2862) index!646) (select (store (arr!48001 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48001 a!2862) index!646) (select (arr!48001 a!2862) j!93))) (= (select (arr!48001 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484664 e!832403))

(declare-fun res!1009518 () Bool)

(assert (=> b!1484664 (=> (not res!1009518) (not e!832403))))

(assert (=> b!1484664 (= res!1009518 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49816 0))(
  ( (Unit!49817) )
))
(declare-fun lt!647799 () Unit!49816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49816)

(assert (=> b!1484664 (= lt!647799 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484665 () Bool)

(declare-fun res!1009517 () Bool)

(assert (=> b!1484665 (=> (not res!1009517) (not e!832404))))

(declare-datatypes ((List!34682 0))(
  ( (Nil!34679) (Cons!34678 (h!36052 (_ BitVec 64)) (t!49383 List!34682)) )
))
(declare-fun arrayNoDuplicates!0 (array!99459 (_ BitVec 32) List!34682) Bool)

(assert (=> b!1484665 (= res!1009517 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34679))))

(declare-fun b!1484666 () Bool)

(assert (=> b!1484666 (= e!832407 (= lt!647798 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647797 lt!647801 mask!2687)))))

(declare-fun b!1484667 () Bool)

(declare-fun res!1009519 () Bool)

(assert (=> b!1484667 (=> (not res!1009519) (not e!832400))))

(assert (=> b!1484667 (= res!1009519 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484668 () Bool)

(assert (=> b!1484668 (= e!832407 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647797 lt!647801 mask!2687) (seekEntryOrOpen!0 lt!647797 lt!647801 mask!2687)))))

(declare-fun b!1484669 () Bool)

(declare-fun res!1009515 () Bool)

(assert (=> b!1484669 (=> (not res!1009515) (not e!832404))))

(assert (=> b!1484669 (= res!1009515 (validKeyInArray!0 (select (arr!48001 a!2862) j!93)))))

(declare-fun b!1484670 () Bool)

(declare-fun res!1009511 () Bool)

(assert (=> b!1484670 (=> (not res!1009511) (not e!832403))))

(assert (=> b!1484670 (= res!1009511 (= (seekEntryOrOpen!0 (select (arr!48001 a!2862) j!93) a!2862 mask!2687) (Found!12264 j!93)))))

(declare-fun b!1484671 () Bool)

(assert (=> b!1484671 (= e!832408 e!832409)))

(declare-fun res!1009525 () Bool)

(assert (=> b!1484671 (=> (not res!1009525) (not e!832409))))

(assert (=> b!1484671 (= res!1009525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48001 a!2862) j!93) mask!2687) (select (arr!48001 a!2862) j!93) a!2862 mask!2687) lt!647802))))

(assert (=> b!1484671 (= lt!647802 (Intermediate!12264 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126580 res!1009520) b!1484655))

(assert (= (and b!1484655 res!1009509) b!1484662))

(assert (= (and b!1484662 res!1009526) b!1484669))

(assert (= (and b!1484669 res!1009515) b!1484657))

(assert (= (and b!1484657 res!1009512) b!1484665))

(assert (= (and b!1484665 res!1009517) b!1484651))

(assert (= (and b!1484651 res!1009521) b!1484652))

(assert (= (and b!1484652 res!1009527) b!1484671))

(assert (= (and b!1484671 res!1009525) b!1484661))

(assert (= (and b!1484661 res!1009510) b!1484663))

(assert (= (and b!1484663 res!1009513) b!1484654))

(assert (= (and b!1484654 c!137096) b!1484666))

(assert (= (and b!1484654 (not c!137096)) b!1484668))

(assert (= (and b!1484654 res!1009523) b!1484667))

(assert (= (and b!1484667 res!1009519) b!1484664))

(assert (= (and b!1484664 res!1009518) b!1484670))

(assert (= (and b!1484670 res!1009511) b!1484653))

(assert (= (and b!1484653 res!1009514) b!1484658))

(assert (= (and b!1484658 (not res!1009524)) b!1484660))

(assert (= (and b!1484660 res!1009516) b!1484656))

(assert (= (and b!1484664 (not res!1009522)) b!1484659))

(declare-fun m!1369965 () Bool)

(assert (=> b!1484669 m!1369965))

(assert (=> b!1484669 m!1369965))

(declare-fun m!1369967 () Bool)

(assert (=> b!1484669 m!1369967))

(declare-fun m!1369969 () Bool)

(assert (=> b!1484662 m!1369969))

(assert (=> b!1484662 m!1369969))

(declare-fun m!1369971 () Bool)

(assert (=> b!1484662 m!1369971))

(declare-fun m!1369973 () Bool)

(assert (=> b!1484663 m!1369973))

(assert (=> b!1484663 m!1369973))

(declare-fun m!1369975 () Bool)

(assert (=> b!1484663 m!1369975))

(declare-fun m!1369977 () Bool)

(assert (=> b!1484663 m!1369977))

(declare-fun m!1369979 () Bool)

(assert (=> b!1484663 m!1369979))

(declare-fun m!1369981 () Bool)

(assert (=> b!1484657 m!1369981))

(assert (=> b!1484670 m!1369965))

(assert (=> b!1484670 m!1369965))

(declare-fun m!1369983 () Bool)

(assert (=> b!1484670 m!1369983))

(declare-fun m!1369985 () Bool)

(assert (=> b!1484666 m!1369985))

(declare-fun m!1369987 () Bool)

(assert (=> b!1484653 m!1369987))

(assert (=> b!1484653 m!1369965))

(assert (=> b!1484652 m!1369977))

(declare-fun m!1369989 () Bool)

(assert (=> b!1484652 m!1369989))

(declare-fun m!1369991 () Bool)

(assert (=> b!1484668 m!1369991))

(declare-fun m!1369993 () Bool)

(assert (=> b!1484668 m!1369993))

(assert (=> b!1484671 m!1369965))

(assert (=> b!1484671 m!1369965))

(declare-fun m!1369995 () Bool)

(assert (=> b!1484671 m!1369995))

(assert (=> b!1484671 m!1369995))

(assert (=> b!1484671 m!1369965))

(declare-fun m!1369997 () Bool)

(assert (=> b!1484671 m!1369997))

(declare-fun m!1369999 () Bool)

(assert (=> start!126580 m!1369999))

(declare-fun m!1370001 () Bool)

(assert (=> start!126580 m!1370001))

(declare-fun m!1370003 () Bool)

(assert (=> b!1484659 m!1370003))

(assert (=> b!1484661 m!1369965))

(assert (=> b!1484661 m!1369965))

(declare-fun m!1370005 () Bool)

(assert (=> b!1484661 m!1370005))

(declare-fun m!1370007 () Bool)

(assert (=> b!1484665 m!1370007))

(assert (=> b!1484656 m!1369993))

(assert (=> b!1484656 m!1369991))

(declare-fun m!1370009 () Bool)

(assert (=> b!1484664 m!1370009))

(assert (=> b!1484664 m!1369977))

(declare-fun m!1370011 () Bool)

(assert (=> b!1484664 m!1370011))

(declare-fun m!1370013 () Bool)

(assert (=> b!1484664 m!1370013))

(declare-fun m!1370015 () Bool)

(assert (=> b!1484664 m!1370015))

(assert (=> b!1484664 m!1369965))

(assert (=> b!1484658 m!1370013))

(assert (=> b!1484658 m!1369965))

(assert (=> b!1484658 m!1369977))

(assert (=> b!1484658 m!1370011))

(push 1)

