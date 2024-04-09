; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125144 () Bool)

(assert start!125144)

(declare-fun b!1456924 () Bool)

(declare-fun lt!638466 () (_ BitVec 32))

(declare-fun lt!638463 () (_ BitVec 64))

(declare-fun e!819678 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98509 0))(
  ( (array!98510 (arr!47538 (Array (_ BitVec 32) (_ BitVec 64))) (size!48089 (_ BitVec 32))) )
))
(declare-fun lt!638467 () array!98509)

(declare-datatypes ((SeekEntryResult!11813 0))(
  ( (MissingZero!11813 (index!49643 (_ BitVec 32))) (Found!11813 (index!49644 (_ BitVec 32))) (Intermediate!11813 (undefined!12625 Bool) (index!49645 (_ BitVec 32)) (x!131265 (_ BitVec 32))) (Undefined!11813) (MissingVacant!11813 (index!49646 (_ BitVec 32))) )
))
(declare-fun lt!638462 () SeekEntryResult!11813)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98509 (_ BitVec 32)) SeekEntryResult!11813)

(assert (=> b!1456924 (= e!819678 (not (= lt!638462 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638466 lt!638463 lt!638467 mask!2687))))))

(declare-fun b!1456925 () Bool)

(declare-fun res!987425 () Bool)

(declare-fun e!819674 () Bool)

