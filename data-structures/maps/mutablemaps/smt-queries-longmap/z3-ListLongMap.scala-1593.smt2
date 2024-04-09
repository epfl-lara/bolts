; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30236 () Bool)

(assert start!30236)

(declare-fun b!302261 () Bool)

(declare-fun res!159910 () Bool)

(declare-fun e!190560 () Bool)

(assert (=> b!302261 (=> (not res!159910) (not e!190560))))

(declare-datatypes ((array!15340 0))(
  ( (array!15341 (arr!7256 (Array (_ BitVec 32) (_ BitVec 64))) (size!7608 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15340)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15340 (_ BitVec 32)) Bool)

(assert (=> b!302261 (= res!159910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302262 () Bool)

(declare-fun res!159909 () Bool)

(assert (=> b!302262 (=> (not res!159909) (not e!190560))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302262 (= res!159909 (and (= (select (arr!7256 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7608 a!3293))))))

(declare-fun b!302263 () Bool)

(assert (=> b!302263 (= e!190560 false)))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2407 0))(
  ( (MissingZero!2407 (index!11804 (_ BitVec 32))) (Found!2407 (index!11805 (_ BitVec 32))) (Intermediate!2407 (undefined!3219 Bool) (index!11806 (_ BitVec 32)) (x!30043 (_ BitVec 32))) (Undefined!2407) (MissingVacant!2407 (index!11807 (_ BitVec 32))) )
))
(declare-fun lt!150053 () SeekEntryResult!2407)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15340 (_ BitVec 32)) SeekEntryResult!2407)

(assert (=> b!302263 (= lt!150053 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!302264 () Bool)

(declare-fun res!159911 () Bool)

(assert (=> b!302264 (=> (not res!159911) (not e!190560))))

(declare-fun arrayContainsKey!0 (array!15340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302264 (= res!159911 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302266 () Bool)

(declare-fun res!159905 () Bool)

(assert (=> b!302266 (=> (not res!159905) (not e!190560))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302266 (= res!159905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2407 false resIndex!52 resX!52)))))

(declare-fun b!302267 () Bool)

(declare-fun res!159908 () Bool)

(assert (=> b!302267 (=> (not res!159908) (not e!190560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302267 (= res!159908 (validKeyInArray!0 k0!2441))))

(declare-fun b!302268 () Bool)

(declare-fun res!159912 () Bool)

(assert (=> b!302268 (=> (not res!159912) (not e!190560))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15340 (_ BitVec 32)) SeekEntryResult!2407)

(assert (=> b!302268 (= res!159912 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2407 i!1240)))))

(declare-fun b!302265 () Bool)

(declare-fun res!159906 () Bool)

(assert (=> b!302265 (=> (not res!159906) (not e!190560))))

(assert (=> b!302265 (= res!159906 (and (= (size!7608 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7608 a!3293))))))

(declare-fun res!159907 () Bool)

(assert (=> start!30236 (=> (not res!159907) (not e!190560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30236 (= res!159907 (validMask!0 mask!3709))))

(assert (=> start!30236 e!190560))

(declare-fun array_inv!5210 (array!15340) Bool)

(assert (=> start!30236 (array_inv!5210 a!3293)))

(assert (=> start!30236 true))

(assert (= (and start!30236 res!159907) b!302265))

(assert (= (and b!302265 res!159906) b!302267))

(assert (= (and b!302267 res!159908) b!302264))

(assert (= (and b!302264 res!159911) b!302268))

(assert (= (and b!302268 res!159912) b!302261))

(assert (= (and b!302261 res!159910) b!302266))

(assert (= (and b!302266 res!159905) b!302262))

(assert (= (and b!302262 res!159909) b!302263))

(declare-fun m!313827 () Bool)

(assert (=> b!302261 m!313827))

(declare-fun m!313829 () Bool)

(assert (=> b!302267 m!313829))

(declare-fun m!313831 () Bool)

(assert (=> start!30236 m!313831))

(declare-fun m!313833 () Bool)

(assert (=> start!30236 m!313833))

(declare-fun m!313835 () Bool)

(assert (=> b!302264 m!313835))

(declare-fun m!313837 () Bool)

(assert (=> b!302263 m!313837))

(declare-fun m!313839 () Bool)

(assert (=> b!302266 m!313839))

(assert (=> b!302266 m!313839))

(declare-fun m!313841 () Bool)

(assert (=> b!302266 m!313841))

(declare-fun m!313843 () Bool)

(assert (=> b!302262 m!313843))

(declare-fun m!313845 () Bool)

(assert (=> b!302268 m!313845))

(check-sat (not b!302266) (not b!302268) (not b!302264) (not b!302263) (not start!30236) (not b!302261) (not b!302267))
