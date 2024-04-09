; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45378 () Bool)

(assert start!45378)

(declare-fun b!498048 () Bool)

(declare-fun res!300330 () Bool)

(declare-fun e!291931 () Bool)

(assert (=> b!498048 (=> (not res!300330) (not e!291931))))

(declare-datatypes ((array!32163 0))(
  ( (array!32164 (arr!15460 (Array (_ BitVec 32) (_ BitVec 64))) (size!15824 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32163)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498048 (= res!300330 (validKeyInArray!0 (select (arr!15460 a!3235) j!176)))))

(declare-fun b!498049 () Bool)

(declare-fun res!300329 () Bool)

(assert (=> b!498049 (=> (not res!300329) (not e!291931))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498049 (= res!300329 (and (= (size!15824 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15824 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15824 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498050 () Bool)

(declare-fun res!300324 () Bool)

(declare-fun e!291924 () Bool)

(assert (=> b!498050 (=> res!300324 e!291924)))

(declare-datatypes ((SeekEntryResult!3934 0))(
  ( (MissingZero!3934 (index!17918 (_ BitVec 32))) (Found!3934 (index!17919 (_ BitVec 32))) (Intermediate!3934 (undefined!4746 Bool) (index!17920 (_ BitVec 32)) (x!46998 (_ BitVec 32))) (Undefined!3934) (MissingVacant!3934 (index!17921 (_ BitVec 32))) )
))
(declare-fun lt!225619 () SeekEntryResult!3934)

(get-info :version)

(assert (=> b!498050 (= res!300324 (or (undefined!4746 lt!225619) (not ((_ is Intermediate!3934) lt!225619))))))

(declare-fun b!498051 () Bool)

(declare-fun res!300328 () Bool)

(assert (=> b!498051 (=> (not res!300328) (not e!291931))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498051 (= res!300328 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498052 () Bool)

(declare-fun e!291930 () Bool)

(assert (=> b!498052 (= e!291930 false)))

(declare-fun b!498053 () Bool)

(declare-fun e!291926 () Bool)

(assert (=> b!498053 (= e!291926 true)))

(declare-fun lt!225618 () array!32163)

(declare-fun lt!225615 () (_ BitVec 64))

(declare-fun lt!225611 () (_ BitVec 32))

(declare-fun lt!225620 () SeekEntryResult!3934)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32163 (_ BitVec 32)) SeekEntryResult!3934)

(assert (=> b!498053 (= lt!225620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225611 lt!225615 lt!225618 mask!3524))))

(declare-fun res!300321 () Bool)

(assert (=> start!45378 (=> (not res!300321) (not e!291931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45378 (= res!300321 (validMask!0 mask!3524))))

(assert (=> start!45378 e!291931))

(assert (=> start!45378 true))

(declare-fun array_inv!11234 (array!32163) Bool)

(assert (=> start!45378 (array_inv!11234 a!3235)))

(declare-fun b!498054 () Bool)

(assert (=> b!498054 (= e!291924 e!291926)))

(declare-fun res!300322 () Bool)

(assert (=> b!498054 (=> res!300322 e!291926)))

(assert (=> b!498054 (= res!300322 (or (bvsgt #b00000000000000000000000000000000 (x!46998 lt!225619)) (bvsgt (x!46998 lt!225619) #b01111111111111111111111111111110) (bvslt lt!225611 #b00000000000000000000000000000000) (bvsge lt!225611 (size!15824 a!3235)) (bvslt (index!17920 lt!225619) #b00000000000000000000000000000000) (bvsge (index!17920 lt!225619) (size!15824 a!3235)) (not (= lt!225619 (Intermediate!3934 false (index!17920 lt!225619) (x!46998 lt!225619))))))))

(assert (=> b!498054 (and (or (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14826 0))(
  ( (Unit!14827) )
))
(declare-fun lt!225616 () Unit!14826)

(declare-fun e!291929 () Unit!14826)

(assert (=> b!498054 (= lt!225616 e!291929)))

(declare-fun c!59141 () Bool)

(assert (=> b!498054 (= c!59141 (= (select (arr!15460 a!3235) (index!17920 lt!225619)) (select (arr!15460 a!3235) j!176)))))

(assert (=> b!498054 (and (bvslt (x!46998 lt!225619) #b01111111111111111111111111111110) (or (= (select (arr!15460 a!3235) (index!17920 lt!225619)) (select (arr!15460 a!3235) j!176)) (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15460 a!3235) (index!17920 lt!225619)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498055 () Bool)

(declare-fun res!300326 () Bool)

(declare-fun e!291928 () Bool)

(assert (=> b!498055 (=> (not res!300326) (not e!291928))))

(declare-datatypes ((List!9671 0))(
  ( (Nil!9668) (Cons!9667 (h!10541 (_ BitVec 64)) (t!15907 List!9671)) )
))
(declare-fun arrayNoDuplicates!0 (array!32163 (_ BitVec 32) List!9671) Bool)

(assert (=> b!498055 (= res!300326 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9668))))

(declare-fun b!498056 () Bool)

(assert (=> b!498056 (= e!291931 e!291928)))

(declare-fun res!300331 () Bool)

(assert (=> b!498056 (=> (not res!300331) (not e!291928))))

(declare-fun lt!225614 () SeekEntryResult!3934)

(assert (=> b!498056 (= res!300331 (or (= lt!225614 (MissingZero!3934 i!1204)) (= lt!225614 (MissingVacant!3934 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32163 (_ BitVec 32)) SeekEntryResult!3934)

(assert (=> b!498056 (= lt!225614 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498057 () Bool)

(declare-fun res!300332 () Bool)

(assert (=> b!498057 (=> (not res!300332) (not e!291928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32163 (_ BitVec 32)) Bool)

(assert (=> b!498057 (= res!300332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498058 () Bool)

(declare-fun Unit!14828 () Unit!14826)

(assert (=> b!498058 (= e!291929 Unit!14828)))

(declare-fun lt!225617 () Unit!14826)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14826)

(assert (=> b!498058 (= lt!225617 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225611 #b00000000000000000000000000000000 (index!17920 lt!225619) (x!46998 lt!225619) mask!3524))))

(declare-fun res!300325 () Bool)

(assert (=> b!498058 (= res!300325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225611 lt!225615 lt!225618 mask!3524) (Intermediate!3934 false (index!17920 lt!225619) (x!46998 lt!225619))))))

(assert (=> b!498058 (=> (not res!300325) (not e!291930))))

(assert (=> b!498058 e!291930))

(declare-fun b!498059 () Bool)

(declare-fun e!291925 () Bool)

(assert (=> b!498059 (= e!291925 (= (seekEntryOrOpen!0 (select (arr!15460 a!3235) j!176) a!3235 mask!3524) (Found!3934 j!176)))))

(declare-fun b!498060 () Bool)

(assert (=> b!498060 (= e!291928 (not e!291924))))

(declare-fun res!300320 () Bool)

(assert (=> b!498060 (=> res!300320 e!291924)))

(declare-fun lt!225612 () (_ BitVec 32))

(assert (=> b!498060 (= res!300320 (= lt!225619 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225612 lt!225615 lt!225618 mask!3524)))))

(assert (=> b!498060 (= lt!225619 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225611 (select (arr!15460 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498060 (= lt!225612 (toIndex!0 lt!225615 mask!3524))))

(assert (=> b!498060 (= lt!225615 (select (store (arr!15460 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498060 (= lt!225611 (toIndex!0 (select (arr!15460 a!3235) j!176) mask!3524))))

(assert (=> b!498060 (= lt!225618 (array!32164 (store (arr!15460 a!3235) i!1204 k0!2280) (size!15824 a!3235)))))

(assert (=> b!498060 e!291925))

(declare-fun res!300327 () Bool)

(assert (=> b!498060 (=> (not res!300327) (not e!291925))))

(assert (=> b!498060 (= res!300327 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225613 () Unit!14826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14826)

(assert (=> b!498060 (= lt!225613 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498061 () Bool)

(declare-fun res!300323 () Bool)

(assert (=> b!498061 (=> (not res!300323) (not e!291931))))

(assert (=> b!498061 (= res!300323 (validKeyInArray!0 k0!2280))))

(declare-fun b!498062 () Bool)

(declare-fun Unit!14829 () Unit!14826)

(assert (=> b!498062 (= e!291929 Unit!14829)))

(assert (= (and start!45378 res!300321) b!498049))

(assert (= (and b!498049 res!300329) b!498048))

(assert (= (and b!498048 res!300330) b!498061))

(assert (= (and b!498061 res!300323) b!498051))

(assert (= (and b!498051 res!300328) b!498056))

(assert (= (and b!498056 res!300331) b!498057))

(assert (= (and b!498057 res!300332) b!498055))

(assert (= (and b!498055 res!300326) b!498060))

(assert (= (and b!498060 res!300327) b!498059))

(assert (= (and b!498060 (not res!300320)) b!498050))

(assert (= (and b!498050 (not res!300324)) b!498054))

(assert (= (and b!498054 c!59141) b!498058))

(assert (= (and b!498054 (not c!59141)) b!498062))

(assert (= (and b!498058 res!300325) b!498052))

(assert (= (and b!498054 (not res!300322)) b!498053))

(declare-fun m!479365 () Bool)

(assert (=> b!498048 m!479365))

(assert (=> b!498048 m!479365))

(declare-fun m!479367 () Bool)

(assert (=> b!498048 m!479367))

(assert (=> b!498059 m!479365))

(assert (=> b!498059 m!479365))

(declare-fun m!479369 () Bool)

(assert (=> b!498059 m!479369))

(declare-fun m!479371 () Bool)

(assert (=> b!498053 m!479371))

(declare-fun m!479373 () Bool)

(assert (=> start!45378 m!479373))

(declare-fun m!479375 () Bool)

(assert (=> start!45378 m!479375))

(declare-fun m!479377 () Bool)

(assert (=> b!498055 m!479377))

(declare-fun m!479379 () Bool)

(assert (=> b!498057 m!479379))

(declare-fun m!479381 () Bool)

(assert (=> b!498051 m!479381))

(declare-fun m!479383 () Bool)

(assert (=> b!498056 m!479383))

(declare-fun m!479385 () Bool)

(assert (=> b!498061 m!479385))

(declare-fun m!479387 () Bool)

(assert (=> b!498054 m!479387))

(assert (=> b!498054 m!479365))

(declare-fun m!479389 () Bool)

(assert (=> b!498058 m!479389))

(assert (=> b!498058 m!479371))

(declare-fun m!479391 () Bool)

(assert (=> b!498060 m!479391))

(declare-fun m!479393 () Bool)

(assert (=> b!498060 m!479393))

(declare-fun m!479395 () Bool)

(assert (=> b!498060 m!479395))

(assert (=> b!498060 m!479365))

(declare-fun m!479397 () Bool)

(assert (=> b!498060 m!479397))

(assert (=> b!498060 m!479365))

(declare-fun m!479399 () Bool)

(assert (=> b!498060 m!479399))

(declare-fun m!479401 () Bool)

(assert (=> b!498060 m!479401))

(assert (=> b!498060 m!479365))

(declare-fun m!479403 () Bool)

(assert (=> b!498060 m!479403))

(declare-fun m!479405 () Bool)

(assert (=> b!498060 m!479405))

(check-sat (not b!498060) (not b!498058) (not b!498051) (not b!498059) (not b!498056) (not b!498061) (not b!498055) (not start!45378) (not b!498048) (not b!498057) (not b!498053))
(check-sat)
