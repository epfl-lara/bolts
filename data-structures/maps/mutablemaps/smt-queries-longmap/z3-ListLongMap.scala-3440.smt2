; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47772 () Bool)

(assert start!47772)

(declare-fun b!525607 () Bool)

(declare-fun e!306433 () Bool)

(declare-fun e!306438 () Bool)

(assert (=> b!525607 (= e!306433 (not e!306438))))

(declare-fun res!322471 () Bool)

(assert (=> b!525607 (=> res!322471 e!306438)))

(declare-datatypes ((SeekEntryResult!4507 0))(
  ( (MissingZero!4507 (index!20240 (_ BitVec 32))) (Found!4507 (index!20241 (_ BitVec 32))) (Intermediate!4507 (undefined!5319 Bool) (index!20242 (_ BitVec 32)) (x!49243 (_ BitVec 32))) (Undefined!4507) (MissingVacant!4507 (index!20243 (_ BitVec 32))) )
))
(declare-fun lt!241620 () SeekEntryResult!4507)

(declare-fun lt!241624 () (_ BitVec 32))

(declare-fun lt!241616 () (_ BitVec 64))

(declare-datatypes ((array!33369 0))(
  ( (array!33370 (arr!16033 (Array (_ BitVec 32) (_ BitVec 64))) (size!16397 (_ BitVec 32))) )
))
(declare-fun lt!241618 () array!33369)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33369 (_ BitVec 32)) SeekEntryResult!4507)

(assert (=> b!525607 (= res!322471 (= lt!241620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241624 lt!241616 lt!241618 mask!3524)))))

(declare-fun lt!241617 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun a!3235 () array!33369)

