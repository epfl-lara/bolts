; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125096 () Bool)

(assert start!125096)

(declare-fun b!1455340 () Bool)

(declare-fun res!986128 () Bool)

(declare-fun e!818961 () Bool)

(assert (=> b!1455340 (=> (not res!986128) (not e!818961))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1455340 (= res!986128 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455341 () Bool)

(declare-fun res!986116 () Bool)

(declare-fun e!818959 () Bool)

(assert (=> b!1455341 (=> (not res!986116) (not e!818959))))

(declare-datatypes ((array!98461 0))(
  ( (array!98462 (arr!47514 (Array (_ BitVec 32) (_ BitVec 64))) (size!48065 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98461)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455341 (= res!986116 (validKeyInArray!0 (select (arr!47514 a!2862) j!93)))))

(declare-fun b!1455342 () Bool)

(declare-datatypes ((SeekEntryResult!11789 0))(
  ( (MissingZero!11789 (index!49547 (_ BitVec 32))) (Found!11789 (index!49548 (_ BitVec 32))) (Intermediate!11789 (undefined!12601 Bool) (index!49549 (_ BitVec 32)) (x!131177 (_ BitVec 32))) (Undefined!11789) (MissingVacant!11789 (index!49550 (_ BitVec 32))) )
))
(declare-fun lt!637887 () SeekEntryResult!11789)

(declare-fun lt!637884 () (_ BitVec 64))

(declare-fun e!818962 () Bool)

(declare-fun lt!637891 () array!98461)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637888 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98461 (_ BitVec 32)) SeekEntryResult!11789)

(assert (=> b!1455342 (= e!818962 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637888 intermediateAfterIndex!19 lt!637884 lt!637891 mask!2687) lt!637887)))))

(declare-fun b!1455343 () Bool)

(declare-fun e!818958 () Bool)

(assert (=> b!1455343 (= e!818961 (not e!818958))))

(declare-fun res!986124 () Bool)

