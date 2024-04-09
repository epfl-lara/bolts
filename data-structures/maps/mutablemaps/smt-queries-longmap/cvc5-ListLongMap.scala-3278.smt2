; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45622 () Bool)

(assert start!45622)

(declare-fun b!502339 () Bool)

(declare-datatypes ((Unit!15170 0))(
  ( (Unit!15171) )
))
(declare-fun e!294243 () Unit!15170)

(declare-fun Unit!15172 () Unit!15170)

(assert (=> b!502339 (= e!294243 Unit!15172)))

(declare-fun lt!228407 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32338 0))(
  ( (array!32339 (arr!15546 (Array (_ BitVec 32) (_ BitVec 64))) (size!15910 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32338)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228400 () Unit!15170)

(declare-datatypes ((SeekEntryResult!4020 0))(
  ( (MissingZero!4020 (index!18268 (_ BitVec 32))) (Found!4020 (index!18269 (_ BitVec 32))) (Intermediate!4020 (undefined!4832 Bool) (index!18270 (_ BitVec 32)) (x!47328 (_ BitVec 32))) (Undefined!4020) (MissingVacant!4020 (index!18271 (_ BitVec 32))) )
))
(declare-fun lt!228409 () SeekEntryResult!4020)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32338 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15170)

(assert (=> b!502339 (= lt!228400 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228407 #b00000000000000000000000000000000 (index!18270 lt!228409) (x!47328 lt!228409) mask!3524))))

(declare-fun res!303897 () Bool)

(declare-fun lt!228406 () (_ BitVec 64))

(declare-fun lt!228410 () array!32338)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32338 (_ BitVec 32)) SeekEntryResult!4020)

(assert (=> b!502339 (= res!303897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228407 lt!228406 lt!228410 mask!3524) (Intermediate!4020 false (index!18270 lt!228409) (x!47328 lt!228409))))))

(declare-fun e!294240 () Bool)

(assert (=> b!502339 (=> (not res!303897) (not e!294240))))

(assert (=> b!502339 e!294240))

(declare-fun b!502340 () Bool)

(declare-fun res!303899 () Bool)

(declare-fun e!294242 () Bool)

(assert (=> b!502340 (=> (not res!303899) (not e!294242))))

