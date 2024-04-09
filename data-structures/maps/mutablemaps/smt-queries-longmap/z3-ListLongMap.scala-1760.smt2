; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32216 () Bool)

(assert start!32216)

(declare-fun b!320503 () Bool)

(declare-fun e!198844 () Bool)

(assert (=> b!320503 (= e!198844 false)))

(declare-datatypes ((array!16402 0))(
  ( (array!16403 (arr!7757 (Array (_ BitVec 32) (_ BitVec 64))) (size!8109 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16402)

(declare-datatypes ((SeekEntryResult!2899 0))(
  ( (MissingZero!2899 (index!13772 (_ BitVec 32))) (Found!2899 (index!13773 (_ BitVec 32))) (Intermediate!2899 (undefined!3711 Bool) (index!13774 (_ BitVec 32)) (x!32009 (_ BitVec 32))) (Undefined!2899) (MissingVacant!2899 (index!13775 (_ BitVec 32))) )
))
(declare-fun lt!156068 () SeekEntryResult!2899)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16402 (_ BitVec 32)) SeekEntryResult!2899)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320503 (= lt!156068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!320504 () Bool)

(declare-fun res!174781 () Bool)

(assert (=> b!320504 (=> (not res!174781) (not e!198844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320504 (= res!174781 (validKeyInArray!0 k0!2497))))

(declare-fun b!320505 () Bool)

(declare-fun res!174786 () Bool)

(assert (=> b!320505 (=> (not res!174786) (not e!198844))))

(declare-fun arrayContainsKey!0 (array!16402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320505 (= res!174786 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174784 () Bool)

(assert (=> start!32216 (=> (not res!174784) (not e!198844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32216 (= res!174784 (validMask!0 mask!3777))))

(assert (=> start!32216 e!198844))

(assert (=> start!32216 true))

(declare-fun array_inv!5711 (array!16402) Bool)

(assert (=> start!32216 (array_inv!5711 a!3305)))

(declare-fun b!320506 () Bool)

(declare-fun res!174782 () Bool)

(assert (=> b!320506 (=> (not res!174782) (not e!198844))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320506 (= res!174782 (and (= (size!8109 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8109 a!3305))))))

(declare-fun b!320507 () Bool)

(declare-fun res!174785 () Bool)

(assert (=> b!320507 (=> (not res!174785) (not e!198844))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16402 (_ BitVec 32)) SeekEntryResult!2899)

(assert (=> b!320507 (= res!174785 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2899 i!1250)))))

(declare-fun b!320508 () Bool)

(declare-fun res!174783 () Bool)

(assert (=> b!320508 (=> (not res!174783) (not e!198844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16402 (_ BitVec 32)) Bool)

(assert (=> b!320508 (= res!174783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32216 res!174784) b!320506))

(assert (= (and b!320506 res!174782) b!320504))

(assert (= (and b!320504 res!174781) b!320505))

(assert (= (and b!320505 res!174786) b!320507))

(assert (= (and b!320507 res!174785) b!320508))

(assert (= (and b!320508 res!174783) b!320503))

(declare-fun m!328823 () Bool)

(assert (=> b!320508 m!328823))

(declare-fun m!328825 () Bool)

(assert (=> b!320504 m!328825))

(declare-fun m!328827 () Bool)

(assert (=> b!320505 m!328827))

(declare-fun m!328829 () Bool)

(assert (=> b!320507 m!328829))

(declare-fun m!328831 () Bool)

(assert (=> start!32216 m!328831))

(declare-fun m!328833 () Bool)

(assert (=> start!32216 m!328833))

(declare-fun m!328835 () Bool)

(assert (=> b!320503 m!328835))

(assert (=> b!320503 m!328835))

(declare-fun m!328837 () Bool)

(assert (=> b!320503 m!328837))

(check-sat (not b!320503) (not b!320505) (not b!320504) (not start!32216) (not b!320507) (not b!320508))
(check-sat)
