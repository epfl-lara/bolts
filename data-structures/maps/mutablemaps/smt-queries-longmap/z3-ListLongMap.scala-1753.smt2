; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32126 () Bool)

(assert start!32126)

(declare-fun b!319909 () Bool)

(declare-fun e!198601 () Bool)

(assert (=> b!319909 (= e!198601 false)))

(declare-fun lt!155942 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319909 (= lt!155942 (toIndex!0 k0!2497 mask!3777))))

(declare-fun b!319910 () Bool)

(declare-fun res!174310 () Bool)

(assert (=> b!319910 (=> (not res!174310) (not e!198601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319910 (= res!174310 (validKeyInArray!0 k0!2497))))

(declare-fun b!319911 () Bool)

(declare-fun res!174314 () Bool)

(assert (=> b!319911 (=> (not res!174314) (not e!198601))))

(declare-datatypes ((array!16357 0))(
  ( (array!16358 (arr!7736 (Array (_ BitVec 32) (_ BitVec 64))) (size!8088 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16357)

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2878 0))(
  ( (MissingZero!2878 (index!13688 (_ BitVec 32))) (Found!2878 (index!13689 (_ BitVec 32))) (Intermediate!2878 (undefined!3690 Bool) (index!13690 (_ BitVec 32)) (x!31926 (_ BitVec 32))) (Undefined!2878) (MissingVacant!2878 (index!13691 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16357 (_ BitVec 32)) SeekEntryResult!2878)

(assert (=> b!319911 (= res!174314 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2878 i!1250)))))

(declare-fun res!174312 () Bool)

(assert (=> start!32126 (=> (not res!174312) (not e!198601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32126 (= res!174312 (validMask!0 mask!3777))))

(assert (=> start!32126 e!198601))

(assert (=> start!32126 true))

(declare-fun array_inv!5690 (array!16357) Bool)

(assert (=> start!32126 (array_inv!5690 a!3305)))

(declare-fun b!319912 () Bool)

(declare-fun res!174313 () Bool)

(assert (=> b!319912 (=> (not res!174313) (not e!198601))))

(assert (=> b!319912 (= res!174313 (and (= (size!8088 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8088 a!3305))))))

(declare-fun b!319913 () Bool)

(declare-fun res!174311 () Bool)

(assert (=> b!319913 (=> (not res!174311) (not e!198601))))

(declare-fun arrayContainsKey!0 (array!16357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319913 (= res!174311 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319914 () Bool)

(declare-fun res!174315 () Bool)

(assert (=> b!319914 (=> (not res!174315) (not e!198601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16357 (_ BitVec 32)) Bool)

(assert (=> b!319914 (= res!174315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32126 res!174312) b!319912))

(assert (= (and b!319912 res!174313) b!319910))

(assert (= (and b!319910 res!174310) b!319913))

(assert (= (and b!319913 res!174311) b!319911))

(assert (= (and b!319911 res!174314) b!319914))

(assert (= (and b!319914 res!174315) b!319909))

(declare-fun m!328383 () Bool)

(assert (=> b!319914 m!328383))

(declare-fun m!328385 () Bool)

(assert (=> b!319913 m!328385))

(declare-fun m!328387 () Bool)

(assert (=> b!319909 m!328387))

(declare-fun m!328389 () Bool)

(assert (=> b!319910 m!328389))

(declare-fun m!328391 () Bool)

(assert (=> b!319911 m!328391))

(declare-fun m!328393 () Bool)

(assert (=> start!32126 m!328393))

(declare-fun m!328395 () Bool)

(assert (=> start!32126 m!328395))

(check-sat (not start!32126) (not b!319910) (not b!319913) (not b!319909) (not b!319911) (not b!319914))
