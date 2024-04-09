; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30002 () Bool)

(assert start!30002)

(declare-fun b!300900 () Bool)

(declare-fun res!158809 () Bool)

(declare-fun e!189976 () Bool)

(assert (=> b!300900 (=> (not res!158809) (not e!189976))))

(declare-datatypes ((array!15223 0))(
  ( (array!15224 (arr!7202 (Array (_ BitVec 32) (_ BitVec 64))) (size!7554 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15223)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300900 (= res!158809 (and (= (size!7554 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7554 a!3293))))))

(declare-fun b!300902 () Bool)

(declare-fun res!158808 () Bool)

(assert (=> b!300902 (=> (not res!158808) (not e!189976))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300902 (= res!158808 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!158810 () Bool)

(assert (=> start!30002 (=> (not res!158810) (not e!189976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30002 (= res!158810 (validMask!0 mask!3709))))

(assert (=> start!30002 e!189976))

(assert (=> start!30002 true))

(declare-fun array_inv!5156 (array!15223) Bool)

(assert (=> start!30002 (array_inv!5156 a!3293)))

(declare-fun b!300903 () Bool)

(assert (=> b!300903 (= e!189976 false)))

(declare-datatypes ((SeekEntryResult!2353 0))(
  ( (MissingZero!2353 (index!11588 (_ BitVec 32))) (Found!2353 (index!11589 (_ BitVec 32))) (Intermediate!2353 (undefined!3165 Bool) (index!11590 (_ BitVec 32)) (x!29836 (_ BitVec 32))) (Undefined!2353) (MissingVacant!2353 (index!11591 (_ BitVec 32))) )
))
(declare-fun lt!149729 () SeekEntryResult!2353)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15223 (_ BitVec 32)) SeekEntryResult!2353)

(assert (=> b!300903 (= lt!149729 (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709))))

(declare-fun b!300901 () Bool)

(declare-fun res!158811 () Bool)

(assert (=> b!300901 (=> (not res!158811) (not e!189976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300901 (= res!158811 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30002 res!158810) b!300900))

(assert (= (and b!300900 res!158809) b!300901))

(assert (= (and b!300901 res!158811) b!300902))

(assert (= (and b!300902 res!158808) b!300903))

(declare-fun m!312809 () Bool)

(assert (=> b!300902 m!312809))

(declare-fun m!312811 () Bool)

(assert (=> start!30002 m!312811))

(declare-fun m!312813 () Bool)

(assert (=> start!30002 m!312813))

(declare-fun m!312815 () Bool)

(assert (=> b!300903 m!312815))

(declare-fun m!312817 () Bool)

(assert (=> b!300901 m!312817))

(check-sat (not b!300903) (not b!300902) (not start!30002) (not b!300901))
(check-sat)
