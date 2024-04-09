; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32012 () Bool)

(assert start!32012)

(declare-fun b!319369 () Bool)

(declare-fun res!173914 () Bool)

(declare-fun e!198349 () Bool)

(assert (=> b!319369 (=> (not res!173914) (not e!198349))))

(declare-datatypes ((array!16315 0))(
  ( (array!16316 (arr!7718 (Array (_ BitVec 32) (_ BitVec 64))) (size!8070 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16315)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16315 (_ BitVec 32)) Bool)

(assert (=> b!319369 (= res!173914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319370 () Bool)

(declare-fun res!173916 () Bool)

(assert (=> b!319370 (=> (not res!173916) (not e!198349))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319370 (= res!173916 (validKeyInArray!0 k0!2497))))

(declare-fun b!319371 () Bool)

(assert (=> b!319371 (= e!198349 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun res!173911 () Bool)

(assert (=> start!32012 (=> (not res!173911) (not e!198349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32012 (= res!173911 (validMask!0 mask!3777))))

(assert (=> start!32012 e!198349))

(assert (=> start!32012 true))

(declare-fun array_inv!5672 (array!16315) Bool)

(assert (=> start!32012 (array_inv!5672 a!3305)))

(declare-fun b!319372 () Bool)

(declare-fun res!173912 () Bool)

(assert (=> b!319372 (=> (not res!173912) (not e!198349))))

(declare-fun arrayContainsKey!0 (array!16315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319372 (= res!173912 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319373 () Bool)

(declare-fun res!173915 () Bool)

(assert (=> b!319373 (=> (not res!173915) (not e!198349))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2860 0))(
  ( (MissingZero!2860 (index!13616 (_ BitVec 32))) (Found!2860 (index!13617 (_ BitVec 32))) (Intermediate!2860 (undefined!3672 Bool) (index!13618 (_ BitVec 32)) (x!31857 (_ BitVec 32))) (Undefined!2860) (MissingVacant!2860 (index!13619 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16315 (_ BitVec 32)) SeekEntryResult!2860)

(assert (=> b!319373 (= res!173915 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2860 i!1250)))))

(declare-fun b!319374 () Bool)

(declare-fun res!173913 () Bool)

(assert (=> b!319374 (=> (not res!173913) (not e!198349))))

(assert (=> b!319374 (= res!173913 (and (= (size!8070 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8070 a!3305))))))

(assert (= (and start!32012 res!173911) b!319374))

(assert (= (and b!319374 res!173913) b!319370))

(assert (= (and b!319370 res!173916) b!319372))

(assert (= (and b!319372 res!173912) b!319373))

(assert (= (and b!319373 res!173915) b!319369))

(assert (= (and b!319369 res!173914) b!319371))

(declare-fun m!327979 () Bool)

(assert (=> b!319369 m!327979))

(declare-fun m!327981 () Bool)

(assert (=> b!319373 m!327981))

(declare-fun m!327983 () Bool)

(assert (=> b!319372 m!327983))

(declare-fun m!327985 () Bool)

(assert (=> b!319370 m!327985))

(declare-fun m!327987 () Bool)

(assert (=> start!32012 m!327987))

(declare-fun m!327989 () Bool)

(assert (=> start!32012 m!327989))

(check-sat (not b!319373) (not b!319369) (not b!319372) (not start!32012) (not b!319370))
(check-sat)
