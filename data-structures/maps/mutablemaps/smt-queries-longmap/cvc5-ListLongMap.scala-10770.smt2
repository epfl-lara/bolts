; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126100 () Bool)

(assert start!126100)

(declare-fun e!827961 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99180 0))(
  ( (array!99181 (arr!47866 (Array (_ BitVec 32) (_ BitVec 64))) (size!48417 (_ BitVec 32))) )
))
(declare-fun lt!644700 () array!99180)

(declare-fun b!1475681 () Bool)

(declare-fun lt!644696 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12129 0))(
  ( (MissingZero!12129 (index!50907 (_ BitVec 32))) (Found!12129 (index!50908 (_ BitVec 32))) (Intermediate!12129 (undefined!12941 Bool) (index!50909 (_ BitVec 32)) (x!132506 (_ BitVec 32))) (Undefined!12129) (MissingVacant!12129 (index!50910 (_ BitVec 32))) )
))
(declare-fun lt!644697 () SeekEntryResult!12129)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99180 (_ BitVec 32)) SeekEntryResult!12129)

(assert (=> b!1475681 (= e!827961 (= lt!644697 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644696 lt!644700 mask!2687)))))

(declare-fun b!1475682 () Bool)

(declare-fun res!1002353 () Bool)

(declare-fun e!827956 () Bool)

