; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48014 () Bool)

(assert start!48014)

(declare-fun res!324409 () Bool)

(declare-fun e!307871 () Bool)

(assert (=> start!48014 (=> (not res!324409) (not e!307871))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48014 (= res!324409 (validMask!0 mask!3524))))

(assert (=> start!48014 e!307871))

(assert (=> start!48014 true))

(declare-datatypes ((array!33467 0))(
  ( (array!33468 (arr!16079 (Array (_ BitVec 32) (_ BitVec 64))) (size!16443 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33467)

(declare-fun array_inv!11853 (array!33467) Bool)

(assert (=> start!48014 (array_inv!11853 a!3235)))

(declare-fun b!528272 () Bool)

(declare-fun res!324416 () Bool)

(assert (=> b!528272 (=> (not res!324416) (not e!307871))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528272 (= res!324416 (validKeyInArray!0 (select (arr!16079 a!3235) j!176)))))

(declare-fun b!528273 () Bool)

(declare-fun e!307877 () Bool)

(assert (=> b!528273 (= e!307877 false)))

(declare-fun b!528274 () Bool)

(declare-fun res!324407 () Bool)

(declare-fun e!307878 () Bool)

(assert (=> b!528274 (=> (not res!324407) (not e!307878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33467 (_ BitVec 32)) Bool)

(assert (=> b!528274 (= res!324407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528275 () Bool)

(declare-fun res!324408 () Bool)

(assert (=> b!528275 (=> (not res!324408) (not e!307878))))

(declare-datatypes ((List!10290 0))(
  ( (Nil!10287) (Cons!10286 (h!11223 (_ BitVec 64)) (t!16526 List!10290)) )
))
(declare-fun arrayNoDuplicates!0 (array!33467 (_ BitVec 32) List!10290) Bool)

(assert (=> b!528275 (= res!324408 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10287))))

(declare-fun b!528276 () Bool)

(declare-datatypes ((Unit!16678 0))(
  ( (Unit!16679) )
))
(declare-fun e!307873 () Unit!16678)

(declare-fun Unit!16680 () Unit!16678)

(assert (=> b!528276 (= e!307873 Unit!16680)))

(declare-datatypes ((SeekEntryResult!4553 0))(
  ( (MissingZero!4553 (index!20436 (_ BitVec 32))) (Found!4553 (index!20437 (_ BitVec 32))) (Intermediate!4553 (undefined!5365 Bool) (index!20438 (_ BitVec 32)) (x!49436 (_ BitVec 32))) (Undefined!4553) (MissingVacant!4553 (index!20439 (_ BitVec 32))) )
))
(declare-fun lt!243330 () SeekEntryResult!4553)

(declare-fun lt!243338 () Unit!16678)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!243335 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16678)

(assert (=> b!528276 (= lt!243338 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243335 #b00000000000000000000000000000000 (index!20438 lt!243330) (x!49436 lt!243330) mask!3524))))

(declare-fun lt!243334 () array!33467)

(declare-fun res!324411 () Bool)

(declare-fun lt!243336 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33467 (_ BitVec 32)) SeekEntryResult!4553)

(assert (=> b!528276 (= res!324411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243335 lt!243336 lt!243334 mask!3524) (Intermediate!4553 false (index!20438 lt!243330) (x!49436 lt!243330))))))

(assert (=> b!528276 (=> (not res!324411) (not e!307877))))

(assert (=> b!528276 e!307877))

(declare-fun b!528277 () Bool)

(declare-fun res!324403 () Bool)

(assert (=> b!528277 (=> (not res!324403) (not e!307871))))

(declare-fun arrayContainsKey!0 (array!33467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528277 (= res!324403 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528278 () Bool)

(declare-fun res!324405 () Bool)

(declare-fun e!307874 () Bool)

(assert (=> b!528278 (=> res!324405 e!307874)))

(declare-fun e!307872 () Bool)

(assert (=> b!528278 (= res!324405 e!307872)))

(declare-fun res!324404 () Bool)

(assert (=> b!528278 (=> (not res!324404) (not e!307872))))

(assert (=> b!528278 (= res!324404 (bvsgt #b00000000000000000000000000000000 (x!49436 lt!243330)))))

(declare-fun b!528279 () Bool)

(declare-fun Unit!16681 () Unit!16678)

(assert (=> b!528279 (= e!307873 Unit!16681)))

(declare-fun b!528280 () Bool)

(declare-fun res!324412 () Bool)

(assert (=> b!528280 (=> (not res!324412) (not e!307871))))

(assert (=> b!528280 (= res!324412 (and (= (size!16443 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16443 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16443 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528281 () Bool)

(declare-fun e!307876 () Bool)

(assert (=> b!528281 (= e!307878 (not e!307876))))

(declare-fun res!324406 () Bool)

(assert (=> b!528281 (=> res!324406 e!307876)))

(declare-fun lt!243333 () SeekEntryResult!4553)

(assert (=> b!528281 (= res!324406 (or (= lt!243330 lt!243333) (undefined!5365 lt!243330) (not (is-Intermediate!4553 lt!243330))))))

(declare-fun lt!243331 () (_ BitVec 32))

(assert (=> b!528281 (= lt!243333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243331 lt!243336 lt!243334 mask!3524))))

(assert (=> b!528281 (= lt!243330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243335 (select (arr!16079 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528281 (= lt!243331 (toIndex!0 lt!243336 mask!3524))))

(assert (=> b!528281 (= lt!243336 (select (store (arr!16079 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528281 (= lt!243335 (toIndex!0 (select (arr!16079 a!3235) j!176) mask!3524))))

(assert (=> b!528281 (= lt!243334 (array!33468 (store (arr!16079 a!3235) i!1204 k!2280) (size!16443 a!3235)))))

(declare-fun e!307875 () Bool)

(assert (=> b!528281 e!307875))

(declare-fun res!324413 () Bool)

(assert (=> b!528281 (=> (not res!324413) (not e!307875))))

(assert (=> b!528281 (= res!324413 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243337 () Unit!16678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16678)

(assert (=> b!528281 (= lt!243337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528282 () Bool)

(declare-fun res!324414 () Bool)

(assert (=> b!528282 (=> (not res!324414) (not e!307871))))

(assert (=> b!528282 (= res!324414 (validKeyInArray!0 k!2280))))

(declare-fun b!528283 () Bool)

(assert (=> b!528283 (= e!307874 (= lt!243333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243335 lt!243336 lt!243334 mask!3524)))))

(declare-fun b!528284 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33467 (_ BitVec 32)) SeekEntryResult!4553)

(assert (=> b!528284 (= e!307872 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243335 (index!20438 lt!243330) (select (arr!16079 a!3235) j!176) a!3235 mask!3524) (Found!4553 j!176))))))

(declare-fun b!528285 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33467 (_ BitVec 32)) SeekEntryResult!4553)

(assert (=> b!528285 (= e!307875 (= (seekEntryOrOpen!0 (select (arr!16079 a!3235) j!176) a!3235 mask!3524) (Found!4553 j!176)))))

(declare-fun b!528286 () Bool)

(assert (=> b!528286 (= e!307876 e!307874)))

(declare-fun res!324415 () Bool)

(assert (=> b!528286 (=> res!324415 e!307874)))

(assert (=> b!528286 (= res!324415 (or (bvsgt (x!49436 lt!243330) #b01111111111111111111111111111110) (bvslt lt!243335 #b00000000000000000000000000000000) (bvsge lt!243335 (size!16443 a!3235)) (bvslt (index!20438 lt!243330) #b00000000000000000000000000000000) (bvsge (index!20438 lt!243330) (size!16443 a!3235)) (not (= lt!243330 (Intermediate!4553 false (index!20438 lt!243330) (x!49436 lt!243330))))))))

(assert (=> b!528286 (= (index!20438 lt!243330) i!1204)))

(declare-fun lt!243328 () Unit!16678)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16678)

(assert (=> b!528286 (= lt!243328 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243335 #b00000000000000000000000000000000 (index!20438 lt!243330) (x!49436 lt!243330) mask!3524))))

(assert (=> b!528286 (and (or (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243329 () Unit!16678)

(assert (=> b!528286 (= lt!243329 e!307873)))

(declare-fun c!62243 () Bool)

(assert (=> b!528286 (= c!62243 (= (select (arr!16079 a!3235) (index!20438 lt!243330)) (select (arr!16079 a!3235) j!176)))))

(assert (=> b!528286 (and (bvslt (x!49436 lt!243330) #b01111111111111111111111111111110) (or (= (select (arr!16079 a!3235) (index!20438 lt!243330)) (select (arr!16079 a!3235) j!176)) (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16079 a!3235) (index!20438 lt!243330)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528287 () Bool)

(assert (=> b!528287 (= e!307871 e!307878)))

(declare-fun res!324410 () Bool)

(assert (=> b!528287 (=> (not res!324410) (not e!307878))))

(declare-fun lt!243332 () SeekEntryResult!4553)

(assert (=> b!528287 (= res!324410 (or (= lt!243332 (MissingZero!4553 i!1204)) (= lt!243332 (MissingVacant!4553 i!1204))))))

(assert (=> b!528287 (= lt!243332 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!48014 res!324409) b!528280))

(assert (= (and b!528280 res!324412) b!528272))

(assert (= (and b!528272 res!324416) b!528282))

(assert (= (and b!528282 res!324414) b!528277))

(assert (= (and b!528277 res!324403) b!528287))

(assert (= (and b!528287 res!324410) b!528274))

(assert (= (and b!528274 res!324407) b!528275))

(assert (= (and b!528275 res!324408) b!528281))

(assert (= (and b!528281 res!324413) b!528285))

(assert (= (and b!528281 (not res!324406)) b!528286))

(assert (= (and b!528286 c!62243) b!528276))

(assert (= (and b!528286 (not c!62243)) b!528279))

(assert (= (and b!528276 res!324411) b!528273))

(assert (= (and b!528286 (not res!324415)) b!528278))

(assert (= (and b!528278 res!324404) b!528284))

(assert (= (and b!528278 (not res!324405)) b!528283))

(declare-fun m!508851 () Bool)

(assert (=> b!528287 m!508851))

(declare-fun m!508853 () Bool)

(assert (=> b!528276 m!508853))

(declare-fun m!508855 () Bool)

(assert (=> b!528276 m!508855))

(declare-fun m!508857 () Bool)

(assert (=> b!528275 m!508857))

(declare-fun m!508859 () Bool)

(assert (=> b!528285 m!508859))

(assert (=> b!528285 m!508859))

(declare-fun m!508861 () Bool)

(assert (=> b!528285 m!508861))

(assert (=> b!528284 m!508859))

(assert (=> b!528284 m!508859))

(declare-fun m!508863 () Bool)

(assert (=> b!528284 m!508863))

(declare-fun m!508865 () Bool)

(assert (=> b!528281 m!508865))

(declare-fun m!508867 () Bool)

(assert (=> b!528281 m!508867))

(assert (=> b!528281 m!508859))

(declare-fun m!508869 () Bool)

(assert (=> b!528281 m!508869))

(assert (=> b!528281 m!508859))

(declare-fun m!508871 () Bool)

(assert (=> b!528281 m!508871))

(assert (=> b!528281 m!508859))

(declare-fun m!508873 () Bool)

(assert (=> b!528281 m!508873))

(declare-fun m!508875 () Bool)

(assert (=> b!528281 m!508875))

(declare-fun m!508877 () Bool)

(assert (=> b!528281 m!508877))

(declare-fun m!508879 () Bool)

(assert (=> b!528281 m!508879))

(declare-fun m!508881 () Bool)

(assert (=> b!528282 m!508881))

(declare-fun m!508883 () Bool)

(assert (=> start!48014 m!508883))

(declare-fun m!508885 () Bool)

(assert (=> start!48014 m!508885))

(declare-fun m!508887 () Bool)

(assert (=> b!528277 m!508887))

(declare-fun m!508889 () Bool)

(assert (=> b!528286 m!508889))

(declare-fun m!508891 () Bool)

(assert (=> b!528286 m!508891))

(assert (=> b!528286 m!508859))

(declare-fun m!508893 () Bool)

(assert (=> b!528274 m!508893))

(assert (=> b!528272 m!508859))

(assert (=> b!528272 m!508859))

(declare-fun m!508895 () Bool)

(assert (=> b!528272 m!508895))

(assert (=> b!528283 m!508855))

(push 1)