(assert (=> b!1456925 (=> (not res!987425) (not e!819674))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98509)

(assert (=> b!1456925 (= res!987425 (and (= (size!48089 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48089 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48089 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456926 () Bool)

(declare-fun res!987424 () Bool)

(declare-fun e!819675 () Bool)

(assert (=> b!1456926 (=> res!987424 e!819675)))

(declare-fun lt!638464 () SeekEntryResult!11813)

(assert (=> b!1456926 (= res!987424 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638466 (select (arr!47538 a!2862) j!93) a!2862 mask!2687) lt!638464)))))

(declare-fun b!1456927 () Bool)

(declare-fun e!819676 () Bool)

(declare-fun e!819681 () Bool)

(assert (=> b!1456927 (= e!819676 (not e!819681))))

(declare-fun res!987413 () Bool)

(assert (=> b!1456927 (=> res!987413 e!819681)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456927 (= res!987413 (or (and (= (select (arr!47538 a!2862) index!646) (select (store (arr!47538 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47538 a!2862) index!646) (select (arr!47538 a!2862) j!93))) (= (select (arr!47538 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819683 () Bool)

(assert (=> b!1456927 e!819683))

(declare-fun res!987419 () Bool)

(assert (=> b!1456927 (=> (not res!987419) (not e!819683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98509 (_ BitVec 32)) Bool)

(assert (=> b!1456927 (= res!987419 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49070 0))(
  ( (Unit!49071) )
))
(declare-fun lt!638465 () Unit!49070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98509 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49070)

(assert (=> b!1456927 (= lt!638465 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1456928 () Bool)

(declare-fun lt!638461 () SeekEntryResult!11813)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98509 (_ BitVec 32)) SeekEntryResult!11813)

(assert (=> b!1456928 (= e!819678 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638466 intermediateAfterIndex!19 lt!638463 lt!638467 mask!2687) lt!638461)))))

(declare-fun b!1456929 () Bool)

(declare-fun res!987427 () Bool)

(assert (=> b!1456929 (=> (not res!987427) (not e!819676))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456929 (= res!987427 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456930 () Bool)

(declare-fun res!987420 () Bool)

(assert (=> b!1456930 (=> (not res!987420) (not e!819674))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1456930 (= res!987420 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48089 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48089 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48089 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456931 () Bool)

(declare-fun res!987414 () Bool)

(assert (=> b!1456931 (=> (not res!987414) (not e!819674))))

(declare-datatypes ((List!34219 0))(
  ( (Nil!34216) (Cons!34215 (h!35565 (_ BitVec 64)) (t!48920 List!34219)) )
))
(declare-fun arrayNoDuplicates!0 (array!98509 (_ BitVec 32) List!34219) Bool)

(assert (=> b!1456931 (= res!987414 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34216))))

(declare-fun e!819677 () Bool)

(declare-fun b!1456932 () Bool)

(assert (=> b!1456932 (= e!819677 (= lt!638462 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638463 lt!638467 mask!2687)))))

(declare-fun b!1456933 () Bool)

(declare-fun e!819680 () Bool)

(declare-fun e!819682 () Bool)

(assert (=> b!1456933 (= e!819680 e!819682)))

(declare-fun res!987423 () Bool)

(assert (=> b!1456933 (=> (not res!987423) (not e!819682))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456933 (= res!987423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47538 a!2862) j!93) mask!2687) (select (arr!47538 a!2862) j!93) a!2862 mask!2687) lt!638464))))

(assert (=> b!1456933 (= lt!638464 (Intermediate!11813 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456934 () Bool)

(assert (=> b!1456934 (= e!819674 e!819680)))

(declare-fun res!987426 () Bool)

(assert (=> b!1456934 (=> (not res!987426) (not e!819680))))

(assert (=> b!1456934 (= res!987426 (= (select (store (arr!47538 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456934 (= lt!638467 (array!98510 (store (arr!47538 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48089 a!2862)))))

(declare-fun b!1456935 () Bool)

(declare-fun res!987417 () Bool)

(assert (=> b!1456935 (=> (not res!987417) (not e!819683))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98509 (_ BitVec 32)) SeekEntryResult!11813)

(assert (=> b!1456935 (= res!987417 (= (seekEntryOrOpen!0 (select (arr!47538 a!2862) j!93) a!2862 mask!2687) (Found!11813 j!93)))))

(declare-fun b!1456936 () Bool)

(declare-fun res!987412 () Bool)

(assert (=> b!1456936 (=> (not res!987412) (not e!819674))))

(assert (=> b!1456936 (= res!987412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456937 () Bool)

(assert (=> b!1456937 (= e!819675 true)))

(declare-fun lt!638460 () Bool)

(assert (=> b!1456937 (= lt!638460 e!819678)))

(declare-fun c!134269 () Bool)

(assert (=> b!1456937 (= c!134269 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456938 () Bool)

(assert (=> b!1456938 (= e!819683 (and (or (= (select (arr!47538 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47538 a!2862) intermediateBeforeIndex!19) (select (arr!47538 a!2862) j!93))) (let ((bdg!53293 (select (store (arr!47538 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47538 a!2862) index!646) bdg!53293) (= (select (arr!47538 a!2862) index!646) (select (arr!47538 a!2862) j!93))) (= (select (arr!47538 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53293 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456939 () Bool)

(declare-fun res!987429 () Bool)

(assert (=> b!1456939 (=> (not res!987429) (not e!819682))))

(assert (=> b!1456939 (= res!987429 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47538 a!2862) j!93) a!2862 mask!2687) lt!638464))))

(declare-fun res!987418 () Bool)

(assert (=> start!125144 (=> (not res!987418) (not e!819674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125144 (= res!987418 (validMask!0 mask!2687))))

(assert (=> start!125144 e!819674))

(assert (=> start!125144 true))

(declare-fun array_inv!36483 (array!98509) Bool)

(assert (=> start!125144 (array_inv!36483 a!2862)))

(declare-fun b!1456940 () Bool)

(declare-fun res!987421 () Bool)

(assert (=> b!1456940 (=> (not res!987421) (not e!819674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456940 (= res!987421 (validKeyInArray!0 (select (arr!47538 a!2862) i!1006)))))

(declare-fun b!1456941 () Bool)

(assert (=> b!1456941 (= e!819682 e!819676)))

(declare-fun res!987428 () Bool)

(assert (=> b!1456941 (=> (not res!987428) (not e!819676))))

(assert (=> b!1456941 (= res!987428 (= lt!638462 (Intermediate!11813 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456941 (= lt!638462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638463 mask!2687) lt!638463 lt!638467 mask!2687))))

(assert (=> b!1456941 (= lt!638463 (select (store (arr!47538 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456942 () Bool)

(declare-fun res!987416 () Bool)

(assert (=> b!1456942 (=> (not res!987416) (not e!819676))))

(assert (=> b!1456942 (= res!987416 e!819677)))

(declare-fun c!134270 () Bool)

(assert (=> b!1456942 (= c!134270 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456943 () Bool)

(assert (=> b!1456943 (= e!819681 e!819675)))

(declare-fun res!987422 () Bool)

(assert (=> b!1456943 (=> res!987422 e!819675)))

(assert (=> b!1456943 (= res!987422 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638466 #b00000000000000000000000000000000) (bvsge lt!638466 (size!48089 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456943 (= lt!638466 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456943 (= lt!638461 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638463 lt!638467 mask!2687))))

(assert (=> b!1456943 (= lt!638461 (seekEntryOrOpen!0 lt!638463 lt!638467 mask!2687))))

(declare-fun b!1456944 () Bool)

(declare-fun res!987415 () Bool)

(assert (=> b!1456944 (=> (not res!987415) (not e!819674))))

(assert (=> b!1456944 (= res!987415 (validKeyInArray!0 (select (arr!47538 a!2862) j!93)))))

(declare-fun b!1456945 () Bool)

(assert (=> b!1456945 (= e!819677 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638463 lt!638467 mask!2687) (seekEntryOrOpen!0 lt!638463 lt!638467 mask!2687)))))

(assert (= (and start!125144 res!987418) b!1456925))

(assert (= (and b!1456925 res!987425) b!1456940))

(assert (= (and b!1456940 res!987421) b!1456944))

(assert (= (and b!1456944 res!987415) b!1456936))

(assert (= (and b!1456936 res!987412) b!1456931))

(assert (= (and b!1456931 res!987414) b!1456930))

(assert (= (and b!1456930 res!987420) b!1456934))

(assert (= (and b!1456934 res!987426) b!1456933))

(assert (= (and b!1456933 res!987423) b!1456939))

(assert (= (and b!1456939 res!987429) b!1456941))

(assert (= (and b!1456941 res!987428) b!1456942))

(assert (= (and b!1456942 c!134270) b!1456932))

(assert (= (and b!1456942 (not c!134270)) b!1456945))

(assert (= (and b!1456942 res!987416) b!1456929))

(assert (= (and b!1456929 res!987427) b!1456927))

(assert (= (and b!1456927 res!987419) b!1456935))

(assert (= (and b!1456935 res!987417) b!1456938))

(assert (= (and b!1456927 (not res!987413)) b!1456943))

(assert (= (and b!1456943 (not res!987422)) b!1456926))

(assert (= (and b!1456926 (not res!987424)) b!1456937))

(assert (= (and b!1456937 c!134269) b!1456924))

(assert (= (and b!1456937 (not c!134269)) b!1456928))

(declare-fun m!1345013 () Bool)

(assert (=> b!1456938 m!1345013))

(declare-fun m!1345015 () Bool)

(assert (=> b!1456938 m!1345015))

(declare-fun m!1345017 () Bool)

(assert (=> b!1456938 m!1345017))

(declare-fun m!1345019 () Bool)

(assert (=> b!1456938 m!1345019))

(declare-fun m!1345021 () Bool)

(assert (=> b!1456938 m!1345021))

(assert (=> b!1456926 m!1345021))

(assert (=> b!1456926 m!1345021))

(declare-fun m!1345023 () Bool)

(assert (=> b!1456926 m!1345023))

(declare-fun m!1345025 () Bool)

(assert (=> b!1456928 m!1345025))

(declare-fun m!1345027 () Bool)

(assert (=> b!1456943 m!1345027))

(declare-fun m!1345029 () Bool)

(assert (=> b!1456943 m!1345029))

(declare-fun m!1345031 () Bool)

(assert (=> b!1456943 m!1345031))

(assert (=> b!1456939 m!1345021))

(assert (=> b!1456939 m!1345021))

(declare-fun m!1345033 () Bool)

(assert (=> b!1456939 m!1345033))

(assert (=> b!1456934 m!1345013))

(declare-fun m!1345035 () Bool)

(assert (=> b!1456934 m!1345035))

(assert (=> b!1456933 m!1345021))

(assert (=> b!1456933 m!1345021))

(declare-fun m!1345037 () Bool)

(assert (=> b!1456933 m!1345037))

(assert (=> b!1456933 m!1345037))

(assert (=> b!1456933 m!1345021))

(declare-fun m!1345039 () Bool)

(assert (=> b!1456933 m!1345039))

(declare-fun m!1345041 () Bool)

(assert (=> b!1456932 m!1345041))

(declare-fun m!1345043 () Bool)

(assert (=> b!1456924 m!1345043))

(assert (=> b!1456935 m!1345021))

(assert (=> b!1456935 m!1345021))

(declare-fun m!1345045 () Bool)

(assert (=> b!1456935 m!1345045))

(declare-fun m!1345047 () Bool)

(assert (=> b!1456927 m!1345047))

(assert (=> b!1456927 m!1345013))

(assert (=> b!1456927 m!1345017))

(assert (=> b!1456927 m!1345019))

(declare-fun m!1345049 () Bool)

(assert (=> b!1456927 m!1345049))

(assert (=> b!1456927 m!1345021))

(declare-fun m!1345051 () Bool)

(assert (=> b!1456931 m!1345051))

(declare-fun m!1345053 () Bool)

(assert (=> b!1456941 m!1345053))

(assert (=> b!1456941 m!1345053))

(declare-fun m!1345055 () Bool)

(assert (=> b!1456941 m!1345055))

(assert (=> b!1456941 m!1345013))

(declare-fun m!1345057 () Bool)

(assert (=> b!1456941 m!1345057))

(declare-fun m!1345059 () Bool)

(assert (=> start!125144 m!1345059))

(declare-fun m!1345061 () Bool)

(assert (=> start!125144 m!1345061))

(declare-fun m!1345063 () Bool)

(assert (=> b!1456936 m!1345063))

(assert (=> b!1456944 m!1345021))

(assert (=> b!1456944 m!1345021))

(declare-fun m!1345065 () Bool)

(assert (=> b!1456944 m!1345065))

(assert (=> b!1456945 m!1345029))

(assert (=> b!1456945 m!1345031))

(declare-fun m!1345067 () Bool)

(assert (=> b!1456940 m!1345067))

(assert (=> b!1456940 m!1345067))

(declare-fun m!1345069 () Bool)

(assert (=> b!1456940 m!1345069))

(push 1)

(assert (not b!1456931))

(assert (not b!1456927))

(assert (not b!1456932))

(assert (not b!1456936))

(assert (not b!1456933))

(assert (not b!1456928))

(assert (not b!1456941))

(assert (not b!1456939))

(assert (not b!1456940))

(assert (not b!1456926))

(assert (not b!1456943))

(assert (not b!1456944))

(assert (not b!1456935))

(assert (not b!1456945))

(assert (not start!125144))

(assert (not b!1456924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

