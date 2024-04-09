; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32132 () Bool)

(assert start!32132)

(declare-fun res!174365 () Bool)

(declare-fun e!198619 () Bool)

(assert (=> start!32132 (=> (not res!174365) (not e!198619))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32132 (= res!174365 (validMask!0 mask!3777))))

(assert (=> start!32132 e!198619))

(assert (=> start!32132 true))

(declare-datatypes ((array!16363 0))(
  ( (array!16364 (arr!7739 (Array (_ BitVec 32) (_ BitVec 64))) (size!8091 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16363)

(declare-fun array_inv!5693 (array!16363) Bool)

(assert (=> start!32132 (array_inv!5693 a!3305)))

(declare-fun b!319963 () Bool)

(declare-fun res!174369 () Bool)

(assert (=> b!319963 (=> (not res!174369) (not e!198619))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2881 0))(
  ( (MissingZero!2881 (index!13700 (_ BitVec 32))) (Found!2881 (index!13701 (_ BitVec 32))) (Intermediate!2881 (undefined!3693 Bool) (index!13702 (_ BitVec 32)) (x!31937 (_ BitVec 32))) (Undefined!2881) (MissingVacant!2881 (index!13703 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16363 (_ BitVec 32)) SeekEntryResult!2881)

(assert (=> b!319963 (= res!174369 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2881 i!1250)))))

(declare-fun b!319964 () Bool)

(declare-fun res!174368 () Bool)

(assert (=> b!319964 (=> (not res!174368) (not e!198619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16363 (_ BitVec 32)) Bool)

(assert (=> b!319964 (= res!174368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319965 () Bool)

(assert (=> b!319965 (= e!198619 false)))

(declare-fun lt!155951 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319965 (= lt!155951 (toIndex!0 k0!2497 mask!3777))))

(declare-fun b!319966 () Bool)

(declare-fun res!174366 () Bool)

(assert (=> b!319966 (=> (not res!174366) (not e!198619))))

(assert (=> b!319966 (= res!174366 (and (= (size!8091 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8091 a!3305))))))

(declare-fun b!319967 () Bool)

(declare-fun res!174367 () Bool)

(assert (=> b!319967 (=> (not res!174367) (not e!198619))))

(declare-fun arrayContainsKey!0 (array!16363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319967 (= res!174367 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319968 () Bool)

(declare-fun res!174364 () Bool)

(assert (=> b!319968 (=> (not res!174364) (not e!198619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319968 (= res!174364 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32132 res!174365) b!319966))

(assert (= (and b!319966 res!174366) b!319968))

(assert (= (and b!319968 res!174364) b!319967))

(assert (= (and b!319967 res!174367) b!319963))

(assert (= (and b!319963 res!174369) b!319964))

(assert (= (and b!319964 res!174368) b!319965))

(declare-fun m!328425 () Bool)

(assert (=> b!319964 m!328425))

(declare-fun m!328427 () Bool)

(assert (=> b!319965 m!328427))

(declare-fun m!328429 () Bool)

(assert (=> b!319968 m!328429))

(declare-fun m!328431 () Bool)

(assert (=> b!319963 m!328431))

(declare-fun m!328433 () Bool)

(assert (=> b!319967 m!328433))

(declare-fun m!328435 () Bool)

(assert (=> start!32132 m!328435))

(declare-fun m!328437 () Bool)

(assert (=> start!32132 m!328437))

(check-sat (not b!319967) (not b!319963) (not b!319965) (not b!319968) (not b!319964) (not start!32132))
(check-sat)
