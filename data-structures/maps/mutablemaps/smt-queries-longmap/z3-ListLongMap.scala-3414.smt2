; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47418 () Bool)

(assert start!47418)

(declare-fun b!521341 () Bool)

(declare-fun res!319277 () Bool)

(declare-fun e!304156 () Bool)

(assert (=> b!521341 (=> (not res!319277) (not e!304156))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33204 0))(
  ( (array!33205 (arr!15955 (Array (_ BitVec 32) (_ BitVec 64))) (size!16319 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33204)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521341 (= res!319277 (and (= (size!16319 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16319 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16319 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521342 () Bool)

(declare-fun res!319275 () Bool)

(declare-fun e!304160 () Bool)

(assert (=> b!521342 (=> res!319275 e!304160)))

(declare-datatypes ((SeekEntryResult!4429 0))(
  ( (MissingZero!4429 (index!19919 (_ BitVec 32))) (Found!4429 (index!19920 (_ BitVec 32))) (Intermediate!4429 (undefined!5241 Bool) (index!19921 (_ BitVec 32)) (x!48930 (_ BitVec 32))) (Undefined!4429) (MissingVacant!4429 (index!19922 (_ BitVec 32))) )
))
(declare-fun lt!238984 () SeekEntryResult!4429)

(get-info :version)

(assert (=> b!521342 (= res!319275 (or (undefined!5241 lt!238984) (not ((_ is Intermediate!4429) lt!238984))))))

(declare-fun res!319285 () Bool)

(assert (=> start!47418 (=> (not res!319285) (not e!304156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47418 (= res!319285 (validMask!0 mask!3524))))

(assert (=> start!47418 e!304156))

(assert (=> start!47418 true))

(declare-fun array_inv!11729 (array!33204) Bool)

(assert (=> start!47418 (array_inv!11729 a!3235)))

(declare-fun b!521343 () Bool)

(declare-fun res!319279 () Bool)

(assert (=> b!521343 (=> (not res!319279) (not e!304156))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521343 (= res!319279 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521344 () Bool)

(declare-fun res!319286 () Bool)

(assert (=> b!521344 (=> (not res!319286) (not e!304156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521344 (= res!319286 (validKeyInArray!0 k0!2280))))

(declare-fun b!521345 () Bool)

(declare-fun e!304162 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33204 (_ BitVec 32)) SeekEntryResult!4429)

(assert (=> b!521345 (= e!304162 (= (seekEntryOrOpen!0 (select (arr!15955 a!3235) j!176) a!3235 mask!3524) (Found!4429 j!176)))))

(declare-fun b!521346 () Bool)

(declare-fun res!319276 () Bool)

(assert (=> b!521346 (=> (not res!319276) (not e!304156))))

(assert (=> b!521346 (= res!319276 (validKeyInArray!0 (select (arr!15955 a!3235) j!176)))))

(declare-fun b!521347 () Bool)

(declare-fun res!319281 () Bool)

(declare-fun e!304157 () Bool)

(assert (=> b!521347 (=> (not res!319281) (not e!304157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33204 (_ BitVec 32)) Bool)

(assert (=> b!521347 (= res!319281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521348 () Bool)

(declare-datatypes ((Unit!16182 0))(
  ( (Unit!16183) )
))
(declare-fun e!304158 () Unit!16182)

(declare-fun Unit!16184 () Unit!16182)

(assert (=> b!521348 (= e!304158 Unit!16184)))

(declare-fun b!521349 () Bool)

(declare-fun e!304159 () Bool)

(assert (=> b!521349 (= e!304159 false)))

(declare-fun b!521350 () Bool)

(assert (=> b!521350 (= e!304156 e!304157)))

(declare-fun res!319283 () Bool)

(assert (=> b!521350 (=> (not res!319283) (not e!304157))))

(declare-fun lt!238986 () SeekEntryResult!4429)

(assert (=> b!521350 (= res!319283 (or (= lt!238986 (MissingZero!4429 i!1204)) (= lt!238986 (MissingVacant!4429 i!1204))))))

(assert (=> b!521350 (= lt!238986 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521351 () Bool)

(assert (=> b!521351 (= e!304157 (not e!304160))))

(declare-fun res!319282 () Bool)

(assert (=> b!521351 (=> res!319282 e!304160)))

(declare-fun lt!238987 () array!33204)

(declare-fun lt!238983 () (_ BitVec 64))

(declare-fun lt!238991 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33204 (_ BitVec 32)) SeekEntryResult!4429)

(assert (=> b!521351 (= res!319282 (= lt!238984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238991 lt!238983 lt!238987 mask!3524)))))

(declare-fun lt!238985 () (_ BitVec 32))

(assert (=> b!521351 (= lt!238984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238985 (select (arr!15955 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521351 (= lt!238991 (toIndex!0 lt!238983 mask!3524))))

(assert (=> b!521351 (= lt!238983 (select (store (arr!15955 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521351 (= lt!238985 (toIndex!0 (select (arr!15955 a!3235) j!176) mask!3524))))

(assert (=> b!521351 (= lt!238987 (array!33205 (store (arr!15955 a!3235) i!1204 k0!2280) (size!16319 a!3235)))))

(assert (=> b!521351 e!304162))

(declare-fun res!319278 () Bool)

(assert (=> b!521351 (=> (not res!319278) (not e!304162))))

(assert (=> b!521351 (= res!319278 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238989 () Unit!16182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33204 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16182)

(assert (=> b!521351 (= lt!238989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521352 () Bool)

(declare-fun res!319280 () Bool)

(assert (=> b!521352 (=> (not res!319280) (not e!304157))))

(declare-datatypes ((List!10166 0))(
  ( (Nil!10163) (Cons!10162 (h!11084 (_ BitVec 64)) (t!16402 List!10166)) )
))
(declare-fun arrayNoDuplicates!0 (array!33204 (_ BitVec 32) List!10166) Bool)

(assert (=> b!521352 (= res!319280 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10163))))

(declare-fun b!521353 () Bool)

(assert (=> b!521353 (= e!304160 true)))

(assert (=> b!521353 (and (or (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238990 () Unit!16182)

(assert (=> b!521353 (= lt!238990 e!304158)))

(declare-fun c!61334 () Bool)

(assert (=> b!521353 (= c!61334 (= (select (arr!15955 a!3235) (index!19921 lt!238984)) (select (arr!15955 a!3235) j!176)))))

(assert (=> b!521353 (and (bvslt (x!48930 lt!238984) #b01111111111111111111111111111110) (or (= (select (arr!15955 a!3235) (index!19921 lt!238984)) (select (arr!15955 a!3235) j!176)) (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15955 a!3235) (index!19921 lt!238984)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521354 () Bool)

(declare-fun Unit!16185 () Unit!16182)

(assert (=> b!521354 (= e!304158 Unit!16185)))

(declare-fun lt!238988 () Unit!16182)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33204 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16182)

(assert (=> b!521354 (= lt!238988 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238985 #b00000000000000000000000000000000 (index!19921 lt!238984) (x!48930 lt!238984) mask!3524))))

(declare-fun res!319284 () Bool)

(assert (=> b!521354 (= res!319284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238985 lt!238983 lt!238987 mask!3524) (Intermediate!4429 false (index!19921 lt!238984) (x!48930 lt!238984))))))

(assert (=> b!521354 (=> (not res!319284) (not e!304159))))

(assert (=> b!521354 e!304159))

(assert (= (and start!47418 res!319285) b!521341))

(assert (= (and b!521341 res!319277) b!521346))

(assert (= (and b!521346 res!319276) b!521344))

(assert (= (and b!521344 res!319286) b!521343))

(assert (= (and b!521343 res!319279) b!521350))

(assert (= (and b!521350 res!319283) b!521347))

(assert (= (and b!521347 res!319281) b!521352))

(assert (= (and b!521352 res!319280) b!521351))

(assert (= (and b!521351 res!319278) b!521345))

(assert (= (and b!521351 (not res!319282)) b!521342))

(assert (= (and b!521342 (not res!319275)) b!521353))

(assert (= (and b!521353 c!61334) b!521354))

(assert (= (and b!521353 (not c!61334)) b!521348))

(assert (= (and b!521354 res!319284) b!521349))

(declare-fun m!502291 () Bool)

(assert (=> start!47418 m!502291))

(declare-fun m!502293 () Bool)

(assert (=> start!47418 m!502293))

(declare-fun m!502295 () Bool)

(assert (=> b!521351 m!502295))

(declare-fun m!502297 () Bool)

(assert (=> b!521351 m!502297))

(declare-fun m!502299 () Bool)

(assert (=> b!521351 m!502299))

(declare-fun m!502301 () Bool)

(assert (=> b!521351 m!502301))

(declare-fun m!502303 () Bool)

(assert (=> b!521351 m!502303))

(declare-fun m!502305 () Bool)

(assert (=> b!521351 m!502305))

(assert (=> b!521351 m!502303))

(declare-fun m!502307 () Bool)

(assert (=> b!521351 m!502307))

(assert (=> b!521351 m!502303))

(declare-fun m!502309 () Bool)

(assert (=> b!521351 m!502309))

(declare-fun m!502311 () Bool)

(assert (=> b!521351 m!502311))

(declare-fun m!502313 () Bool)

(assert (=> b!521344 m!502313))

(declare-fun m!502315 () Bool)

(assert (=> b!521350 m!502315))

(declare-fun m!502317 () Bool)

(assert (=> b!521352 m!502317))

(assert (=> b!521346 m!502303))

(assert (=> b!521346 m!502303))

(declare-fun m!502319 () Bool)

(assert (=> b!521346 m!502319))

(assert (=> b!521345 m!502303))

(assert (=> b!521345 m!502303))

(declare-fun m!502321 () Bool)

(assert (=> b!521345 m!502321))

(declare-fun m!502323 () Bool)

(assert (=> b!521343 m!502323))

(declare-fun m!502325 () Bool)

(assert (=> b!521353 m!502325))

(assert (=> b!521353 m!502303))

(declare-fun m!502327 () Bool)

(assert (=> b!521347 m!502327))

(declare-fun m!502329 () Bool)

(assert (=> b!521354 m!502329))

(declare-fun m!502331 () Bool)

(assert (=> b!521354 m!502331))

(check-sat (not start!47418) (not b!521346) (not b!521344) (not b!521351) (not b!521354) (not b!521352) (not b!521347) (not b!521350) (not b!521343) (not b!521345))
(check-sat)
