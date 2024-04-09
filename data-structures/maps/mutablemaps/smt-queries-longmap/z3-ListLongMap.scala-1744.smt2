; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31994 () Bool)

(assert start!31994)

(declare-fun b!319245 () Bool)

(declare-fun e!198294 () Bool)

(assert (=> b!319245 (= e!198294 false)))

(declare-datatypes ((array!16297 0))(
  ( (array!16298 (arr!7709 (Array (_ BitVec 32) (_ BitVec 64))) (size!8061 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16297)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2851 0))(
  ( (MissingZero!2851 (index!13580 (_ BitVec 32))) (Found!2851 (index!13581 (_ BitVec 32))) (Intermediate!2851 (undefined!3663 Bool) (index!13582 (_ BitVec 32)) (x!31824 (_ BitVec 32))) (Undefined!2851) (MissingVacant!2851 (index!13583 (_ BitVec 32))) )
))
(declare-fun lt!155762 () SeekEntryResult!2851)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16297 (_ BitVec 32)) SeekEntryResult!2851)

(assert (=> b!319245 (= lt!155762 (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777))))

(declare-fun b!319242 () Bool)

(declare-fun res!173785 () Bool)

(assert (=> b!319242 (=> (not res!173785) (not e!198294))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319242 (= res!173785 (and (= (size!8061 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8061 a!3305))))))

(declare-fun b!319243 () Bool)

(declare-fun res!173786 () Bool)

(assert (=> b!319243 (=> (not res!173786) (not e!198294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319243 (= res!173786 (validKeyInArray!0 k0!2497))))

(declare-fun res!173784 () Bool)

(assert (=> start!31994 (=> (not res!173784) (not e!198294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31994 (= res!173784 (validMask!0 mask!3777))))

(assert (=> start!31994 e!198294))

(assert (=> start!31994 true))

(declare-fun array_inv!5663 (array!16297) Bool)

(assert (=> start!31994 (array_inv!5663 a!3305)))

(declare-fun b!319244 () Bool)

(declare-fun res!173787 () Bool)

(assert (=> b!319244 (=> (not res!173787) (not e!198294))))

(declare-fun arrayContainsKey!0 (array!16297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319244 (= res!173787 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!31994 res!173784) b!319242))

(assert (= (and b!319242 res!173785) b!319243))

(assert (= (and b!319243 res!173786) b!319244))

(assert (= (and b!319244 res!173787) b!319245))

(declare-fun m!327887 () Bool)

(assert (=> b!319245 m!327887))

(declare-fun m!327889 () Bool)

(assert (=> b!319243 m!327889))

(declare-fun m!327891 () Bool)

(assert (=> start!31994 m!327891))

(declare-fun m!327893 () Bool)

(assert (=> start!31994 m!327893))

(declare-fun m!327895 () Bool)

(assert (=> b!319244 m!327895))

(check-sat (not start!31994) (not b!319244) (not b!319245) (not b!319243))
(check-sat)
