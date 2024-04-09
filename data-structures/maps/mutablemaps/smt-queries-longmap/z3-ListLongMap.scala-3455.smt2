; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48012 () Bool)

(assert start!48012)

(declare-fun b!528225 () Bool)

(declare-fun res!324373 () Bool)

(declare-fun e!307847 () Bool)

(assert (=> b!528225 (=> (not res!324373) (not e!307847))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33465 0))(
  ( (array!33466 (arr!16078 (Array (_ BitVec 32) (_ BitVec 64))) (size!16442 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33465)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!528225 (= res!324373 (and (= (size!16442 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16442 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16442 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528226 () Bool)

(declare-fun res!324366 () Bool)

(declare-fun e!307848 () Bool)

(assert (=> b!528226 (=> res!324366 e!307848)))

(declare-fun e!307852 () Bool)

(assert (=> b!528226 (= res!324366 e!307852)))

(declare-fun res!324370 () Bool)

(assert (=> b!528226 (=> (not res!324370) (not e!307852))))

(declare-datatypes ((SeekEntryResult!4552 0))(
  ( (MissingZero!4552 (index!20432 (_ BitVec 32))) (Found!4552 (index!20433 (_ BitVec 32))) (Intermediate!4552 (undefined!5364 Bool) (index!20434 (_ BitVec 32)) (x!49435 (_ BitVec 32))) (Undefined!4552) (MissingVacant!4552 (index!20435 (_ BitVec 32))) )
))
(declare-fun lt!243302 () SeekEntryResult!4552)

(assert (=> b!528226 (= res!324370 (bvsgt #b00000000000000000000000000000000 (x!49435 lt!243302)))))

(declare-fun e!307844 () Bool)

(declare-fun b!528227 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33465 (_ BitVec 32)) SeekEntryResult!4552)

(assert (=> b!528227 (= e!307844 (= (seekEntryOrOpen!0 (select (arr!16078 a!3235) j!176) a!3235 mask!3524) (Found!4552 j!176)))))

(declare-fun b!528228 () Bool)

(declare-fun res!324372 () Bool)

(assert (=> b!528228 (=> (not res!324372) (not e!307847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528228 (= res!324372 (validKeyInArray!0 (select (arr!16078 a!3235) j!176)))))

(declare-fun b!528229 () Bool)

(declare-datatypes ((Unit!16674 0))(
  ( (Unit!16675) )
))
(declare-fun e!307846 () Unit!16674)

(declare-fun Unit!16676 () Unit!16674)

(assert (=> b!528229 (= e!307846 Unit!16676)))

(declare-fun b!528230 () Bool)

(declare-fun lt!243296 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33465 (_ BitVec 32)) SeekEntryResult!4552)

(assert (=> b!528230 (= e!307852 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243296 (index!20434 lt!243302) (select (arr!16078 a!3235) j!176) a!3235 mask!3524) (Found!4552 j!176))))))

(declare-fun b!528231 () Bool)

(declare-fun e!307850 () Bool)

(assert (=> b!528231 (= e!307850 e!307848)))

(declare-fun res!324363 () Bool)

(assert (=> b!528231 (=> res!324363 e!307848)))

(assert (=> b!528231 (= res!324363 (or (bvsgt (x!49435 lt!243302) #b01111111111111111111111111111110) (bvslt lt!243296 #b00000000000000000000000000000000) (bvsge lt!243296 (size!16442 a!3235)) (bvslt (index!20434 lt!243302) #b00000000000000000000000000000000) (bvsge (index!20434 lt!243302) (size!16442 a!3235)) (not (= lt!243302 (Intermediate!4552 false (index!20434 lt!243302) (x!49435 lt!243302))))))))

(assert (=> b!528231 (= (index!20434 lt!243302) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!243301 () Unit!16674)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16674)

(assert (=> b!528231 (= lt!243301 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243296 #b00000000000000000000000000000000 (index!20434 lt!243302) (x!49435 lt!243302) mask!3524))))

(assert (=> b!528231 (and (or (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243299 () Unit!16674)

(assert (=> b!528231 (= lt!243299 e!307846)))

(declare-fun c!62240 () Bool)

(assert (=> b!528231 (= c!62240 (= (select (arr!16078 a!3235) (index!20434 lt!243302)) (select (arr!16078 a!3235) j!176)))))

(assert (=> b!528231 (and (bvslt (x!49435 lt!243302) #b01111111111111111111111111111110) (or (= (select (arr!16078 a!3235) (index!20434 lt!243302)) (select (arr!16078 a!3235) j!176)) (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16078 a!3235) (index!20434 lt!243302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528232 () Bool)

(declare-fun res!324365 () Bool)

(assert (=> b!528232 (=> (not res!324365) (not e!307847))))

(declare-fun arrayContainsKey!0 (array!33465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528232 (= res!324365 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528233 () Bool)

(declare-fun e!307845 () Bool)

(assert (=> b!528233 (= e!307847 e!307845)))

(declare-fun res!324369 () Bool)

(assert (=> b!528233 (=> (not res!324369) (not e!307845))))

(declare-fun lt!243303 () SeekEntryResult!4552)

(assert (=> b!528233 (= res!324369 (or (= lt!243303 (MissingZero!4552 i!1204)) (= lt!243303 (MissingVacant!4552 i!1204))))))

(assert (=> b!528233 (= lt!243303 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528234 () Bool)

(declare-fun e!307849 () Bool)

(assert (=> b!528234 (= e!307849 false)))

(declare-fun lt!243305 () array!33465)

(declare-fun lt!243300 () (_ BitVec 64))

(declare-fun b!528235 () Bool)

(declare-fun lt!243295 () SeekEntryResult!4552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33465 (_ BitVec 32)) SeekEntryResult!4552)

(assert (=> b!528235 (= e!307848 (= lt!243295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243296 lt!243300 lt!243305 mask!3524)))))

(declare-fun b!528236 () Bool)

(declare-fun res!324362 () Bool)

(assert (=> b!528236 (=> (not res!324362) (not e!307847))))

(assert (=> b!528236 (= res!324362 (validKeyInArray!0 k0!2280))))

(declare-fun b!528237 () Bool)

(assert (=> b!528237 (= e!307845 (not e!307850))))

(declare-fun res!324367 () Bool)

(assert (=> b!528237 (=> res!324367 e!307850)))

(get-info :version)

(assert (=> b!528237 (= res!324367 (or (= lt!243302 lt!243295) (undefined!5364 lt!243302) (not ((_ is Intermediate!4552) lt!243302))))))

(declare-fun lt!243297 () (_ BitVec 32))

(assert (=> b!528237 (= lt!243295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243297 lt!243300 lt!243305 mask!3524))))

(assert (=> b!528237 (= lt!243302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243296 (select (arr!16078 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528237 (= lt!243297 (toIndex!0 lt!243300 mask!3524))))

(assert (=> b!528237 (= lt!243300 (select (store (arr!16078 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528237 (= lt!243296 (toIndex!0 (select (arr!16078 a!3235) j!176) mask!3524))))

(assert (=> b!528237 (= lt!243305 (array!33466 (store (arr!16078 a!3235) i!1204 k0!2280) (size!16442 a!3235)))))

(assert (=> b!528237 e!307844))

(declare-fun res!324374 () Bool)

(assert (=> b!528237 (=> (not res!324374) (not e!307844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33465 (_ BitVec 32)) Bool)

(assert (=> b!528237 (= res!324374 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243298 () Unit!16674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16674)

(assert (=> b!528237 (= lt!243298 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528238 () Bool)

(declare-fun Unit!16677 () Unit!16674)

(assert (=> b!528238 (= e!307846 Unit!16677)))

(declare-fun lt!243304 () Unit!16674)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16674)

(assert (=> b!528238 (= lt!243304 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243296 #b00000000000000000000000000000000 (index!20434 lt!243302) (x!49435 lt!243302) mask!3524))))

(declare-fun res!324364 () Bool)

(assert (=> b!528238 (= res!324364 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243296 lt!243300 lt!243305 mask!3524) (Intermediate!4552 false (index!20434 lt!243302) (x!49435 lt!243302))))))

(assert (=> b!528238 (=> (not res!324364) (not e!307849))))

(assert (=> b!528238 e!307849))

(declare-fun b!528239 () Bool)

(declare-fun res!324371 () Bool)

(assert (=> b!528239 (=> (not res!324371) (not e!307845))))

(declare-datatypes ((List!10289 0))(
  ( (Nil!10286) (Cons!10285 (h!11222 (_ BitVec 64)) (t!16525 List!10289)) )
))
(declare-fun arrayNoDuplicates!0 (array!33465 (_ BitVec 32) List!10289) Bool)

(assert (=> b!528239 (= res!324371 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10286))))

(declare-fun res!324368 () Bool)

(assert (=> start!48012 (=> (not res!324368) (not e!307847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48012 (= res!324368 (validMask!0 mask!3524))))

(assert (=> start!48012 e!307847))

(assert (=> start!48012 true))

(declare-fun array_inv!11852 (array!33465) Bool)

(assert (=> start!48012 (array_inv!11852 a!3235)))

(declare-fun b!528224 () Bool)

(declare-fun res!324361 () Bool)

(assert (=> b!528224 (=> (not res!324361) (not e!307845))))

(assert (=> b!528224 (= res!324361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!48012 res!324368) b!528225))

(assert (= (and b!528225 res!324373) b!528228))

(assert (= (and b!528228 res!324372) b!528236))

(assert (= (and b!528236 res!324362) b!528232))

(assert (= (and b!528232 res!324365) b!528233))

(assert (= (and b!528233 res!324369) b!528224))

(assert (= (and b!528224 res!324361) b!528239))

(assert (= (and b!528239 res!324371) b!528237))

(assert (= (and b!528237 res!324374) b!528227))

(assert (= (and b!528237 (not res!324367)) b!528231))

(assert (= (and b!528231 c!62240) b!528238))

(assert (= (and b!528231 (not c!62240)) b!528229))

(assert (= (and b!528238 res!324364) b!528234))

(assert (= (and b!528231 (not res!324363)) b!528226))

(assert (= (and b!528226 res!324370) b!528230))

(assert (= (and b!528226 (not res!324366)) b!528235))

(declare-fun m!508805 () Bool)

(assert (=> b!528237 m!508805))

(declare-fun m!508807 () Bool)

(assert (=> b!528237 m!508807))

(declare-fun m!508809 () Bool)

(assert (=> b!528237 m!508809))

(declare-fun m!508811 () Bool)

(assert (=> b!528237 m!508811))

(declare-fun m!508813 () Bool)

(assert (=> b!528237 m!508813))

(assert (=> b!528237 m!508805))

(declare-fun m!508815 () Bool)

(assert (=> b!528237 m!508815))

(assert (=> b!528237 m!508805))

(declare-fun m!508817 () Bool)

(assert (=> b!528237 m!508817))

(declare-fun m!508819 () Bool)

(assert (=> b!528237 m!508819))

(declare-fun m!508821 () Bool)

(assert (=> b!528237 m!508821))

(declare-fun m!508823 () Bool)

(assert (=> b!528233 m!508823))

(declare-fun m!508825 () Bool)

(assert (=> b!528235 m!508825))

(declare-fun m!508827 () Bool)

(assert (=> b!528236 m!508827))

(assert (=> b!528230 m!508805))

(assert (=> b!528230 m!508805))

(declare-fun m!508829 () Bool)

(assert (=> b!528230 m!508829))

(declare-fun m!508831 () Bool)

(assert (=> b!528232 m!508831))

(declare-fun m!508833 () Bool)

(assert (=> b!528238 m!508833))

(assert (=> b!528238 m!508825))

(declare-fun m!508835 () Bool)

(assert (=> b!528224 m!508835))

(declare-fun m!508837 () Bool)

(assert (=> b!528231 m!508837))

(declare-fun m!508839 () Bool)

(assert (=> b!528231 m!508839))

(assert (=> b!528231 m!508805))

(assert (=> b!528227 m!508805))

(assert (=> b!528227 m!508805))

(declare-fun m!508841 () Bool)

(assert (=> b!528227 m!508841))

(declare-fun m!508843 () Bool)

(assert (=> b!528239 m!508843))

(assert (=> b!528228 m!508805))

(assert (=> b!528228 m!508805))

(declare-fun m!508845 () Bool)

(assert (=> b!528228 m!508845))

(declare-fun m!508847 () Bool)

(assert (=> start!48012 m!508847))

(declare-fun m!508849 () Bool)

(assert (=> start!48012 m!508849))

(check-sat (not b!528238) (not b!528236) (not b!528230) (not b!528231) (not start!48012) (not b!528227) (not b!528239) (not b!528235) (not b!528237) (not b!528228) (not b!528224) (not b!528232) (not b!528233))
(check-sat)
