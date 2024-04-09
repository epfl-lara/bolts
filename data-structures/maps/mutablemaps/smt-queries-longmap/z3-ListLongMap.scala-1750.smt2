; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32066 () Bool)

(assert start!32066)

(declare-fun b!319639 () Bool)

(declare-fun res!174111 () Bool)

(declare-fun e!198475 () Bool)

(assert (=> b!319639 (=> (not res!174111) (not e!198475))))

(declare-datatypes ((array!16336 0))(
  ( (array!16337 (arr!7727 (Array (_ BitVec 32) (_ BitVec 64))) (size!8079 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16336)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2869 0))(
  ( (MissingZero!2869 (index!13652 (_ BitVec 32))) (Found!2869 (index!13653 (_ BitVec 32))) (Intermediate!2869 (undefined!3681 Bool) (index!13654 (_ BitVec 32)) (x!31890 (_ BitVec 32))) (Undefined!2869) (MissingVacant!2869 (index!13655 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16336 (_ BitVec 32)) SeekEntryResult!2869)

(assert (=> b!319639 (= res!174111 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2869 i!1250)))))

(declare-fun b!319640 () Bool)

(declare-fun res!174113 () Bool)

(assert (=> b!319640 (=> (not res!174113) (not e!198475))))

(declare-fun arrayContainsKey!0 (array!16336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319640 (= res!174113 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319641 () Bool)

(declare-fun res!174114 () Bool)

(assert (=> b!319641 (=> (not res!174114) (not e!198475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319641 (= res!174114 (validKeyInArray!0 k0!2497))))

(declare-fun b!319642 () Bool)

(declare-fun res!174110 () Bool)

(assert (=> b!319642 (=> (not res!174110) (not e!198475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16336 (_ BitVec 32)) Bool)

(assert (=> b!319642 (= res!174110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174109 () Bool)

(assert (=> start!32066 (=> (not res!174109) (not e!198475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32066 (= res!174109 (validMask!0 mask!3777))))

(assert (=> start!32066 e!198475))

(assert (=> start!32066 true))

(declare-fun array_inv!5681 (array!16336) Bool)

(assert (=> start!32066 (array_inv!5681 a!3305)))

(declare-fun b!319643 () Bool)

(declare-fun res!174112 () Bool)

(assert (=> b!319643 (=> (not res!174112) (not e!198475))))

(assert (=> b!319643 (= res!174112 (and (= (size!8079 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8079 a!3305))))))

(declare-fun b!319644 () Bool)

(assert (=> b!319644 (= e!198475 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!155843 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319644 (= lt!155843 (toIndex!0 k0!2497 mask!3777))))

(assert (= (and start!32066 res!174109) b!319643))

(assert (= (and b!319643 res!174112) b!319641))

(assert (= (and b!319641 res!174114) b!319640))

(assert (= (and b!319640 res!174113) b!319639))

(assert (= (and b!319639 res!174111) b!319642))

(assert (= (and b!319642 res!174110) b!319644))

(declare-fun m!328179 () Bool)

(assert (=> b!319640 m!328179))

(declare-fun m!328181 () Bool)

(assert (=> b!319644 m!328181))

(declare-fun m!328183 () Bool)

(assert (=> b!319642 m!328183))

(declare-fun m!328185 () Bool)

(assert (=> start!32066 m!328185))

(declare-fun m!328187 () Bool)

(assert (=> start!32066 m!328187))

(declare-fun m!328189 () Bool)

(assert (=> b!319641 m!328189))

(declare-fun m!328191 () Bool)

(assert (=> b!319639 m!328191))

(check-sat (not b!319639) (not b!319644) (not start!32066) (not b!319640) (not b!319642) (not b!319641))
(check-sat)
