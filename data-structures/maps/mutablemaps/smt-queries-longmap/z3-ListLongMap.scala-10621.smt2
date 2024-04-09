; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124908 () Bool)

(assert start!124908)

(declare-fun b!1449837 () Bool)

(declare-fun e!816476 () Bool)

(declare-fun e!816470 () Bool)

(assert (=> b!1449837 (= e!816476 e!816470)))

(declare-fun res!981352 () Bool)

(assert (=> b!1449837 (=> res!981352 e!816470)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98273 0))(
  ( (array!98274 (arr!47420 (Array (_ BitVec 32) (_ BitVec 64))) (size!47971 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98273)

(assert (=> b!1449837 (= res!981352 (or (and (= (select (arr!47420 a!2862) index!646) (select (store (arr!47420 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47420 a!2862) index!646) (select (arr!47420 a!2862) j!93))) (not (= (select (arr!47420 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449839 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!636029 () array!98273)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11695 0))(
  ( (MissingZero!11695 (index!49171 (_ BitVec 32))) (Found!11695 (index!49172 (_ BitVec 32))) (Intermediate!11695 (undefined!12507 Bool) (index!49173 (_ BitVec 32)) (x!130835 (_ BitVec 32))) (Undefined!11695) (MissingVacant!11695 (index!49174 (_ BitVec 32))) )
))
(declare-fun lt!636027 () SeekEntryResult!11695)

(declare-fun e!816473 () Bool)

(declare-fun lt!636030 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98273 (_ BitVec 32)) SeekEntryResult!11695)

(assert (=> b!1449839 (= e!816473 (= lt!636027 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636030 lt!636029 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!816474 () Bool)

(declare-fun b!1449840 () Bool)

(assert (=> b!1449840 (= e!816474 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449841 () Bool)

(assert (=> b!1449841 (= e!816470 e!816474)))

(declare-fun res!981348 () Bool)

(assert (=> b!1449841 (=> (not res!981348) (not e!816474))))

(declare-fun lt!636024 () SeekEntryResult!11695)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98273 (_ BitVec 32)) SeekEntryResult!11695)

(assert (=> b!1449841 (= res!981348 (= lt!636024 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47420 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449842 () Bool)

(declare-fun res!981338 () Bool)

(declare-fun e!816471 () Bool)

(assert (=> b!1449842 (=> (not res!981338) (not e!816471))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449842 (= res!981338 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47971 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47971 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47971 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449843 () Bool)

(declare-fun res!981343 () Bool)

(assert (=> b!1449843 (=> (not res!981343) (not e!816471))))

(declare-datatypes ((List!34101 0))(
  ( (Nil!34098) (Cons!34097 (h!35447 (_ BitVec 64)) (t!48802 List!34101)) )
))
(declare-fun arrayNoDuplicates!0 (array!98273 (_ BitVec 32) List!34101) Bool)

(assert (=> b!1449843 (= res!981343 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34098))))

(declare-fun b!1449844 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98273 (_ BitVec 32)) SeekEntryResult!11695)

(assert (=> b!1449844 (= e!816473 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636030 lt!636029 mask!2687) (seekEntryOrOpen!0 lt!636030 lt!636029 mask!2687)))))

(declare-fun b!1449845 () Bool)

(declare-fun e!816467 () Bool)

(assert (=> b!1449845 (= e!816467 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!636026 () SeekEntryResult!11695)

(assert (=> b!1449845 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636030 lt!636029 mask!2687) lt!636026)))

(declare-datatypes ((Unit!48834 0))(
  ( (Unit!48835) )
))
(declare-fun lt!636031 () Unit!48834)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48834)

(assert (=> b!1449845 (= lt!636031 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1449846 () Bool)

(declare-fun res!981340 () Bool)

(assert (=> b!1449846 (=> (not res!981340) (not e!816471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98273 (_ BitVec 32)) Bool)

(assert (=> b!1449846 (= res!981340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449847 () Bool)

(declare-fun e!816475 () Bool)

(assert (=> b!1449847 (= e!816471 e!816475)))

(declare-fun res!981354 () Bool)

(assert (=> b!1449847 (=> (not res!981354) (not e!816475))))

(assert (=> b!1449847 (= res!981354 (= (select (store (arr!47420 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449847 (= lt!636029 (array!98274 (store (arr!47420 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47971 a!2862)))))

(declare-fun b!1449848 () Bool)

(declare-fun e!816472 () Bool)

(declare-fun e!816468 () Bool)

(assert (=> b!1449848 (= e!816472 e!816468)))

(declare-fun res!981349 () Bool)

(assert (=> b!1449848 (=> (not res!981349) (not e!816468))))

(assert (=> b!1449848 (= res!981349 (= lt!636027 (Intermediate!11695 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449848 (= lt!636027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636030 mask!2687) lt!636030 lt!636029 mask!2687))))

(assert (=> b!1449848 (= lt!636030 (select (store (arr!47420 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449849 () Bool)

(declare-fun res!981347 () Bool)

(assert (=> b!1449849 (=> (not res!981347) (not e!816472))))

(declare-fun lt!636028 () SeekEntryResult!11695)

(assert (=> b!1449849 (= res!981347 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47420 a!2862) j!93) a!2862 mask!2687) lt!636028))))

(declare-fun b!1449850 () Bool)

(declare-fun res!981339 () Bool)

(assert (=> b!1449850 (=> (not res!981339) (not e!816471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449850 (= res!981339 (validKeyInArray!0 (select (arr!47420 a!2862) j!93)))))

(declare-fun res!981350 () Bool)

(assert (=> start!124908 (=> (not res!981350) (not e!816471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124908 (= res!981350 (validMask!0 mask!2687))))

(assert (=> start!124908 e!816471))

(assert (=> start!124908 true))

(declare-fun array_inv!36365 (array!98273) Bool)

(assert (=> start!124908 (array_inv!36365 a!2862)))

(declare-fun b!1449838 () Bool)

(declare-fun res!981342 () Bool)

(assert (=> b!1449838 (=> (not res!981342) (not e!816471))))

(assert (=> b!1449838 (= res!981342 (validKeyInArray!0 (select (arr!47420 a!2862) i!1006)))))

(declare-fun b!1449851 () Bool)

(declare-fun res!981351 () Bool)

(assert (=> b!1449851 (=> (not res!981351) (not e!816468))))

(assert (=> b!1449851 (= res!981351 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449852 () Bool)

(declare-fun res!981353 () Bool)

(assert (=> b!1449852 (=> (not res!981353) (not e!816471))))

(assert (=> b!1449852 (= res!981353 (and (= (size!47971 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47971 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47971 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449853 () Bool)

(declare-fun res!981345 () Bool)

(assert (=> b!1449853 (=> res!981345 e!816467)))

(assert (=> b!1449853 (= res!981345 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47420 a!2862) j!93) a!2862 mask!2687) lt!636026)))))

(declare-fun b!1449854 () Bool)

(assert (=> b!1449854 (= e!816468 (not e!816467))))

(declare-fun res!981346 () Bool)

(assert (=> b!1449854 (=> res!981346 e!816467)))

(assert (=> b!1449854 (= res!981346 (or (and (= (select (arr!47420 a!2862) index!646) (select (store (arr!47420 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47420 a!2862) index!646) (select (arr!47420 a!2862) j!93))) (not (= (select (arr!47420 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47420 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449854 e!816476))

(declare-fun res!981341 () Bool)

(assert (=> b!1449854 (=> (not res!981341) (not e!816476))))

(assert (=> b!1449854 (= res!981341 (and (= lt!636024 lt!636026) (or (= (select (arr!47420 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47420 a!2862) intermediateBeforeIndex!19) (select (arr!47420 a!2862) j!93)))))))

(assert (=> b!1449854 (= lt!636026 (Found!11695 j!93))))

(assert (=> b!1449854 (= lt!636024 (seekEntryOrOpen!0 (select (arr!47420 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449854 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636025 () Unit!48834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48834)

(assert (=> b!1449854 (= lt!636025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449855 () Bool)

(assert (=> b!1449855 (= e!816475 e!816472)))

(declare-fun res!981337 () Bool)

(assert (=> b!1449855 (=> (not res!981337) (not e!816472))))

(assert (=> b!1449855 (= res!981337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47420 a!2862) j!93) mask!2687) (select (arr!47420 a!2862) j!93) a!2862 mask!2687) lt!636028))))

(assert (=> b!1449855 (= lt!636028 (Intermediate!11695 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449856 () Bool)

(declare-fun res!981344 () Bool)

(assert (=> b!1449856 (=> (not res!981344) (not e!816468))))

(assert (=> b!1449856 (= res!981344 e!816473)))

(declare-fun c!133763 () Bool)

(assert (=> b!1449856 (= c!133763 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124908 res!981350) b!1449852))

(assert (= (and b!1449852 res!981353) b!1449838))

(assert (= (and b!1449838 res!981342) b!1449850))

(assert (= (and b!1449850 res!981339) b!1449846))

(assert (= (and b!1449846 res!981340) b!1449843))

(assert (= (and b!1449843 res!981343) b!1449842))

(assert (= (and b!1449842 res!981338) b!1449847))

(assert (= (and b!1449847 res!981354) b!1449855))

(assert (= (and b!1449855 res!981337) b!1449849))

(assert (= (and b!1449849 res!981347) b!1449848))

(assert (= (and b!1449848 res!981349) b!1449856))

(assert (= (and b!1449856 c!133763) b!1449839))

(assert (= (and b!1449856 (not c!133763)) b!1449844))

(assert (= (and b!1449856 res!981344) b!1449851))

(assert (= (and b!1449851 res!981351) b!1449854))

(assert (= (and b!1449854 res!981341) b!1449837))

(assert (= (and b!1449837 (not res!981352)) b!1449841))

(assert (= (and b!1449841 res!981348) b!1449840))

(assert (= (and b!1449854 (not res!981346)) b!1449853))

(assert (= (and b!1449853 (not res!981345)) b!1449845))

(declare-fun m!1338575 () Bool)

(assert (=> b!1449837 m!1338575))

(declare-fun m!1338577 () Bool)

(assert (=> b!1449837 m!1338577))

(declare-fun m!1338579 () Bool)

(assert (=> b!1449837 m!1338579))

(declare-fun m!1338581 () Bool)

(assert (=> b!1449837 m!1338581))

(declare-fun m!1338583 () Bool)

(assert (=> start!124908 m!1338583))

(declare-fun m!1338585 () Bool)

(assert (=> start!124908 m!1338585))

(declare-fun m!1338587 () Bool)

(assert (=> b!1449839 m!1338587))

(assert (=> b!1449855 m!1338581))

(assert (=> b!1449855 m!1338581))

(declare-fun m!1338589 () Bool)

(assert (=> b!1449855 m!1338589))

(assert (=> b!1449855 m!1338589))

(assert (=> b!1449855 m!1338581))

(declare-fun m!1338591 () Bool)

(assert (=> b!1449855 m!1338591))

(declare-fun m!1338593 () Bool)

(assert (=> b!1449854 m!1338593))

(assert (=> b!1449854 m!1338577))

(declare-fun m!1338595 () Bool)

(assert (=> b!1449854 m!1338595))

(assert (=> b!1449854 m!1338579))

(assert (=> b!1449854 m!1338575))

(assert (=> b!1449854 m!1338581))

(declare-fun m!1338597 () Bool)

(assert (=> b!1449854 m!1338597))

(declare-fun m!1338599 () Bool)

(assert (=> b!1449854 m!1338599))

(assert (=> b!1449854 m!1338581))

(assert (=> b!1449850 m!1338581))

(assert (=> b!1449850 m!1338581))

(declare-fun m!1338601 () Bool)

(assert (=> b!1449850 m!1338601))

(assert (=> b!1449849 m!1338581))

(assert (=> b!1449849 m!1338581))

(declare-fun m!1338603 () Bool)

(assert (=> b!1449849 m!1338603))

(assert (=> b!1449847 m!1338577))

(declare-fun m!1338605 () Bool)

(assert (=> b!1449847 m!1338605))

(declare-fun m!1338607 () Bool)

(assert (=> b!1449844 m!1338607))

(declare-fun m!1338609 () Bool)

(assert (=> b!1449844 m!1338609))

(assert (=> b!1449841 m!1338581))

(assert (=> b!1449841 m!1338581))

(declare-fun m!1338611 () Bool)

(assert (=> b!1449841 m!1338611))

(declare-fun m!1338613 () Bool)

(assert (=> b!1449838 m!1338613))

(assert (=> b!1449838 m!1338613))

(declare-fun m!1338615 () Bool)

(assert (=> b!1449838 m!1338615))

(declare-fun m!1338617 () Bool)

(assert (=> b!1449846 m!1338617))

(assert (=> b!1449853 m!1338581))

(assert (=> b!1449853 m!1338581))

(declare-fun m!1338619 () Bool)

(assert (=> b!1449853 m!1338619))

(assert (=> b!1449845 m!1338607))

(declare-fun m!1338621 () Bool)

(assert (=> b!1449845 m!1338621))

(declare-fun m!1338623 () Bool)

(assert (=> b!1449843 m!1338623))

(declare-fun m!1338625 () Bool)

(assert (=> b!1449848 m!1338625))

(assert (=> b!1449848 m!1338625))

(declare-fun m!1338627 () Bool)

(assert (=> b!1449848 m!1338627))

(assert (=> b!1449848 m!1338577))

(declare-fun m!1338629 () Bool)

(assert (=> b!1449848 m!1338629))

(check-sat (not b!1449846) (not b!1449855) (not b!1449839) (not b!1449848) (not b!1449841) (not b!1449838) (not b!1449849) (not b!1449853) (not start!124908) (not b!1449850) (not b!1449843) (not b!1449854) (not b!1449845) (not b!1449844))
(check-sat)
