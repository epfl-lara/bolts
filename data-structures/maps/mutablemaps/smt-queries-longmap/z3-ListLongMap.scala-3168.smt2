; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44646 () Bool)

(assert start!44646)

(declare-fun b!489483 () Bool)

(declare-fun res!292573 () Bool)

(declare-fun e!287862 () Bool)

(assert (=> b!489483 (=> (not res!292573) (not e!287862))))

(declare-datatypes ((array!31665 0))(
  ( (array!31666 (arr!15217 (Array (_ BitVec 32) (_ BitVec 64))) (size!15581 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31665)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489483 (= res!292573 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!489484 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287863 () Bool)

(declare-datatypes ((SeekEntryResult!3691 0))(
  ( (MissingZero!3691 (index!16943 (_ BitVec 32))) (Found!3691 (index!16944 (_ BitVec 32))) (Intermediate!3691 (undefined!4503 Bool) (index!16945 (_ BitVec 32)) (x!46080 (_ BitVec 32))) (Undefined!3691) (MissingVacant!3691 (index!16946 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31665 (_ BitVec 32)) SeekEntryResult!3691)

(assert (=> b!489484 (= e!287863 (= (seekEntryOrOpen!0 (select (arr!15217 a!3235) j!176) a!3235 mask!3524) (Found!3691 j!176)))))

(declare-fun b!489485 () Bool)

(declare-fun e!287861 () Bool)

(assert (=> b!489485 (= e!287862 e!287861)))

(declare-fun res!292570 () Bool)

(assert (=> b!489485 (=> (not res!292570) (not e!287861))))

(declare-fun lt!220949 () SeekEntryResult!3691)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489485 (= res!292570 (or (= lt!220949 (MissingZero!3691 i!1204)) (= lt!220949 (MissingVacant!3691 i!1204))))))

(assert (=> b!489485 (= lt!220949 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489486 () Bool)

(declare-fun res!292571 () Bool)

(assert (=> b!489486 (=> (not res!292571) (not e!287861))))

(declare-datatypes ((List!9428 0))(
  ( (Nil!9425) (Cons!9424 (h!10286 (_ BitVec 64)) (t!15664 List!9428)) )
))
(declare-fun arrayNoDuplicates!0 (array!31665 (_ BitVec 32) List!9428) Bool)

(assert (=> b!489486 (= res!292571 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9425))))

(declare-fun b!489487 () Bool)

(declare-fun res!292574 () Bool)

(assert (=> b!489487 (=> (not res!292574) (not e!287861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31665 (_ BitVec 32)) Bool)

(assert (=> b!489487 (= res!292574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!292577 () Bool)

(assert (=> start!44646 (=> (not res!292577) (not e!287862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44646 (= res!292577 (validMask!0 mask!3524))))

(assert (=> start!44646 e!287862))

(assert (=> start!44646 true))

(declare-fun array_inv!10991 (array!31665) Bool)

(assert (=> start!44646 (array_inv!10991 a!3235)))

(declare-fun b!489488 () Bool)

(assert (=> b!489488 (= e!287861 (not true))))

(declare-fun lt!220947 () SeekEntryResult!3691)

(declare-fun lt!220951 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31665 (_ BitVec 32)) SeekEntryResult!3691)

(assert (=> b!489488 (= lt!220947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220951 (select (store (arr!15217 a!3235) i!1204 k0!2280) j!176) (array!31666 (store (arr!15217 a!3235) i!1204 k0!2280) (size!15581 a!3235)) mask!3524))))

(declare-fun lt!220948 () (_ BitVec 32))

(declare-fun lt!220952 () SeekEntryResult!3691)

(assert (=> b!489488 (= lt!220952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220948 (select (arr!15217 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489488 (= lt!220951 (toIndex!0 (select (store (arr!15217 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489488 (= lt!220948 (toIndex!0 (select (arr!15217 a!3235) j!176) mask!3524))))

(assert (=> b!489488 e!287863))

(declare-fun res!292575 () Bool)

(assert (=> b!489488 (=> (not res!292575) (not e!287863))))

(assert (=> b!489488 (= res!292575 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14320 0))(
  ( (Unit!14321) )
))
(declare-fun lt!220950 () Unit!14320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14320)

(assert (=> b!489488 (= lt!220950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489489 () Bool)

(declare-fun res!292569 () Bool)

(assert (=> b!489489 (=> (not res!292569) (not e!287862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489489 (= res!292569 (validKeyInArray!0 (select (arr!15217 a!3235) j!176)))))

(declare-fun b!489490 () Bool)

(declare-fun res!292576 () Bool)

(assert (=> b!489490 (=> (not res!292576) (not e!287862))))

(assert (=> b!489490 (= res!292576 (validKeyInArray!0 k0!2280))))

(declare-fun b!489491 () Bool)

(declare-fun res!292572 () Bool)

(assert (=> b!489491 (=> (not res!292572) (not e!287862))))

(assert (=> b!489491 (= res!292572 (and (= (size!15581 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15581 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15581 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44646 res!292577) b!489491))

(assert (= (and b!489491 res!292572) b!489489))

(assert (= (and b!489489 res!292569) b!489490))

(assert (= (and b!489490 res!292576) b!489483))

(assert (= (and b!489483 res!292573) b!489485))

(assert (= (and b!489485 res!292570) b!489487))

(assert (= (and b!489487 res!292574) b!489486))

(assert (= (and b!489486 res!292571) b!489488))

(assert (= (and b!489488 res!292575) b!489484))

(declare-fun m!469375 () Bool)

(assert (=> b!489490 m!469375))

(declare-fun m!469377 () Bool)

(assert (=> b!489483 m!469377))

(declare-fun m!469379 () Bool)

(assert (=> b!489485 m!469379))

(declare-fun m!469381 () Bool)

(assert (=> start!44646 m!469381))

(declare-fun m!469383 () Bool)

(assert (=> start!44646 m!469383))

(declare-fun m!469385 () Bool)

(assert (=> b!489484 m!469385))

(assert (=> b!489484 m!469385))

(declare-fun m!469387 () Bool)

(assert (=> b!489484 m!469387))

(declare-fun m!469389 () Bool)

(assert (=> b!489486 m!469389))

(declare-fun m!469391 () Bool)

(assert (=> b!489487 m!469391))

(declare-fun m!469393 () Bool)

(assert (=> b!489488 m!469393))

(assert (=> b!489488 m!469385))

(declare-fun m!469395 () Bool)

(assert (=> b!489488 m!469395))

(declare-fun m!469397 () Bool)

(assert (=> b!489488 m!469397))

(declare-fun m!469399 () Bool)

(assert (=> b!489488 m!469399))

(assert (=> b!489488 m!469399))

(declare-fun m!469401 () Bool)

(assert (=> b!489488 m!469401))

(assert (=> b!489488 m!469385))

(declare-fun m!469403 () Bool)

(assert (=> b!489488 m!469403))

(assert (=> b!489488 m!469385))

(declare-fun m!469405 () Bool)

(assert (=> b!489488 m!469405))

(assert (=> b!489488 m!469399))

(declare-fun m!469407 () Bool)

(assert (=> b!489488 m!469407))

(assert (=> b!489489 m!469385))

(assert (=> b!489489 m!469385))

(declare-fun m!469409 () Bool)

(assert (=> b!489489 m!469409))

(check-sat (not b!489485) (not start!44646) (not b!489488) (not b!489489) (not b!489486) (not b!489487) (not b!489490) (not b!489484) (not b!489483))
(check-sat)
