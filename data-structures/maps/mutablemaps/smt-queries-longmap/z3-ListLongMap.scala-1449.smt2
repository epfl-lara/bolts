; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27948 () Bool)

(assert start!27948)

(declare-fun b!286909 () Bool)

(declare-fun e!181761 () Bool)

(declare-fun e!181762 () Bool)

(assert (=> b!286909 (= e!181761 e!181762)))

(declare-fun res!148961 () Bool)

(assert (=> b!286909 (=> (not res!148961) (not e!181762))))

(declare-datatypes ((SeekEntryResult!1984 0))(
  ( (MissingZero!1984 (index!10106 (_ BitVec 32))) (Found!1984 (index!10107 (_ BitVec 32))) (Intermediate!1984 (undefined!2796 Bool) (index!10108 (_ BitVec 32)) (x!28291 (_ BitVec 32))) (Undefined!1984) (MissingVacant!1984 (index!10109 (_ BitVec 32))) )
))
(declare-fun lt!141334 () SeekEntryResult!1984)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286909 (= res!148961 (or (= lt!141334 (MissingZero!1984 i!1256)) (= lt!141334 (MissingVacant!1984 i!1256))))))

(declare-datatypes ((array!14386 0))(
  ( (array!14387 (arr!6824 (Array (_ BitVec 32) (_ BitVec 64))) (size!7176 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14386)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14386 (_ BitVec 32)) SeekEntryResult!1984)

(assert (=> b!286909 (= lt!141334 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!148957 () Bool)

(assert (=> start!27948 (=> (not res!148957) (not e!181761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27948 (= res!148957 (validMask!0 mask!3809))))

(assert (=> start!27948 e!181761))

(assert (=> start!27948 true))

(declare-fun array_inv!4778 (array!14386) Bool)

(assert (=> start!27948 (array_inv!4778 a!3312)))

(declare-fun b!286910 () Bool)

(assert (=> b!286910 (= e!181762 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-fun lt!141335 () SeekEntryResult!1984)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14386 (_ BitVec 32)) SeekEntryResult!1984)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286910 (= lt!141335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!286911 () Bool)

(declare-fun res!148962 () Bool)

(assert (=> b!286911 (=> (not res!148962) (not e!181762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14386 (_ BitVec 32)) Bool)

(assert (=> b!286911 (= res!148962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286912 () Bool)

(declare-fun res!148958 () Bool)

(assert (=> b!286912 (=> (not res!148958) (not e!181761))))

(declare-fun arrayContainsKey!0 (array!14386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286912 (= res!148958 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286913 () Bool)

(declare-fun res!148959 () Bool)

(assert (=> b!286913 (=> (not res!148959) (not e!181761))))

(assert (=> b!286913 (= res!148959 (and (= (size!7176 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7176 a!3312))))))

(declare-fun b!286914 () Bool)

(declare-fun res!148960 () Bool)

(assert (=> b!286914 (=> (not res!148960) (not e!181761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286914 (= res!148960 (validKeyInArray!0 k0!2524))))

(assert (= (and start!27948 res!148957) b!286913))

(assert (= (and b!286913 res!148959) b!286914))

(assert (= (and b!286914 res!148960) b!286912))

(assert (= (and b!286912 res!148958) b!286909))

(assert (= (and b!286909 res!148961) b!286911))

(assert (= (and b!286911 res!148962) b!286910))

(declare-fun m!301505 () Bool)

(assert (=> b!286909 m!301505))

(declare-fun m!301507 () Bool)

(assert (=> b!286911 m!301507))

(declare-fun m!301509 () Bool)

(assert (=> b!286910 m!301509))

(assert (=> b!286910 m!301509))

(declare-fun m!301511 () Bool)

(assert (=> b!286910 m!301511))

(declare-fun m!301513 () Bool)

(assert (=> b!286914 m!301513))

(declare-fun m!301515 () Bool)

(assert (=> start!27948 m!301515))

(declare-fun m!301517 () Bool)

(assert (=> start!27948 m!301517))

(declare-fun m!301519 () Bool)

(assert (=> b!286912 m!301519))

(check-sat (not b!286911) (not b!286914) (not b!286912) (not start!27948) (not b!286909) (not b!286910))
(check-sat)
