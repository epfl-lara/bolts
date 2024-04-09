; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32378 () Bool)

(assert start!32378)

(declare-fun b!322281 () Bool)

(declare-datatypes ((Unit!9857 0))(
  ( (Unit!9858) )
))
(declare-fun e!199464 () Unit!9857)

(declare-fun e!199463 () Unit!9857)

(assert (=> b!322281 (= e!199464 e!199463)))

(declare-fun c!50603 () Bool)

(declare-datatypes ((array!16513 0))(
  ( (array!16514 (arr!7811 (Array (_ BitVec 32) (_ BitVec 64))) (size!8163 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16513)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!322281 (= c!50603 (or (= (select (arr!7811 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7811 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322282 () Bool)

(declare-fun res!176338 () Bool)

(declare-fun e!199468 () Bool)

(assert (=> b!322282 (=> (not res!176338) (not e!199468))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322282 (= res!176338 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322283 () Bool)

(declare-fun res!176343 () Bool)

(assert (=> b!322283 (=> (not res!176343) (not e!199468))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2953 0))(
  ( (MissingZero!2953 (index!13988 (_ BitVec 32))) (Found!2953 (index!13989 (_ BitVec 32))) (Intermediate!2953 (undefined!3765 Bool) (index!13990 (_ BitVec 32)) (x!32216 (_ BitVec 32))) (Undefined!2953) (MissingVacant!2953 (index!13991 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16513 (_ BitVec 32)) SeekEntryResult!2953)

(assert (=> b!322283 (= res!176343 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2953 i!1250)))))

(declare-fun b!322284 () Bool)

(assert (=> b!322284 false))

(declare-fun lt!156418 () Unit!9857)

(declare-fun e!199466 () Unit!9857)

(assert (=> b!322284 (= lt!156418 e!199466)))

(declare-fun c!50602 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(get-info :version)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16513 (_ BitVec 32)) SeekEntryResult!2953)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322284 (= c!50602 ((_ is Intermediate!2953) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!9859 () Unit!9857)

(assert (=> b!322284 (= e!199463 Unit!9859)))

(declare-fun b!322285 () Bool)

(declare-fun Unit!9860 () Unit!9857)

(assert (=> b!322285 (= e!199466 Unit!9860)))

(assert (=> b!322285 false))

(declare-fun b!322286 () Bool)

(declare-fun res!176342 () Bool)

(declare-fun e!199465 () Bool)

(assert (=> b!322286 (=> (not res!176342) (not e!199465))))

(declare-fun lt!156417 () SeekEntryResult!2953)

(assert (=> b!322286 (= res!176342 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156417))))

(declare-fun b!322287 () Bool)

(assert (=> b!322287 false))

(declare-fun Unit!9861 () Unit!9857)

(assert (=> b!322287 (= e!199463 Unit!9861)))

(declare-fun b!322288 () Bool)

(declare-fun res!176336 () Bool)

(assert (=> b!322288 (=> (not res!176336) (not e!199465))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322288 (= res!176336 (and (= (select (arr!7811 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8163 a!3305))))))

(declare-fun b!322289 () Bool)

(assert (=> b!322289 (= e!199468 e!199465)))

(declare-fun res!176339 () Bool)

(assert (=> b!322289 (=> (not res!176339) (not e!199465))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322289 (= res!176339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156417))))

(assert (=> b!322289 (= lt!156417 (Intermediate!2953 false resIndex!58 resX!58))))

(declare-fun res!176335 () Bool)

(assert (=> start!32378 (=> (not res!176335) (not e!199468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32378 (= res!176335 (validMask!0 mask!3777))))

(assert (=> start!32378 e!199468))

(declare-fun array_inv!5765 (array!16513) Bool)

(assert (=> start!32378 (array_inv!5765 a!3305)))

(assert (=> start!32378 true))

(declare-fun b!322290 () Bool)

(declare-fun res!176340 () Bool)

(assert (=> b!322290 (=> (not res!176340) (not e!199468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322290 (= res!176340 (validKeyInArray!0 k0!2497))))

(declare-fun b!322291 () Bool)

(declare-fun res!176337 () Bool)

(assert (=> b!322291 (=> (not res!176337) (not e!199468))))

(assert (=> b!322291 (= res!176337 (and (= (size!8163 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8163 a!3305))))))

(declare-fun b!322292 () Bool)

(declare-fun Unit!9862 () Unit!9857)

(assert (=> b!322292 (= e!199464 Unit!9862)))

(declare-fun b!322293 () Bool)

(assert (=> b!322293 (= e!199465 (not (or (not (= (select (arr!7811 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(assert (=> b!322293 (= index!1840 resIndex!58)))

(declare-fun lt!156419 () Unit!9857)

(assert (=> b!322293 (= lt!156419 e!199464)))

(declare-fun c!50601 () Bool)

(assert (=> b!322293 (= c!50601 (not (= resIndex!58 index!1840)))))

(declare-fun b!322294 () Bool)

(declare-fun res!176341 () Bool)

(assert (=> b!322294 (=> (not res!176341) (not e!199468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16513 (_ BitVec 32)) Bool)

(assert (=> b!322294 (= res!176341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322295 () Bool)

(declare-fun res!176334 () Bool)

(assert (=> b!322295 (=> (not res!176334) (not e!199465))))

(assert (=> b!322295 (= res!176334 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7811 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322296 () Bool)

(declare-fun Unit!9863 () Unit!9857)

(assert (=> b!322296 (= e!199466 Unit!9863)))

(assert (= (and start!32378 res!176335) b!322291))

(assert (= (and b!322291 res!176337) b!322290))

(assert (= (and b!322290 res!176340) b!322282))

(assert (= (and b!322282 res!176338) b!322283))

(assert (= (and b!322283 res!176343) b!322294))

(assert (= (and b!322294 res!176341) b!322289))

(assert (= (and b!322289 res!176339) b!322288))

(assert (= (and b!322288 res!176336) b!322286))

(assert (= (and b!322286 res!176342) b!322295))

(assert (= (and b!322295 res!176334) b!322293))

(assert (= (and b!322293 c!50601) b!322281))

(assert (= (and b!322293 (not c!50601)) b!322292))

(assert (= (and b!322281 c!50603) b!322287))

(assert (= (and b!322281 (not c!50603)) b!322284))

(assert (= (and b!322284 c!50602) b!322296))

(assert (= (and b!322284 (not c!50602)) b!322285))

(declare-fun m!330141 () Bool)

(assert (=> b!322281 m!330141))

(declare-fun m!330143 () Bool)

(assert (=> b!322282 m!330143))

(declare-fun m!330145 () Bool)

(assert (=> b!322294 m!330145))

(declare-fun m!330147 () Bool)

(assert (=> b!322289 m!330147))

(assert (=> b!322289 m!330147))

(declare-fun m!330149 () Bool)

(assert (=> b!322289 m!330149))

(declare-fun m!330151 () Bool)

(assert (=> b!322284 m!330151))

(assert (=> b!322284 m!330151))

(declare-fun m!330153 () Bool)

(assert (=> b!322284 m!330153))

(declare-fun m!330155 () Bool)

(assert (=> b!322288 m!330155))

(declare-fun m!330157 () Bool)

(assert (=> start!32378 m!330157))

(declare-fun m!330159 () Bool)

(assert (=> start!32378 m!330159))

(declare-fun m!330161 () Bool)

(assert (=> b!322290 m!330161))

(assert (=> b!322295 m!330141))

(declare-fun m!330163 () Bool)

(assert (=> b!322286 m!330163))

(assert (=> b!322293 m!330141))

(declare-fun m!330165 () Bool)

(assert (=> b!322283 m!330165))

(check-sat (not b!322290) (not b!322286) (not b!322282) (not start!32378) (not b!322289) (not b!322294) (not b!322284) (not b!322283))
(check-sat)
