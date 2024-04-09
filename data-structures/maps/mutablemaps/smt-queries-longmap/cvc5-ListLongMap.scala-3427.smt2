; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47626 () Bool)

(assert start!47626)

(declare-fun b!523591 () Bool)

(declare-datatypes ((Unit!16334 0))(
  ( (Unit!16335) )
))
(declare-fun e!305378 () Unit!16334)

(declare-fun Unit!16336 () Unit!16334)

(assert (=> b!523591 (= e!305378 Unit!16336)))

(declare-fun b!523592 () Bool)

(declare-fun res!320897 () Bool)

(declare-fun e!305380 () Bool)

(assert (=> b!523592 (=> (not res!320897) (not e!305380))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33286 0))(
  ( (array!33287 (arr!15993 (Array (_ BitVec 32) (_ BitVec 64))) (size!16357 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33286)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!523592 (= res!320897 (and (= (size!16357 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16357 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16357 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523593 () Bool)

(declare-fun res!320896 () Bool)

(assert (=> b!523593 (=> (not res!320896) (not e!305380))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523593 (= res!320896 (validKeyInArray!0 k!2280))))

(declare-fun b!523594 () Bool)

(declare-fun e!305377 () Bool)

(declare-fun e!305376 () Bool)

(assert (=> b!523594 (= e!305377 (not e!305376))))

(declare-fun res!320899 () Bool)

(assert (=> b!523594 (=> res!320899 e!305376)))

(declare-fun lt!240300 () (_ BitVec 32))

(declare-fun lt!240298 () array!33286)

(declare-fun lt!240302 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4467 0))(
  ( (MissingZero!4467 (index!20077 (_ BitVec 32))) (Found!4467 (index!20078 (_ BitVec 32))) (Intermediate!4467 (undefined!5279 Bool) (index!20079 (_ BitVec 32)) (x!49090 (_ BitVec 32))) (Undefined!4467) (MissingVacant!4467 (index!20080 (_ BitVec 32))) )
))
(declare-fun lt!240303 () SeekEntryResult!4467)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33286 (_ BitVec 32)) SeekEntryResult!4467)

(assert (=> b!523594 (= res!320899 (= lt!240303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240300 lt!240302 lt!240298 mask!3524)))))

(declare-fun lt!240299 () (_ BitVec 32))

(assert (=> b!523594 (= lt!240303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240299 (select (arr!15993 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523594 (= lt!240300 (toIndex!0 lt!240302 mask!3524))))

(assert (=> b!523594 (= lt!240302 (select (store (arr!15993 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523594 (= lt!240299 (toIndex!0 (select (arr!15993 a!3235) j!176) mask!3524))))

(assert (=> b!523594 (= lt!240298 (array!33287 (store (arr!15993 a!3235) i!1204 k!2280) (size!16357 a!3235)))))

(declare-fun e!305379 () Bool)

(assert (=> b!523594 e!305379))

(declare-fun res!320902 () Bool)

(assert (=> b!523594 (=> (not res!320902) (not e!305379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33286 (_ BitVec 32)) Bool)

(assert (=> b!523594 (= res!320902 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240297 () Unit!16334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16334)

(assert (=> b!523594 (= lt!240297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523595 () Bool)

(assert (=> b!523595 (= e!305380 e!305377)))

(declare-fun res!320895 () Bool)

(assert (=> b!523595 (=> (not res!320895) (not e!305377))))

(declare-fun lt!240304 () SeekEntryResult!4467)

(assert (=> b!523595 (= res!320895 (or (= lt!240304 (MissingZero!4467 i!1204)) (= lt!240304 (MissingVacant!4467 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33286 (_ BitVec 32)) SeekEntryResult!4467)

(assert (=> b!523595 (= lt!240304 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523596 () Bool)

(assert (=> b!523596 (= e!305379 (= (seekEntryOrOpen!0 (select (arr!15993 a!3235) j!176) a!3235 mask!3524) (Found!4467 j!176)))))

(declare-fun res!320903 () Bool)

(assert (=> start!47626 (=> (not res!320903) (not e!305380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47626 (= res!320903 (validMask!0 mask!3524))))

(assert (=> start!47626 e!305380))

(assert (=> start!47626 true))

(declare-fun array_inv!11767 (array!33286) Bool)

(assert (=> start!47626 (array_inv!11767 a!3235)))

(declare-fun b!523597 () Bool)

(declare-fun e!305375 () Bool)

(assert (=> b!523597 (= e!305375 false)))

(declare-fun b!523598 () Bool)

(declare-fun res!320904 () Bool)

(assert (=> b!523598 (=> res!320904 e!305376)))

(assert (=> b!523598 (= res!320904 (or (undefined!5279 lt!240303) (not (is-Intermediate!4467 lt!240303))))))

(declare-fun b!523599 () Bool)

(assert (=> b!523599 (= e!305376 (or (bvsgt #b00000000000000000000000000000000 (x!49090 lt!240303)) (bvsgt (x!49090 lt!240303) #b01111111111111111111111111111110) (bvslt lt!240299 #b00000000000000000000000000000000) (bvsge lt!240299 (size!16357 a!3235)) (and (bvsge (index!20079 lt!240303) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240303) (size!16357 a!3235)))))))

(assert (=> b!523599 (and (or (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240301 () Unit!16334)

(assert (=> b!523599 (= lt!240301 e!305378)))

(declare-fun c!61652 () Bool)

(assert (=> b!523599 (= c!61652 (= (select (arr!15993 a!3235) (index!20079 lt!240303)) (select (arr!15993 a!3235) j!176)))))

(assert (=> b!523599 (and (bvslt (x!49090 lt!240303) #b01111111111111111111111111111110) (or (= (select (arr!15993 a!3235) (index!20079 lt!240303)) (select (arr!15993 a!3235) j!176)) (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15993 a!3235) (index!20079 lt!240303)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523600 () Bool)

(declare-fun res!320901 () Bool)

(assert (=> b!523600 (=> (not res!320901) (not e!305377))))

(declare-datatypes ((List!10204 0))(
  ( (Nil!10201) (Cons!10200 (h!11128 (_ BitVec 64)) (t!16440 List!10204)) )
))
(declare-fun arrayNoDuplicates!0 (array!33286 (_ BitVec 32) List!10204) Bool)

(assert (=> b!523600 (= res!320901 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10201))))

(declare-fun b!523601 () Bool)

(declare-fun res!320905 () Bool)

(assert (=> b!523601 (=> (not res!320905) (not e!305380))))

(declare-fun arrayContainsKey!0 (array!33286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523601 (= res!320905 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523602 () Bool)

(declare-fun res!320900 () Bool)

(assert (=> b!523602 (=> (not res!320900) (not e!305380))))

(assert (=> b!523602 (= res!320900 (validKeyInArray!0 (select (arr!15993 a!3235) j!176)))))

(declare-fun b!523603 () Bool)

(declare-fun Unit!16337 () Unit!16334)

(assert (=> b!523603 (= e!305378 Unit!16337)))

(declare-fun lt!240305 () Unit!16334)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33286 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16334)

(assert (=> b!523603 (= lt!240305 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240299 #b00000000000000000000000000000000 (index!20079 lt!240303) (x!49090 lt!240303) mask!3524))))

(declare-fun res!320906 () Bool)

(assert (=> b!523603 (= res!320906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240299 lt!240302 lt!240298 mask!3524) (Intermediate!4467 false (index!20079 lt!240303) (x!49090 lt!240303))))))

(assert (=> b!523603 (=> (not res!320906) (not e!305375))))

(assert (=> b!523603 e!305375))

(declare-fun b!523604 () Bool)

(declare-fun res!320898 () Bool)

(assert (=> b!523604 (=> (not res!320898) (not e!305377))))

(assert (=> b!523604 (= res!320898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47626 res!320903) b!523592))

(assert (= (and b!523592 res!320897) b!523602))

(assert (= (and b!523602 res!320900) b!523593))

(assert (= (and b!523593 res!320896) b!523601))

(assert (= (and b!523601 res!320905) b!523595))

(assert (= (and b!523595 res!320895) b!523604))

(assert (= (and b!523604 res!320898) b!523600))

(assert (= (and b!523600 res!320901) b!523594))

(assert (= (and b!523594 res!320902) b!523596))

(assert (= (and b!523594 (not res!320899)) b!523598))

(assert (= (and b!523598 (not res!320904)) b!523599))

(assert (= (and b!523599 c!61652) b!523603))

(assert (= (and b!523599 (not c!61652)) b!523591))

(assert (= (and b!523603 res!320906) b!523597))

(declare-fun m!504355 () Bool)

(assert (=> start!47626 m!504355))

(declare-fun m!504357 () Bool)

(assert (=> start!47626 m!504357))

(declare-fun m!504359 () Bool)

(assert (=> b!523599 m!504359))

(declare-fun m!504361 () Bool)

(assert (=> b!523599 m!504361))

(assert (=> b!523602 m!504361))

(assert (=> b!523602 m!504361))

(declare-fun m!504363 () Bool)

(assert (=> b!523602 m!504363))

(declare-fun m!504365 () Bool)

(assert (=> b!523601 m!504365))

(declare-fun m!504367 () Bool)

(assert (=> b!523600 m!504367))

(declare-fun m!504369 () Bool)

(assert (=> b!523603 m!504369))

(declare-fun m!504371 () Bool)

(assert (=> b!523603 m!504371))

(declare-fun m!504373 () Bool)

(assert (=> b!523604 m!504373))

(declare-fun m!504375 () Bool)

(assert (=> b!523593 m!504375))

(declare-fun m!504377 () Bool)

(assert (=> b!523594 m!504377))

(declare-fun m!504379 () Bool)

(assert (=> b!523594 m!504379))

(declare-fun m!504381 () Bool)

(assert (=> b!523594 m!504381))

(assert (=> b!523594 m!504361))

(declare-fun m!504383 () Bool)

(assert (=> b!523594 m!504383))

(assert (=> b!523594 m!504361))

(declare-fun m!504385 () Bool)

(assert (=> b!523594 m!504385))

(declare-fun m!504387 () Bool)

(assert (=> b!523594 m!504387))

(assert (=> b!523594 m!504361))

(declare-fun m!504389 () Bool)

(assert (=> b!523594 m!504389))

(declare-fun m!504391 () Bool)

(assert (=> b!523594 m!504391))

(assert (=> b!523596 m!504361))

(assert (=> b!523596 m!504361))

(declare-fun m!504393 () Bool)

(assert (=> b!523596 m!504393))

(declare-fun m!504395 () Bool)

(assert (=> b!523595 m!504395))

(push 1)

(assert (not b!523593))

(assert (not b!523602))

(assert (not b!523595))

(assert (not b!523596))

(assert (not b!523601))

(assert (not b!523600))

(assert (not b!523603))

(assert (not b!523594))

(assert (not b!523604))

(assert (not start!47626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80509 () Bool)

(declare-fun e!305455 () Bool)

(assert (=> d!80509 e!305455))

(declare-fun res!320997 () Bool)

(assert (=> d!80509 (=> (not res!320997) (not e!305455))))

(assert (=> d!80509 (= res!320997 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16357 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16357 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16357 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16357 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16357 a!3235))))))

(declare-fun lt!240374 () Unit!16334)

(declare-fun choose!47 (array!33286 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16334)

(assert (=> d!80509 (= lt!240374 (choose!47 a!3235 i!1204 k!2280 j!176 lt!240299 #b00000000000000000000000000000000 (index!20079 lt!240303) (x!49090 lt!240303) mask!3524))))

(assert (=> d!80509 (validMask!0 mask!3524)))

(assert (=> d!80509 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240299 #b00000000000000000000000000000000 (index!20079 lt!240303) (x!49090 lt!240303) mask!3524) lt!240374)))

(declare-fun b!523736 () Bool)

(assert (=> b!523736 (= e!305455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240299 (select (store (arr!15993 a!3235) i!1204 k!2280) j!176) (array!33287 (store (arr!15993 a!3235) i!1204 k!2280) (size!16357 a!3235)) mask!3524) (Intermediate!4467 false (index!20079 lt!240303) (x!49090 lt!240303))))))

(assert (= (and d!80509 res!320997) b!523736))

(declare-fun m!504517 () Bool)

(assert (=> d!80509 m!504517))

(assert (=> d!80509 m!504355))

(assert (=> b!523736 m!504377))

(assert (=> b!523736 m!504381))

(assert (=> b!523736 m!504381))

(declare-fun m!504519 () Bool)

(assert (=> b!523736 m!504519))

(assert (=> b!523603 d!80509))

(declare-fun b!523779 () Bool)

(declare-fun e!305486 () SeekEntryResult!4467)

(assert (=> b!523779 (= e!305486 (Intermediate!4467 true lt!240299 #b00000000000000000000000000000000))))

(declare-fun b!523780 () Bool)

(declare-fun e!305488 () Bool)

(declare-fun lt!240404 () SeekEntryResult!4467)

(assert (=> b!523780 (= e!305488 (bvsge (x!49090 lt!240404) #b01111111111111111111111111111110))))

(declare-fun b!523781 () Bool)

(declare-fun e!305484 () SeekEntryResult!4467)

(assert (=> b!523781 (= e!305484 (Intermediate!4467 false lt!240299 #b00000000000000000000000000000000))))

(declare-fun b!523782 () Bool)

(assert (=> b!523782 (and (bvsge (index!20079 lt!240404) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240404) (size!16357 lt!240298)))))

(declare-fun res!321018 () Bool)

(assert (=> b!523782 (= res!321018 (= (select (arr!15993 lt!240298) (index!20079 lt!240404)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305487 () Bool)

(assert (=> b!523782 (=> res!321018 e!305487)))

(declare-fun b!523783 () Bool)

(assert (=> b!523783 (and (bvsge (index!20079 lt!240404) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240404) (size!16357 lt!240298)))))

(declare-fun res!321016 () Bool)

(assert (=> b!523783 (= res!321016 (= (select (arr!15993 lt!240298) (index!20079 lt!240404)) lt!240302))))

(assert (=> b!523783 (=> res!321016 e!305487)))

(declare-fun e!305485 () Bool)

(assert (=> b!523783 (= e!305485 e!305487)))

(declare-fun b!523784 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523784 (= e!305484 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240299 #b00000000000000000000000000000000 mask!3524) lt!240302 lt!240298 mask!3524))))

(declare-fun b!523786 () Bool)

(assert (=> b!523786 (= e!305486 e!305484)))

(declare-fun c!61688 () Bool)

(declare-fun lt!240403 () (_ BitVec 64))

(assert (=> b!523786 (= c!61688 (or (= lt!240403 lt!240302) (= (bvadd lt!240403 lt!240403) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523787 () Bool)

(assert (=> b!523787 (= e!305488 e!305485)))

(declare-fun res!321017 () Bool)

(assert (=> b!523787 (= res!321017 (and (is-Intermediate!4467 lt!240404) (not (undefined!5279 lt!240404)) (bvslt (x!49090 lt!240404) #b01111111111111111111111111111110) (bvsge (x!49090 lt!240404) #b00000000000000000000000000000000) (bvsge (x!49090 lt!240404) #b00000000000000000000000000000000)))))

(assert (=> b!523787 (=> (not res!321017) (not e!305485))))

(declare-fun d!80523 () Bool)

(assert (=> d!80523 e!305488))

(declare-fun c!61687 () Bool)

(assert (=> d!80523 (= c!61687 (and (is-Intermediate!4467 lt!240404) (undefined!5279 lt!240404)))))

(assert (=> d!80523 (= lt!240404 e!305486)))

(declare-fun c!61686 () Bool)

(assert (=> d!80523 (= c!61686 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80523 (= lt!240403 (select (arr!15993 lt!240298) lt!240299))))

(assert (=> d!80523 (validMask!0 mask!3524)))

(assert (=> d!80523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240299 lt!240302 lt!240298 mask!3524) lt!240404)))

(declare-fun b!523785 () Bool)

(assert (=> b!523785 (and (bvsge (index!20079 lt!240404) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240404) (size!16357 lt!240298)))))

(assert (=> b!523785 (= e!305487 (= (select (arr!15993 lt!240298) (index!20079 lt!240404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80523 c!61686) b!523779))

(assert (= (and d!80523 (not c!61686)) b!523786))

(assert (= (and b!523786 c!61688) b!523781))

(assert (= (and b!523786 (not c!61688)) b!523784))

(assert (= (and d!80523 c!61687) b!523780))

(assert (= (and d!80523 (not c!61687)) b!523787))

(assert (= (and b!523787 res!321017) b!523783))

(assert (= (and b!523783 (not res!321016)) b!523782))

(assert (= (and b!523782 (not res!321018)) b!523785))

(declare-fun m!504539 () Bool)

(assert (=> d!80523 m!504539))

(assert (=> d!80523 m!504355))

(declare-fun m!504541 () Bool)

(assert (=> b!523785 m!504541))

(assert (=> b!523782 m!504541))

(assert (=> b!523783 m!504541))

(declare-fun m!504543 () Bool)

(assert (=> b!523784 m!504543))

(assert (=> b!523784 m!504543))

(declare-fun m!504545 () Bool)

(assert (=> b!523784 m!504545))

(assert (=> b!523603 d!80523))

(declare-fun bm!31856 () Bool)

(declare-fun call!31859 () Bool)

(assert (=> bm!31856 (= call!31859 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523833 () Bool)

(declare-fun e!305515 () Bool)

(declare-fun e!305514 () Bool)

(assert (=> b!523833 (= e!305515 e!305514)))

(declare-fun lt!240424 () (_ BitVec 64))

(assert (=> b!523833 (= lt!240424 (select (arr!15993 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240425 () Unit!16334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33286 (_ BitVec 64) (_ BitVec 32)) Unit!16334)

(assert (=> b!523833 (= lt!240425 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240424 #b00000000000000000000000000000000))))

(assert (=> b!523833 (arrayContainsKey!0 a!3235 lt!240424 #b00000000000000000000000000000000)))

(declare-fun lt!240426 () Unit!16334)

(assert (=> b!523833 (= lt!240426 lt!240425)))

(declare-fun res!321029 () Bool)

(assert (=> b!523833 (= res!321029 (= (seekEntryOrOpen!0 (select (arr!15993 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4467 #b00000000000000000000000000000000)))))

(assert (=> b!523833 (=> (not res!321029) (not e!305514))))

(declare-fun b!523834 () Bool)

(assert (=> b!523834 (= e!305515 call!31859)))

(declare-fun b!523835 () Bool)

(assert (=> b!523835 (= e!305514 call!31859)))

(declare-fun b!523832 () Bool)

(declare-fun e!305516 () Bool)

(assert (=> b!523832 (= e!305516 e!305515)))

(declare-fun c!61706 () Bool)

(assert (=> b!523832 (= c!61706 (validKeyInArray!0 (select (arr!15993 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80531 () Bool)

(declare-fun res!321030 () Bool)

(assert (=> d!80531 (=> res!321030 e!305516)))

(assert (=> d!80531 (= res!321030 (bvsge #b00000000000000000000000000000000 (size!16357 a!3235)))))

(assert (=> d!80531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305516)))

(assert (= (and d!80531 (not res!321030)) b!523832))

(assert (= (and b!523832 c!61706) b!523833))

(assert (= (and b!523832 (not c!61706)) b!523834))

(assert (= (and b!523833 res!321029) b!523835))

(assert (= (or b!523835 b!523834) bm!31856))

(declare-fun m!504561 () Bool)

(assert (=> bm!31856 m!504561))

(declare-fun m!504563 () Bool)

(assert (=> b!523833 m!504563))

(declare-fun m!504565 () Bool)

(assert (=> b!523833 m!504565))

(declare-fun m!504567 () Bool)

(assert (=> b!523833 m!504567))

(assert (=> b!523833 m!504563))

(declare-fun m!504569 () Bool)

(assert (=> b!523833 m!504569))

(assert (=> b!523832 m!504563))

(assert (=> b!523832 m!504563))

(declare-fun m!504571 () Bool)

(assert (=> b!523832 m!504571))

(assert (=> b!523604 d!80531))

(declare-fun d!80535 () Bool)

(assert (=> d!80535 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523593 d!80535))

(declare-fun d!80539 () Bool)

(declare-fun lt!240440 () (_ BitVec 32))

(declare-fun lt!240439 () (_ BitVec 32))

(assert (=> d!80539 (= lt!240440 (bvmul (bvxor lt!240439 (bvlshr lt!240439 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80539 (= lt!240439 ((_ extract 31 0) (bvand (bvxor (select (arr!15993 a!3235) j!176) (bvlshr (select (arr!15993 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80539 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!321041 (let ((h!11133 ((_ extract 31 0) (bvand (bvxor (select (arr!15993 a!3235) j!176) (bvlshr (select (arr!15993 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49098 (bvmul (bvxor h!11133 (bvlshr h!11133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49098 (bvlshr x!49098 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!321041 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!321041 #b00000000000000000000000000000000))))))

(assert (=> d!80539 (= (toIndex!0 (select (arr!15993 a!3235) j!176) mask!3524) (bvand (bvxor lt!240440 (bvlshr lt!240440 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523594 d!80539))

(declare-fun bm!31857 () Bool)

(declare-fun call!31860 () Bool)

(assert (=> bm!31857 (= call!31860 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523852 () Bool)

(declare-fun e!305529 () Bool)

(declare-fun e!305528 () Bool)

(assert (=> b!523852 (= e!305529 e!305528)))

(declare-fun lt!240445 () (_ BitVec 64))

(assert (=> b!523852 (= lt!240445 (select (arr!15993 a!3235) j!176))))

(declare-fun lt!240446 () Unit!16334)

(assert (=> b!523852 (= lt!240446 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240445 j!176))))

(assert (=> b!523852 (arrayContainsKey!0 a!3235 lt!240445 #b00000000000000000000000000000000)))

(declare-fun lt!240447 () Unit!16334)

(assert (=> b!523852 (= lt!240447 lt!240446)))

(declare-fun res!321042 () Bool)

(assert (=> b!523852 (= res!321042 (= (seekEntryOrOpen!0 (select (arr!15993 a!3235) j!176) a!3235 mask!3524) (Found!4467 j!176)))))

(assert (=> b!523852 (=> (not res!321042) (not e!305528))))

(declare-fun b!523853 () Bool)

(assert (=> b!523853 (= e!305529 call!31860)))

(declare-fun b!523854 () Bool)

(assert (=> b!523854 (= e!305528 call!31860)))

(declare-fun b!523851 () Bool)

(declare-fun e!305530 () Bool)

(assert (=> b!523851 (= e!305530 e!305529)))

(declare-fun c!61710 () Bool)

(assert (=> b!523851 (= c!61710 (validKeyInArray!0 (select (arr!15993 a!3235) j!176)))))

(declare-fun d!80545 () Bool)

(declare-fun res!321043 () Bool)

(assert (=> d!80545 (=> res!321043 e!305530)))

(assert (=> d!80545 (= res!321043 (bvsge j!176 (size!16357 a!3235)))))

(assert (=> d!80545 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305530)))

(assert (= (and d!80545 (not res!321043)) b!523851))

(assert (= (and b!523851 c!61710) b!523852))

(assert (= (and b!523851 (not c!61710)) b!523853))

(assert (= (and b!523852 res!321042) b!523854))

(assert (= (or b!523854 b!523853) bm!31857))

(declare-fun m!504585 () Bool)

(assert (=> bm!31857 m!504585))

(assert (=> b!523852 m!504361))

(declare-fun m!504587 () Bool)

(assert (=> b!523852 m!504587))

(declare-fun m!504589 () Bool)

(assert (=> b!523852 m!504589))

(assert (=> b!523852 m!504361))

(assert (=> b!523852 m!504393))

(assert (=> b!523851 m!504361))

(assert (=> b!523851 m!504361))

(assert (=> b!523851 m!504363))

(assert (=> b!523594 d!80545))

(declare-fun d!80551 () Bool)

(declare-fun lt!240452 () (_ BitVec 32))

(declare-fun lt!240451 () (_ BitVec 32))

(assert (=> d!80551 (= lt!240452 (bvmul (bvxor lt!240451 (bvlshr lt!240451 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80551 (= lt!240451 ((_ extract 31 0) (bvand (bvxor lt!240302 (bvlshr lt!240302 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80551 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!321041 (let ((h!11133 ((_ extract 31 0) (bvand (bvxor lt!240302 (bvlshr lt!240302 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49098 (bvmul (bvxor h!11133 (bvlshr h!11133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49098 (bvlshr x!49098 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!321041 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!321041 #b00000000000000000000000000000000))))))

(assert (=> d!80551 (= (toIndex!0 lt!240302 mask!3524) (bvand (bvxor lt!240452 (bvlshr lt!240452 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523594 d!80551))

(declare-fun b!523864 () Bool)

(declare-fun e!305538 () SeekEntryResult!4467)

(assert (=> b!523864 (= e!305538 (Intermediate!4467 true lt!240300 #b00000000000000000000000000000000))))

(declare-fun b!523865 () Bool)

(declare-fun e!305540 () Bool)

(declare-fun lt!240456 () SeekEntryResult!4467)

(assert (=> b!523865 (= e!305540 (bvsge (x!49090 lt!240456) #b01111111111111111111111111111110))))

(declare-fun b!523866 () Bool)

(declare-fun e!305536 () SeekEntryResult!4467)

(assert (=> b!523866 (= e!305536 (Intermediate!4467 false lt!240300 #b00000000000000000000000000000000))))

(declare-fun b!523867 () Bool)

(assert (=> b!523867 (and (bvsge (index!20079 lt!240456) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240456) (size!16357 lt!240298)))))

(declare-fun res!321049 () Bool)

(assert (=> b!523867 (= res!321049 (= (select (arr!15993 lt!240298) (index!20079 lt!240456)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305539 () Bool)

(assert (=> b!523867 (=> res!321049 e!305539)))

(declare-fun b!523868 () Bool)

(assert (=> b!523868 (and (bvsge (index!20079 lt!240456) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240456) (size!16357 lt!240298)))))

(declare-fun res!321047 () Bool)

(assert (=> b!523868 (= res!321047 (= (select (arr!15993 lt!240298) (index!20079 lt!240456)) lt!240302))))

(assert (=> b!523868 (=> res!321047 e!305539)))

(declare-fun e!305537 () Bool)

(assert (=> b!523868 (= e!305537 e!305539)))

(declare-fun b!523869 () Bool)

(assert (=> b!523869 (= e!305536 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240300 #b00000000000000000000000000000000 mask!3524) lt!240302 lt!240298 mask!3524))))

(declare-fun b!523871 () Bool)

(assert (=> b!523871 (= e!305538 e!305536)))

(declare-fun c!61716 () Bool)

(declare-fun lt!240455 () (_ BitVec 64))

(assert (=> b!523871 (= c!61716 (or (= lt!240455 lt!240302) (= (bvadd lt!240455 lt!240455) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523872 () Bool)

(assert (=> b!523872 (= e!305540 e!305537)))

(declare-fun res!321048 () Bool)

(assert (=> b!523872 (= res!321048 (and (is-Intermediate!4467 lt!240456) (not (undefined!5279 lt!240456)) (bvslt (x!49090 lt!240456) #b01111111111111111111111111111110) (bvsge (x!49090 lt!240456) #b00000000000000000000000000000000) (bvsge (x!49090 lt!240456) #b00000000000000000000000000000000)))))

(assert (=> b!523872 (=> (not res!321048) (not e!305537))))

(declare-fun d!80555 () Bool)

(assert (=> d!80555 e!305540))

(declare-fun c!61715 () Bool)

(assert (=> d!80555 (= c!61715 (and (is-Intermediate!4467 lt!240456) (undefined!5279 lt!240456)))))

(assert (=> d!80555 (= lt!240456 e!305538)))

(declare-fun c!61714 () Bool)

(assert (=> d!80555 (= c!61714 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80555 (= lt!240455 (select (arr!15993 lt!240298) lt!240300))))

(assert (=> d!80555 (validMask!0 mask!3524)))

(assert (=> d!80555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240300 lt!240302 lt!240298 mask!3524) lt!240456)))

(declare-fun b!523870 () Bool)

(assert (=> b!523870 (and (bvsge (index!20079 lt!240456) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240456) (size!16357 lt!240298)))))

(assert (=> b!523870 (= e!305539 (= (select (arr!15993 lt!240298) (index!20079 lt!240456)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80555 c!61714) b!523864))

(assert (= (and d!80555 (not c!61714)) b!523871))

(assert (= (and b!523871 c!61716) b!523866))

(assert (= (and b!523871 (not c!61716)) b!523869))

(assert (= (and d!80555 c!61715) b!523865))

(assert (= (and d!80555 (not c!61715)) b!523872))

(assert (= (and b!523872 res!321048) b!523868))

(assert (= (and b!523868 (not res!321047)) b!523867))

(assert (= (and b!523867 (not res!321049)) b!523870))

(declare-fun m!504597 () Bool)

(assert (=> d!80555 m!504597))

(assert (=> d!80555 m!504355))

(declare-fun m!504601 () Bool)

(assert (=> b!523870 m!504601))

(assert (=> b!523867 m!504601))

(assert (=> b!523868 m!504601))

(declare-fun m!504603 () Bool)

(assert (=> b!523869 m!504603))

(assert (=> b!523869 m!504603))

(declare-fun m!504605 () Bool)

(assert (=> b!523869 m!504605))

(assert (=> b!523594 d!80555))

(declare-fun d!80559 () Bool)

(assert (=> d!80559 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240462 () Unit!16334)

(declare-fun choose!38 (array!33286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16334)

(assert (=> d!80559 (= lt!240462 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80559 (validMask!0 mask!3524)))

(assert (=> d!80559 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240462)))

(declare-fun bs!16453 () Bool)

(assert (= bs!16453 d!80559))

(assert (=> bs!16453 m!504385))

(declare-fun m!504615 () Bool)

(assert (=> bs!16453 m!504615))

(assert (=> bs!16453 m!504355))

(assert (=> b!523594 d!80559))

(declare-fun b!523877 () Bool)

(declare-fun e!305546 () SeekEntryResult!4467)

(assert (=> b!523877 (= e!305546 (Intermediate!4467 true lt!240299 #b00000000000000000000000000000000))))

(declare-fun b!523878 () Bool)

(declare-fun e!305548 () Bool)

(declare-fun lt!240464 () SeekEntryResult!4467)

(assert (=> b!523878 (= e!305548 (bvsge (x!49090 lt!240464) #b01111111111111111111111111111110))))

(declare-fun b!523879 () Bool)

(declare-fun e!305544 () SeekEntryResult!4467)

(assert (=> b!523879 (= e!305544 (Intermediate!4467 false lt!240299 #b00000000000000000000000000000000))))

(declare-fun b!523880 () Bool)

(assert (=> b!523880 (and (bvsge (index!20079 lt!240464) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240464) (size!16357 a!3235)))))

(declare-fun res!321054 () Bool)

(assert (=> b!523880 (= res!321054 (= (select (arr!15993 a!3235) (index!20079 lt!240464)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305547 () Bool)

(assert (=> b!523880 (=> res!321054 e!305547)))

(declare-fun b!523881 () Bool)

(assert (=> b!523881 (and (bvsge (index!20079 lt!240464) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240464) (size!16357 a!3235)))))

(declare-fun res!321052 () Bool)

(assert (=> b!523881 (= res!321052 (= (select (arr!15993 a!3235) (index!20079 lt!240464)) (select (arr!15993 a!3235) j!176)))))

(assert (=> b!523881 (=> res!321052 e!305547)))

(declare-fun e!305545 () Bool)

(assert (=> b!523881 (= e!305545 e!305547)))

(declare-fun b!523882 () Bool)

(assert (=> b!523882 (= e!305544 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240299 #b00000000000000000000000000000000 mask!3524) (select (arr!15993 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523884 () Bool)

(assert (=> b!523884 (= e!305546 e!305544)))

(declare-fun c!61720 () Bool)

(declare-fun lt!240463 () (_ BitVec 64))

(assert (=> b!523884 (= c!61720 (or (= lt!240463 (select (arr!15993 a!3235) j!176)) (= (bvadd lt!240463 lt!240463) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523885 () Bool)

(assert (=> b!523885 (= e!305548 e!305545)))

(declare-fun res!321053 () Bool)

(assert (=> b!523885 (= res!321053 (and (is-Intermediate!4467 lt!240464) (not (undefined!5279 lt!240464)) (bvslt (x!49090 lt!240464) #b01111111111111111111111111111110) (bvsge (x!49090 lt!240464) #b00000000000000000000000000000000) (bvsge (x!49090 lt!240464) #b00000000000000000000000000000000)))))

(assert (=> b!523885 (=> (not res!321053) (not e!305545))))

(declare-fun d!80563 () Bool)

(assert (=> d!80563 e!305548))

(declare-fun c!61719 () Bool)

(assert (=> d!80563 (= c!61719 (and (is-Intermediate!4467 lt!240464) (undefined!5279 lt!240464)))))

(assert (=> d!80563 (= lt!240464 e!305546)))

(declare-fun c!61718 () Bool)

(assert (=> d!80563 (= c!61718 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80563 (= lt!240463 (select (arr!15993 a!3235) lt!240299))))

(assert (=> d!80563 (validMask!0 mask!3524)))

(assert (=> d!80563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240299 (select (arr!15993 a!3235) j!176) a!3235 mask!3524) lt!240464)))

(declare-fun b!523883 () Bool)

(assert (=> b!523883 (and (bvsge (index!20079 lt!240464) #b00000000000000000000000000000000) (bvslt (index!20079 lt!240464) (size!16357 a!3235)))))

(assert (=> b!523883 (= e!305547 (= (select (arr!15993 a!3235) (index!20079 lt!240464)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80563 c!61718) b!523877))

(assert (= (and d!80563 (not c!61718)) b!523884))

(assert (= (and b!523884 c!61720) b!523879))

(assert (= (and b!523884 (not c!61720)) b!523882))

(assert (= (and d!80563 c!61719) b!523878))

(assert (= (and d!80563 (not c!61719)) b!523885))

(assert (= (and b!523885 res!321053) b!523881))

(assert (= (and b!523881 (not res!321052)) b!523880))

(assert (= (and b!523880 (not res!321054)) b!523883))

(declare-fun m!504617 () Bool)

(assert (=> d!80563 m!504617))

(assert (=> d!80563 m!504355))

(declare-fun m!504619 () Bool)

(assert (=> b!523883 m!504619))

(assert (=> b!523880 m!504619))

(assert (=> b!523881 m!504619))

(assert (=> b!523882 m!504543))

(assert (=> b!523882 m!504543))

(assert (=> b!523882 m!504361))

(declare-fun m!504621 () Bool)

(assert (=> b!523882 m!504621))

(assert (=> b!523594 d!80563))

(declare-fun b!523898 () Bool)

(declare-fun e!305560 () Bool)

(declare-fun e!305562 () Bool)

(assert (=> b!523898 (= e!305560 e!305562)))

(declare-fun c!61723 () Bool)

(assert (=> b!523898 (= c!61723 (validKeyInArray!0 (select (arr!15993 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523899 () Bool)

(declare-fun call!31864 () Bool)

(assert (=> b!523899 (= e!305562 call!31864)))

(declare-fun b!523900 () Bool)

(declare-fun e!305561 () Bool)

(assert (=> b!523900 (= e!305561 e!305560)))

(declare-fun res!321064 () Bool)

(assert (=> b!523900 (=> (not res!321064) (not e!305560))))

(declare-fun e!305559 () Bool)

(assert (=> b!523900 (= res!321064 (not e!305559))))

(declare-fun res!321065 () Bool)

(assert (=> b!523900 (=> (not res!321065) (not e!305559))))

(assert (=> b!523900 (= res!321065 (validKeyInArray!0 (select (arr!15993 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523901 () Bool)

(declare-fun contains!2776 (List!10204 (_ BitVec 64)) Bool)

(assert (=> b!523901 (= e!305559 (contains!2776 Nil!10201 (select (arr!15993 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80565 () Bool)

(declare-fun res!321063 () Bool)

(assert (=> d!80565 (=> res!321063 e!305561)))

(assert (=> d!80565 (= res!321063 (bvsge #b00000000000000000000000000000000 (size!16357 a!3235)))))

(assert (=> d!80565 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10201) e!305561)))

(declare-fun b!523902 () Bool)

(assert (=> b!523902 (= e!305562 call!31864)))

(declare-fun bm!31861 () Bool)

(assert (=> bm!31861 (= call!31864 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61723 (Cons!10200 (select (arr!15993 a!3235) #b00000000000000000000000000000000) Nil!10201) Nil!10201)))))

(assert (= (and d!80565 (not res!321063)) b!523900))

(assert (= (and b!523900 res!321065) b!523901))

(assert (= (and b!523900 res!321064) b!523898))

(assert (= (and b!523898 c!61723) b!523902))

(assert (= (and b!523898 (not c!61723)) b!523899))

(assert (= (or b!523902 b!523899) bm!31861))

(assert (=> b!523898 m!504563))

(assert (=> b!523898 m!504563))

(assert (=> b!523898 m!504571))

(assert (=> b!523900 m!504563))

(assert (=> b!523900 m!504563))

(assert (=> b!523900 m!504571))

(assert (=> b!523901 m!504563))

(assert (=> b!523901 m!504563))

(declare-fun m!504623 () Bool)

(assert (=> b!523901 m!504623))

(assert (=> bm!31861 m!504563))

(declare-fun m!504627 () Bool)

(assert (=> bm!31861 m!504627))

(assert (=> b!523600 d!80565))

(declare-fun b!523965 () Bool)

(declare-fun c!61747 () Bool)

(declare-fun lt!240492 () (_ BitVec 64))

(assert (=> b!523965 (= c!61747 (= lt!240492 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305598 () SeekEntryResult!4467)

(declare-fun e!305599 () SeekEntryResult!4467)

(assert (=> b!523965 (= e!305598 e!305599)))

(declare-fun b!523966 () Bool)

(declare-fun lt!240490 () SeekEntryResult!4467)

(assert (=> b!523966 (= e!305599 (MissingZero!4467 (index!20079 lt!240490)))))

(declare-fun b!523967 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33286 (_ BitVec 32)) SeekEntryResult!4467)

(assert (=> b!523967 (= e!305599 (seekKeyOrZeroReturnVacant!0 (x!49090 lt!240490) (index!20079 lt!240490) (index!20079 lt!240490) k!2280 a!3235 mask!3524))))

(declare-fun b!523968 () Bool)

(declare-fun e!305600 () SeekEntryResult!4467)

(assert (=> b!523968 (= e!305600 e!305598)))

(assert (=> b!523968 (= lt!240492 (select (arr!15993 a!3235) (index!20079 lt!240490)))))

(declare-fun c!61746 () Bool)

(assert (=> b!523968 (= c!61746 (= lt!240492 k!2280))))

(declare-fun b!523969 () Bool)

(assert (=> b!523969 (= e!305600 Undefined!4467)))

(declare-fun d!80567 () Bool)

(declare-fun lt!240491 () SeekEntryResult!4467)

(assert (=> d!80567 (and (or (is-Undefined!4467 lt!240491) (not (is-Found!4467 lt!240491)) (and (bvsge (index!20078 lt!240491) #b00000000000000000000000000000000) (bvslt (index!20078 lt!240491) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240491) (is-Found!4467 lt!240491) (not (is-MissingZero!4467 lt!240491)) (and (bvsge (index!20077 lt!240491) #b00000000000000000000000000000000) (bvslt (index!20077 lt!240491) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240491) (is-Found!4467 lt!240491) (is-MissingZero!4467 lt!240491) (not (is-MissingVacant!4467 lt!240491)) (and (bvsge (index!20080 lt!240491) #b00000000000000000000000000000000) (bvslt (index!20080 lt!240491) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240491) (ite (is-Found!4467 lt!240491) (= (select (arr!15993 a!3235) (index!20078 lt!240491)) k!2280) (ite (is-MissingZero!4467 lt!240491) (= (select (arr!15993 a!3235) (index!20077 lt!240491)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4467 lt!240491) (= (select (arr!15993 a!3235) (index!20080 lt!240491)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80567 (= lt!240491 e!305600)))

(declare-fun c!61748 () Bool)

(assert (=> d!80567 (= c!61748 (and (is-Intermediate!4467 lt!240490) (undefined!5279 lt!240490)))))

(assert (=> d!80567 (= lt!240490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80567 (validMask!0 mask!3524)))

(assert (=> d!80567 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!240491)))

(declare-fun b!523970 () Bool)

(assert (=> b!523970 (= e!305598 (Found!4467 (index!20079 lt!240490)))))

(assert (= (and d!80567 c!61748) b!523969))

(assert (= (and d!80567 (not c!61748)) b!523968))

(assert (= (and b!523968 c!61746) b!523970))

(assert (= (and b!523968 (not c!61746)) b!523965))

(assert (= (and b!523965 c!61747) b!523966))

(assert (= (and b!523965 (not c!61747)) b!523967))

(declare-fun m!504661 () Bool)

(assert (=> b!523967 m!504661))

(declare-fun m!504663 () Bool)

(assert (=> b!523968 m!504663))

(declare-fun m!504665 () Bool)

(assert (=> d!80567 m!504665))

(declare-fun m!504667 () Bool)

(assert (=> d!80567 m!504667))

(declare-fun m!504669 () Bool)

(assert (=> d!80567 m!504669))

(assert (=> d!80567 m!504665))

(declare-fun m!504671 () Bool)

(assert (=> d!80567 m!504671))

(assert (=> d!80567 m!504355))

(declare-fun m!504673 () Bool)

(assert (=> d!80567 m!504673))

(assert (=> b!523595 d!80567))

(declare-fun b!523971 () Bool)

(declare-fun c!61750 () Bool)

(declare-fun lt!240495 () (_ BitVec 64))

(assert (=> b!523971 (= c!61750 (= lt!240495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305601 () SeekEntryResult!4467)

(declare-fun e!305602 () SeekEntryResult!4467)

(assert (=> b!523971 (= e!305601 e!305602)))

(declare-fun b!523972 () Bool)

(declare-fun lt!240493 () SeekEntryResult!4467)

(assert (=> b!523972 (= e!305602 (MissingZero!4467 (index!20079 lt!240493)))))

(declare-fun b!523973 () Bool)

(assert (=> b!523973 (= e!305602 (seekKeyOrZeroReturnVacant!0 (x!49090 lt!240493) (index!20079 lt!240493) (index!20079 lt!240493) (select (arr!15993 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523974 () Bool)

(declare-fun e!305603 () SeekEntryResult!4467)

(assert (=> b!523974 (= e!305603 e!305601)))

(assert (=> b!523974 (= lt!240495 (select (arr!15993 a!3235) (index!20079 lt!240493)))))

(declare-fun c!61749 () Bool)

(assert (=> b!523974 (= c!61749 (= lt!240495 (select (arr!15993 a!3235) j!176)))))

(declare-fun b!523975 () Bool)

(assert (=> b!523975 (= e!305603 Undefined!4467)))

(declare-fun d!80581 () Bool)

(declare-fun lt!240494 () SeekEntryResult!4467)

(assert (=> d!80581 (and (or (is-Undefined!4467 lt!240494) (not (is-Found!4467 lt!240494)) (and (bvsge (index!20078 lt!240494) #b00000000000000000000000000000000) (bvslt (index!20078 lt!240494) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240494) (is-Found!4467 lt!240494) (not (is-MissingZero!4467 lt!240494)) (and (bvsge (index!20077 lt!240494) #b00000000000000000000000000000000) (bvslt (index!20077 lt!240494) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240494) (is-Found!4467 lt!240494) (is-MissingZero!4467 lt!240494) (not (is-MissingVacant!4467 lt!240494)) (and (bvsge (index!20080 lt!240494) #b00000000000000000000000000000000) (bvslt (index!20080 lt!240494) (size!16357 a!3235)))) (or (is-Undefined!4467 lt!240494) (ite (is-Found!4467 lt!240494) (= (select (arr!15993 a!3235) (index!20078 lt!240494)) (select (arr!15993 a!3235) j!176)) (ite (is-MissingZero!4467 lt!240494) (= (select (arr!15993 a!3235) (index!20077 lt!240494)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4467 lt!240494) (= (select (arr!15993 a!3235) (index!20080 lt!240494)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80581 (= lt!240494 e!305603)))

(declare-fun c!61751 () Bool)

(assert (=> d!80581 (= c!61751 (and (is-Intermediate!4467 lt!240493) (undefined!5279 lt!240493)))))

(assert (=> d!80581 (= lt!240493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15993 a!3235) j!176) mask!3524) (select (arr!15993 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80581 (validMask!0 mask!3524)))

(assert (=> d!80581 (= (seekEntryOrOpen!0 (select (arr!15993 a!3235) j!176) a!3235 mask!3524) lt!240494)))

(declare-fun b!523976 () Bool)

(assert (=> b!523976 (= e!305601 (Found!4467 (index!20079 lt!240493)))))

(assert (= (and d!80581 c!61751) b!523975))

(assert (= (and d!80581 (not c!61751)) b!523974))

(assert (= (and b!523974 c!61749) b!523976))

(assert (= (and b!523974 (not c!61749)) b!523971))

(assert (= (and b!523971 c!61750) b!523972))

(assert (= (and b!523971 (not c!61750)) b!523973))

(assert (=> b!523973 m!504361))

(declare-fun m!504675 () Bool)

(assert (=> b!523973 m!504675))

(declare-fun m!504677 () Bool)

(assert (=> b!523974 m!504677))

(assert (=> d!80581 m!504361))

(assert (=> d!80581 m!504383))

(declare-fun m!504679 () Bool)

(assert (=> d!80581 m!504679))

(declare-fun m!504681 () Bool)

(assert (=> d!80581 m!504681))

(assert (=> d!80581 m!504383))

(assert (=> d!80581 m!504361))

(declare-fun m!504683 () Bool)

(assert (=> d!80581 m!504683))

(assert (=> d!80581 m!504355))

(declare-fun m!504685 () Bool)

(assert (=> d!80581 m!504685))

(assert (=> b!523596 d!80581))

(declare-fun d!80583 () Bool)

(assert (=> d!80583 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47626 d!80583))

(declare-fun d!80593 () Bool)

(assert (=> d!80593 (= (array_inv!11767 a!3235) (bvsge (size!16357 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47626 d!80593))

(declare-fun d!80595 () Bool)

(declare-fun res!321103 () Bool)

(declare-fun e!305631 () Bool)

(assert (=> d!80595 (=> res!321103 e!305631)))

(assert (=> d!80595 (= res!321103 (= (select (arr!15993 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80595 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!305631)))

(declare-fun b!524014 () Bool)

(declare-fun e!305632 () Bool)

(assert (=> b!524014 (= e!305631 e!305632)))

(declare-fun res!321104 () Bool)

(assert (=> b!524014 (=> (not res!321104) (not e!305632))))

(assert (=> b!524014 (= res!321104 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16357 a!3235)))))

(declare-fun b!524015 () Bool)

(assert (=> b!524015 (= e!305632 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80595 (not res!321103)) b!524014))

(assert (= (and b!524014 res!321104) b!524015))

(assert (=> d!80595 m!504563))

(declare-fun m!504713 () Bool)

(assert (=> b!524015 m!504713))

(assert (=> b!523601 d!80595))

(declare-fun d!80599 () Bool)

(assert (=> d!80599 (= (validKeyInArray!0 (select (arr!15993 a!3235) j!176)) (and (not (= (select (arr!15993 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15993 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523602 d!80599))

(push 1)

(assert (not d!80567))

(assert (not bm!31856))

(assert (not b!523900))

(assert (not d!80555))

(assert (not b!523898))

(assert (not d!80559))

(assert (not b!523901))

(assert (not b!523967))

(assert (not d!80523))

(assert (not d!80581))

(assert (not bm!31861))

(assert (not b!523869))

(assert (not b!524015))

(assert (not b!523973))

(assert (not b!523736))

(assert (not bm!31857))

(assert (not b!523832))

(assert (not b!523882))

(assert (not d!80509))

(assert (not b!523833))

(assert (not d!80563))

(assert (not b!523852))

(assert (not b!523851))

(assert (not b!523784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

