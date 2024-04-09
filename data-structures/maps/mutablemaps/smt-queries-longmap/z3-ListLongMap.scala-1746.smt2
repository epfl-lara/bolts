; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32006 () Bool)

(assert start!32006)

(declare-fun res!173861 () Bool)

(declare-fun e!198330 () Bool)

(assert (=> start!32006 (=> (not res!173861) (not e!198330))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32006 (= res!173861 (validMask!0 mask!3777))))

(assert (=> start!32006 e!198330))

(assert (=> start!32006 true))

(declare-datatypes ((array!16309 0))(
  ( (array!16310 (arr!7715 (Array (_ BitVec 32) (_ BitVec 64))) (size!8067 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16309)

(declare-fun array_inv!5669 (array!16309) Bool)

(assert (=> start!32006 (array_inv!5669 a!3305)))

(declare-fun b!319319 () Bool)

(declare-fun res!173864 () Bool)

(assert (=> b!319319 (=> (not res!173864) (not e!198330))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2857 0))(
  ( (MissingZero!2857 (index!13604 (_ BitVec 32))) (Found!2857 (index!13605 (_ BitVec 32))) (Intermediate!2857 (undefined!3669 Bool) (index!13606 (_ BitVec 32)) (x!31846 (_ BitVec 32))) (Undefined!2857) (MissingVacant!2857 (index!13607 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16309 (_ BitVec 32)) SeekEntryResult!2857)

(assert (=> b!319319 (= res!173864 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2857 i!1250)))))

(declare-fun b!319320 () Bool)

(declare-fun res!173863 () Bool)

(assert (=> b!319320 (=> (not res!173863) (not e!198330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319320 (= res!173863 (validKeyInArray!0 k0!2497))))

(declare-fun b!319321 () Bool)

(assert (=> b!319321 (= e!198330 (bvsgt #b00000000000000000000000000000000 (size!8067 a!3305)))))

(declare-fun b!319322 () Bool)

(declare-fun res!173865 () Bool)

(assert (=> b!319322 (=> (not res!173865) (not e!198330))))

(declare-fun arrayContainsKey!0 (array!16309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319322 (= res!173865 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319323 () Bool)

(declare-fun res!173862 () Bool)

(assert (=> b!319323 (=> (not res!173862) (not e!198330))))

(assert (=> b!319323 (= res!173862 (and (= (size!8067 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8067 a!3305))))))

(assert (= (and start!32006 res!173861) b!319323))

(assert (= (and b!319323 res!173862) b!319320))

(assert (= (and b!319320 res!173863) b!319322))

(assert (= (and b!319322 res!173865) b!319319))

(assert (= (and b!319319 res!173864) b!319321))

(declare-fun m!327947 () Bool)

(assert (=> start!32006 m!327947))

(declare-fun m!327949 () Bool)

(assert (=> start!32006 m!327949))

(declare-fun m!327951 () Bool)

(assert (=> b!319319 m!327951))

(declare-fun m!327953 () Bool)

(assert (=> b!319320 m!327953))

(declare-fun m!327955 () Bool)

(assert (=> b!319322 m!327955))

(check-sat (not b!319322) (not b!319319) (not start!32006) (not b!319320))
(check-sat)
