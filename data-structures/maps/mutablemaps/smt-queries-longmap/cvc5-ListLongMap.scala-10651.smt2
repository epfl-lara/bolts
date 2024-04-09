; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125086 () Bool)

(assert start!125086)

(declare-fun lt!637769 () (_ BitVec 64))

(declare-fun b!1455010 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11784 0))(
  ( (MissingZero!11784 (index!49527 (_ BitVec 32))) (Found!11784 (index!49528 (_ BitVec 32))) (Intermediate!11784 (undefined!12596 Bool) (index!49529 (_ BitVec 32)) (x!131164 (_ BitVec 32))) (Undefined!11784) (MissingVacant!11784 (index!49530 (_ BitVec 32))) )
))
(declare-fun lt!637770 () SeekEntryResult!11784)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98451 0))(
  ( (array!98452 (arr!47509 (Array (_ BitVec 32) (_ BitVec 64))) (size!48060 (_ BitVec 32))) )
))
(declare-fun lt!637764 () array!98451)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!818813 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98451 (_ BitVec 32)) SeekEntryResult!11784)

(assert (=> b!1455010 (= e!818813 (= lt!637770 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637769 lt!637764 mask!2687)))))

(declare-fun b!1455011 () Bool)

(declare-fun e!818812 () Bool)

(declare-fun e!818806 () Bool)

(assert (=> b!1455011 (= e!818812 e!818806)))

(declare-fun res!985848 () Bool)

(assert (=> b!1455011 (=> (not res!985848) (not e!818806))))

