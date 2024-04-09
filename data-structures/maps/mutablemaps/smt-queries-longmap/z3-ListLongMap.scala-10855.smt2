; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127152 () Bool)

(assert start!127152)

(declare-fun b!1493894 () Bool)

(declare-fun res!1016427 () Bool)

(declare-fun e!836848 () Bool)

(assert (=> b!1493894 (=> (not res!1016427) (not e!836848))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99716 0))(
  ( (array!99717 (arr!48122 (Array (_ BitVec 32) (_ BitVec 64))) (size!48673 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99716)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493894 (= res!1016427 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48673 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48673 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48673 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493895 () Bool)

(declare-fun res!1016431 () Bool)

(assert (=> b!1493895 (=> (not res!1016431) (not e!836848))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1493895 (= res!1016431 (and (= (size!48673 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48673 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48673 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493896 () Bool)

(declare-fun res!1016430 () Bool)

(assert (=> b!1493896 (=> (not res!1016430) (not e!836848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493896 (= res!1016430 (validKeyInArray!0 (select (arr!48122 a!2862) j!93)))))

(declare-fun b!1493897 () Bool)

(declare-fun res!1016434 () Bool)

(declare-fun e!836853 () Bool)

(assert (=> b!1493897 (=> (not res!1016434) (not e!836853))))

(declare-fun e!836851 () Bool)

(assert (=> b!1493897 (= res!1016434 e!836851)))

(declare-fun c!138266 () Bool)

(assert (=> b!1493897 (= c!138266 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493898 () Bool)

(declare-fun e!836854 () Bool)

(assert (=> b!1493898 (= e!836854 (or (= (select (arr!48122 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48122 a!2862) intermediateBeforeIndex!19) (select (arr!48122 a!2862) j!93))))))

(declare-fun b!1493900 () Bool)

(declare-fun e!836852 () Bool)

(assert (=> b!1493900 (= e!836848 e!836852)))

(declare-fun res!1016439 () Bool)

(assert (=> b!1493900 (=> (not res!1016439) (not e!836852))))

(assert (=> b!1493900 (= res!1016439 (= (select (store (arr!48122 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651147 () array!99716)

(assert (=> b!1493900 (= lt!651147 (array!99717 (store (arr!48122 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48673 a!2862)))))

(declare-fun b!1493901 () Bool)

(declare-fun e!836849 () Bool)

(assert (=> b!1493901 (= e!836849 true)))

(declare-fun lt!651146 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493901 (= lt!651146 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493902 () Bool)

(declare-fun res!1016438 () Bool)

(assert (=> b!1493902 (=> (not res!1016438) (not e!836853))))

(assert (=> b!1493902 (= res!1016438 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493903 () Bool)

(declare-fun res!1016442 () Bool)

(assert (=> b!1493903 (=> (not res!1016442) (not e!836848))))

(assert (=> b!1493903 (= res!1016442 (validKeyInArray!0 (select (arr!48122 a!2862) i!1006)))))

(declare-fun b!1493904 () Bool)

(declare-fun res!1016433 () Bool)

(assert (=> b!1493904 (=> (not res!1016433) (not e!836848))))

(declare-datatypes ((List!34803 0))(
  ( (Nil!34800) (Cons!34799 (h!36188 (_ BitVec 64)) (t!49504 List!34803)) )
))
(declare-fun arrayNoDuplicates!0 (array!99716 (_ BitVec 32) List!34803) Bool)

(assert (=> b!1493904 (= res!1016433 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34800))))

(declare-fun b!1493905 () Bool)

(declare-fun e!836855 () Bool)

(assert (=> b!1493905 (= e!836852 e!836855)))

(declare-fun res!1016435 () Bool)

(assert (=> b!1493905 (=> (not res!1016435) (not e!836855))))

(declare-datatypes ((SeekEntryResult!12385 0))(
  ( (MissingZero!12385 (index!51931 (_ BitVec 32))) (Found!12385 (index!51932 (_ BitVec 32))) (Intermediate!12385 (undefined!13197 Bool) (index!51933 (_ BitVec 32)) (x!133532 (_ BitVec 32))) (Undefined!12385) (MissingVacant!12385 (index!51934 (_ BitVec 32))) )
))
(declare-fun lt!651148 () SeekEntryResult!12385)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99716 (_ BitVec 32)) SeekEntryResult!12385)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493905 (= res!1016435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48122 a!2862) j!93) mask!2687) (select (arr!48122 a!2862) j!93) a!2862 mask!2687) lt!651148))))

(assert (=> b!1493905 (= lt!651148 (Intermediate!12385 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493906 () Bool)

(declare-fun res!1016429 () Bool)

(assert (=> b!1493906 (=> (not res!1016429) (not e!836855))))

(assert (=> b!1493906 (= res!1016429 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48122 a!2862) j!93) a!2862 mask!2687) lt!651148))))

(declare-fun b!1493907 () Bool)

(declare-fun res!1016432 () Bool)

(assert (=> b!1493907 (=> (not res!1016432) (not e!836848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99716 (_ BitVec 32)) Bool)

(assert (=> b!1493907 (= res!1016432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1016440 () Bool)

(assert (=> start!127152 (=> (not res!1016440) (not e!836848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127152 (= res!1016440 (validMask!0 mask!2687))))

(assert (=> start!127152 e!836848))

(assert (=> start!127152 true))

(declare-fun array_inv!37067 (array!99716) Bool)

(assert (=> start!127152 (array_inv!37067 a!2862)))

(declare-fun b!1493899 () Bool)

(declare-fun res!1016441 () Bool)

(assert (=> b!1493899 (=> (not res!1016441) (not e!836854))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99716 (_ BitVec 32)) SeekEntryResult!12385)

(assert (=> b!1493899 (= res!1016441 (= (seekEntryOrOpen!0 (select (arr!48122 a!2862) j!93) a!2862 mask!2687) (Found!12385 j!93)))))

(declare-fun lt!651144 () (_ BitVec 64))

(declare-fun b!1493908 () Bool)

(declare-fun lt!651145 () SeekEntryResult!12385)

(assert (=> b!1493908 (= e!836851 (= lt!651145 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651144 lt!651147 mask!2687)))))

(declare-fun b!1493909 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99716 (_ BitVec 32)) SeekEntryResult!12385)

(assert (=> b!1493909 (= e!836851 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651144 lt!651147 mask!2687) (seekEntryOrOpen!0 lt!651144 lt!651147 mask!2687)))))

(declare-fun b!1493910 () Bool)

(assert (=> b!1493910 (= e!836855 e!836853)))

(declare-fun res!1016437 () Bool)

(assert (=> b!1493910 (=> (not res!1016437) (not e!836853))))

(assert (=> b!1493910 (= res!1016437 (= lt!651145 (Intermediate!12385 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1493910 (= lt!651145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651144 mask!2687) lt!651144 lt!651147 mask!2687))))

(assert (=> b!1493910 (= lt!651144 (select (store (arr!48122 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493911 () Bool)

(assert (=> b!1493911 (= e!836853 (not e!836849))))

(declare-fun res!1016428 () Bool)

(assert (=> b!1493911 (=> res!1016428 e!836849)))

(assert (=> b!1493911 (= res!1016428 (or (and (= (select (arr!48122 a!2862) index!646) (select (store (arr!48122 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48122 a!2862) index!646) (select (arr!48122 a!2862) j!93))) (= (select (arr!48122 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493911 e!836854))

(declare-fun res!1016436 () Bool)

(assert (=> b!1493911 (=> (not res!1016436) (not e!836854))))

(assert (=> b!1493911 (= res!1016436 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50058 0))(
  ( (Unit!50059) )
))
(declare-fun lt!651143 () Unit!50058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99716 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50058)

(assert (=> b!1493911 (= lt!651143 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!127152 res!1016440) b!1493895))

(assert (= (and b!1493895 res!1016431) b!1493903))

(assert (= (and b!1493903 res!1016442) b!1493896))

(assert (= (and b!1493896 res!1016430) b!1493907))

(assert (= (and b!1493907 res!1016432) b!1493904))

(assert (= (and b!1493904 res!1016433) b!1493894))

(assert (= (and b!1493894 res!1016427) b!1493900))

(assert (= (and b!1493900 res!1016439) b!1493905))

(assert (= (and b!1493905 res!1016435) b!1493906))

(assert (= (and b!1493906 res!1016429) b!1493910))

(assert (= (and b!1493910 res!1016437) b!1493897))

(assert (= (and b!1493897 c!138266) b!1493908))

(assert (= (and b!1493897 (not c!138266)) b!1493909))

(assert (= (and b!1493897 res!1016434) b!1493902))

(assert (= (and b!1493902 res!1016438) b!1493911))

(assert (= (and b!1493911 res!1016436) b!1493899))

(assert (= (and b!1493899 res!1016441) b!1493898))

(assert (= (and b!1493911 (not res!1016428)) b!1493901))

(declare-fun m!1377715 () Bool)

(assert (=> b!1493899 m!1377715))

(assert (=> b!1493899 m!1377715))

(declare-fun m!1377717 () Bool)

(assert (=> b!1493899 m!1377717))

(assert (=> b!1493896 m!1377715))

(assert (=> b!1493896 m!1377715))

(declare-fun m!1377719 () Bool)

(assert (=> b!1493896 m!1377719))

(declare-fun m!1377721 () Bool)

(assert (=> b!1493910 m!1377721))

(assert (=> b!1493910 m!1377721))

(declare-fun m!1377723 () Bool)

(assert (=> b!1493910 m!1377723))

(declare-fun m!1377725 () Bool)

(assert (=> b!1493910 m!1377725))

(declare-fun m!1377727 () Bool)

(assert (=> b!1493910 m!1377727))

(declare-fun m!1377729 () Bool)

(assert (=> b!1493909 m!1377729))

(declare-fun m!1377731 () Bool)

(assert (=> b!1493909 m!1377731))

(declare-fun m!1377733 () Bool)

(assert (=> b!1493903 m!1377733))

(assert (=> b!1493903 m!1377733))

(declare-fun m!1377735 () Bool)

(assert (=> b!1493903 m!1377735))

(declare-fun m!1377737 () Bool)

(assert (=> b!1493901 m!1377737))

(declare-fun m!1377739 () Bool)

(assert (=> b!1493908 m!1377739))

(declare-fun m!1377741 () Bool)

(assert (=> b!1493898 m!1377741))

(assert (=> b!1493898 m!1377715))

(declare-fun m!1377743 () Bool)

(assert (=> b!1493911 m!1377743))

(assert (=> b!1493911 m!1377725))

(declare-fun m!1377745 () Bool)

(assert (=> b!1493911 m!1377745))

(declare-fun m!1377747 () Bool)

(assert (=> b!1493911 m!1377747))

(declare-fun m!1377749 () Bool)

(assert (=> b!1493911 m!1377749))

(assert (=> b!1493911 m!1377715))

(declare-fun m!1377751 () Bool)

(assert (=> b!1493907 m!1377751))

(declare-fun m!1377753 () Bool)

(assert (=> start!127152 m!1377753))

(declare-fun m!1377755 () Bool)

(assert (=> start!127152 m!1377755))

(assert (=> b!1493900 m!1377725))

(declare-fun m!1377757 () Bool)

(assert (=> b!1493900 m!1377757))

(assert (=> b!1493905 m!1377715))

(assert (=> b!1493905 m!1377715))

(declare-fun m!1377759 () Bool)

(assert (=> b!1493905 m!1377759))

(assert (=> b!1493905 m!1377759))

(assert (=> b!1493905 m!1377715))

(declare-fun m!1377761 () Bool)

(assert (=> b!1493905 m!1377761))

(assert (=> b!1493906 m!1377715))

(assert (=> b!1493906 m!1377715))

(declare-fun m!1377763 () Bool)

(assert (=> b!1493906 m!1377763))

(declare-fun m!1377765 () Bool)

(assert (=> b!1493904 m!1377765))

(check-sat (not b!1493904) (not b!1493909) (not b!1493911) (not b!1493905) (not b!1493906) (not b!1493899) (not b!1493901) (not b!1493903) (not start!127152) (not b!1493908) (not b!1493907) (not b!1493910) (not b!1493896))
(check-sat)