(assert (=> b!1475682 (=> (not res!1002353) (not e!827956))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99180)

(assert (=> b!1475682 (= res!1002353 (and (= (size!48417 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48417 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48417 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475683 () Bool)

(declare-fun e!827958 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1475683 (= e!827958 (= index!646 intermediateBeforeIndex!19))))

(declare-fun b!1475684 () Bool)

(declare-fun e!827955 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1475684 (= e!827955 (not (or (and (= (select (arr!47866 a!2862) index!646) (select (store (arr!47866 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47866 a!2862) index!646) (select (arr!47866 a!2862) j!93))) (not (= (select (arr!47866 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= x!665 intermediateBeforeX!19))))))

(declare-fun e!827957 () Bool)

(assert (=> b!1475684 e!827957))

(declare-fun res!1002350 () Bool)

(assert (=> b!1475684 (=> (not res!1002350) (not e!827957))))

(declare-fun lt!644701 () SeekEntryResult!12129)

(assert (=> b!1475684 (= res!1002350 (and (= lt!644701 (Found!12129 j!93)) (or (= (select (arr!47866 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47866 a!2862) intermediateBeforeIndex!19) (select (arr!47866 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99180 (_ BitVec 32)) SeekEntryResult!12129)

(assert (=> b!1475684 (= lt!644701 (seekEntryOrOpen!0 (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99180 (_ BitVec 32)) Bool)

(assert (=> b!1475684 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49546 0))(
  ( (Unit!49547) )
))
(declare-fun lt!644698 () Unit!49546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49546)

(assert (=> b!1475684 (= lt!644698 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475685 () Bool)

(declare-fun e!827963 () Bool)

(assert (=> b!1475685 (= e!827956 e!827963)))

(declare-fun res!1002356 () Bool)

(assert (=> b!1475685 (=> (not res!1002356) (not e!827963))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1475685 (= res!1002356 (= (select (store (arr!47866 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475685 (= lt!644700 (array!99181 (store (arr!47866 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48417 a!2862)))))

(declare-fun b!1475686 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99180 (_ BitVec 32)) SeekEntryResult!12129)

(assert (=> b!1475686 (= e!827961 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644696 lt!644700 mask!2687) (seekEntryOrOpen!0 lt!644696 lt!644700 mask!2687)))))

(declare-fun b!1475687 () Bool)

(declare-fun res!1002362 () Bool)

(assert (=> b!1475687 (=> (not res!1002362) (not e!827956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475687 (= res!1002362 (validKeyInArray!0 (select (arr!47866 a!2862) j!93)))))

(declare-fun b!1475688 () Bool)

(declare-fun res!1002360 () Bool)

(assert (=> b!1475688 (=> (not res!1002360) (not e!827956))))

(assert (=> b!1475688 (= res!1002360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475689 () Bool)

(declare-fun res!1002359 () Bool)

(assert (=> b!1475689 (=> (not res!1002359) (not e!827955))))

(assert (=> b!1475689 (= res!1002359 e!827961)))

(declare-fun c!136187 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1475689 (= c!136187 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1475690 () Bool)

(declare-fun e!827962 () Bool)

(assert (=> b!1475690 (= e!827962 e!827955)))

(declare-fun res!1002348 () Bool)

(assert (=> b!1475690 (=> (not res!1002348) (not e!827955))))

(assert (=> b!1475690 (= res!1002348 (= lt!644697 (Intermediate!12129 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475690 (= lt!644697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644696 mask!2687) lt!644696 lt!644700 mask!2687))))

(assert (=> b!1475690 (= lt!644696 (select (store (arr!47866 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1475691 () Bool)

(declare-fun res!1002351 () Bool)

(assert (=> b!1475691 (=> (not res!1002351) (not e!827955))))

(assert (=> b!1475691 (= res!1002351 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1002358 () Bool)

(assert (=> start!126100 (=> (not res!1002358) (not e!827956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126100 (= res!1002358 (validMask!0 mask!2687))))

(assert (=> start!126100 e!827956))

(assert (=> start!126100 true))

(declare-fun array_inv!36811 (array!99180) Bool)

(assert (=> start!126100 (array_inv!36811 a!2862)))

(declare-fun b!1475692 () Bool)

(declare-fun e!827960 () Bool)

(assert (=> b!1475692 (= e!827957 e!827960)))

(declare-fun res!1002354 () Bool)

(assert (=> b!1475692 (=> res!1002354 e!827960)))

(assert (=> b!1475692 (= res!1002354 (or (and (= (select (arr!47866 a!2862) index!646) (select (store (arr!47866 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47866 a!2862) index!646) (select (arr!47866 a!2862) j!93))) (not (= (select (arr!47866 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1475693 () Bool)

(assert (=> b!1475693 (= e!827960 e!827958)))

(declare-fun res!1002361 () Bool)

(assert (=> b!1475693 (=> (not res!1002361) (not e!827958))))

(assert (=> b!1475693 (= res!1002361 (= lt!644701 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47866 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475694 () Bool)

(assert (=> b!1475694 (= e!827963 e!827962)))

(declare-fun res!1002357 () Bool)

(assert (=> b!1475694 (=> (not res!1002357) (not e!827962))))

(declare-fun lt!644699 () SeekEntryResult!12129)

(assert (=> b!1475694 (= res!1002357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47866 a!2862) j!93) mask!2687) (select (arr!47866 a!2862) j!93) a!2862 mask!2687) lt!644699))))

(assert (=> b!1475694 (= lt!644699 (Intermediate!12129 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1475695 () Bool)

(declare-fun res!1002355 () Bool)

(assert (=> b!1475695 (=> (not res!1002355) (not e!827956))))

(assert (=> b!1475695 (= res!1002355 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48417 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48417 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48417 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1475696 () Bool)

(declare-fun res!1002352 () Bool)

(assert (=> b!1475696 (=> (not res!1002352) (not e!827956))))

(declare-datatypes ((List!34547 0))(
  ( (Nil!34544) (Cons!34543 (h!35908 (_ BitVec 64)) (t!49248 List!34547)) )
))
(declare-fun arrayNoDuplicates!0 (array!99180 (_ BitVec 32) List!34547) Bool)

(assert (=> b!1475696 (= res!1002352 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34544))))

(declare-fun b!1475697 () Bool)

(declare-fun res!1002363 () Bool)

(assert (=> b!1475697 (=> (not res!1002363) (not e!827962))))

(assert (=> b!1475697 (= res!1002363 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47866 a!2862) j!93) a!2862 mask!2687) lt!644699))))

(declare-fun b!1475698 () Bool)

(declare-fun res!1002349 () Bool)

(assert (=> b!1475698 (=> (not res!1002349) (not e!827956))))

(assert (=> b!1475698 (= res!1002349 (validKeyInArray!0 (select (arr!47866 a!2862) i!1006)))))

(assert (= (and start!126100 res!1002358) b!1475682))

(assert (= (and b!1475682 res!1002353) b!1475698))

(assert (= (and b!1475698 res!1002349) b!1475687))

(assert (= (and b!1475687 res!1002362) b!1475688))

(assert (= (and b!1475688 res!1002360) b!1475696))

(assert (= (and b!1475696 res!1002352) b!1475695))

(assert (= (and b!1475695 res!1002355) b!1475685))

(assert (= (and b!1475685 res!1002356) b!1475694))

(assert (= (and b!1475694 res!1002357) b!1475697))

(assert (= (and b!1475697 res!1002363) b!1475690))

(assert (= (and b!1475690 res!1002348) b!1475689))

(assert (= (and b!1475689 c!136187) b!1475681))

(assert (= (and b!1475689 (not c!136187)) b!1475686))

(assert (= (and b!1475689 res!1002359) b!1475691))

(assert (= (and b!1475691 res!1002351) b!1475684))

(assert (= (and b!1475684 res!1002350) b!1475692))

(assert (= (and b!1475692 (not res!1002354)) b!1475693))

(assert (= (and b!1475693 res!1002361) b!1475683))

(declare-fun m!1361883 () Bool)

(assert (=> b!1475690 m!1361883))

(assert (=> b!1475690 m!1361883))

(declare-fun m!1361885 () Bool)

(assert (=> b!1475690 m!1361885))

(declare-fun m!1361887 () Bool)

(assert (=> b!1475690 m!1361887))

(declare-fun m!1361889 () Bool)

(assert (=> b!1475690 m!1361889))

(declare-fun m!1361891 () Bool)

(assert (=> b!1475694 m!1361891))

(assert (=> b!1475694 m!1361891))

(declare-fun m!1361893 () Bool)

(assert (=> b!1475694 m!1361893))

(assert (=> b!1475694 m!1361893))

(assert (=> b!1475694 m!1361891))

(declare-fun m!1361895 () Bool)

(assert (=> b!1475694 m!1361895))

(declare-fun m!1361897 () Bool)

(assert (=> b!1475698 m!1361897))

(assert (=> b!1475698 m!1361897))

(declare-fun m!1361899 () Bool)

(assert (=> b!1475698 m!1361899))

(declare-fun m!1361901 () Bool)

(assert (=> start!126100 m!1361901))

(declare-fun m!1361903 () Bool)

(assert (=> start!126100 m!1361903))

(declare-fun m!1361905 () Bool)

(assert (=> b!1475692 m!1361905))

(assert (=> b!1475692 m!1361887))

(declare-fun m!1361907 () Bool)

(assert (=> b!1475692 m!1361907))

(assert (=> b!1475692 m!1361891))

(assert (=> b!1475697 m!1361891))

(assert (=> b!1475697 m!1361891))

(declare-fun m!1361909 () Bool)

(assert (=> b!1475697 m!1361909))

(declare-fun m!1361911 () Bool)

(assert (=> b!1475688 m!1361911))

(declare-fun m!1361913 () Bool)

(assert (=> b!1475684 m!1361913))

(assert (=> b!1475684 m!1361887))

(declare-fun m!1361915 () Bool)

(assert (=> b!1475684 m!1361915))

(assert (=> b!1475684 m!1361907))

(assert (=> b!1475684 m!1361905))

(assert (=> b!1475684 m!1361891))

(declare-fun m!1361917 () Bool)

(assert (=> b!1475684 m!1361917))

(declare-fun m!1361919 () Bool)

(assert (=> b!1475684 m!1361919))

(assert (=> b!1475684 m!1361891))

(assert (=> b!1475685 m!1361887))

(declare-fun m!1361921 () Bool)

(assert (=> b!1475685 m!1361921))

(declare-fun m!1361923 () Bool)

(assert (=> b!1475696 m!1361923))

(assert (=> b!1475687 m!1361891))

(assert (=> b!1475687 m!1361891))

(declare-fun m!1361925 () Bool)

(assert (=> b!1475687 m!1361925))

(assert (=> b!1475693 m!1361891))

(assert (=> b!1475693 m!1361891))

(declare-fun m!1361927 () Bool)

(assert (=> b!1475693 m!1361927))

(declare-fun m!1361929 () Bool)

(assert (=> b!1475686 m!1361929))

(declare-fun m!1361931 () Bool)

(assert (=> b!1475686 m!1361931))

(declare-fun m!1361933 () Bool)

(assert (=> b!1475681 m!1361933))

(push 1)

(assert (not b!1475693))

(assert (not b!1475690))

(assert (not b!1475698))

(assert (not b!1475694))

(assert (not b!1475696))

(assert (not b!1475688))

(assert (not b!1475684))

(assert (not b!1475697))

(assert (not b!1475681))

(assert (not start!126100))

(assert (not b!1475687))

(assert (not b!1475686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1475897 () Bool)

(declare-fun e!828073 () Bool)

(declare-fun e!828071 () Bool)

(assert (=> b!1475897 (= e!828073 e!828071)))

(declare-fun res!1002484 () Bool)

(declare-fun lt!644760 () SeekEntryResult!12129)

(assert (=> b!1475897 (= res!1002484 (and (is-Intermediate!12129 lt!644760) (not (undefined!12941 lt!644760)) (bvslt (x!132506 lt!644760) #b01111111111111111111111111111110) (bvsge (x!132506 lt!644760) #b00000000000000000000000000000000) (bvsge (x!132506 lt!644760) #b00000000000000000000000000000000)))))

(assert (=> b!1475897 (=> (not res!1002484) (not e!828071))))

(declare-fun e!828072 () SeekEntryResult!12129)

(declare-fun b!1475899 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475899 (= e!828072 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644696 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644696 lt!644700 mask!2687))))

(declare-fun b!1475900 () Bool)

(declare-fun e!828074 () SeekEntryResult!12129)

(assert (=> b!1475900 (= e!828074 (Intermediate!12129 true (toIndex!0 lt!644696 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475901 () Bool)

(assert (=> b!1475901 (and (bvsge (index!50909 lt!644760) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644760) (size!48417 lt!644700)))))

(declare-fun res!1002485 () Bool)

(assert (=> b!1475901 (= res!1002485 (= (select (arr!47866 lt!644700) (index!50909 lt!644760)) lt!644696))))

(declare-fun e!828070 () Bool)

(assert (=> b!1475901 (=> res!1002485 e!828070)))

(assert (=> b!1475901 (= e!828071 e!828070)))

(declare-fun b!1475902 () Bool)

(assert (=> b!1475902 (= e!828072 (Intermediate!12129 false (toIndex!0 lt!644696 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475903 () Bool)

(assert (=> b!1475903 (and (bvsge (index!50909 lt!644760) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644760) (size!48417 lt!644700)))))

(assert (=> b!1475903 (= e!828070 (= (select (arr!47866 lt!644700) (index!50909 lt!644760)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475904 () Bool)

(assert (=> b!1475904 (= e!828074 e!828072)))

(declare-fun c!136228 () Bool)

(declare-fun lt!644761 () (_ BitVec 64))

(assert (=> b!1475904 (= c!136228 (or (= lt!644761 lt!644696) (= (bvadd lt!644761 lt!644761) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475905 () Bool)

(assert (=> b!1475905 (and (bvsge (index!50909 lt!644760) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644760) (size!48417 lt!644700)))))

(declare-fun res!1002486 () Bool)

(assert (=> b!1475905 (= res!1002486 (= (select (arr!47866 lt!644700) (index!50909 lt!644760)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475905 (=> res!1002486 e!828070)))

(declare-fun d!155829 () Bool)

(assert (=> d!155829 e!828073))

(declare-fun c!136227 () Bool)

(assert (=> d!155829 (= c!136227 (and (is-Intermediate!12129 lt!644760) (undefined!12941 lt!644760)))))

(assert (=> d!155829 (= lt!644760 e!828074)))

(declare-fun c!136229 () Bool)

(assert (=> d!155829 (= c!136229 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155829 (= lt!644761 (select (arr!47866 lt!644700) (toIndex!0 lt!644696 mask!2687)))))

(assert (=> d!155829 (validMask!0 mask!2687)))

(assert (=> d!155829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644696 mask!2687) lt!644696 lt!644700 mask!2687) lt!644760)))

(declare-fun b!1475898 () Bool)

(assert (=> b!1475898 (= e!828073 (bvsge (x!132506 lt!644760) #b01111111111111111111111111111110))))

(assert (= (and d!155829 c!136229) b!1475900))

(assert (= (and d!155829 (not c!136229)) b!1475904))

(assert (= (and b!1475904 c!136228) b!1475902))

(assert (= (and b!1475904 (not c!136228)) b!1475899))

(assert (= (and d!155829 c!136227) b!1475898))

(assert (= (and d!155829 (not c!136227)) b!1475897))

(assert (= (and b!1475897 res!1002484) b!1475901))

(assert (= (and b!1475901 (not res!1002485)) b!1475905))

(assert (= (and b!1475905 (not res!1002486)) b!1475903))

(assert (=> b!1475899 m!1361883))

(declare-fun m!1362061 () Bool)

(assert (=> b!1475899 m!1362061))

(assert (=> b!1475899 m!1362061))

(declare-fun m!1362063 () Bool)

(assert (=> b!1475899 m!1362063))

(declare-fun m!1362065 () Bool)

(assert (=> b!1475901 m!1362065))

(assert (=> d!155829 m!1361883))

(declare-fun m!1362067 () Bool)

(assert (=> d!155829 m!1362067))

(assert (=> d!155829 m!1361901))

(assert (=> b!1475905 m!1362065))

(assert (=> b!1475903 m!1362065))

(assert (=> b!1475690 d!155829))

(declare-fun d!155835 () Bool)

(declare-fun lt!644774 () (_ BitVec 32))

(declare-fun lt!644773 () (_ BitVec 32))

(assert (=> d!155835 (= lt!644774 (bvmul (bvxor lt!644773 (bvlshr lt!644773 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155835 (= lt!644773 ((_ extract 31 0) (bvand (bvxor lt!644696 (bvlshr lt!644696 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155835 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002487 (let ((h!35911 ((_ extract 31 0) (bvand (bvxor lt!644696 (bvlshr lt!644696 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132512 (bvmul (bvxor h!35911 (bvlshr h!35911 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132512 (bvlshr x!132512 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002487 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002487 #b00000000000000000000000000000000))))))

(assert (=> d!155835 (= (toIndex!0 lt!644696 mask!2687) (bvand (bvxor lt!644774 (bvlshr lt!644774 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475690 d!155835))

(declare-fun b!1475927 () Bool)

(declare-fun e!828089 () Bool)

(declare-fun e!828087 () Bool)

(assert (=> b!1475927 (= e!828089 e!828087)))

(declare-fun res!1002491 () Bool)

(declare-fun lt!644775 () SeekEntryResult!12129)

(assert (=> b!1475927 (= res!1002491 (and (is-Intermediate!12129 lt!644775) (not (undefined!12941 lt!644775)) (bvslt (x!132506 lt!644775) #b01111111111111111111111111111110) (bvsge (x!132506 lt!644775) #b00000000000000000000000000000000) (bvsge (x!132506 lt!644775) x!665)))))

(assert (=> b!1475927 (=> (not res!1002491) (not e!828087))))

(declare-fun e!828088 () SeekEntryResult!12129)

(declare-fun b!1475929 () Bool)

(assert (=> b!1475929 (= e!828088 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644696 lt!644700 mask!2687))))

(declare-fun b!1475930 () Bool)

(declare-fun e!828090 () SeekEntryResult!12129)

(assert (=> b!1475930 (= e!828090 (Intermediate!12129 true index!646 x!665))))

(declare-fun b!1475931 () Bool)

(assert (=> b!1475931 (and (bvsge (index!50909 lt!644775) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644775) (size!48417 lt!644700)))))

(declare-fun res!1002492 () Bool)

(assert (=> b!1475931 (= res!1002492 (= (select (arr!47866 lt!644700) (index!50909 lt!644775)) lt!644696))))

(declare-fun e!828086 () Bool)

(assert (=> b!1475931 (=> res!1002492 e!828086)))

(assert (=> b!1475931 (= e!828087 e!828086)))

(declare-fun b!1475932 () Bool)

(assert (=> b!1475932 (= e!828088 (Intermediate!12129 false index!646 x!665))))

(declare-fun b!1475933 () Bool)

(assert (=> b!1475933 (and (bvsge (index!50909 lt!644775) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644775) (size!48417 lt!644700)))))

(assert (=> b!1475933 (= e!828086 (= (select (arr!47866 lt!644700) (index!50909 lt!644775)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475934 () Bool)

(assert (=> b!1475934 (= e!828090 e!828088)))

(declare-fun c!136240 () Bool)

(declare-fun lt!644776 () (_ BitVec 64))

(assert (=> b!1475934 (= c!136240 (or (= lt!644776 lt!644696) (= (bvadd lt!644776 lt!644776) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475935 () Bool)

(assert (=> b!1475935 (and (bvsge (index!50909 lt!644775) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644775) (size!48417 lt!644700)))))

(declare-fun res!1002493 () Bool)

(assert (=> b!1475935 (= res!1002493 (= (select (arr!47866 lt!644700) (index!50909 lt!644775)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475935 (=> res!1002493 e!828086)))

(declare-fun d!155843 () Bool)

(assert (=> d!155843 e!828089))

(declare-fun c!136239 () Bool)

(assert (=> d!155843 (= c!136239 (and (is-Intermediate!12129 lt!644775) (undefined!12941 lt!644775)))))

(assert (=> d!155843 (= lt!644775 e!828090)))

(declare-fun c!136241 () Bool)

(assert (=> d!155843 (= c!136241 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155843 (= lt!644776 (select (arr!47866 lt!644700) index!646))))

(assert (=> d!155843 (validMask!0 mask!2687)))

(assert (=> d!155843 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644696 lt!644700 mask!2687) lt!644775)))

(declare-fun b!1475928 () Bool)

(assert (=> b!1475928 (= e!828089 (bvsge (x!132506 lt!644775) #b01111111111111111111111111111110))))

(assert (= (and d!155843 c!136241) b!1475930))

(assert (= (and d!155843 (not c!136241)) b!1475934))

(assert (= (and b!1475934 c!136240) b!1475932))

(assert (= (and b!1475934 (not c!136240)) b!1475929))

(assert (= (and d!155843 c!136239) b!1475928))

(assert (= (and d!155843 (not c!136239)) b!1475927))

(assert (= (and b!1475927 res!1002491) b!1475931))

(assert (= (and b!1475931 (not res!1002492)) b!1475935))

(assert (= (and b!1475935 (not res!1002493)) b!1475933))

(declare-fun m!1362089 () Bool)

(assert (=> b!1475929 m!1362089))

(assert (=> b!1475929 m!1362089))

(declare-fun m!1362091 () Bool)

(assert (=> b!1475929 m!1362091))

(declare-fun m!1362095 () Bool)

(assert (=> b!1475931 m!1362095))

(declare-fun m!1362097 () Bool)

(assert (=> d!155843 m!1362097))

(assert (=> d!155843 m!1361901))

(assert (=> b!1475935 m!1362095))

(assert (=> b!1475933 m!1362095))

(assert (=> b!1475681 d!155843))

(declare-fun d!155847 () Bool)

(assert (=> d!155847 (= (validKeyInArray!0 (select (arr!47866 a!2862) i!1006)) (and (not (= (select (arr!47866 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47866 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475698 d!155847))

(declare-fun d!155851 () Bool)

(assert (=> d!155851 (= (validKeyInArray!0 (select (arr!47866 a!2862) j!93)) (and (not (= (select (arr!47866 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47866 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475687 d!155851))

(declare-fun d!155853 () Bool)

(assert (=> d!155853 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126100 d!155853))

(declare-fun d!155861 () Bool)

(assert (=> d!155861 (= (array_inv!36811 a!2862) (bvsge (size!48417 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126100 d!155861))

(declare-fun b!1476005 () Bool)

(declare-fun e!828136 () Bool)

(declare-fun call!67813 () Bool)

(assert (=> b!1476005 (= e!828136 call!67813)))

(declare-fun b!1476006 () Bool)

(declare-fun e!828137 () Bool)

(assert (=> b!1476006 (= e!828137 e!828136)))

(declare-fun lt!644830 () (_ BitVec 64))

(assert (=> b!1476006 (= lt!644830 (select (arr!47866 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644832 () Unit!49546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99180 (_ BitVec 64) (_ BitVec 32)) Unit!49546)

(assert (=> b!1476006 (= lt!644832 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644830 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1476006 (arrayContainsKey!0 a!2862 lt!644830 #b00000000000000000000000000000000)))

(declare-fun lt!644831 () Unit!49546)

(assert (=> b!1476006 (= lt!644831 lt!644832)))

(declare-fun res!1002517 () Bool)

(assert (=> b!1476006 (= res!1002517 (= (seekEntryOrOpen!0 (select (arr!47866 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12129 #b00000000000000000000000000000000)))))

(assert (=> b!1476006 (=> (not res!1002517) (not e!828136))))

(declare-fun bm!67810 () Bool)

(assert (=> bm!67810 (= call!67813 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1476007 () Bool)

(declare-fun e!828135 () Bool)

(assert (=> b!1476007 (= e!828135 e!828137)))

(declare-fun c!136266 () Bool)

(assert (=> b!1476007 (= c!136266 (validKeyInArray!0 (select (arr!47866 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155863 () Bool)

(declare-fun res!1002516 () Bool)

(assert (=> d!155863 (=> res!1002516 e!828135)))

(assert (=> d!155863 (= res!1002516 (bvsge #b00000000000000000000000000000000 (size!48417 a!2862)))))

(assert (=> d!155863 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!828135)))

(declare-fun b!1476008 () Bool)

(assert (=> b!1476008 (= e!828137 call!67813)))

(assert (= (and d!155863 (not res!1002516)) b!1476007))

(assert (= (and b!1476007 c!136266) b!1476006))

(assert (= (and b!1476007 (not c!136266)) b!1476008))

(assert (= (and b!1476006 res!1002517) b!1476005))

(assert (= (or b!1476005 b!1476008) bm!67810))

(declare-fun m!1362149 () Bool)

(assert (=> b!1476006 m!1362149))

(declare-fun m!1362151 () Bool)

(assert (=> b!1476006 m!1362151))

(declare-fun m!1362153 () Bool)

(assert (=> b!1476006 m!1362153))

(assert (=> b!1476006 m!1362149))

(declare-fun m!1362155 () Bool)

(assert (=> b!1476006 m!1362155))

(declare-fun m!1362157 () Bool)

(assert (=> bm!67810 m!1362157))

(assert (=> b!1476007 m!1362149))

(assert (=> b!1476007 m!1362149))

(declare-fun m!1362159 () Bool)

(assert (=> b!1476007 m!1362159))

(assert (=> b!1475688 d!155863))

(declare-fun b!1476052 () Bool)

(declare-fun e!828161 () SeekEntryResult!12129)

(declare-fun lt!644854 () SeekEntryResult!12129)

(assert (=> b!1476052 (= e!828161 (MissingZero!12129 (index!50909 lt!644854)))))

(declare-fun b!1476053 () Bool)

(declare-fun c!136288 () Bool)

(declare-fun lt!644853 () (_ BitVec 64))

(assert (=> b!1476053 (= c!136288 (= lt!644853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828162 () SeekEntryResult!12129)

(assert (=> b!1476053 (= e!828162 e!828161)))

(declare-fun b!1476054 () Bool)

(assert (=> b!1476054 (= e!828161 (seekKeyOrZeroReturnVacant!0 (x!132506 lt!644854) (index!50909 lt!644854) (index!50909 lt!644854) (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155875 () Bool)

(declare-fun lt!644852 () SeekEntryResult!12129)

(assert (=> d!155875 (and (or (is-Undefined!12129 lt!644852) (not (is-Found!12129 lt!644852)) (and (bvsge (index!50908 lt!644852) #b00000000000000000000000000000000) (bvslt (index!50908 lt!644852) (size!48417 a!2862)))) (or (is-Undefined!12129 lt!644852) (is-Found!12129 lt!644852) (not (is-MissingZero!12129 lt!644852)) (and (bvsge (index!50907 lt!644852) #b00000000000000000000000000000000) (bvslt (index!50907 lt!644852) (size!48417 a!2862)))) (or (is-Undefined!12129 lt!644852) (is-Found!12129 lt!644852) (is-MissingZero!12129 lt!644852) (not (is-MissingVacant!12129 lt!644852)) (and (bvsge (index!50910 lt!644852) #b00000000000000000000000000000000) (bvslt (index!50910 lt!644852) (size!48417 a!2862)))) (or (is-Undefined!12129 lt!644852) (ite (is-Found!12129 lt!644852) (= (select (arr!47866 a!2862) (index!50908 lt!644852)) (select (arr!47866 a!2862) j!93)) (ite (is-MissingZero!12129 lt!644852) (= (select (arr!47866 a!2862) (index!50907 lt!644852)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12129 lt!644852) (= (select (arr!47866 a!2862) (index!50910 lt!644852)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!828163 () SeekEntryResult!12129)

(assert (=> d!155875 (= lt!644852 e!828163)))

(declare-fun c!136287 () Bool)

(assert (=> d!155875 (= c!136287 (and (is-Intermediate!12129 lt!644854) (undefined!12941 lt!644854)))))

(assert (=> d!155875 (= lt!644854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47866 a!2862) j!93) mask!2687) (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155875 (validMask!0 mask!2687)))

(assert (=> d!155875 (= (seekEntryOrOpen!0 (select (arr!47866 a!2862) j!93) a!2862 mask!2687) lt!644852)))

(declare-fun b!1476055 () Bool)

(assert (=> b!1476055 (= e!828162 (Found!12129 (index!50909 lt!644854)))))

(declare-fun b!1476056 () Bool)

(assert (=> b!1476056 (= e!828163 e!828162)))

(assert (=> b!1476056 (= lt!644853 (select (arr!47866 a!2862) (index!50909 lt!644854)))))

(declare-fun c!136286 () Bool)

(assert (=> b!1476056 (= c!136286 (= lt!644853 (select (arr!47866 a!2862) j!93)))))

(declare-fun b!1476057 () Bool)

(assert (=> b!1476057 (= e!828163 Undefined!12129)))

(assert (= (and d!155875 c!136287) b!1476057))

(assert (= (and d!155875 (not c!136287)) b!1476056))

(assert (= (and b!1476056 c!136286) b!1476055))

(assert (= (and b!1476056 (not c!136286)) b!1476053))

(assert (= (and b!1476053 c!136288) b!1476052))

(assert (= (and b!1476053 (not c!136288)) b!1476054))

(assert (=> b!1476054 m!1361891))

(declare-fun m!1362189 () Bool)

(assert (=> b!1476054 m!1362189))

(declare-fun m!1362191 () Bool)

(assert (=> d!155875 m!1362191))

(declare-fun m!1362193 () Bool)

(assert (=> d!155875 m!1362193))

(assert (=> d!155875 m!1361891))

(assert (=> d!155875 m!1361893))

(assert (=> d!155875 m!1361893))

(assert (=> d!155875 m!1361891))

(assert (=> d!155875 m!1361895))

(declare-fun m!1362195 () Bool)

(assert (=> d!155875 m!1362195))

(assert (=> d!155875 m!1361901))

(declare-fun m!1362197 () Bool)

(assert (=> b!1476056 m!1362197))

(assert (=> b!1475684 d!155875))

(declare-fun b!1476058 () Bool)

(declare-fun e!828165 () Bool)

(declare-fun call!67815 () Bool)

(assert (=> b!1476058 (= e!828165 call!67815)))

(declare-fun b!1476059 () Bool)

(declare-fun e!828166 () Bool)

(assert (=> b!1476059 (= e!828166 e!828165)))

(declare-fun lt!644855 () (_ BitVec 64))

(assert (=> b!1476059 (= lt!644855 (select (arr!47866 a!2862) j!93))))

(declare-fun lt!644857 () Unit!49546)

(assert (=> b!1476059 (= lt!644857 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644855 j!93))))

(assert (=> b!1476059 (arrayContainsKey!0 a!2862 lt!644855 #b00000000000000000000000000000000)))

(declare-fun lt!644856 () Unit!49546)

(assert (=> b!1476059 (= lt!644856 lt!644857)))

(declare-fun res!1002524 () Bool)

(assert (=> b!1476059 (= res!1002524 (= (seekEntryOrOpen!0 (select (arr!47866 a!2862) j!93) a!2862 mask!2687) (Found!12129 j!93)))))

(assert (=> b!1476059 (=> (not res!1002524) (not e!828165))))

(declare-fun bm!67812 () Bool)

(assert (=> bm!67812 (= call!67815 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1476060 () Bool)

(declare-fun e!828164 () Bool)

(assert (=> b!1476060 (= e!828164 e!828166)))

(declare-fun c!136289 () Bool)

(assert (=> b!1476060 (= c!136289 (validKeyInArray!0 (select (arr!47866 a!2862) j!93)))))

(declare-fun d!155883 () Bool)

(declare-fun res!1002523 () Bool)

(assert (=> d!155883 (=> res!1002523 e!828164)))

(assert (=> d!155883 (= res!1002523 (bvsge j!93 (size!48417 a!2862)))))

(assert (=> d!155883 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!828164)))

(declare-fun b!1476061 () Bool)

(assert (=> b!1476061 (= e!828166 call!67815)))

(assert (= (and d!155883 (not res!1002523)) b!1476060))

(assert (= (and b!1476060 c!136289) b!1476059))

(assert (= (and b!1476060 (not c!136289)) b!1476061))

(assert (= (and b!1476059 res!1002524) b!1476058))

(assert (= (or b!1476058 b!1476061) bm!67812))

(assert (=> b!1476059 m!1361891))

(declare-fun m!1362199 () Bool)

(assert (=> b!1476059 m!1362199))

(declare-fun m!1362201 () Bool)

(assert (=> b!1476059 m!1362201))

(assert (=> b!1476059 m!1361891))

(assert (=> b!1476059 m!1361917))

(declare-fun m!1362203 () Bool)

(assert (=> bm!67812 m!1362203))

(assert (=> b!1476060 m!1361891))

(assert (=> b!1476060 m!1361891))

(assert (=> b!1476060 m!1361925))

(assert (=> b!1475684 d!155883))

(declare-fun d!155885 () Bool)

(assert (=> d!155885 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644860 () Unit!49546)

(declare-fun choose!38 (array!99180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49546)

(assert (=> d!155885 (= lt!644860 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155885 (validMask!0 mask!2687)))

(assert (=> d!155885 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644860)))

(declare-fun bs!42577 () Bool)

(assert (= bs!42577 d!155885))

(assert (=> bs!42577 m!1361919))

(declare-fun m!1362205 () Bool)

(assert (=> bs!42577 m!1362205))

(assert (=> bs!42577 m!1361901))

(assert (=> b!1475684 d!155885))

(declare-fun b!1476062 () Bool)

(declare-fun e!828170 () Bool)

(declare-fun e!828168 () Bool)

(assert (=> b!1476062 (= e!828170 e!828168)))

(declare-fun res!1002525 () Bool)

(declare-fun lt!644861 () SeekEntryResult!12129)

(assert (=> b!1476062 (= res!1002525 (and (is-Intermediate!12129 lt!644861) (not (undefined!12941 lt!644861)) (bvslt (x!132506 lt!644861) #b01111111111111111111111111111110) (bvsge (x!132506 lt!644861) #b00000000000000000000000000000000) (bvsge (x!132506 lt!644861) x!665)))))

(assert (=> b!1476062 (=> (not res!1002525) (not e!828168))))

(declare-fun e!828169 () SeekEntryResult!12129)

(declare-fun b!1476064 () Bool)

(assert (=> b!1476064 (= e!828169 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1476065 () Bool)

(declare-fun e!828171 () SeekEntryResult!12129)

(assert (=> b!1476065 (= e!828171 (Intermediate!12129 true index!646 x!665))))

(declare-fun b!1476066 () Bool)

(assert (=> b!1476066 (and (bvsge (index!50909 lt!644861) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644861) (size!48417 a!2862)))))

(declare-fun res!1002526 () Bool)

(assert (=> b!1476066 (= res!1002526 (= (select (arr!47866 a!2862) (index!50909 lt!644861)) (select (arr!47866 a!2862) j!93)))))

(declare-fun e!828167 () Bool)

(assert (=> b!1476066 (=> res!1002526 e!828167)))

(assert (=> b!1476066 (= e!828168 e!828167)))

(declare-fun b!1476067 () Bool)

(assert (=> b!1476067 (= e!828169 (Intermediate!12129 false index!646 x!665))))

(declare-fun b!1476068 () Bool)

(assert (=> b!1476068 (and (bvsge (index!50909 lt!644861) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644861) (size!48417 a!2862)))))

(assert (=> b!1476068 (= e!828167 (= (select (arr!47866 a!2862) (index!50909 lt!644861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1476069 () Bool)

(assert (=> b!1476069 (= e!828171 e!828169)))

(declare-fun c!136291 () Bool)

(declare-fun lt!644862 () (_ BitVec 64))

(assert (=> b!1476069 (= c!136291 (or (= lt!644862 (select (arr!47866 a!2862) j!93)) (= (bvadd lt!644862 lt!644862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1476070 () Bool)

(assert (=> b!1476070 (and (bvsge (index!50909 lt!644861) #b00000000000000000000000000000000) (bvslt (index!50909 lt!644861) (size!48417 a!2862)))))

(declare-fun res!1002527 () Bool)

(assert (=> b!1476070 (= res!1002527 (= (select (arr!47866 a!2862) (index!50909 lt!644861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476070 (=> res!1002527 e!828167)))

(declare-fun d!155887 () Bool)

(assert (=> d!155887 e!828170))

(declare-fun c!136290 () Bool)

(assert (=> d!155887 (= c!136290 (and (is-Intermediate!12129 lt!644861) (undefined!12941 lt!644861)))))

(assert (=> d!155887 (= lt!644861 e!828171)))

(declare-fun c!136292 () Bool)

(assert (=> d!155887 (= c!136292 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155887 (= lt!644862 (select (arr!47866 a!2862) index!646))))

(assert (=> d!155887 (validMask!0 mask!2687)))

(assert (=> d!155887 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47866 a!2862) j!93) a!2862 mask!2687) lt!644861)))

(declare-fun b!1476063 () Bool)

(assert (=> b!1476063 (= e!828170 (bvsge (x!132506 lt!644861) #b01111111111111111111111111111110))))

(assert (= (and d!155887 c!136292) b!1476065))

(assert (= (and d!155887 (not c!136292)) b!1476069))

(assert (= (and b!1476069 c!136291) b!1476067))

(assert (= (and b!1476069 (not c!136291)) b!1476064))

(assert (= (and d!155887 c!136290) b!1476063))

(assert (= (and d!155887 (not c!136290)) b!1476062))

(assert (= (and b!1476062 res!1002525) b!1476066))

(assert (= (and b!1476066 (not res!1002526)) b!1476070))

(assert (= (and b!1476070 (not res!1002527)) b!1476068))

(assert (=> b!1476064 m!1362089))

(assert (=> b!1476064 m!1362089))

(assert (=> b!1476064 m!1361891))

(declare-fun m!1362207 () Bool)

(assert (=> b!1476064 m!1362207))

(declare-fun m!1362209 () Bool)

(assert (=> b!1476066 m!1362209))

(assert (=> d!155887 m!1361905))

(assert (=> d!155887 m!1361901))

(assert (=> b!1476070 m!1362209))

(assert (=> b!1476068 m!1362209))

(assert (=> b!1475697 d!155887))

(declare-fun b!1476110 () Bool)

(declare-fun c!136310 () Bool)

(declare-fun lt!644874 () (_ BitVec 64))

(assert (=> b!1476110 (= c!136310 (= lt!644874 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828194 () SeekEntryResult!12129)

(declare-fun e!828193 () SeekEntryResult!12129)

(assert (=> b!1476110 (= e!828194 e!828193)))

(declare-fun lt!644873 () SeekEntryResult!12129)

(declare-fun d!155889 () Bool)

(assert (=> d!155889 (and (or (is-Undefined!12129 lt!644873) (not (is-Found!12129 lt!644873)) (and (bvsge (index!50908 lt!644873) #b00000000000000000000000000000000) (bvslt (index!50908 lt!644873) (size!48417 lt!644700)))) (or (is-Undefined!12129 lt!644873) (is-Found!12129 lt!644873) (not (is-MissingVacant!12129 lt!644873)) (not (= (index!50910 lt!644873) intermediateAfterIndex!19)) (and (bvsge (index!50910 lt!644873) #b00000000000000000000000000000000) (bvslt (index!50910 lt!644873) (size!48417 lt!644700)))) (or (is-Undefined!12129 lt!644873) (ite (is-Found!12129 lt!644873) (= (select (arr!47866 lt!644700) (index!50908 lt!644873)) lt!644696) (and (is-MissingVacant!12129 lt!644873) (= (index!50910 lt!644873) intermediateAfterIndex!19) (= (select (arr!47866 lt!644700) (index!50910 lt!644873)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!828195 () SeekEntryResult!12129)

(assert (=> d!155889 (= lt!644873 e!828195)))

(declare-fun c!136308 () Bool)

(assert (=> d!155889 (= c!136308 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155889 (= lt!644874 (select (arr!47866 lt!644700) index!646))))

(assert (=> d!155889 (validMask!0 mask!2687)))

(assert (=> d!155889 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644696 lt!644700 mask!2687) lt!644873)))

(declare-fun b!1476111 () Bool)

(assert (=> b!1476111 (= e!828195 Undefined!12129)))

(declare-fun b!1476112 () Bool)

(assert (=> b!1476112 (= e!828193 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644696 lt!644700 mask!2687))))

(declare-fun b!1476113 () Bool)

(assert (=> b!1476113 (= e!828194 (Found!12129 index!646))))

(declare-fun b!1476114 () Bool)

(assert (=> b!1476114 (= e!828195 e!828194)))

(declare-fun c!136309 () Bool)

(assert (=> b!1476114 (= c!136309 (= lt!644874 lt!644696))))

(declare-fun b!1476115 () Bool)

(assert (=> b!1476115 (= e!828193 (MissingVacant!12129 intermediateAfterIndex!19))))

(assert (= (and d!155889 c!136308) b!1476111))

(assert (= (and d!155889 (not c!136308)) b!1476114))

(assert (= (and b!1476114 c!136309) b!1476113))

(assert (= (and b!1476114 (not c!136309)) b!1476110))

(assert (= (and b!1476110 c!136310) b!1476115))

(assert (= (and b!1476110 (not c!136310)) b!1476112))

(declare-fun m!1362217 () Bool)

(assert (=> d!155889 m!1362217))

(declare-fun m!1362219 () Bool)

(assert (=> d!155889 m!1362219))

(assert (=> d!155889 m!1362097))

(assert (=> d!155889 m!1361901))

(assert (=> b!1476112 m!1362089))

(assert (=> b!1476112 m!1362089))

(declare-fun m!1362221 () Bool)

(assert (=> b!1476112 m!1362221))

(assert (=> b!1475686 d!155889))

(declare-fun b!1476116 () Bool)

(declare-fun e!828196 () SeekEntryResult!12129)

(declare-fun lt!644877 () SeekEntryResult!12129)

(assert (=> b!1476116 (= e!828196 (MissingZero!12129 (index!50909 lt!644877)))))

(declare-fun b!1476117 () Bool)

(declare-fun c!136313 () Bool)

(declare-fun lt!644876 () (_ BitVec 64))

(assert (=> b!1476117 (= c!136313 (= lt!644876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828197 () SeekEntryResult!12129)

(assert (=> b!1476117 (= e!828197 e!828196)))

(declare-fun b!1476118 () Bool)

(assert (=> b!1476118 (= e!828196 (seekKeyOrZeroReturnVacant!0 (x!132506 lt!644877) (index!50909 lt!644877) (index!50909 lt!644877) lt!644696 lt!644700 mask!2687))))

(declare-fun d!155893 () Bool)

(declare-fun lt!644875 () SeekEntryResult!12129)

(assert (=> d!155893 (and (or (is-Undefined!12129 lt!644875) (not (is-Found!12129 lt!644875)) (and (bvsge (index!50908 lt!644875) #b00000000000000000000000000000000) (bvslt (index!50908 lt!644875) (size!48417 lt!644700)))) (or (is-Undefined!12129 lt!644875) (is-Found!12129 lt!644875) (not (is-MissingZero!12129 lt!644875)) (and (bvsge (index!50907 lt!644875) #b00000000000000000000000000000000) (bvslt (index!50907 lt!644875) (size!48417 lt!644700)))) (or (is-Undefined!12129 lt!644875) (is-Found!12129 lt!644875) (is-MissingZero!12129 lt!644875) (not (is-MissingVacant!12129 lt!644875)) (and (bvsge (index!50910 lt!644875) #b00000000000000000000000000000000) (bvslt (index!50910 lt!644875) (size!48417 lt!644700)))) (or (is-Undefined!12129 lt!644875) (ite (is-Found!12129 lt!644875) (= (select (arr!47866 lt!644700) (index!50908 lt!644875)) lt!644696) (ite (is-MissingZero!12129 lt!644875) (= (select (arr!47866 lt!644700) (index!50907 lt!644875)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12129 lt!644875) (= (select (arr!47866 lt!644700) (index!50910 lt!644875)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!828198 () SeekEntryResult!12129)

(assert (=> d!155893 (= lt!644875 e!828198)))

(declare-fun c!136312 () Bool)

(assert (=> d!155893 (= c!136312 (and (is-Intermediate!12129 lt!644877) (undefined!12941 lt!644877)))))

(assert (=> d!155893 (= lt!644877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644696 mask!2687) lt!644696 lt!644700 mask!2687))))

(assert (=> d!155893 (validMask!0 mask!2687)))

(assert (=> d!155893 (= (seekEntryOrOpen!0 lt!644696 lt!644700 mask!2687) lt!644875)))

(declare-fun b!1476119 () Bool)

(assert (=> b!1476119 (= e!828197 (Found!12129 (index!50909 lt!644877)))))

(declare-fun b!1476120 () Bool)

(assert (=> b!1476120 (= e!828198 e!828197)))

(assert (=> b!1476120 (= lt!644876 (select (arr!47866 lt!644700) (index!50909 lt!644877)))))

(declare-fun c!136311 () Bool)

(assert (=> b!1476120 (= c!136311 (= lt!644876 lt!644696))))

(declare-fun b!1476121 () Bool)

(assert (=> b!1476121 (= e!828198 Undefined!12129)))

(assert (= (and d!155893 c!136312) b!1476121))

(assert (= (and d!155893 (not c!136312)) b!1476120))

(assert (= (and b!1476120 c!136311) b!1476119))

(assert (= (and b!1476120 (not c!136311)) b!1476117))

(assert (= (and b!1476117 c!136313) b!1476116))

(assert (= (and b!1476117 (not c!136313)) b!1476118))

(declare-fun m!1362223 () Bool)

(assert (=> b!1476118 m!1362223))

(declare-fun m!1362225 () Bool)

(assert (=> d!155893 m!1362225))

(declare-fun m!1362227 () Bool)

(assert (=> d!155893 m!1362227))

(assert (=> d!155893 m!1361883))

(assert (=> d!155893 m!1361883))

(assert (=> d!155893 m!1361885))

(declare-fun m!1362229 () Bool)

(assert (=> d!155893 m!1362229))

(assert (=> d!155893 m!1361901))

(declare-fun m!1362231 () Bool)

(assert (=> b!1476120 m!1362231))

(assert (=> b!1475686 d!155893))

(declare-fun b!1476132 () Bool)

(declare-fun e!828210 () Bool)

(declare-fun call!67818 () Bool)

(assert (=> b!1476132 (= e!828210 call!67818)))

(declare-fun b!1476133 () Bool)

(declare-fun e!828207 () Bool)

(declare-fun contains!9922 (List!34547 (_ BitVec 64)) Bool)

(assert (=> b!1476133 (= e!828207 (contains!9922 Nil!34544 (select (arr!47866 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1476134 () Bool)

(declare-fun e!828208 () Bool)

(assert (=> b!1476134 (= e!828208 e!828210)))

(declare-fun c!136316 () Bool)

(assert (=> b!1476134 (= c!136316 (validKeyInArray!0 (select (arr!47866 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155897 () Bool)

(declare-fun res!1002544 () Bool)

(declare-fun e!828209 () Bool)

(assert (=> d!155897 (=> res!1002544 e!828209)))

(assert (=> d!155897 (= res!1002544 (bvsge #b00000000000000000000000000000000 (size!48417 a!2862)))))

(assert (=> d!155897 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34544) e!828209)))

(declare-fun b!1476135 () Bool)

(assert (=> b!1476135 (= e!828209 e!828208)))

(declare-fun res!1002545 () Bool)

(assert (=> b!1476135 (=> (not res!1002545) (not e!828208))))

(assert (=> b!1476135 (= res!1002545 (not e!828207))))

(declare-fun res!1002543 () Bool)

(assert (=> b!1476135 (=> (not res!1002543) (not e!828207))))

(assert (=> b!1476135 (= res!1002543 (validKeyInArray!0 (select (arr!47866 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1476136 () Bool)

(assert (=> b!1476136 (= e!828210 call!67818)))

(declare-fun bm!67815 () Bool)

(assert (=> bm!67815 (= call!67818 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136316 (Cons!34543 (select (arr!47866 a!2862) #b00000000000000000000000000000000) Nil!34544) Nil!34544)))))

(assert (= (and d!155897 (not res!1002544)) b!1476135))

(assert (= (and b!1476135 res!1002543) b!1476133))

(assert (= (and b!1476135 res!1002545) b!1476134))

(assert (= (and b!1476134 c!136316) b!1476136))

(assert (= (and b!1476134 (not c!136316)) b!1476132))

(assert (= (or b!1476136 b!1476132) bm!67815))

(assert (=> b!1476133 m!1362149))

(assert (=> b!1476133 m!1362149))

(declare-fun m!1362233 () Bool)

(assert (=> b!1476133 m!1362233))

(assert (=> b!1476134 m!1362149))

(assert (=> b!1476134 m!1362149))

(assert (=> b!1476134 m!1362159))

(assert (=> b!1476135 m!1362149))

(assert (=> b!1476135 m!1362149))

(assert (=> b!1476135 m!1362159))

(assert (=> bm!67815 m!1362149))

(declare-fun m!1362235 () Bool)

(assert (=> bm!67815 m!1362235))

(assert (=> b!1475696 d!155897))

(declare-fun b!1476137 () Bool)

(declare-fun c!136319 () Bool)

(declare-fun lt!644879 () (_ BitVec 64))

(assert (=> b!1476137 (= c!136319 (= lt!644879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828212 () SeekEntryResult!12129)

(declare-fun e!828211 () SeekEntryResult!12129)

(assert (=> b!1476137 (= e!828212 e!828211)))

(declare-fun lt!644878 () SeekEntryResult!12129)

(declare-fun d!155899 () Bool)

(assert (=> d!155899 (and (or (is-Undefined!12129 lt!644878) (not (is-Found!12129 lt!644878)) (and (bvsge (index!50908 lt!644878) #b00000000000000000000000000000000) (bvslt (index!50908 lt!644878) (size!48417 a!2862)))) (or (is-Undefined!12129 lt!644878) (is-Found!12129 lt!644878) (not (is-MissingVacant!12129 lt!644878)) (not (= (index!50910 lt!644878) index!646)) (and (bvsge (index!50910 lt!644878) #b00000000000000000000000000000000) (bvslt (index!50910 lt!644878) (size!48417 a!2862)))) (or (is-Undefined!12129 lt!644878) (ite (is-Found!12129 lt!644878) (= (select (arr!47866 a!2862) (index!50908 lt!644878)) (select (arr!47866 a!2862) j!93)) (and (is-MissingVacant!12129 lt!644878) (= (index!50910 lt!644878) index!646) (= (select (arr!47866 a!2862) (index!50910 lt!644878)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!828213 () SeekEntryResult!12129)

(assert (=> d!155899 (= lt!644878 e!828213)))

(declare-fun c!136317 () Bool)

(assert (=> d!155899 (= c!136317 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155899 (= lt!644879 (select (arr!47866 a!2862) index!646))))

(assert (=> d!155899 (validMask!0 mask!2687)))

(assert (=> d!155899 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47866 a!2862) j!93) a!2862 mask!2687) lt!644878)))

(declare-fun b!1476138 () Bool)

(assert (=> b!1476138 (= e!828213 Undefined!12129)))

(declare-fun b!1476139 () Bool)

(assert (=> b!1476139 (= e!828211 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1476140 () Bool)

(assert (=> b!1476140 (= e!828212 (Found!12129 index!646))))

(declare-fun b!1476141 () Bool)

(assert (=> b!1476141 (= e!828213 e!828212)))

(declare-fun c!136318 () Bool)

(assert (=> b!1476141 (= c!136318 (= lt!644879 (select (arr!47866 a!2862) j!93)))))

(declare-fun b!1476142 () Bool)

(assert (=> b!1476142 (= e!828211 (MissingVacant!12129 index!646))))

(assert (= (and d!155899 c!136317) b!1476138))

(assert (= (and d!155899 (not c!136317)) b!1476141))

(assert (= (and b!1476141 c!136318) b!1476140))

(assert (= (and b!1476141 (not c!136318)) b!1476137))

(assert (= (and b!1476137 c!136319) b!1476142))

(assert (= (and b!1476137 (not c!136319)) b!1476139))

(declare-fun m!1362237 () Bool)

(assert (=> d!155899 m!1362237))

(declare-fun m!1362239 () Bool)

(assert (=> d!155899 m!1362239))

(assert (=> d!155899 m!1361905))

(assert (=> d!155899 m!1361901))

(assert (=> b!1476139 m!1362089))

(assert (=> b!1476139 m!1362089))

(assert (=> b!1476139 m!1361891))

(declare-fun m!1362241 () Bool)

(assert (=> b!1476139 m!1362241))

(assert (=> b!1475693 d!155899))

(declare-fun b!1476143 () Bool)

(declare-fun e!828217 () Bool)

(declare-fun e!828215 () Bool)

(assert (=> b!1476143 (= e!828217 e!828215)))

(declare-fun res!1002546 () Bool)

(declare-fun lt!644880 () SeekEntryResult!12129)

(assert (=> b!1476143 (= res!1002546 (and (is-Intermediate!12129 lt!644880) (not (undefined!12941 lt!644880)) (bvslt (x!132506 lt!644880) #b01111111111111111111111111111110) (bvsge (x!132506 lt!644880) #b00000000000000000000000000000000) (bvsge (x!132506 lt!644880) #b00000000000000000000000000000000)))))

(assert (=> b!1476143 (=> (not res!1002546) (not e!828215))))

(declare-fun b!1476145 () Bool)

(declare-fun e!828216 () SeekEntryResult!12129)

(assert (=> b!1476145 (= e!828216 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47866 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47866 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1476146 () Bool)

(declare-fun e!828218 () SeekEntryResult!12129)

(assert (=> b!1476146 (= e!828218 (Intermediate!12129 true (toIndex!0 (select (arr!47866 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