(declare-fun arrayContainsKey!0 (array!32338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502340 (= res!303899 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502341 () Bool)

(declare-fun res!303907 () Bool)

(assert (=> b!502341 (=> (not res!303907) (not e!294242))))

(assert (=> b!502341 (= res!303907 (and (= (size!15910 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15910 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15910 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502342 () Bool)

(declare-fun e!294239 () Bool)

(assert (=> b!502342 (= e!294242 e!294239)))

(declare-fun res!303900 () Bool)

(assert (=> b!502342 (=> (not res!303900) (not e!294239))))

(declare-fun lt!228404 () SeekEntryResult!4020)

(assert (=> b!502342 (= res!303900 (or (= lt!228404 (MissingZero!4020 i!1204)) (= lt!228404 (MissingVacant!4020 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32338 (_ BitVec 32)) SeekEntryResult!4020)

(assert (=> b!502342 (= lt!228404 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502343 () Bool)

(declare-fun e!294237 () Bool)

(declare-fun e!294241 () Bool)

(assert (=> b!502343 (= e!294237 e!294241)))

(declare-fun res!303895 () Bool)

(assert (=> b!502343 (=> res!303895 e!294241)))

(assert (=> b!502343 (= res!303895 (or (bvsgt (x!47328 lt!228409) #b01111111111111111111111111111110) (bvslt lt!228407 #b00000000000000000000000000000000) (bvsge lt!228407 (size!15910 a!3235)) (bvslt (index!18270 lt!228409) #b00000000000000000000000000000000) (bvsge (index!18270 lt!228409) (size!15910 a!3235)) (not (= lt!228409 (Intermediate!4020 false (index!18270 lt!228409) (x!47328 lt!228409))))))))

(assert (=> b!502343 (= (index!18270 lt!228409) i!1204)))

(declare-fun lt!228402 () Unit!15170)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32338 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15170)

(assert (=> b!502343 (= lt!228402 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228407 #b00000000000000000000000000000000 (index!18270 lt!228409) (x!47328 lt!228409) mask!3524))))

(assert (=> b!502343 (and (or (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228408 () Unit!15170)

(assert (=> b!502343 (= lt!228408 e!294243)))

(declare-fun c!59501 () Bool)

(assert (=> b!502343 (= c!59501 (= (select (arr!15546 a!3235) (index!18270 lt!228409)) (select (arr!15546 a!3235) j!176)))))

(assert (=> b!502343 (and (bvslt (x!47328 lt!228409) #b01111111111111111111111111111110) (or (= (select (arr!15546 a!3235) (index!18270 lt!228409)) (select (arr!15546 a!3235) j!176)) (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15546 a!3235) (index!18270 lt!228409)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502344 () Bool)

(assert (=> b!502344 (= e!294239 (not e!294237))))

(declare-fun res!303903 () Bool)

(assert (=> b!502344 (=> res!303903 e!294237)))

(declare-fun lt!228403 () (_ BitVec 32))

(assert (=> b!502344 (= res!303903 (= lt!228409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228403 lt!228406 lt!228410 mask!3524)))))

(assert (=> b!502344 (= lt!228409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228407 (select (arr!15546 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502344 (= lt!228403 (toIndex!0 lt!228406 mask!3524))))

(assert (=> b!502344 (= lt!228406 (select (store (arr!15546 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502344 (= lt!228407 (toIndex!0 (select (arr!15546 a!3235) j!176) mask!3524))))

(assert (=> b!502344 (= lt!228410 (array!32339 (store (arr!15546 a!3235) i!1204 k!2280) (size!15910 a!3235)))))

(declare-fun e!294236 () Bool)

(assert (=> b!502344 e!294236))

(declare-fun res!303894 () Bool)

(assert (=> b!502344 (=> (not res!303894) (not e!294236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32338 (_ BitVec 32)) Bool)

(assert (=> b!502344 (= res!303894 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228405 () Unit!15170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15170)

(assert (=> b!502344 (= lt!228405 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502345 () Bool)

(declare-fun res!303906 () Bool)

(assert (=> b!502345 (=> res!303906 e!294237)))

(assert (=> b!502345 (= res!303906 (or (undefined!4832 lt!228409) (not (is-Intermediate!4020 lt!228409))))))

(declare-fun b!502346 () Bool)

(declare-fun res!303908 () Bool)

(assert (=> b!502346 (=> (not res!303908) (not e!294242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502346 (= res!303908 (validKeyInArray!0 k!2280))))

(declare-fun b!502347 () Bool)

(declare-fun res!303905 () Bool)

(assert (=> b!502347 (=> (not res!303905) (not e!294239))))

(assert (=> b!502347 (= res!303905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502348 () Bool)

(declare-fun Unit!15173 () Unit!15170)

(assert (=> b!502348 (= e!294243 Unit!15173)))

(declare-fun b!502349 () Bool)

(assert (=> b!502349 (= e!294240 false)))

(declare-fun b!502350 () Bool)

(declare-fun e!294244 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32338 (_ BitVec 32)) SeekEntryResult!4020)

(assert (=> b!502350 (= e!294244 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228407 (index!18270 lt!228409) (select (arr!15546 a!3235) j!176) a!3235 mask!3524) (Found!4020 j!176))))))

(declare-fun b!502351 () Bool)

(declare-fun res!303896 () Bool)

(assert (=> b!502351 (=> (not res!303896) (not e!294242))))

(assert (=> b!502351 (= res!303896 (validKeyInArray!0 (select (arr!15546 a!3235) j!176)))))

(declare-fun b!502352 () Bool)

(declare-fun res!303898 () Bool)

(assert (=> b!502352 (=> res!303898 e!294241)))

(assert (=> b!502352 (= res!303898 e!294244)))

(declare-fun res!303901 () Bool)

(assert (=> b!502352 (=> (not res!303901) (not e!294244))))

(assert (=> b!502352 (= res!303901 (bvsgt #b00000000000000000000000000000000 (x!47328 lt!228409)))))

(declare-fun b!502353 () Bool)

(declare-fun res!303904 () Bool)

(assert (=> b!502353 (=> (not res!303904) (not e!294239))))

(declare-datatypes ((List!9757 0))(
  ( (Nil!9754) (Cons!9753 (h!10630 (_ BitVec 64)) (t!15993 List!9757)) )
))
(declare-fun arrayNoDuplicates!0 (array!32338 (_ BitVec 32) List!9757) Bool)

(assert (=> b!502353 (= res!303904 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9754))))

(declare-fun res!303902 () Bool)

(assert (=> start!45622 (=> (not res!303902) (not e!294242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45622 (= res!303902 (validMask!0 mask!3524))))

(assert (=> start!45622 e!294242))

(assert (=> start!45622 true))

(declare-fun array_inv!11320 (array!32338) Bool)

(assert (=> start!45622 (array_inv!11320 a!3235)))

(declare-fun b!502354 () Bool)

(assert (=> b!502354 (= e!294241 true)))

(declare-fun lt!228401 () SeekEntryResult!4020)

(assert (=> b!502354 (= lt!228401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228407 lt!228406 lt!228410 mask!3524))))

(declare-fun b!502355 () Bool)

(assert (=> b!502355 (= e!294236 (= (seekEntryOrOpen!0 (select (arr!15546 a!3235) j!176) a!3235 mask!3524) (Found!4020 j!176)))))

(assert (= (and start!45622 res!303902) b!502341))

(assert (= (and b!502341 res!303907) b!502351))

(assert (= (and b!502351 res!303896) b!502346))

(assert (= (and b!502346 res!303908) b!502340))

(assert (= (and b!502340 res!303899) b!502342))

(assert (= (and b!502342 res!303900) b!502347))

(assert (= (and b!502347 res!303905) b!502353))

(assert (= (and b!502353 res!303904) b!502344))

(assert (= (and b!502344 res!303894) b!502355))

(assert (= (and b!502344 (not res!303903)) b!502345))

(assert (= (and b!502345 (not res!303906)) b!502343))

(assert (= (and b!502343 c!59501) b!502339))

(assert (= (and b!502343 (not c!59501)) b!502348))

(assert (= (and b!502339 res!303897) b!502349))

(assert (= (and b!502343 (not res!303895)) b!502352))

(assert (= (and b!502352 res!303901) b!502350))

(assert (= (and b!502352 (not res!303898)) b!502354))

(declare-fun m!483301 () Bool)

(assert (=> b!502347 m!483301))

(declare-fun m!483303 () Bool)

(assert (=> b!502340 m!483303))

(declare-fun m!483305 () Bool)

(assert (=> b!502354 m!483305))

(declare-fun m!483307 () Bool)

(assert (=> b!502351 m!483307))

(assert (=> b!502351 m!483307))

(declare-fun m!483309 () Bool)

(assert (=> b!502351 m!483309))

(declare-fun m!483311 () Bool)

(assert (=> b!502339 m!483311))

(assert (=> b!502339 m!483305))

(declare-fun m!483313 () Bool)

(assert (=> b!502353 m!483313))

(declare-fun m!483315 () Bool)

(assert (=> b!502342 m!483315))

(declare-fun m!483317 () Bool)

(assert (=> b!502343 m!483317))

(declare-fun m!483319 () Bool)

(assert (=> b!502343 m!483319))

(assert (=> b!502343 m!483307))

(assert (=> b!502355 m!483307))

(assert (=> b!502355 m!483307))

(declare-fun m!483321 () Bool)

(assert (=> b!502355 m!483321))

(assert (=> b!502350 m!483307))

(assert (=> b!502350 m!483307))

(declare-fun m!483323 () Bool)

(assert (=> b!502350 m!483323))

(declare-fun m!483325 () Bool)

(assert (=> start!45622 m!483325))

(declare-fun m!483327 () Bool)

(assert (=> start!45622 m!483327))

(declare-fun m!483329 () Bool)

(assert (=> b!502346 m!483329))

(declare-fun m!483331 () Bool)

(assert (=> b!502344 m!483331))

(declare-fun m!483333 () Bool)

(assert (=> b!502344 m!483333))

(declare-fun m!483335 () Bool)

(assert (=> b!502344 m!483335))

(declare-fun m!483337 () Bool)

(assert (=> b!502344 m!483337))

(declare-fun m!483339 () Bool)

(assert (=> b!502344 m!483339))

(assert (=> b!502344 m!483307))

(declare-fun m!483341 () Bool)

(assert (=> b!502344 m!483341))

(assert (=> b!502344 m!483307))

(declare-fun m!483343 () Bool)

(assert (=> b!502344 m!483343))

(assert (=> b!502344 m!483307))

(declare-fun m!483345 () Bool)

(assert (=> b!502344 m!483345))

(push 1)