(assert (=> b!1455343 (=> res!986124 e!818958)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455343 (= res!986124 (or (and (= (select (arr!47514 a!2862) index!646) (select (store (arr!47514 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47514 a!2862) index!646) (select (arr!47514 a!2862) j!93))) (= (select (arr!47514 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818955 () Bool)

(assert (=> b!1455343 e!818955))

(declare-fun res!986131 () Bool)

(assert (=> b!1455343 (=> (not res!986131) (not e!818955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98461 (_ BitVec 32)) Bool)

(assert (=> b!1455343 (= res!986131 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49022 0))(
  ( (Unit!49023) )
))
(declare-fun lt!637885 () Unit!49022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49022)

(assert (=> b!1455343 (= lt!637885 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!986127 () Bool)

(assert (=> start!125096 (=> (not res!986127) (not e!818959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125096 (= res!986127 (validMask!0 mask!2687))))

(assert (=> start!125096 e!818959))

(assert (=> start!125096 true))

(declare-fun array_inv!36459 (array!98461) Bool)

(assert (=> start!125096 (array_inv!36459 a!2862)))

(declare-fun e!818954 () Bool)

(declare-fun b!1455344 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98461 (_ BitVec 32)) SeekEntryResult!11789)

(assert (=> b!1455344 (= e!818954 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637884 lt!637891 mask!2687) (seekEntryOrOpen!0 lt!637884 lt!637891 mask!2687)))))

(declare-fun b!1455345 () Bool)

(declare-fun e!818960 () Bool)

(assert (=> b!1455345 (= e!818958 e!818960)))

(declare-fun res!986117 () Bool)

(assert (=> b!1455345 (=> res!986117 e!818960)))

(assert (=> b!1455345 (= res!986117 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637888 #b00000000000000000000000000000000) (bvsge lt!637888 (size!48065 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455345 (= lt!637888 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455345 (= lt!637887 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637884 lt!637891 mask!2687))))

(assert (=> b!1455345 (= lt!637887 (seekEntryOrOpen!0 lt!637884 lt!637891 mask!2687))))

(declare-fun b!1455346 () Bool)

(declare-fun res!986118 () Bool)

(assert (=> b!1455346 (=> (not res!986118) (not e!818961))))

(assert (=> b!1455346 (= res!986118 e!818954)))

(declare-fun c!134125 () Bool)

(assert (=> b!1455346 (= c!134125 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455347 () Bool)

(declare-fun res!986121 () Bool)

(assert (=> b!1455347 (=> res!986121 e!818960)))

(declare-fun lt!637889 () SeekEntryResult!11789)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98461 (_ BitVec 32)) SeekEntryResult!11789)

(assert (=> b!1455347 (= res!986121 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637888 (select (arr!47514 a!2862) j!93) a!2862 mask!2687) lt!637889)))))

(declare-fun b!1455348 () Bool)

(declare-fun res!986132 () Bool)

(assert (=> b!1455348 (=> (not res!986132) (not e!818959))))

(assert (=> b!1455348 (= res!986132 (validKeyInArray!0 (select (arr!47514 a!2862) i!1006)))))

(declare-fun b!1455349 () Bool)

(declare-fun res!986123 () Bool)

(declare-fun e!818963 () Bool)

(assert (=> b!1455349 (=> (not res!986123) (not e!818963))))

(assert (=> b!1455349 (= res!986123 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47514 a!2862) j!93) a!2862 mask!2687) lt!637889))))

(declare-fun b!1455350 () Bool)

(declare-fun e!818957 () Bool)

(assert (=> b!1455350 (= e!818959 e!818957)))

(declare-fun res!986130 () Bool)

(assert (=> b!1455350 (=> (not res!986130) (not e!818957))))

(assert (=> b!1455350 (= res!986130 (= (select (store (arr!47514 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455350 (= lt!637891 (array!98462 (store (arr!47514 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48065 a!2862)))))

(declare-fun b!1455351 () Bool)

(declare-fun lt!637886 () SeekEntryResult!11789)

(assert (=> b!1455351 (= e!818962 (not (= lt!637886 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637888 lt!637884 lt!637891 mask!2687))))))

(declare-fun b!1455352 () Bool)

(declare-fun res!986122 () Bool)

(assert (=> b!1455352 (=> (not res!986122) (not e!818955))))

(assert (=> b!1455352 (= res!986122 (= (seekEntryOrOpen!0 (select (arr!47514 a!2862) j!93) a!2862 mask!2687) (Found!11789 j!93)))))

(declare-fun b!1455353 () Bool)

(declare-fun res!986119 () Bool)

(assert (=> b!1455353 (=> (not res!986119) (not e!818959))))

(assert (=> b!1455353 (= res!986119 (and (= (size!48065 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48065 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48065 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455354 () Bool)

(assert (=> b!1455354 (= e!818954 (= lt!637886 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637884 lt!637891 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1455355 () Bool)

(assert (=> b!1455355 (= e!818955 (and (or (= (select (arr!47514 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47514 a!2862) intermediateBeforeIndex!19) (select (arr!47514 a!2862) j!93))) (let ((bdg!53149 (select (store (arr!47514 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47514 a!2862) index!646) bdg!53149) (= (select (arr!47514 a!2862) index!646) (select (arr!47514 a!2862) j!93))) (= (select (arr!47514 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53149 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455356 () Bool)

(assert (=> b!1455356 (= e!818963 e!818961)))

(declare-fun res!986126 () Bool)

(assert (=> b!1455356 (=> (not res!986126) (not e!818961))))

(assert (=> b!1455356 (= res!986126 (= lt!637886 (Intermediate!11789 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455356 (= lt!637886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637884 mask!2687) lt!637884 lt!637891 mask!2687))))

(assert (=> b!1455356 (= lt!637884 (select (store (arr!47514 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455357 () Bool)

(declare-fun res!986129 () Bool)

(assert (=> b!1455357 (=> (not res!986129) (not e!818959))))

(assert (=> b!1455357 (= res!986129 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48065 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48065 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48065 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455358 () Bool)

(assert (=> b!1455358 (= e!818960 true)))

(declare-fun lt!637890 () Bool)

(assert (=> b!1455358 (= lt!637890 e!818962)))

(declare-fun c!134126 () Bool)

(assert (=> b!1455358 (= c!134126 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455359 () Bool)

(assert (=> b!1455359 (= e!818957 e!818963)))

(declare-fun res!986120 () Bool)

(assert (=> b!1455359 (=> (not res!986120) (not e!818963))))

(assert (=> b!1455359 (= res!986120 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47514 a!2862) j!93) mask!2687) (select (arr!47514 a!2862) j!93) a!2862 mask!2687) lt!637889))))

(assert (=> b!1455359 (= lt!637889 (Intermediate!11789 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455360 () Bool)

(declare-fun res!986133 () Bool)

(assert (=> b!1455360 (=> (not res!986133) (not e!818959))))

(declare-datatypes ((List!34195 0))(
  ( (Nil!34192) (Cons!34191 (h!35541 (_ BitVec 64)) (t!48896 List!34195)) )
))
(declare-fun arrayNoDuplicates!0 (array!98461 (_ BitVec 32) List!34195) Bool)

(assert (=> b!1455360 (= res!986133 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34192))))

(declare-fun b!1455361 () Bool)

(declare-fun res!986125 () Bool)

(assert (=> b!1455361 (=> (not res!986125) (not e!818959))))

(assert (=> b!1455361 (= res!986125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125096 res!986127) b!1455353))

(assert (= (and b!1455353 res!986119) b!1455348))

(assert (= (and b!1455348 res!986132) b!1455341))

(assert (= (and b!1455341 res!986116) b!1455361))

(assert (= (and b!1455361 res!986125) b!1455360))

(assert (= (and b!1455360 res!986133) b!1455357))

(assert (= (and b!1455357 res!986129) b!1455350))

(assert (= (and b!1455350 res!986130) b!1455359))

(assert (= (and b!1455359 res!986120) b!1455349))

(assert (= (and b!1455349 res!986123) b!1455356))

(assert (= (and b!1455356 res!986126) b!1455346))

(assert (= (and b!1455346 c!134125) b!1455354))

(assert (= (and b!1455346 (not c!134125)) b!1455344))

(assert (= (and b!1455346 res!986118) b!1455340))

(assert (= (and b!1455340 res!986128) b!1455343))

(assert (= (and b!1455343 res!986131) b!1455352))

(assert (= (and b!1455352 res!986122) b!1455355))

(assert (= (and b!1455343 (not res!986124)) b!1455345))

(assert (= (and b!1455345 (not res!986117)) b!1455347))

(assert (= (and b!1455347 (not res!986121)) b!1455358))

(assert (= (and b!1455358 c!134126) b!1455351))

(assert (= (and b!1455358 (not c!134126)) b!1455342))

(declare-fun m!1343621 () Bool)

(assert (=> b!1455344 m!1343621))

(declare-fun m!1343623 () Bool)

(assert (=> b!1455344 m!1343623))

(declare-fun m!1343625 () Bool)

(assert (=> b!1455343 m!1343625))

(declare-fun m!1343627 () Bool)

(assert (=> b!1455343 m!1343627))

(declare-fun m!1343629 () Bool)

(assert (=> b!1455343 m!1343629))

(declare-fun m!1343631 () Bool)

(assert (=> b!1455343 m!1343631))

(declare-fun m!1343633 () Bool)

(assert (=> b!1455343 m!1343633))

(declare-fun m!1343635 () Bool)

(assert (=> b!1455343 m!1343635))

(assert (=> b!1455350 m!1343627))

(declare-fun m!1343637 () Bool)

(assert (=> b!1455350 m!1343637))

(declare-fun m!1343639 () Bool)

(assert (=> b!1455356 m!1343639))

(assert (=> b!1455356 m!1343639))

(declare-fun m!1343641 () Bool)

(assert (=> b!1455356 m!1343641))

(assert (=> b!1455356 m!1343627))

(declare-fun m!1343643 () Bool)

(assert (=> b!1455356 m!1343643))

(assert (=> b!1455341 m!1343635))

(assert (=> b!1455341 m!1343635))

(declare-fun m!1343645 () Bool)

(assert (=> b!1455341 m!1343645))

(assert (=> b!1455355 m!1343627))

(declare-fun m!1343647 () Bool)

(assert (=> b!1455355 m!1343647))

(assert (=> b!1455355 m!1343629))

(assert (=> b!1455355 m!1343631))

(assert (=> b!1455355 m!1343635))

(declare-fun m!1343649 () Bool)

(assert (=> start!125096 m!1343649))

(declare-fun m!1343651 () Bool)

(assert (=> start!125096 m!1343651))

(declare-fun m!1343653 () Bool)

(assert (=> b!1455354 m!1343653))

(declare-fun m!1343655 () Bool)

(assert (=> b!1455345 m!1343655))

(assert (=> b!1455345 m!1343621))

(assert (=> b!1455345 m!1343623))

(declare-fun m!1343657 () Bool)

(assert (=> b!1455348 m!1343657))

(assert (=> b!1455348 m!1343657))

(declare-fun m!1343659 () Bool)

(assert (=> b!1455348 m!1343659))

(assert (=> b!1455359 m!1343635))

(assert (=> b!1455359 m!1343635))

(declare-fun m!1343661 () Bool)

(assert (=> b!1455359 m!1343661))

(assert (=> b!1455359 m!1343661))

(assert (=> b!1455359 m!1343635))

(declare-fun m!1343663 () Bool)

(assert (=> b!1455359 m!1343663))

(declare-fun m!1343665 () Bool)

(assert (=> b!1455342 m!1343665))

(declare-fun m!1343667 () Bool)

(assert (=> b!1455360 m!1343667))

(assert (=> b!1455347 m!1343635))

(assert (=> b!1455347 m!1343635))

(declare-fun m!1343669 () Bool)

(assert (=> b!1455347 m!1343669))

(declare-fun m!1343671 () Bool)

(assert (=> b!1455361 m!1343671))

(declare-fun m!1343673 () Bool)

(assert (=> b!1455351 m!1343673))

(assert (=> b!1455352 m!1343635))

(assert (=> b!1455352 m!1343635))

(declare-fun m!1343675 () Bool)

(assert (=> b!1455352 m!1343675))

(assert (=> b!1455349 m!1343635))

(assert (=> b!1455349 m!1343635))

(declare-fun m!1343677 () Bool)

(assert (=> b!1455349 m!1343677))

(push 1)

