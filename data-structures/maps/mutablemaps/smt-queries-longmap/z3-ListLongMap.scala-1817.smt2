; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32720 () Bool)

(assert start!32720)

(declare-fun b!326778 () Bool)

(declare-fun res!179976 () Bool)

(declare-fun e!201079 () Bool)

(assert (=> b!326778 (=> (not res!179976) (not e!201079))))

(declare-datatypes ((array!16753 0))(
  ( (array!16754 (arr!7928 (Array (_ BitVec 32) (_ BitVec 64))) (size!8280 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16753)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16753 (_ BitVec 32)) Bool)

(assert (=> b!326778 (= res!179976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326779 () Bool)

(declare-fun res!179974 () Bool)

(declare-fun e!201077 () Bool)

(assert (=> b!326779 (=> (not res!179974) (not e!201077))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326779 (= res!179974 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7928 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326780 () Bool)

(assert (=> b!326780 (= e!201077 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10149 0))(
  ( (Unit!10150) )
))
(declare-fun lt!157394 () Unit!10149)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16753 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10149)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326780 (= lt!157394 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun res!179975 () Bool)

(assert (=> start!32720 (=> (not res!179975) (not e!201079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32720 (= res!179975 (validMask!0 mask!3777))))

(assert (=> start!32720 e!201079))

(declare-fun array_inv!5882 (array!16753) Bool)

(assert (=> start!32720 (array_inv!5882 a!3305)))

(assert (=> start!32720 true))

(declare-fun b!326781 () Bool)

(declare-fun res!179969 () Bool)

(assert (=> b!326781 (=> (not res!179969) (not e!201079))))

(declare-datatypes ((SeekEntryResult!3070 0))(
  ( (MissingZero!3070 (index!14456 (_ BitVec 32))) (Found!3070 (index!14457 (_ BitVec 32))) (Intermediate!3070 (undefined!3882 Bool) (index!14458 (_ BitVec 32)) (x!32663 (_ BitVec 32))) (Undefined!3070) (MissingVacant!3070 (index!14459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16753 (_ BitVec 32)) SeekEntryResult!3070)

(assert (=> b!326781 (= res!179969 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3070 i!1250)))))

(declare-fun b!326782 () Bool)

(declare-fun res!179971 () Bool)

(assert (=> b!326782 (=> (not res!179971) (not e!201079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326782 (= res!179971 (validKeyInArray!0 k0!2497))))

(declare-fun b!326783 () Bool)

(declare-fun res!179968 () Bool)

(assert (=> b!326783 (=> (not res!179968) (not e!201079))))

(declare-fun arrayContainsKey!0 (array!16753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326783 (= res!179968 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326784 () Bool)

(declare-fun res!179970 () Bool)

(assert (=> b!326784 (=> (not res!179970) (not e!201077))))

(declare-fun lt!157393 () SeekEntryResult!3070)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16753 (_ BitVec 32)) SeekEntryResult!3070)

(assert (=> b!326784 (= res!179970 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157393))))

(declare-fun b!326785 () Bool)

(declare-fun res!179972 () Bool)

(assert (=> b!326785 (=> (not res!179972) (not e!201077))))

(assert (=> b!326785 (= res!179972 (and (= (select (arr!7928 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8280 a!3305))))))

(declare-fun b!326786 () Bool)

(assert (=> b!326786 (= e!201079 e!201077)))

(declare-fun res!179973 () Bool)

(assert (=> b!326786 (=> (not res!179973) (not e!201077))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326786 (= res!179973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157393))))

(assert (=> b!326786 (= lt!157393 (Intermediate!3070 false resIndex!58 resX!58))))

(declare-fun b!326787 () Bool)

(declare-fun res!179967 () Bool)

(assert (=> b!326787 (=> (not res!179967) (not e!201079))))

(assert (=> b!326787 (= res!179967 (and (= (size!8280 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8280 a!3305))))))

(assert (= (and start!32720 res!179975) b!326787))

(assert (= (and b!326787 res!179967) b!326782))

(assert (= (and b!326782 res!179971) b!326783))

(assert (= (and b!326783 res!179968) b!326781))

(assert (= (and b!326781 res!179969) b!326778))

(assert (= (and b!326778 res!179976) b!326786))

(assert (= (and b!326786 res!179973) b!326785))

(assert (= (and b!326785 res!179972) b!326784))

(assert (= (and b!326784 res!179970) b!326779))

(assert (= (and b!326779 res!179974) b!326780))

(declare-fun m!333297 () Bool)

(assert (=> b!326778 m!333297))

(declare-fun m!333299 () Bool)

(assert (=> b!326785 m!333299))

(declare-fun m!333301 () Bool)

(assert (=> b!326781 m!333301))

(declare-fun m!333303 () Bool)

(assert (=> b!326780 m!333303))

(assert (=> b!326780 m!333303))

(declare-fun m!333305 () Bool)

(assert (=> b!326780 m!333305))

(declare-fun m!333307 () Bool)

(assert (=> b!326784 m!333307))

(declare-fun m!333309 () Bool)

(assert (=> b!326786 m!333309))

(assert (=> b!326786 m!333309))

(declare-fun m!333311 () Bool)

(assert (=> b!326786 m!333311))

(declare-fun m!333313 () Bool)

(assert (=> start!32720 m!333313))

(declare-fun m!333315 () Bool)

(assert (=> start!32720 m!333315))

(declare-fun m!333317 () Bool)

(assert (=> b!326783 m!333317))

(declare-fun m!333319 () Bool)

(assert (=> b!326779 m!333319))

(declare-fun m!333321 () Bool)

(assert (=> b!326782 m!333321))

(check-sat (not b!326786) (not b!326784) (not b!326778) (not b!326783) (not b!326781) (not b!326782) (not b!326780) (not start!32720))
(check-sat)