(declare-fun a!2862 () array!98451)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!637771 () SeekEntryResult!11784)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455011 (= res!985848 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47509 a!2862) j!93) mask!2687) (select (arr!47509 a!2862) j!93) a!2862 mask!2687) lt!637771))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455011 (= lt!637771 (Intermediate!11784 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455012 () Bool)

(declare-fun res!985850 () Bool)

(declare-fun e!818811 () Bool)

(assert (=> b!1455012 (=> (not res!985850) (not e!818811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455012 (= res!985850 (validKeyInArray!0 (select (arr!47509 a!2862) j!93)))))

(declare-fun b!1455013 () Bool)

(assert (=> b!1455013 (= e!818811 e!818812)))

(declare-fun res!985854 () Bool)

(assert (=> b!1455013 (=> (not res!985854) (not e!818812))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455013 (= res!985854 (= (select (store (arr!47509 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455013 (= lt!637764 (array!98452 (store (arr!47509 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48060 a!2862)))))

(declare-fun b!1455014 () Bool)

(declare-fun res!985855 () Bool)

(assert (=> b!1455014 (=> (not res!985855) (not e!818811))))

(declare-datatypes ((List!34190 0))(
  ( (Nil!34187) (Cons!34186 (h!35536 (_ BitVec 64)) (t!48891 List!34190)) )
))
(declare-fun arrayNoDuplicates!0 (array!98451 (_ BitVec 32) List!34190) Bool)

(assert (=> b!1455014 (= res!985855 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34187))))

(declare-fun b!1455015 () Bool)

(declare-fun res!985853 () Bool)

(assert (=> b!1455015 (=> (not res!985853) (not e!818811))))

(assert (=> b!1455015 (= res!985853 (and (= (size!48060 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48060 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48060 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455016 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98451 (_ BitVec 32)) SeekEntryResult!11784)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98451 (_ BitVec 32)) SeekEntryResult!11784)

(assert (=> b!1455016 (= e!818813 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637769 lt!637764 mask!2687) (seekEntryOrOpen!0 lt!637769 lt!637764 mask!2687)))))

(declare-fun b!1455017 () Bool)

(declare-fun e!818805 () Bool)

(declare-fun e!818804 () Bool)

(assert (=> b!1455017 (= e!818805 (not e!818804))))

(declare-fun res!985863 () Bool)

(assert (=> b!1455017 (=> res!985863 e!818804)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455017 (= res!985863 (or (and (= (select (arr!47509 a!2862) index!646) (select (store (arr!47509 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47509 a!2862) index!646) (select (arr!47509 a!2862) j!93))) (= (select (arr!47509 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818809 () Bool)

(assert (=> b!1455017 e!818809))

(declare-fun res!985858 () Bool)

(assert (=> b!1455017 (=> (not res!985858) (not e!818809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98451 (_ BitVec 32)) Bool)

(assert (=> b!1455017 (= res!985858 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49012 0))(
  ( (Unit!49013) )
))
(declare-fun lt!637766 () Unit!49012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49012)

(assert (=> b!1455017 (= lt!637766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455018 () Bool)

(assert (=> b!1455018 (= e!818806 e!818805)))

(declare-fun res!985852 () Bool)

(assert (=> b!1455018 (=> (not res!985852) (not e!818805))))

(assert (=> b!1455018 (= res!985852 (= lt!637770 (Intermediate!11784 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455018 (= lt!637770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637769 mask!2687) lt!637769 lt!637764 mask!2687))))

(assert (=> b!1455018 (= lt!637769 (select (store (arr!47509 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455019 () Bool)

(assert (=> b!1455019 (= e!818809 (and (or (= (select (arr!47509 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47509 a!2862) intermediateBeforeIndex!19) (select (arr!47509 a!2862) j!93))) (let ((bdg!53125 (select (store (arr!47509 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47509 a!2862) index!646) bdg!53125) (= (select (arr!47509 a!2862) index!646) (select (arr!47509 a!2862) j!93))) (= (select (arr!47509 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53125 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455020 () Bool)

(declare-fun res!985846 () Bool)

(assert (=> b!1455020 (=> (not res!985846) (not e!818805))))

(assert (=> b!1455020 (= res!985846 e!818813)))

(declare-fun c!134095 () Bool)

(assert (=> b!1455020 (= c!134095 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!637767 () (_ BitVec 32))

(declare-fun e!818808 () Bool)

(declare-fun lt!637768 () SeekEntryResult!11784)

(declare-fun b!1455021 () Bool)

(assert (=> b!1455021 (= e!818808 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637767 intermediateAfterIndex!19 lt!637769 lt!637764 mask!2687) lt!637768)))))

(declare-fun res!985851 () Bool)

(assert (=> start!125086 (=> (not res!985851) (not e!818811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125086 (= res!985851 (validMask!0 mask!2687))))

(assert (=> start!125086 e!818811))

(assert (=> start!125086 true))

(declare-fun array_inv!36454 (array!98451) Bool)

(assert (=> start!125086 (array_inv!36454 a!2862)))

(declare-fun b!1455022 () Bool)

(declare-fun res!985862 () Bool)

(assert (=> b!1455022 (=> (not res!985862) (not e!818811))))

(assert (=> b!1455022 (= res!985862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455023 () Bool)

(declare-fun res!985860 () Bool)

(assert (=> b!1455023 (=> (not res!985860) (not e!818809))))

(assert (=> b!1455023 (= res!985860 (= (seekEntryOrOpen!0 (select (arr!47509 a!2862) j!93) a!2862 mask!2687) (Found!11784 j!93)))))

(declare-fun b!1455024 () Bool)

(declare-fun res!985861 () Bool)

(assert (=> b!1455024 (=> (not res!985861) (not e!818805))))

(assert (=> b!1455024 (= res!985861 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455025 () Bool)

(declare-fun res!985847 () Bool)

(declare-fun e!818807 () Bool)

(assert (=> b!1455025 (=> res!985847 e!818807)))

(assert (=> b!1455025 (= res!985847 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637767 (select (arr!47509 a!2862) j!93) a!2862 mask!2687) lt!637771)))))

(declare-fun b!1455026 () Bool)

(declare-fun res!985859 () Bool)

(assert (=> b!1455026 (=> (not res!985859) (not e!818811))))

(assert (=> b!1455026 (= res!985859 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48060 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48060 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48060 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455027 () Bool)

(assert (=> b!1455027 (= e!818808 (not (= lt!637770 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637767 lt!637769 lt!637764 mask!2687))))))

(declare-fun b!1455028 () Bool)

(declare-fun res!985849 () Bool)

(assert (=> b!1455028 (=> (not res!985849) (not e!818811))))

(assert (=> b!1455028 (= res!985849 (validKeyInArray!0 (select (arr!47509 a!2862) i!1006)))))

(declare-fun b!1455029 () Bool)

(declare-fun res!985856 () Bool)

(assert (=> b!1455029 (=> (not res!985856) (not e!818806))))

(assert (=> b!1455029 (= res!985856 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47509 a!2862) j!93) a!2862 mask!2687) lt!637771))))

(declare-fun b!1455030 () Bool)

(assert (=> b!1455030 (= e!818804 e!818807)))

(declare-fun res!985857 () Bool)

(assert (=> b!1455030 (=> res!985857 e!818807)))

(assert (=> b!1455030 (= res!985857 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637767 #b00000000000000000000000000000000) (bvsge lt!637767 (size!48060 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455030 (= lt!637767 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455030 (= lt!637768 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637769 lt!637764 mask!2687))))

(assert (=> b!1455030 (= lt!637768 (seekEntryOrOpen!0 lt!637769 lt!637764 mask!2687))))

(declare-fun b!1455031 () Bool)

(assert (=> b!1455031 (= e!818807 true)))

(declare-fun lt!637765 () Bool)

(assert (=> b!1455031 (= lt!637765 e!818808)))

(declare-fun c!134096 () Bool)

(assert (=> b!1455031 (= c!134096 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125086 res!985851) b!1455015))

(assert (= (and b!1455015 res!985853) b!1455028))

(assert (= (and b!1455028 res!985849) b!1455012))

(assert (= (and b!1455012 res!985850) b!1455022))

(assert (= (and b!1455022 res!985862) b!1455014))

(assert (= (and b!1455014 res!985855) b!1455026))

(assert (= (and b!1455026 res!985859) b!1455013))

(assert (= (and b!1455013 res!985854) b!1455011))

(assert (= (and b!1455011 res!985848) b!1455029))

(assert (= (and b!1455029 res!985856) b!1455018))

(assert (= (and b!1455018 res!985852) b!1455020))

(assert (= (and b!1455020 c!134095) b!1455010))

(assert (= (and b!1455020 (not c!134095)) b!1455016))

(assert (= (and b!1455020 res!985846) b!1455024))

(assert (= (and b!1455024 res!985861) b!1455017))

(assert (= (and b!1455017 res!985858) b!1455023))

(assert (= (and b!1455023 res!985860) b!1455019))

(assert (= (and b!1455017 (not res!985863)) b!1455030))

(assert (= (and b!1455030 (not res!985857)) b!1455025))

(assert (= (and b!1455025 (not res!985847)) b!1455031))

(assert (= (and b!1455031 c!134096) b!1455027))

(assert (= (and b!1455031 (not c!134096)) b!1455021))

(declare-fun m!1343331 () Bool)

(assert (=> b!1455022 m!1343331))

(declare-fun m!1343333 () Bool)

(assert (=> start!125086 m!1343333))

(declare-fun m!1343335 () Bool)

(assert (=> start!125086 m!1343335))

(declare-fun m!1343337 () Bool)

(assert (=> b!1455023 m!1343337))

(assert (=> b!1455023 m!1343337))

(declare-fun m!1343339 () Bool)

(assert (=> b!1455023 m!1343339))

(declare-fun m!1343341 () Bool)

(assert (=> b!1455016 m!1343341))

(declare-fun m!1343343 () Bool)

(assert (=> b!1455016 m!1343343))

(assert (=> b!1455029 m!1343337))

(assert (=> b!1455029 m!1343337))

(declare-fun m!1343345 () Bool)

(assert (=> b!1455029 m!1343345))

(declare-fun m!1343347 () Bool)

(assert (=> b!1455017 m!1343347))

(declare-fun m!1343349 () Bool)

(assert (=> b!1455017 m!1343349))

(declare-fun m!1343351 () Bool)

(assert (=> b!1455017 m!1343351))

(declare-fun m!1343353 () Bool)

(assert (=> b!1455017 m!1343353))

(declare-fun m!1343355 () Bool)

(assert (=> b!1455017 m!1343355))

(assert (=> b!1455017 m!1343337))

(declare-fun m!1343357 () Bool)

(assert (=> b!1455014 m!1343357))

(assert (=> b!1455019 m!1343349))

(declare-fun m!1343359 () Bool)

(assert (=> b!1455019 m!1343359))

(assert (=> b!1455019 m!1343351))

(assert (=> b!1455019 m!1343353))

(assert (=> b!1455019 m!1343337))

(declare-fun m!1343361 () Bool)

(assert (=> b!1455030 m!1343361))

(assert (=> b!1455030 m!1343341))

(assert (=> b!1455030 m!1343343))

(assert (=> b!1455012 m!1343337))

(assert (=> b!1455012 m!1343337))

(declare-fun m!1343363 () Bool)

(assert (=> b!1455012 m!1343363))

(declare-fun m!1343365 () Bool)

(assert (=> b!1455028 m!1343365))

(assert (=> b!1455028 m!1343365))

(declare-fun m!1343367 () Bool)

(assert (=> b!1455028 m!1343367))

(assert (=> b!1455013 m!1343349))

(declare-fun m!1343369 () Bool)

(assert (=> b!1455013 m!1343369))

(assert (=> b!1455011 m!1343337))

(assert (=> b!1455011 m!1343337))

(declare-fun m!1343371 () Bool)

(assert (=> b!1455011 m!1343371))

(assert (=> b!1455011 m!1343371))

(assert (=> b!1455011 m!1343337))

(declare-fun m!1343373 () Bool)

(assert (=> b!1455011 m!1343373))

(declare-fun m!1343375 () Bool)

(assert (=> b!1455010 m!1343375))

(assert (=> b!1455025 m!1343337))

(assert (=> b!1455025 m!1343337))

(declare-fun m!1343377 () Bool)

(assert (=> b!1455025 m!1343377))

(declare-fun m!1343379 () Bool)

(assert (=> b!1455027 m!1343379))

(declare-fun m!1343381 () Bool)

(assert (=> b!1455021 m!1343381))

(declare-fun m!1343383 () Bool)

(assert (=> b!1455018 m!1343383))

(assert (=> b!1455018 m!1343383))

(declare-fun m!1343385 () Bool)

(assert (=> b!1455018 m!1343385))

(assert (=> b!1455018 m!1343349))

(declare-fun m!1343387 () Bool)

(assert (=> b!1455018 m!1343387))

(push 1)

