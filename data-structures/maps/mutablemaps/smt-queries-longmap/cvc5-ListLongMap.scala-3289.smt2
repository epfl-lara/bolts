; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45688 () Bool)

(assert start!45688)

(declare-fun b!504022 () Bool)

(declare-fun e!295130 () Bool)

(declare-fun e!295135 () Bool)

(assert (=> b!504022 (= e!295130 e!295135)))

(declare-fun res!305379 () Bool)

(assert (=> b!504022 (=> res!305379 e!295135)))

(declare-datatypes ((SeekEntryResult!4053 0))(
  ( (MissingZero!4053 (index!18400 (_ BitVec 32))) (Found!4053 (index!18401 (_ BitVec 32))) (Intermediate!4053 (undefined!4865 Bool) (index!18402 (_ BitVec 32)) (x!47449 (_ BitVec 32))) (Undefined!4053) (MissingVacant!4053 (index!18403 (_ BitVec 32))) )
))
(declare-fun lt!229490 () SeekEntryResult!4053)

(declare-datatypes ((array!32404 0))(
  ( (array!32405 (arr!15579 (Array (_ BitVec 32) (_ BitVec 64))) (size!15943 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32404)

(declare-fun lt!229496 () (_ BitVec 32))

(assert (=> b!504022 (= res!305379 (or (bvsgt (x!47449 lt!229490) #b01111111111111111111111111111110) (bvslt lt!229496 #b00000000000000000000000000000000) (bvsge lt!229496 (size!15943 a!3235)) (bvslt (index!18402 lt!229490) #b00000000000000000000000000000000) (bvsge (index!18402 lt!229490) (size!15943 a!3235)) (not (= lt!229490 (Intermediate!4053 false (index!18402 lt!229490) (x!47449 lt!229490))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504022 (= (index!18402 lt!229490) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!15302 0))(
  ( (Unit!15303) )
))
(declare-fun lt!229489 () Unit!15302)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32404 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15302)

(assert (=> b!504022 (= lt!229489 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229496 #b00000000000000000000000000000000 (index!18402 lt!229490) (x!47449 lt!229490) mask!3524))))

(assert (=> b!504022 (and (or (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229492 () Unit!15302)

(declare-fun e!295128 () Unit!15302)

(assert (=> b!504022 (= lt!229492 e!295128)))

(declare-fun c!59600 () Bool)

(assert (=> b!504022 (= c!59600 (= (select (arr!15579 a!3235) (index!18402 lt!229490)) (select (arr!15579 a!3235) j!176)))))

(assert (=> b!504022 (and (bvslt (x!47449 lt!229490) #b01111111111111111111111111111110) (or (= (select (arr!15579 a!3235) (index!18402 lt!229490)) (select (arr!15579 a!3235) j!176)) (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15579 a!3235) (index!18402 lt!229490)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504023 () Bool)

(declare-fun e!295131 () Bool)

(assert (=> b!504023 (= e!295131 false)))

(declare-fun e!295133 () Bool)

(declare-fun b!504024 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32404 (_ BitVec 32)) SeekEntryResult!4053)

(assert (=> b!504024 (= e!295133 (= (seekEntryOrOpen!0 (select (arr!15579 a!3235) j!176) a!3235 mask!3524) (Found!4053 j!176)))))

(declare-fun b!504025 () Bool)

(assert (=> b!504025 (= e!295135 true)))

(declare-fun lt!229495 () (_ BitVec 64))

(declare-fun lt!229497 () array!32404)

(declare-fun lt!229494 () SeekEntryResult!4053)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32404 (_ BitVec 32)) SeekEntryResult!4053)

(assert (=> b!504025 (= lt!229494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229496 lt!229495 lt!229497 mask!3524))))

(declare-fun b!504026 () Bool)

(declare-fun Unit!15304 () Unit!15302)

(assert (=> b!504026 (= e!295128 Unit!15304)))

(declare-fun b!504027 () Bool)

(declare-fun e!295127 () Bool)

(declare-fun e!295132 () Bool)

(assert (=> b!504027 (= e!295127 e!295132)))

(declare-fun res!305384 () Bool)

(assert (=> b!504027 (=> (not res!305384) (not e!295132))))

(declare-fun lt!229493 () SeekEntryResult!4053)

(assert (=> b!504027 (= res!305384 (or (= lt!229493 (MissingZero!4053 i!1204)) (= lt!229493 (MissingVacant!4053 i!1204))))))

(assert (=> b!504027 (= lt!229493 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!305385 () Bool)

(assert (=> start!45688 (=> (not res!305385) (not e!295127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45688 (= res!305385 (validMask!0 mask!3524))))

(assert (=> start!45688 e!295127))

(assert (=> start!45688 true))

(declare-fun array_inv!11353 (array!32404) Bool)

(assert (=> start!45688 (array_inv!11353 a!3235)))

(declare-fun b!504028 () Bool)

(declare-fun res!305392 () Bool)

(assert (=> b!504028 (=> (not res!305392) (not e!295132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32404 (_ BitVec 32)) Bool)

(assert (=> b!504028 (= res!305392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504029 () Bool)

(declare-fun e!295134 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32404 (_ BitVec 32)) SeekEntryResult!4053)

(assert (=> b!504029 (= e!295134 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229496 (index!18402 lt!229490) (select (arr!15579 a!3235) j!176) a!3235 mask!3524) (Found!4053 j!176))))))

(declare-fun b!504030 () Bool)

(declare-fun res!305383 () Bool)

(assert (=> b!504030 (=> res!305383 e!295135)))

(assert (=> b!504030 (= res!305383 e!295134)))

(declare-fun res!305387 () Bool)

(assert (=> b!504030 (=> (not res!305387) (not e!295134))))

(assert (=> b!504030 (= res!305387 (bvsgt #b00000000000000000000000000000000 (x!47449 lt!229490)))))

(declare-fun b!504031 () Bool)

(declare-fun res!305393 () Bool)

(assert (=> b!504031 (=> (not res!305393) (not e!295127))))

(assert (=> b!504031 (= res!305393 (and (= (size!15943 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15943 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15943 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504032 () Bool)

(declare-fun res!305389 () Bool)

(assert (=> b!504032 (=> (not res!305389) (not e!295127))))

(declare-fun arrayContainsKey!0 (array!32404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504032 (= res!305389 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504033 () Bool)

(declare-fun res!305380 () Bool)

(assert (=> b!504033 (=> (not res!305380) (not e!295132))))

(declare-datatypes ((List!9790 0))(
  ( (Nil!9787) (Cons!9786 (h!10663 (_ BitVec 64)) (t!16026 List!9790)) )
))
(declare-fun arrayNoDuplicates!0 (array!32404 (_ BitVec 32) List!9790) Bool)

(assert (=> b!504033 (= res!305380 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9787))))

(declare-fun b!504034 () Bool)

(assert (=> b!504034 (= e!295132 (not e!295130))))

(declare-fun res!305390 () Bool)

(assert (=> b!504034 (=> res!305390 e!295130)))

(declare-fun lt!229499 () (_ BitVec 32))

(assert (=> b!504034 (= res!305390 (= lt!229490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229499 lt!229495 lt!229497 mask!3524)))))

(assert (=> b!504034 (= lt!229490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229496 (select (arr!15579 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504034 (= lt!229499 (toIndex!0 lt!229495 mask!3524))))

(assert (=> b!504034 (= lt!229495 (select (store (arr!15579 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504034 (= lt!229496 (toIndex!0 (select (arr!15579 a!3235) j!176) mask!3524))))

(assert (=> b!504034 (= lt!229497 (array!32405 (store (arr!15579 a!3235) i!1204 k!2280) (size!15943 a!3235)))))

(assert (=> b!504034 e!295133))

(declare-fun res!305388 () Bool)

(assert (=> b!504034 (=> (not res!305388) (not e!295133))))

(assert (=> b!504034 (= res!305388 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229491 () Unit!15302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15302)

(assert (=> b!504034 (= lt!229491 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504035 () Bool)

(declare-fun res!305381 () Bool)

(assert (=> b!504035 (=> (not res!305381) (not e!295127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504035 (= res!305381 (validKeyInArray!0 k!2280))))

(declare-fun b!504036 () Bool)

(declare-fun res!305391 () Bool)

(assert (=> b!504036 (=> res!305391 e!295130)))

(assert (=> b!504036 (= res!305391 (or (undefined!4865 lt!229490) (not (is-Intermediate!4053 lt!229490))))))

(declare-fun b!504037 () Bool)

(declare-fun res!305386 () Bool)

(assert (=> b!504037 (=> (not res!305386) (not e!295127))))

(assert (=> b!504037 (= res!305386 (validKeyInArray!0 (select (arr!15579 a!3235) j!176)))))

(declare-fun b!504038 () Bool)

(declare-fun Unit!15305 () Unit!15302)

(assert (=> b!504038 (= e!295128 Unit!15305)))

(declare-fun lt!229498 () Unit!15302)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32404 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15302)

(assert (=> b!504038 (= lt!229498 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229496 #b00000000000000000000000000000000 (index!18402 lt!229490) (x!47449 lt!229490) mask!3524))))

(declare-fun res!305382 () Bool)

(assert (=> b!504038 (= res!305382 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229496 lt!229495 lt!229497 mask!3524) (Intermediate!4053 false (index!18402 lt!229490) (x!47449 lt!229490))))))

(assert (=> b!504038 (=> (not res!305382) (not e!295131))))

(assert (=> b!504038 e!295131))

(assert (= (and start!45688 res!305385) b!504031))

(assert (= (and b!504031 res!305393) b!504037))

(assert (= (and b!504037 res!305386) b!504035))

(assert (= (and b!504035 res!305381) b!504032))

(assert (= (and b!504032 res!305389) b!504027))

(assert (= (and b!504027 res!305384) b!504028))

(assert (= (and b!504028 res!305392) b!504033))

(assert (= (and b!504033 res!305380) b!504034))

(assert (= (and b!504034 res!305388) b!504024))

(assert (= (and b!504034 (not res!305390)) b!504036))

(assert (= (and b!504036 (not res!305391)) b!504022))

(assert (= (and b!504022 c!59600) b!504038))

(assert (= (and b!504022 (not c!59600)) b!504026))

(assert (= (and b!504038 res!305382) b!504023))

(assert (= (and b!504022 (not res!305379)) b!504030))

(assert (= (and b!504030 res!305387) b!504029))

(assert (= (and b!504030 (not res!305383)) b!504025))

(declare-fun m!484819 () Bool)

(assert (=> b!504022 m!484819))

(declare-fun m!484821 () Bool)

(assert (=> b!504022 m!484821))

(declare-fun m!484823 () Bool)

(assert (=> b!504022 m!484823))

(declare-fun m!484825 () Bool)

(assert (=> b!504034 m!484825))

(declare-fun m!484827 () Bool)

(assert (=> b!504034 m!484827))

(declare-fun m!484829 () Bool)

(assert (=> b!504034 m!484829))

(assert (=> b!504034 m!484823))

(declare-fun m!484831 () Bool)

(assert (=> b!504034 m!484831))

(assert (=> b!504034 m!484823))

(declare-fun m!484833 () Bool)

(assert (=> b!504034 m!484833))

(assert (=> b!504034 m!484823))

(declare-fun m!484835 () Bool)

(assert (=> b!504034 m!484835))

(declare-fun m!484837 () Bool)

(assert (=> b!504034 m!484837))

(declare-fun m!484839 () Bool)

(assert (=> b!504034 m!484839))

(declare-fun m!484841 () Bool)

(assert (=> b!504032 m!484841))

(assert (=> b!504024 m!484823))

(assert (=> b!504024 m!484823))

(declare-fun m!484843 () Bool)

(assert (=> b!504024 m!484843))

(declare-fun m!484845 () Bool)

(assert (=> b!504033 m!484845))

(assert (=> b!504029 m!484823))

(assert (=> b!504029 m!484823))

(declare-fun m!484847 () Bool)

(assert (=> b!504029 m!484847))

(assert (=> b!504037 m!484823))

(assert (=> b!504037 m!484823))

(declare-fun m!484849 () Bool)

(assert (=> b!504037 m!484849))

(declare-fun m!484851 () Bool)

(assert (=> b!504038 m!484851))

(declare-fun m!484853 () Bool)

(assert (=> b!504038 m!484853))

(assert (=> b!504025 m!484853))

(declare-fun m!484855 () Bool)

(assert (=> start!45688 m!484855))

(declare-fun m!484857 () Bool)

(assert (=> start!45688 m!484857))

(declare-fun m!484859 () Bool)

(assert (=> b!504035 m!484859))

(declare-fun m!484861 () Bool)

(assert (=> b!504028 m!484861))

(declare-fun m!484863 () Bool)

(assert (=> b!504027 m!484863))

(push 1)

