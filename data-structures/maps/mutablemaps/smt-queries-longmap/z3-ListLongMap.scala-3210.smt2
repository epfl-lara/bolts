; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45018 () Bool)

(assert start!45018)

(declare-fun b!493571 () Bool)

(declare-fun e!289807 () Bool)

(declare-fun e!289808 () Bool)

(assert (=> b!493571 (= e!289807 (not e!289808))))

(declare-fun res!296292 () Bool)

(assert (=> b!493571 (=> res!296292 e!289808)))

(declare-datatypes ((SeekEntryResult!3817 0))(
  ( (MissingZero!3817 (index!17447 (_ BitVec 32))) (Found!3817 (index!17448 (_ BitVec 32))) (Intermediate!3817 (undefined!4629 Bool) (index!17449 (_ BitVec 32)) (x!46554 (_ BitVec 32))) (Undefined!3817) (MissingVacant!3817 (index!17450 (_ BitVec 32))) )
))
(declare-fun lt!223330 () SeekEntryResult!3817)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31923 0))(
  ( (array!31924 (arr!15343 (Array (_ BitVec 32) (_ BitVec 64))) (size!15707 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31923)

(declare-fun lt!223329 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31923 (_ BitVec 32)) SeekEntryResult!3817)

(assert (=> b!493571 (= res!296292 (= lt!223330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223329 (select (store (arr!15343 a!3235) i!1204 k0!2280) j!176) (array!31924 (store (arr!15343 a!3235) i!1204 k0!2280) (size!15707 a!3235)) mask!3524)))))

(declare-fun lt!223331 () (_ BitVec 32))

(assert (=> b!493571 (= lt!223330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223331 (select (arr!15343 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493571 (= lt!223329 (toIndex!0 (select (store (arr!15343 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493571 (= lt!223331 (toIndex!0 (select (arr!15343 a!3235) j!176) mask!3524))))

(declare-fun lt!223333 () SeekEntryResult!3817)

(assert (=> b!493571 (= lt!223333 (Found!3817 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31923 (_ BitVec 32)) SeekEntryResult!3817)

(assert (=> b!493571 (= lt!223333 (seekEntryOrOpen!0 (select (arr!15343 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31923 (_ BitVec 32)) Bool)

(assert (=> b!493571 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14572 0))(
  ( (Unit!14573) )
))
(declare-fun lt!223332 () Unit!14572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14572)

(assert (=> b!493571 (= lt!223332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493572 () Bool)

(declare-fun res!296299 () Bool)

(declare-fun e!289810 () Bool)

(assert (=> b!493572 (=> (not res!296299) (not e!289810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493572 (= res!296299 (validKeyInArray!0 k0!2280))))

(declare-fun b!493573 () Bool)

(declare-fun res!296297 () Bool)

(assert (=> b!493573 (=> (not res!296297) (not e!289807))))

(assert (=> b!493573 (= res!296297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493574 () Bool)

(assert (=> b!493574 (= e!289810 e!289807)))

(declare-fun res!296300 () Bool)

(assert (=> b!493574 (=> (not res!296300) (not e!289807))))

(declare-fun lt!223334 () SeekEntryResult!3817)

(assert (=> b!493574 (= res!296300 (or (= lt!223334 (MissingZero!3817 i!1204)) (= lt!223334 (MissingVacant!3817 i!1204))))))

(assert (=> b!493574 (= lt!223334 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493575 () Bool)

(declare-fun res!296294 () Bool)

(assert (=> b!493575 (=> (not res!296294) (not e!289810))))

(declare-fun arrayContainsKey!0 (array!31923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493575 (= res!296294 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493576 () Bool)

(assert (=> b!493576 (= e!289808 true)))

(assert (=> b!493576 (= lt!223333 Undefined!3817)))

(declare-fun b!493577 () Bool)

(declare-fun res!296296 () Bool)

(assert (=> b!493577 (=> (not res!296296) (not e!289810))))

(assert (=> b!493577 (= res!296296 (validKeyInArray!0 (select (arr!15343 a!3235) j!176)))))

(declare-fun res!296298 () Bool)

(assert (=> start!45018 (=> (not res!296298) (not e!289810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45018 (= res!296298 (validMask!0 mask!3524))))

(assert (=> start!45018 e!289810))

(assert (=> start!45018 true))

(declare-fun array_inv!11117 (array!31923) Bool)

(assert (=> start!45018 (array_inv!11117 a!3235)))

(declare-fun b!493578 () Bool)

(declare-fun res!296295 () Bool)

(assert (=> b!493578 (=> res!296295 e!289808)))

(get-info :version)

(assert (=> b!493578 (= res!296295 (or (not ((_ is Intermediate!3817) lt!223330)) (not (undefined!4629 lt!223330))))))

(declare-fun b!493579 () Bool)

(declare-fun res!296291 () Bool)

(assert (=> b!493579 (=> (not res!296291) (not e!289807))))

(declare-datatypes ((List!9554 0))(
  ( (Nil!9551) (Cons!9550 (h!10418 (_ BitVec 64)) (t!15790 List!9554)) )
))
(declare-fun arrayNoDuplicates!0 (array!31923 (_ BitVec 32) List!9554) Bool)

(assert (=> b!493579 (= res!296291 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9551))))

(declare-fun b!493580 () Bool)

(declare-fun res!296293 () Bool)

(assert (=> b!493580 (=> (not res!296293) (not e!289810))))

(assert (=> b!493580 (= res!296293 (and (= (size!15707 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15707 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15707 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45018 res!296298) b!493580))

(assert (= (and b!493580 res!296293) b!493577))

(assert (= (and b!493577 res!296296) b!493572))

(assert (= (and b!493572 res!296299) b!493575))

(assert (= (and b!493575 res!296294) b!493574))

(assert (= (and b!493574 res!296300) b!493573))

(assert (= (and b!493573 res!296297) b!493579))

(assert (= (and b!493579 res!296291) b!493571))

(assert (= (and b!493571 (not res!296292)) b!493578))

(assert (= (and b!493578 (not res!296295)) b!493576))

(declare-fun m!474517 () Bool)

(assert (=> b!493579 m!474517))

(declare-fun m!474519 () Bool)

(assert (=> b!493575 m!474519))

(declare-fun m!474521 () Bool)

(assert (=> b!493574 m!474521))

(declare-fun m!474523 () Bool)

(assert (=> b!493571 m!474523))

(declare-fun m!474525 () Bool)

(assert (=> b!493571 m!474525))

(declare-fun m!474527 () Bool)

(assert (=> b!493571 m!474527))

(assert (=> b!493571 m!474527))

(declare-fun m!474529 () Bool)

(assert (=> b!493571 m!474529))

(declare-fun m!474531 () Bool)

(assert (=> b!493571 m!474531))

(declare-fun m!474533 () Bool)

(assert (=> b!493571 m!474533))

(assert (=> b!493571 m!474531))

(declare-fun m!474535 () Bool)

(assert (=> b!493571 m!474535))

(assert (=> b!493571 m!474527))

(declare-fun m!474537 () Bool)

(assert (=> b!493571 m!474537))

(assert (=> b!493571 m!474531))

(declare-fun m!474539 () Bool)

(assert (=> b!493571 m!474539))

(assert (=> b!493571 m!474531))

(declare-fun m!474541 () Bool)

(assert (=> b!493571 m!474541))

(declare-fun m!474543 () Bool)

(assert (=> b!493573 m!474543))

(declare-fun m!474545 () Bool)

(assert (=> b!493572 m!474545))

(assert (=> b!493577 m!474531))

(assert (=> b!493577 m!474531))

(declare-fun m!474547 () Bool)

(assert (=> b!493577 m!474547))

(declare-fun m!474549 () Bool)

(assert (=> start!45018 m!474549))

(declare-fun m!474551 () Bool)

(assert (=> start!45018 m!474551))

(check-sat (not b!493574) (not b!493571) (not b!493577) (not start!45018) (not b!493573) (not b!493579) (not b!493572) (not b!493575))
(check-sat)
