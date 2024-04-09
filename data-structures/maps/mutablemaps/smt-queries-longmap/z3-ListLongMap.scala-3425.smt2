; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47550 () Bool)

(assert start!47550)

(declare-fun b!523054 () Bool)

(declare-fun e!305059 () Bool)

(declare-fun e!305062 () Bool)

(assert (=> b!523054 (= e!305059 (not e!305062))))

(declare-fun res!320592 () Bool)

(assert (=> b!523054 (=> res!320592 e!305062)))

(declare-datatypes ((SeekEntryResult!4462 0))(
  ( (MissingZero!4462 (index!20054 (_ BitVec 32))) (Found!4462 (index!20055 (_ BitVec 32))) (Intermediate!4462 (undefined!5274 Bool) (index!20056 (_ BitVec 32)) (x!49060 (_ BitVec 32))) (Undefined!4462) (MissingVacant!4462 (index!20057 (_ BitVec 32))) )
))
(declare-fun lt!240025 () SeekEntryResult!4462)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!240026 () (_ BitVec 32))

(declare-datatypes ((array!33273 0))(
  ( (array!33274 (arr!15988 (Array (_ BitVec 32) (_ BitVec 64))) (size!16352 (_ BitVec 32))) )
))
(declare-fun lt!240022 () array!33273)

(declare-fun lt!240024 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33273 (_ BitVec 32)) SeekEntryResult!4462)

(assert (=> b!523054 (= res!320592 (= lt!240025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240026 lt!240024 lt!240022 mask!3524)))))

(declare-fun lt!240019 () (_ BitVec 32))