(assert (=> b!525607 (= lt!241620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241617 (select (arr!16033 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525607 (= lt!241624 (toIndex!0 lt!241616 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525607 (= lt!241616 (select (store (arr!16033 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525607 (= lt!241617 (toIndex!0 (select (arr!16033 a!3235) j!176) mask!3524))))

(assert (=> b!525607 (= lt!241618 (array!33370 (store (arr!16033 a!3235) i!1204 k0!2280) (size!16397 a!3235)))))

(declare-fun e!306434 () Bool)

(assert (=> b!525607 e!306434))

(declare-fun res!322474 () Bool)

(assert (=> b!525607 (=> (not res!322474) (not e!306434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33369 (_ BitVec 32)) Bool)

(assert (=> b!525607 (= res!322474 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16494 0))(
  ( (Unit!16495) )
))
(declare-fun lt!241621 () Unit!16494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16494)

(assert (=> b!525607 (= lt!241621 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!322477 () Bool)

(declare-fun e!306439 () Bool)

(assert (=> start!47772 (=> (not res!322477) (not e!306439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47772 (= res!322477 (validMask!0 mask!3524))))

(assert (=> start!47772 e!306439))

(assert (=> start!47772 true))

(declare-fun array_inv!11807 (array!33369) Bool)

(assert (=> start!47772 (array_inv!11807 a!3235)))

(declare-fun b!525608 () Bool)

(declare-fun res!322479 () Bool)

(assert (=> b!525608 (=> (not res!322479) (not e!306439))))

(assert (=> b!525608 (= res!322479 (and (= (size!16397 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16397 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16397 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525609 () Bool)

(declare-fun res!322481 () Bool)

(assert (=> b!525609 (=> (not res!322481) (not e!306439))))

(declare-fun arrayContainsKey!0 (array!33369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525609 (= res!322481 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525610 () Bool)

(declare-fun res!322470 () Bool)

(assert (=> b!525610 (=> (not res!322470) (not e!306439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525610 (= res!322470 (validKeyInArray!0 (select (arr!16033 a!3235) j!176)))))

(declare-fun b!525611 () Bool)

(declare-fun e!306435 () Unit!16494)

(declare-fun Unit!16496 () Unit!16494)

(assert (=> b!525611 (= e!306435 Unit!16496)))

(declare-fun lt!241622 () Unit!16494)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16494)

(assert (=> b!525611 (= lt!241622 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241617 #b00000000000000000000000000000000 (index!20242 lt!241620) (x!49243 lt!241620) mask!3524))))

(declare-fun res!322480 () Bool)

(assert (=> b!525611 (= res!322480 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241617 lt!241616 lt!241618 mask!3524) (Intermediate!4507 false (index!20242 lt!241620) (x!49243 lt!241620))))))

(declare-fun e!306437 () Bool)

(assert (=> b!525611 (=> (not res!322480) (not e!306437))))

(assert (=> b!525611 e!306437))

(declare-fun b!525612 () Bool)

(assert (=> b!525612 (= e!306439 e!306433)))

(declare-fun res!322478 () Bool)

(assert (=> b!525612 (=> (not res!322478) (not e!306433))))

(declare-fun lt!241625 () SeekEntryResult!4507)

(assert (=> b!525612 (= res!322478 (or (= lt!241625 (MissingZero!4507 i!1204)) (= lt!241625 (MissingVacant!4507 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33369 (_ BitVec 32)) SeekEntryResult!4507)

(assert (=> b!525612 (= lt!241625 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525613 () Bool)

(declare-fun res!322476 () Bool)

(assert (=> b!525613 (=> (not res!322476) (not e!306439))))

(assert (=> b!525613 (= res!322476 (validKeyInArray!0 k0!2280))))

(declare-fun b!525614 () Bool)

(assert (=> b!525614 (= e!306438 true)))

(assert (=> b!525614 (= (index!20242 lt!241620) i!1204)))

(declare-fun lt!241623 () Unit!16494)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16494)

(assert (=> b!525614 (= lt!241623 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241617 #b00000000000000000000000000000000 (index!20242 lt!241620) (x!49243 lt!241620) mask!3524))))

(assert (=> b!525614 (and (or (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241619 () Unit!16494)

(assert (=> b!525614 (= lt!241619 e!306435)))

(declare-fun c!61874 () Bool)

(assert (=> b!525614 (= c!61874 (= (select (arr!16033 a!3235) (index!20242 lt!241620)) (select (arr!16033 a!3235) j!176)))))

(assert (=> b!525614 (and (bvslt (x!49243 lt!241620) #b01111111111111111111111111111110) (or (= (select (arr!16033 a!3235) (index!20242 lt!241620)) (select (arr!16033 a!3235) j!176)) (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16033 a!3235) (index!20242 lt!241620)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525615 () Bool)

(declare-fun res!322472 () Bool)

(assert (=> b!525615 (=> res!322472 e!306438)))

(get-info :version)

(assert (=> b!525615 (= res!322472 (or (undefined!5319 lt!241620) (not ((_ is Intermediate!4507) lt!241620))))))

(declare-fun b!525616 () Bool)

(declare-fun res!322475 () Bool)

(assert (=> b!525616 (=> (not res!322475) (not e!306433))))

(assert (=> b!525616 (= res!322475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525617 () Bool)

(assert (=> b!525617 (= e!306437 false)))

(declare-fun b!525618 () Bool)

(declare-fun Unit!16497 () Unit!16494)

(assert (=> b!525618 (= e!306435 Unit!16497)))

(declare-fun b!525619 () Bool)

(declare-fun res!322473 () Bool)

(assert (=> b!525619 (=> (not res!322473) (not e!306433))))

(declare-datatypes ((List!10244 0))(
  ( (Nil!10241) (Cons!10240 (h!11171 (_ BitVec 64)) (t!16480 List!10244)) )
))
(declare-fun arrayNoDuplicates!0 (array!33369 (_ BitVec 32) List!10244) Bool)

(assert (=> b!525619 (= res!322473 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10241))))

(declare-fun b!525620 () Bool)

(assert (=> b!525620 (= e!306434 (= (seekEntryOrOpen!0 (select (arr!16033 a!3235) j!176) a!3235 mask!3524) (Found!4507 j!176)))))

(assert (= (and start!47772 res!322477) b!525608))

(assert (= (and b!525608 res!322479) b!525610))

(assert (= (and b!525610 res!322470) b!525613))

(assert (= (and b!525613 res!322476) b!525609))

(assert (= (and b!525609 res!322481) b!525612))

(assert (= (and b!525612 res!322478) b!525616))

(assert (= (and b!525616 res!322475) b!525619))

(assert (= (and b!525619 res!322473) b!525607))

(assert (= (and b!525607 res!322474) b!525620))

(assert (= (and b!525607 (not res!322471)) b!525615))

(assert (= (and b!525615 (not res!322472)) b!525614))

(assert (= (and b!525614 c!61874) b!525611))

(assert (= (and b!525614 (not c!61874)) b!525618))

(assert (= (and b!525611 res!322480) b!525617))

(declare-fun m!506319 () Bool)

(assert (=> b!525620 m!506319))

(assert (=> b!525620 m!506319))

(declare-fun m!506321 () Bool)

(assert (=> b!525620 m!506321))

(declare-fun m!506323 () Bool)

(assert (=> start!47772 m!506323))

(declare-fun m!506325 () Bool)

(assert (=> start!47772 m!506325))

(assert (=> b!525610 m!506319))

(assert (=> b!525610 m!506319))

(declare-fun m!506327 () Bool)

(assert (=> b!525610 m!506327))

(declare-fun m!506329 () Bool)

(assert (=> b!525609 m!506329))

(declare-fun m!506331 () Bool)

(assert (=> b!525613 m!506331))

(declare-fun m!506333 () Bool)

(assert (=> b!525612 m!506333))

(declare-fun m!506335 () Bool)

(assert (=> b!525611 m!506335))

(declare-fun m!506337 () Bool)

(assert (=> b!525611 m!506337))

(declare-fun m!506339 () Bool)

(assert (=> b!525607 m!506339))

(declare-fun m!506341 () Bool)

(assert (=> b!525607 m!506341))

(declare-fun m!506343 () Bool)

(assert (=> b!525607 m!506343))

(assert (=> b!525607 m!506319))

(declare-fun m!506345 () Bool)

(assert (=> b!525607 m!506345))

(declare-fun m!506347 () Bool)

(assert (=> b!525607 m!506347))

(assert (=> b!525607 m!506319))

(declare-fun m!506349 () Bool)

(assert (=> b!525607 m!506349))

(assert (=> b!525607 m!506319))

(declare-fun m!506351 () Bool)

(assert (=> b!525607 m!506351))

(declare-fun m!506353 () Bool)

(assert (=> b!525607 m!506353))

(declare-fun m!506355 () Bool)

(assert (=> b!525616 m!506355))

(declare-fun m!506357 () Bool)

(assert (=> b!525614 m!506357))

(declare-fun m!506359 () Bool)

(assert (=> b!525614 m!506359))

(assert (=> b!525614 m!506319))

(declare-fun m!506361 () Bool)

(assert (=> b!525619 m!506361))

(check-sat (not b!525620) (not b!525614) (not b!525610) (not b!525612) (not b!525607) (not b!525611) (not start!47772) (not b!525613) (not b!525609) (not b!525616) (not b!525619))
(check-sat)
