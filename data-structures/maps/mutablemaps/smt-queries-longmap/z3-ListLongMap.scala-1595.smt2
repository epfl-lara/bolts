; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30248 () Bool)

(assert start!30248)

(declare-fun b!302414 () Bool)

(declare-fun res!160058 () Bool)

(declare-fun e!190606 () Bool)

(assert (=> b!302414 (=> (not res!160058) (not e!190606))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302414 (= res!160058 (validKeyInArray!0 k0!2441))))

(declare-fun b!302415 () Bool)

(declare-fun res!160064 () Bool)

(assert (=> b!302415 (=> (not res!160064) (not e!190606))))

(declare-datatypes ((array!15352 0))(
  ( (array!15353 (arr!7262 (Array (_ BitVec 32) (_ BitVec 64))) (size!7614 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15352)

(declare-fun arrayContainsKey!0 (array!15352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302415 (= res!160064 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302416 () Bool)

(declare-fun res!160065 () Bool)

(assert (=> b!302416 (=> (not res!160065) (not e!190606))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302416 (= res!160065 (and (= (size!7614 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7614 a!3293))))))

(declare-fun b!302417 () Bool)

(declare-fun res!160059 () Bool)

(assert (=> b!302417 (=> (not res!160059) (not e!190606))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2413 0))(
  ( (MissingZero!2413 (index!11828 (_ BitVec 32))) (Found!2413 (index!11829 (_ BitVec 32))) (Intermediate!2413 (undefined!3225 Bool) (index!11830 (_ BitVec 32)) (x!30065 (_ BitVec 32))) (Undefined!2413) (MissingVacant!2413 (index!11831 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15352 (_ BitVec 32)) SeekEntryResult!2413)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302417 (= res!160059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2413 false resIndex!52 resX!52)))))

(declare-fun b!302418 () Bool)

(declare-fun res!160061 () Bool)

(assert (=> b!302418 (=> (not res!160061) (not e!190606))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15352 (_ BitVec 32)) SeekEntryResult!2413)

(assert (=> b!302418 (= res!160061 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2413 i!1240)))))

(declare-fun b!302419 () Bool)

(declare-fun res!160060 () Bool)

(assert (=> b!302419 (=> (not res!160060) (not e!190606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15352 (_ BitVec 32)) Bool)

(assert (=> b!302419 (= res!160060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160063 () Bool)

(assert (=> start!30248 (=> (not res!160063) (not e!190606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30248 (= res!160063 (validMask!0 mask!3709))))

(assert (=> start!30248 e!190606))

(declare-fun array_inv!5216 (array!15352) Bool)

(assert (=> start!30248 (array_inv!5216 a!3293)))

(assert (=> start!30248 true))

(declare-fun b!302420 () Bool)

(assert (=> b!302420 (= e!190606 false)))

(declare-fun lt!150071 () SeekEntryResult!2413)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302420 (= lt!150071 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!302421 () Bool)

(declare-fun res!160062 () Bool)

(assert (=> b!302421 (=> (not res!160062) (not e!190606))))

(assert (=> b!302421 (= res!160062 (and (= (select (arr!7262 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7614 a!3293))))))

(assert (= (and start!30248 res!160063) b!302416))

(assert (= (and b!302416 res!160065) b!302414))

(assert (= (and b!302414 res!160058) b!302415))

(assert (= (and b!302415 res!160064) b!302418))

(assert (= (and b!302418 res!160061) b!302419))

(assert (= (and b!302419 res!160060) b!302417))

(assert (= (and b!302417 res!160059) b!302421))

(assert (= (and b!302421 res!160062) b!302420))

(declare-fun m!313953 () Bool)

(assert (=> b!302419 m!313953))

(declare-fun m!313955 () Bool)

(assert (=> b!302421 m!313955))

(declare-fun m!313957 () Bool)

(assert (=> b!302415 m!313957))

(declare-fun m!313959 () Bool)

(assert (=> b!302418 m!313959))

(declare-fun m!313961 () Bool)

(assert (=> b!302420 m!313961))

(declare-fun m!313963 () Bool)

(assert (=> b!302417 m!313963))

(assert (=> b!302417 m!313963))

(declare-fun m!313965 () Bool)

(assert (=> b!302417 m!313965))

(declare-fun m!313967 () Bool)

(assert (=> start!30248 m!313967))

(declare-fun m!313969 () Bool)

(assert (=> start!30248 m!313969))

(declare-fun m!313971 () Bool)

(assert (=> b!302414 m!313971))

(check-sat (not b!302420) (not start!30248) (not b!302414) (not b!302418) (not b!302417) (not b!302419) (not b!302415))