(declare-fun a!3235 () array!33273)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!523054 (= lt!240025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240019 (select (arr!15988 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523054 (= lt!240026 (toIndex!0 lt!240024 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!523054 (= lt!240024 (select (store (arr!15988 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!523054 (= lt!240019 (toIndex!0 (select (arr!15988 a!3235) j!176) mask!3524))))

(assert (=> b!523054 (= lt!240022 (array!33274 (store (arr!15988 a!3235) i!1204 k0!2280) (size!16352 a!3235)))))

(declare-fun e!305063 () Bool)

(assert (=> b!523054 e!305063))

(declare-fun res!320595 () Bool)

(assert (=> b!523054 (=> (not res!320595) (not e!305063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33273 (_ BitVec 32)) Bool)

(assert (=> b!523054 (= res!320595 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16314 0))(
  ( (Unit!16315) )
))
(declare-fun lt!240020 () Unit!16314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16314)

(assert (=> b!523054 (= lt!240020 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523055 () Bool)

(declare-fun res!320594 () Bool)

(assert (=> b!523055 (=> res!320594 e!305062)))

(get-info :version)

(assert (=> b!523055 (= res!320594 (or (undefined!5274 lt!240025) (not ((_ is Intermediate!4462) lt!240025))))))

(declare-fun b!523056 () Bool)

(declare-fun res!320596 () Bool)

(declare-fun e!305065 () Bool)

(assert (=> b!523056 (=> (not res!320596) (not e!305065))))

(declare-fun arrayContainsKey!0 (array!33273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523056 (= res!320596 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523057 () Bool)

(declare-fun res!320593 () Bool)

(assert (=> b!523057 (=> (not res!320593) (not e!305065))))

(assert (=> b!523057 (= res!320593 (and (= (size!16352 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16352 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16352 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523059 () Bool)

(assert (=> b!523059 (= e!305065 e!305059)))

(declare-fun res!320600 () Bool)

(assert (=> b!523059 (=> (not res!320600) (not e!305059))))

(declare-fun lt!240023 () SeekEntryResult!4462)

(assert (=> b!523059 (= res!320600 (or (= lt!240023 (MissingZero!4462 i!1204)) (= lt!240023 (MissingVacant!4462 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33273 (_ BitVec 32)) SeekEntryResult!4462)

(assert (=> b!523059 (= lt!240023 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!523060 () Bool)

(declare-fun res!320597 () Bool)

(assert (=> b!523060 (=> (not res!320597) (not e!305065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523060 (= res!320597 (validKeyInArray!0 k0!2280))))

(declare-fun b!523061 () Bool)

(declare-fun res!320591 () Bool)

(assert (=> b!523061 (=> (not res!320591) (not e!305059))))

(assert (=> b!523061 (= res!320591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523062 () Bool)

(declare-fun res!320599 () Bool)

(assert (=> b!523062 (=> (not res!320599) (not e!305065))))

(assert (=> b!523062 (= res!320599 (validKeyInArray!0 (select (arr!15988 a!3235) j!176)))))

(declare-fun b!523063 () Bool)

(assert (=> b!523063 (= e!305062 (or (bvsgt #b00000000000000000000000000000000 (x!49060 lt!240025)) (bvsle (x!49060 lt!240025) #b01111111111111111111111111111110)))))

(assert (=> b!523063 (and (or (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240018 () Unit!16314)

(declare-fun e!305061 () Unit!16314)

(assert (=> b!523063 (= lt!240018 e!305061)))

(declare-fun c!61535 () Bool)

(assert (=> b!523063 (= c!61535 (= (select (arr!15988 a!3235) (index!20056 lt!240025)) (select (arr!15988 a!3235) j!176)))))

(assert (=> b!523063 (and (bvslt (x!49060 lt!240025) #b01111111111111111111111111111110) (or (= (select (arr!15988 a!3235) (index!20056 lt!240025)) (select (arr!15988 a!3235) j!176)) (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15988 a!3235) (index!20056 lt!240025)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523064 () Bool)

(declare-fun e!305060 () Bool)

(assert (=> b!523064 (= e!305060 false)))

(declare-fun b!523065 () Bool)

(declare-fun Unit!16316 () Unit!16314)

(assert (=> b!523065 (= e!305061 Unit!16316)))

(declare-fun lt!240021 () Unit!16314)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16314)

(assert (=> b!523065 (= lt!240021 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240019 #b00000000000000000000000000000000 (index!20056 lt!240025) (x!49060 lt!240025) mask!3524))))

(declare-fun res!320590 () Bool)

(assert (=> b!523065 (= res!320590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240019 lt!240024 lt!240022 mask!3524) (Intermediate!4462 false (index!20056 lt!240025) (x!49060 lt!240025))))))

(assert (=> b!523065 (=> (not res!320590) (not e!305060))))

(assert (=> b!523065 e!305060))

(declare-fun res!320589 () Bool)

(assert (=> start!47550 (=> (not res!320589) (not e!305065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47550 (= res!320589 (validMask!0 mask!3524))))

(assert (=> start!47550 e!305065))

(assert (=> start!47550 true))

(declare-fun array_inv!11762 (array!33273) Bool)

(assert (=> start!47550 (array_inv!11762 a!3235)))

(declare-fun b!523058 () Bool)

(assert (=> b!523058 (= e!305063 (= (seekEntryOrOpen!0 (select (arr!15988 a!3235) j!176) a!3235 mask!3524) (Found!4462 j!176)))))

(declare-fun b!523066 () Bool)

(declare-fun Unit!16317 () Unit!16314)

(assert (=> b!523066 (= e!305061 Unit!16317)))

(declare-fun b!523067 () Bool)

(declare-fun res!320598 () Bool)

(assert (=> b!523067 (=> (not res!320598) (not e!305059))))

(declare-datatypes ((List!10199 0))(
  ( (Nil!10196) (Cons!10195 (h!11120 (_ BitVec 64)) (t!16435 List!10199)) )
))
(declare-fun arrayNoDuplicates!0 (array!33273 (_ BitVec 32) List!10199) Bool)

(assert (=> b!523067 (= res!320598 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10196))))

(assert (= (and start!47550 res!320589) b!523057))

(assert (= (and b!523057 res!320593) b!523062))

(assert (= (and b!523062 res!320599) b!523060))

(assert (= (and b!523060 res!320597) b!523056))

(assert (= (and b!523056 res!320596) b!523059))

(assert (= (and b!523059 res!320600) b!523061))

(assert (= (and b!523061 res!320591) b!523067))

(assert (= (and b!523067 res!320598) b!523054))

(assert (= (and b!523054 res!320595) b!523058))

(assert (= (and b!523054 (not res!320592)) b!523055))

(assert (= (and b!523055 (not res!320594)) b!523063))

(assert (= (and b!523063 c!61535) b!523065))

(assert (= (and b!523063 (not c!61535)) b!523066))

(assert (= (and b!523065 res!320590) b!523064))

(declare-fun m!503911 () Bool)

(assert (=> b!523060 m!503911))

(declare-fun m!503913 () Bool)

(assert (=> b!523063 m!503913))

(declare-fun m!503915 () Bool)

(assert (=> b!523063 m!503915))

(declare-fun m!503917 () Bool)

(assert (=> b!523054 m!503917))

(declare-fun m!503919 () Bool)

(assert (=> b!523054 m!503919))

(declare-fun m!503921 () Bool)

(assert (=> b!523054 m!503921))

(assert (=> b!523054 m!503915))

(declare-fun m!503923 () Bool)

(assert (=> b!523054 m!503923))

(assert (=> b!523054 m!503915))

(declare-fun m!503925 () Bool)

(assert (=> b!523054 m!503925))

(declare-fun m!503927 () Bool)

(assert (=> b!523054 m!503927))

(assert (=> b!523054 m!503915))

(declare-fun m!503929 () Bool)

(assert (=> b!523054 m!503929))

(declare-fun m!503931 () Bool)

(assert (=> b!523054 m!503931))

(declare-fun m!503933 () Bool)

(assert (=> b!523065 m!503933))

(declare-fun m!503935 () Bool)

(assert (=> b!523065 m!503935))

(declare-fun m!503937 () Bool)

(assert (=> b!523056 m!503937))

(assert (=> b!523058 m!503915))

(assert (=> b!523058 m!503915))

(declare-fun m!503939 () Bool)

(assert (=> b!523058 m!503939))

(declare-fun m!503941 () Bool)

(assert (=> b!523059 m!503941))

(assert (=> b!523062 m!503915))

(assert (=> b!523062 m!503915))

(declare-fun m!503943 () Bool)

(assert (=> b!523062 m!503943))

(declare-fun m!503945 () Bool)

(assert (=> start!47550 m!503945))

(declare-fun m!503947 () Bool)

(assert (=> start!47550 m!503947))

(declare-fun m!503949 () Bool)

(assert (=> b!523067 m!503949))

(declare-fun m!503951 () Bool)

(assert (=> b!523061 m!503951))

(check-sat (not b!523061) (not b!523062) (not b!523059) (not b!523058) (not start!47550) (not b!523065) (not b!523060) (not b!523054) (not b!523056) (not b!523067))
(check-sat)
