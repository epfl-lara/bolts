; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124910 () Bool)

(assert start!124910)

(declare-fun b!1449897 () Bool)

(declare-fun res!981396 () Bool)

(declare-fun e!816500 () Bool)

(assert (=> b!1449897 (=> (not res!981396) (not e!816500))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98275 0))(
  ( (array!98276 (arr!47421 (Array (_ BitVec 32) (_ BitVec 64))) (size!47972 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98275)

(assert (=> b!1449897 (= res!981396 (and (= (size!47972 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47972 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47972 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!816497 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1449898 () Bool)

(declare-fun lt!636049 () array!98275)

(declare-fun lt!636050 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11696 0))(
  ( (MissingZero!11696 (index!49175 (_ BitVec 32))) (Found!11696 (index!49176 (_ BitVec 32))) (Intermediate!11696 (undefined!12508 Bool) (index!49177 (_ BitVec 32)) (x!130836 (_ BitVec 32))) (Undefined!11696) (MissingVacant!11696 (index!49178 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98275 (_ BitVec 32)) SeekEntryResult!11696)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98275 (_ BitVec 32)) SeekEntryResult!11696)

(assert (=> b!1449898 (= e!816497 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636050 lt!636049 mask!2687) (seekEntryOrOpen!0 lt!636050 lt!636049 mask!2687)))))

(declare-fun b!1449899 () Bool)

(declare-fun res!981392 () Bool)

(assert (=> b!1449899 (=> (not res!981392) (not e!816500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449899 (= res!981392 (validKeyInArray!0 (select (arr!47421 a!2862) i!1006)))))

(declare-fun b!1449900 () Bool)

(declare-fun e!816498 () Bool)

(declare-fun e!816501 () Bool)

(assert (=> b!1449900 (= e!816498 e!816501)))

(declare-fun res!981401 () Bool)

(assert (=> b!1449900 (=> (not res!981401) (not e!816501))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!636055 () SeekEntryResult!11696)

(assert (=> b!1449900 (= res!981401 (= lt!636055 (Intermediate!11696 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98275 (_ BitVec 32)) SeekEntryResult!11696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449900 (= lt!636055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636050 mask!2687) lt!636050 lt!636049 mask!2687))))

(assert (=> b!1449900 (= lt!636050 (select (store (arr!47421 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449901 () Bool)

(declare-fun e!816504 () Bool)

(assert (=> b!1449901 (= e!816501 (not e!816504))))

(declare-fun res!981407 () Bool)

(assert (=> b!1449901 (=> res!981407 e!816504)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1449901 (= res!981407 (or (and (= (select (arr!47421 a!2862) index!646) (select (store (arr!47421 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47421 a!2862) index!646) (select (arr!47421 a!2862) j!93))) (not (= (select (arr!47421 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47421 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816499 () Bool)

(assert (=> b!1449901 e!816499))

(declare-fun res!981394 () Bool)

(assert (=> b!1449901 (=> (not res!981394) (not e!816499))))

(declare-fun lt!636048 () SeekEntryResult!11696)

(declare-fun lt!636052 () SeekEntryResult!11696)

(assert (=> b!1449901 (= res!981394 (and (= lt!636052 lt!636048) (or (= (select (arr!47421 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47421 a!2862) intermediateBeforeIndex!19) (select (arr!47421 a!2862) j!93)))))))

(assert (=> b!1449901 (= lt!636048 (Found!11696 j!93))))

(assert (=> b!1449901 (= lt!636052 (seekEntryOrOpen!0 (select (arr!47421 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98275 (_ BitVec 32)) Bool)

(assert (=> b!1449901 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48836 0))(
  ( (Unit!48837) )
))
(declare-fun lt!636053 () Unit!48836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48836)

(assert (=> b!1449901 (= lt!636053 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449902 () Bool)

(declare-fun e!816505 () Bool)

(assert (=> b!1449902 (= e!816499 e!816505)))

(declare-fun res!981404 () Bool)

(assert (=> b!1449902 (=> res!981404 e!816505)))

(assert (=> b!1449902 (= res!981404 (or (and (= (select (arr!47421 a!2862) index!646) (select (store (arr!47421 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47421 a!2862) index!646) (select (arr!47421 a!2862) j!93))) (not (= (select (arr!47421 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449903 () Bool)

(declare-fun e!816502 () Bool)

(assert (=> b!1449903 (= e!816502 e!816498)))

(declare-fun res!981408 () Bool)

(assert (=> b!1449903 (=> (not res!981408) (not e!816498))))

(declare-fun lt!636051 () SeekEntryResult!11696)

(assert (=> b!1449903 (= res!981408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47421 a!2862) j!93) mask!2687) (select (arr!47421 a!2862) j!93) a!2862 mask!2687) lt!636051))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449903 (= lt!636051 (Intermediate!11696 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449904 () Bool)

(declare-fun res!981405 () Bool)

(assert (=> b!1449904 (=> (not res!981405) (not e!816500))))

(assert (=> b!1449904 (= res!981405 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47972 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47972 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47972 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449905 () Bool)

(declare-fun res!981393 () Bool)

(assert (=> b!1449905 (=> (not res!981393) (not e!816500))))

(declare-datatypes ((List!34102 0))(
  ( (Nil!34099) (Cons!34098 (h!35448 (_ BitVec 64)) (t!48803 List!34102)) )
))
(declare-fun arrayNoDuplicates!0 (array!98275 (_ BitVec 32) List!34102) Bool)

(assert (=> b!1449905 (= res!981393 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34099))))

(declare-fun b!1449906 () Bool)

(assert (=> b!1449906 (= e!816504 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1449906 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636050 lt!636049 mask!2687) lt!636048)))

(declare-fun lt!636054 () Unit!48836)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48836)

(assert (=> b!1449906 (= lt!636054 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1449907 () Bool)

(assert (=> b!1449907 (= e!816497 (= lt!636055 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636050 lt!636049 mask!2687)))))

(declare-fun b!1449909 () Bool)

(declare-fun res!981403 () Bool)

(assert (=> b!1449909 (=> (not res!981403) (not e!816501))))

(assert (=> b!1449909 (= res!981403 e!816497)))

(declare-fun c!133766 () Bool)

(assert (=> b!1449909 (= c!133766 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449910 () Bool)

(declare-fun res!981400 () Bool)

(assert (=> b!1449910 (=> (not res!981400) (not e!816500))))

(assert (=> b!1449910 (= res!981400 (validKeyInArray!0 (select (arr!47421 a!2862) j!93)))))

(declare-fun e!816503 () Bool)

(declare-fun b!1449911 () Bool)

(assert (=> b!1449911 (= e!816503 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449912 () Bool)

(declare-fun res!981397 () Bool)

(assert (=> b!1449912 (=> res!981397 e!816504)))

(assert (=> b!1449912 (= res!981397 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47421 a!2862) j!93) a!2862 mask!2687) lt!636048)))))

(declare-fun b!1449913 () Bool)

(declare-fun res!981399 () Bool)

(assert (=> b!1449913 (=> (not res!981399) (not e!816500))))

(assert (=> b!1449913 (= res!981399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449914 () Bool)

(declare-fun res!981402 () Bool)

(assert (=> b!1449914 (=> (not res!981402) (not e!816498))))

(assert (=> b!1449914 (= res!981402 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47421 a!2862) j!93) a!2862 mask!2687) lt!636051))))

(declare-fun b!1449908 () Bool)

(assert (=> b!1449908 (= e!816500 e!816502)))

(declare-fun res!981391 () Bool)

(assert (=> b!1449908 (=> (not res!981391) (not e!816502))))

(assert (=> b!1449908 (= res!981391 (= (select (store (arr!47421 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449908 (= lt!636049 (array!98276 (store (arr!47421 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47972 a!2862)))))

(declare-fun res!981406 () Bool)

(assert (=> start!124910 (=> (not res!981406) (not e!816500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124910 (= res!981406 (validMask!0 mask!2687))))

(assert (=> start!124910 e!816500))

(assert (=> start!124910 true))

(declare-fun array_inv!36366 (array!98275) Bool)

(assert (=> start!124910 (array_inv!36366 a!2862)))

(declare-fun b!1449915 () Bool)

(declare-fun res!981398 () Bool)

(assert (=> b!1449915 (=> (not res!981398) (not e!816501))))

(assert (=> b!1449915 (= res!981398 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449916 () Bool)

(assert (=> b!1449916 (= e!816505 e!816503)))

(declare-fun res!981395 () Bool)

(assert (=> b!1449916 (=> (not res!981395) (not e!816503))))

(assert (=> b!1449916 (= res!981395 (= lt!636052 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47421 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124910 res!981406) b!1449897))

(assert (= (and b!1449897 res!981396) b!1449899))

(assert (= (and b!1449899 res!981392) b!1449910))

(assert (= (and b!1449910 res!981400) b!1449913))

(assert (= (and b!1449913 res!981399) b!1449905))

(assert (= (and b!1449905 res!981393) b!1449904))

(assert (= (and b!1449904 res!981405) b!1449908))

(assert (= (and b!1449908 res!981391) b!1449903))

(assert (= (and b!1449903 res!981408) b!1449914))

(assert (= (and b!1449914 res!981402) b!1449900))

(assert (= (and b!1449900 res!981401) b!1449909))

(assert (= (and b!1449909 c!133766) b!1449907))

(assert (= (and b!1449909 (not c!133766)) b!1449898))

(assert (= (and b!1449909 res!981403) b!1449915))

(assert (= (and b!1449915 res!981398) b!1449901))

(assert (= (and b!1449901 res!981394) b!1449902))

(assert (= (and b!1449902 (not res!981404)) b!1449916))

(assert (= (and b!1449916 res!981395) b!1449911))

(assert (= (and b!1449901 (not res!981407)) b!1449912))

(assert (= (and b!1449912 (not res!981397)) b!1449906))

(declare-fun m!1338631 () Bool)

(assert (=> b!1449916 m!1338631))

(assert (=> b!1449916 m!1338631))

(declare-fun m!1338633 () Bool)

(assert (=> b!1449916 m!1338633))

(declare-fun m!1338635 () Bool)

(assert (=> b!1449898 m!1338635))

(declare-fun m!1338637 () Bool)

(assert (=> b!1449898 m!1338637))

(declare-fun m!1338639 () Bool)

(assert (=> start!124910 m!1338639))

(declare-fun m!1338641 () Bool)

(assert (=> start!124910 m!1338641))

(declare-fun m!1338643 () Bool)

(assert (=> b!1449899 m!1338643))

(assert (=> b!1449899 m!1338643))

(declare-fun m!1338645 () Bool)

(assert (=> b!1449899 m!1338645))

(declare-fun m!1338647 () Bool)

(assert (=> b!1449902 m!1338647))

(declare-fun m!1338649 () Bool)

(assert (=> b!1449902 m!1338649))

(declare-fun m!1338651 () Bool)

(assert (=> b!1449902 m!1338651))

(assert (=> b!1449902 m!1338631))

(assert (=> b!1449908 m!1338649))

(declare-fun m!1338653 () Bool)

(assert (=> b!1449908 m!1338653))

(assert (=> b!1449914 m!1338631))

(assert (=> b!1449914 m!1338631))

(declare-fun m!1338655 () Bool)

(assert (=> b!1449914 m!1338655))

(declare-fun m!1338657 () Bool)

(assert (=> b!1449900 m!1338657))

(assert (=> b!1449900 m!1338657))

(declare-fun m!1338659 () Bool)

(assert (=> b!1449900 m!1338659))

(assert (=> b!1449900 m!1338649))

(declare-fun m!1338661 () Bool)

(assert (=> b!1449900 m!1338661))

(declare-fun m!1338663 () Bool)

(assert (=> b!1449905 m!1338663))

(assert (=> b!1449910 m!1338631))

(assert (=> b!1449910 m!1338631))

(declare-fun m!1338665 () Bool)

(assert (=> b!1449910 m!1338665))

(assert (=> b!1449906 m!1338635))

(declare-fun m!1338667 () Bool)

(assert (=> b!1449906 m!1338667))

(assert (=> b!1449903 m!1338631))

(assert (=> b!1449903 m!1338631))

(declare-fun m!1338669 () Bool)

(assert (=> b!1449903 m!1338669))

(assert (=> b!1449903 m!1338669))

(assert (=> b!1449903 m!1338631))

(declare-fun m!1338671 () Bool)

(assert (=> b!1449903 m!1338671))

(declare-fun m!1338673 () Bool)

(assert (=> b!1449907 m!1338673))

(declare-fun m!1338675 () Bool)

(assert (=> b!1449901 m!1338675))

(assert (=> b!1449901 m!1338649))

(declare-fun m!1338677 () Bool)

(assert (=> b!1449901 m!1338677))

(assert (=> b!1449901 m!1338651))

(assert (=> b!1449901 m!1338647))

(assert (=> b!1449901 m!1338631))

(declare-fun m!1338679 () Bool)

(assert (=> b!1449901 m!1338679))

(declare-fun m!1338681 () Bool)

(assert (=> b!1449901 m!1338681))

(assert (=> b!1449901 m!1338631))

(assert (=> b!1449912 m!1338631))

(assert (=> b!1449912 m!1338631))

(declare-fun m!1338683 () Bool)

(assert (=> b!1449912 m!1338683))

(declare-fun m!1338685 () Bool)

(assert (=> b!1449913 m!1338685))

(push 1)

