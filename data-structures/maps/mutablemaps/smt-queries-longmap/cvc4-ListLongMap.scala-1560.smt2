; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29650 () Bool)

(assert start!29650)

(declare-fun b!298973 () Bool)

(declare-fun e!188869 () Bool)

(declare-fun e!188868 () Bool)

(assert (=> b!298973 (= e!188869 e!188868)))

(declare-fun res!157698 () Bool)

(assert (=> b!298973 (=> (not res!157698) (not e!188868))))

(declare-datatypes ((SeekEntryResult!2318 0))(
  ( (MissingZero!2318 (index!11445 (_ BitVec 32))) (Found!2318 (index!11446 (_ BitVec 32))) (Intermediate!2318 (undefined!3130 Bool) (index!11447 (_ BitVec 32)) (x!29648 (_ BitVec 32))) (Undefined!2318) (MissingVacant!2318 (index!11448 (_ BitVec 32))) )
))
(declare-fun lt!148718 () SeekEntryResult!2318)

(declare-datatypes ((array!15117 0))(
  ( (array!15118 (arr!7158 (Array (_ BitVec 32) (_ BitVec 64))) (size!7510 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15117)

(declare-fun lt!148716 () Bool)

(assert (=> b!298973 (= res!157698 (and (or lt!148716 (not (undefined!3130 lt!148718))) (not lt!148716) (= (select (arr!7158 a!3312) (index!11447 lt!148718)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!298973 (= lt!148716 (not (is-Intermediate!2318 lt!148718)))))

(declare-fun b!298974 () Bool)

(declare-fun e!188870 () Bool)

(declare-fun e!188871 () Bool)

(assert (=> b!298974 (= e!188870 e!188871)))

(declare-fun res!157701 () Bool)

(assert (=> b!298974 (=> (not res!157701) (not e!188871))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!148720 () SeekEntryResult!2318)

(declare-fun lt!148715 () Bool)

(assert (=> b!298974 (= res!157701 (or lt!148715 (= lt!148720 (MissingVacant!2318 i!1256))))))

(assert (=> b!298974 (= lt!148715 (= lt!148720 (MissingZero!2318 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15117 (_ BitVec 32)) SeekEntryResult!2318)

(assert (=> b!298974 (= lt!148720 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298975 () Bool)

(assert (=> b!298975 (= e!188871 e!188869)))

(declare-fun res!157699 () Bool)

(assert (=> b!298975 (=> (not res!157699) (not e!188869))))

(assert (=> b!298975 (= res!157699 (and (not lt!148715) (= lt!148720 (MissingVacant!2318 i!1256))))))

(declare-fun lt!148717 () (_ BitVec 32))

(declare-fun lt!148721 () SeekEntryResult!2318)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15117 (_ BitVec 32)) SeekEntryResult!2318)

(assert (=> b!298975 (= lt!148721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148717 k!2524 (array!15118 (store (arr!7158 a!3312) i!1256 k!2524) (size!7510 a!3312)) mask!3809))))

(assert (=> b!298975 (= lt!148718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148717 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298975 (= lt!148717 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!157700 () Bool)

(assert (=> start!29650 (=> (not res!157700) (not e!188870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29650 (= res!157700 (validMask!0 mask!3809))))

(assert (=> start!29650 e!188870))

(assert (=> start!29650 true))

(declare-fun array_inv!5112 (array!15117) Bool)

(assert (=> start!29650 (array_inv!5112 a!3312)))

(declare-fun b!298976 () Bool)

(declare-fun res!157697 () Bool)

(assert (=> b!298976 (=> (not res!157697) (not e!188871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15117 (_ BitVec 32)) Bool)

(assert (=> b!298976 (= res!157697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298977 () Bool)

(declare-fun res!157696 () Bool)

(assert (=> b!298977 (=> (not res!157696) (not e!188870))))

(assert (=> b!298977 (= res!157696 (and (= (size!7510 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7510 a!3312))))))

(declare-fun b!298978 () Bool)

(declare-fun res!157694 () Bool)

(assert (=> b!298978 (=> (not res!157694) (not e!188870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298978 (= res!157694 (validKeyInArray!0 k!2524))))

(declare-fun b!298979 () Bool)

(assert (=> b!298979 (= e!188868 (not true))))

(declare-datatypes ((Unit!9316 0))(
  ( (Unit!9317) )
))
(declare-fun lt!148719 () Unit!9316)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15117 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9316)

(assert (=> b!298979 (= lt!148719 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!148717 (index!11447 lt!148718) (x!29648 lt!148718) mask!3809))))

(assert (=> b!298979 (= (index!11447 lt!148718) i!1256)))

(declare-fun b!298980 () Bool)

(declare-fun res!157695 () Bool)

(assert (=> b!298980 (=> (not res!157695) (not e!188870))))

(declare-fun arrayContainsKey!0 (array!15117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298980 (= res!157695 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29650 res!157700) b!298977))

(assert (= (and b!298977 res!157696) b!298978))

(assert (= (and b!298978 res!157694) b!298980))

(assert (= (and b!298980 res!157695) b!298974))

(assert (= (and b!298974 res!157701) b!298976))

(assert (= (and b!298976 res!157697) b!298975))

(assert (= (and b!298975 res!157699) b!298973))

(assert (= (and b!298973 res!157698) b!298979))

(declare-fun m!311365 () Bool)

(assert (=> b!298980 m!311365))

(declare-fun m!311367 () Bool)

(assert (=> b!298973 m!311367))

(declare-fun m!311369 () Bool)

(assert (=> b!298976 m!311369))

(declare-fun m!311371 () Bool)

(assert (=> b!298975 m!311371))

(declare-fun m!311373 () Bool)

(assert (=> b!298975 m!311373))

(declare-fun m!311375 () Bool)

(assert (=> b!298975 m!311375))

(declare-fun m!311377 () Bool)

(assert (=> b!298975 m!311377))

(declare-fun m!311379 () Bool)

(assert (=> start!29650 m!311379))

(declare-fun m!311381 () Bool)

(assert (=> start!29650 m!311381))

(declare-fun m!311383 () Bool)

(assert (=> b!298979 m!311383))

(declare-fun m!311385 () Bool)

(assert (=> b!298974 m!311385))

(declare-fun m!311387 () Bool)

(assert (=> b!298978 m!311387))

(push 1)

