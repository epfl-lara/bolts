; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30980 () Bool)

(assert start!30980)

(declare-fun b!310974 () Bool)

(declare-fun res!167589 () Bool)

(declare-fun e!194076 () Bool)

(assert (=> b!310974 (=> (not res!167589) (not e!194076))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310974 (= res!167589 (validKeyInArray!0 k0!2441))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((array!15880 0))(
  ( (array!15881 (arr!7520 (Array (_ BitVec 32) (_ BitVec 64))) (size!7872 (_ BitVec 32))) )
))
(declare-fun lt!152213 () array!15880)

(declare-fun lt!152211 () (_ BitVec 32))

(declare-fun b!310975 () Bool)

(declare-fun e!194077 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2671 0))(
  ( (MissingZero!2671 (index!12860 (_ BitVec 32))) (Found!2671 (index!12861 (_ BitVec 32))) (Intermediate!2671 (undefined!3483 Bool) (index!12862 (_ BitVec 32)) (x!31047 (_ BitVec 32))) (Undefined!2671) (MissingVacant!2671 (index!12863 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15880 (_ BitVec 32)) SeekEntryResult!2671)

(assert (=> b!310975 (= e!194077 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152213 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152211 k0!2441 lt!152213 mask!3709)))))

(declare-fun a!3293 () array!15880)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310975 (= lt!152213 (array!15881 (store (arr!7520 a!3293) i!1240 k0!2441) (size!7872 a!3293)))))

(declare-fun b!310976 () Bool)

(declare-fun res!167588 () Bool)

(assert (=> b!310976 (=> (not res!167588) (not e!194076))))

(declare-fun arrayContainsKey!0 (array!15880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310976 (= res!167588 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!167592 () Bool)

(assert (=> start!30980 (=> (not res!167592) (not e!194076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30980 (= res!167592 (validMask!0 mask!3709))))

(assert (=> start!30980 e!194076))

(declare-fun array_inv!5474 (array!15880) Bool)

(assert (=> start!30980 (array_inv!5474 a!3293)))

(assert (=> start!30980 true))

(declare-fun b!310977 () Bool)

(declare-fun res!167591 () Bool)

(assert (=> b!310977 (=> (not res!167591) (not e!194076))))

(assert (=> b!310977 (= res!167591 (and (= (size!7872 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7872 a!3293))))))

(declare-fun b!310978 () Bool)

(declare-fun res!167595 () Bool)

(assert (=> b!310978 (=> (not res!167595) (not e!194076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15880 (_ BitVec 32)) Bool)

(assert (=> b!310978 (= res!167595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310979 () Bool)

(declare-fun res!167593 () Bool)

(declare-fun e!194079 () Bool)

(assert (=> b!310979 (=> (not res!167593) (not e!194079))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310979 (= res!167593 (and (= (select (arr!7520 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7872 a!3293))))))

(declare-fun b!310980 () Bool)

(declare-fun res!167586 () Bool)

(assert (=> b!310980 (=> (not res!167586) (not e!194076))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15880 (_ BitVec 32)) SeekEntryResult!2671)

(assert (=> b!310980 (= res!167586 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2671 i!1240)))))

(declare-fun b!310981 () Bool)

(declare-fun e!194080 () Bool)

(assert (=> b!310981 (= e!194080 (not true))))

(assert (=> b!310981 e!194077))

(declare-fun res!167590 () Bool)

(assert (=> b!310981 (=> (not res!167590) (not e!194077))))

(declare-fun lt!152212 () SeekEntryResult!2671)

(assert (=> b!310981 (= res!167590 (= lt!152212 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152211 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310981 (= lt!152211 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310982 () Bool)

(assert (=> b!310982 (= e!194076 e!194079)))

(declare-fun res!167587 () Bool)

(assert (=> b!310982 (=> (not res!167587) (not e!194079))))

(declare-fun lt!152210 () SeekEntryResult!2671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310982 (= res!167587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152210))))

(assert (=> b!310982 (= lt!152210 (Intermediate!2671 false resIndex!52 resX!52))))

(declare-fun b!310983 () Bool)

(assert (=> b!310983 (= e!194079 e!194080)))

(declare-fun res!167594 () Bool)

(assert (=> b!310983 (=> (not res!167594) (not e!194080))))

(assert (=> b!310983 (= res!167594 (and (= lt!152212 lt!152210) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7520 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310983 (= lt!152212 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!30980 res!167592) b!310977))

(assert (= (and b!310977 res!167591) b!310974))

(assert (= (and b!310974 res!167589) b!310976))

(assert (= (and b!310976 res!167588) b!310980))

(assert (= (and b!310980 res!167586) b!310978))

(assert (= (and b!310978 res!167595) b!310982))

(assert (= (and b!310982 res!167587) b!310979))

(assert (= (and b!310979 res!167593) b!310983))

(assert (= (and b!310983 res!167594) b!310981))

(assert (= (and b!310981 res!167590) b!310975))

(declare-fun m!320973 () Bool)

(assert (=> start!30980 m!320973))

(declare-fun m!320975 () Bool)

(assert (=> start!30980 m!320975))

(declare-fun m!320977 () Bool)

(assert (=> b!310982 m!320977))

(assert (=> b!310982 m!320977))

(declare-fun m!320979 () Bool)

(assert (=> b!310982 m!320979))

(declare-fun m!320981 () Bool)

(assert (=> b!310975 m!320981))

(declare-fun m!320983 () Bool)

(assert (=> b!310975 m!320983))

(declare-fun m!320985 () Bool)

(assert (=> b!310975 m!320985))

(declare-fun m!320987 () Bool)

(assert (=> b!310981 m!320987))

(declare-fun m!320989 () Bool)

(assert (=> b!310981 m!320989))

(declare-fun m!320991 () Bool)

(assert (=> b!310974 m!320991))

(declare-fun m!320993 () Bool)

(assert (=> b!310976 m!320993))

(declare-fun m!320995 () Bool)

(assert (=> b!310983 m!320995))

(declare-fun m!320997 () Bool)

(assert (=> b!310983 m!320997))

(declare-fun m!320999 () Bool)

(assert (=> b!310980 m!320999))

(declare-fun m!321001 () Bool)

(assert (=> b!310978 m!321001))

(declare-fun m!321003 () Bool)

(assert (=> b!310979 m!321003))

(check-sat (not b!310981) (not b!310974) (not b!310980) (not b!310976) (not b!310983) (not b!310978) (not b!310982) (not b!310975) (not start!30980))
