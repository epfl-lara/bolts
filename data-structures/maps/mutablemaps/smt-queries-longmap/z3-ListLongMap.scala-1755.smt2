; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32138 () Bool)

(assert start!32138)

(declare-fun b!320017 () Bool)

(declare-fun res!174420 () Bool)

(declare-fun e!198637 () Bool)

(assert (=> b!320017 (=> (not res!174420) (not e!198637))))

(declare-datatypes ((array!16369 0))(
  ( (array!16370 (arr!7742 (Array (_ BitVec 32) (_ BitVec 64))) (size!8094 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16369)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16369 (_ BitVec 32)) Bool)

(assert (=> b!320017 (= res!174420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320018 () Bool)

(declare-fun res!174418 () Bool)

(assert (=> b!320018 (=> (not res!174418) (not e!198637))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320018 (= res!174418 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174421 () Bool)

(assert (=> start!32138 (=> (not res!174421) (not e!198637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32138 (= res!174421 (validMask!0 mask!3777))))

(assert (=> start!32138 e!198637))

(assert (=> start!32138 true))

(declare-fun array_inv!5696 (array!16369) Bool)

(assert (=> start!32138 (array_inv!5696 a!3305)))

(declare-fun b!320019 () Bool)

(assert (=> b!320019 (= e!198637 false)))

(declare-datatypes ((SeekEntryResult!2884 0))(
  ( (MissingZero!2884 (index!13712 (_ BitVec 32))) (Found!2884 (index!13713 (_ BitVec 32))) (Intermediate!2884 (undefined!3696 Bool) (index!13714 (_ BitVec 32)) (x!31948 (_ BitVec 32))) (Undefined!2884) (MissingVacant!2884 (index!13715 (_ BitVec 32))) )
))
(declare-fun lt!155960 () SeekEntryResult!2884)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16369 (_ BitVec 32)) SeekEntryResult!2884)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320019 (= lt!155960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!320020 () Bool)

(declare-fun res!174419 () Bool)

(assert (=> b!320020 (=> (not res!174419) (not e!198637))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320020 (= res!174419 (and (= (size!8094 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8094 a!3305))))))

(declare-fun b!320021 () Bool)

(declare-fun res!174422 () Bool)

(assert (=> b!320021 (=> (not res!174422) (not e!198637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320021 (= res!174422 (validKeyInArray!0 k0!2497))))

(declare-fun b!320022 () Bool)

(declare-fun res!174423 () Bool)

(assert (=> b!320022 (=> (not res!174423) (not e!198637))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16369 (_ BitVec 32)) SeekEntryResult!2884)

(assert (=> b!320022 (= res!174423 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2884 i!1250)))))

(assert (= (and start!32138 res!174421) b!320020))

(assert (= (and b!320020 res!174419) b!320021))

(assert (= (and b!320021 res!174422) b!320018))

(assert (= (and b!320018 res!174418) b!320022))

(assert (= (and b!320022 res!174423) b!320017))

(assert (= (and b!320017 res!174420) b!320019))

(declare-fun m!328469 () Bool)

(assert (=> b!320017 m!328469))

(declare-fun m!328471 () Bool)

(assert (=> b!320019 m!328471))

(assert (=> b!320019 m!328471))

(declare-fun m!328473 () Bool)

(assert (=> b!320019 m!328473))

(declare-fun m!328475 () Bool)

(assert (=> b!320022 m!328475))

(declare-fun m!328477 () Bool)

(assert (=> b!320021 m!328477))

(declare-fun m!328479 () Bool)

(assert (=> start!32138 m!328479))

(declare-fun m!328481 () Bool)

(assert (=> start!32138 m!328481))

(declare-fun m!328483 () Bool)

(assert (=> b!320018 m!328483))

(check-sat (not b!320021) (not start!32138) (not b!320017) (not b!320022) (not b!320018) (not b!320019))
(check-sat)
