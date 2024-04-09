; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31054 () Bool)

(assert start!31054)

(declare-fun b!312084 () Bool)

(declare-fun res!168705 () Bool)

(declare-fun e!194634 () Bool)

(assert (=> b!312084 (=> (not res!168705) (not e!194634))))

(declare-datatypes ((array!15954 0))(
  ( (array!15955 (arr!7557 (Array (_ BitVec 32) (_ BitVec 64))) (size!7909 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15954)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2708 0))(
  ( (MissingZero!2708 (index!13008 (_ BitVec 32))) (Found!2708 (index!13009 (_ BitVec 32))) (Intermediate!2708 (undefined!3520 Bool) (index!13010 (_ BitVec 32)) (x!31180 (_ BitVec 32))) (Undefined!2708) (MissingVacant!2708 (index!13011 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15954 (_ BitVec 32)) SeekEntryResult!2708)

(assert (=> b!312084 (= res!168705 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2708 i!1240)))))

(declare-fun res!168698 () Bool)

(assert (=> start!31054 (=> (not res!168698) (not e!194634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31054 (= res!168698 (validMask!0 mask!3709))))

(assert (=> start!31054 e!194634))

(declare-fun array_inv!5511 (array!15954) Bool)

(assert (=> start!31054 (array_inv!5511 a!3293)))

(assert (=> start!31054 true))

(declare-fun b!312085 () Bool)

(declare-fun e!194633 () Bool)

(declare-fun e!194632 () Bool)

(assert (=> b!312085 (= e!194633 (not e!194632))))

(declare-fun res!168697 () Bool)

(assert (=> b!312085 (=> res!168697 e!194632)))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152868 () (_ BitVec 32))

(declare-fun lt!152866 () SeekEntryResult!2708)

(declare-fun lt!152869 () SeekEntryResult!2708)

(assert (=> b!312085 (= res!168697 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152868 #b00000000000000000000000000000000) (bvsge lt!152868 (size!7909 a!3293)) (not (= lt!152869 lt!152866))))))

(declare-fun lt!152873 () SeekEntryResult!2708)

(declare-fun lt!152872 () SeekEntryResult!2708)

(assert (=> b!312085 (= lt!152873 lt!152872)))

(declare-fun lt!152871 () array!15954)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15954 (_ BitVec 32)) SeekEntryResult!2708)

(assert (=> b!312085 (= lt!152872 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152868 k!2441 lt!152871 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312085 (= lt!152873 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152871 mask!3709))))

(assert (=> b!312085 (= lt!152871 (array!15955 (store (arr!7557 a!3293) i!1240 k!2441) (size!7909 a!3293)))))

(declare-fun lt!152867 () SeekEntryResult!2708)

(assert (=> b!312085 (= lt!152867 lt!152869)))

(assert (=> b!312085 (= lt!152869 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152868 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312085 (= lt!152868 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312086 () Bool)

(declare-fun res!168702 () Bool)

(declare-fun e!194635 () Bool)

(assert (=> b!312086 (=> (not res!168702) (not e!194635))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312086 (= res!168702 (and (= (select (arr!7557 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7909 a!3293))))))

(declare-fun b!312087 () Bool)

(assert (=> b!312087 (= e!194634 e!194635)))

(declare-fun res!168704 () Bool)

(assert (=> b!312087 (=> (not res!168704) (not e!194635))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312087 (= res!168704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152866))))

(assert (=> b!312087 (= lt!152866 (Intermediate!2708 false resIndex!52 resX!52))))

(declare-fun b!312088 () Bool)

(assert (=> b!312088 (= e!194632 true)))

(assert (=> b!312088 (= lt!152872 lt!152869)))

(declare-datatypes ((Unit!9614 0))(
  ( (Unit!9615) )
))
(declare-fun lt!152870 () Unit!9614)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15954 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9614)

(assert (=> b!312088 (= lt!152870 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152868 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312089 () Bool)

(declare-fun res!168696 () Bool)

(assert (=> b!312089 (=> (not res!168696) (not e!194634))))

(declare-fun arrayContainsKey!0 (array!15954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312089 (= res!168696 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312090 () Bool)

(assert (=> b!312090 (= e!194635 e!194633)))

(declare-fun res!168699 () Bool)

(assert (=> b!312090 (=> (not res!168699) (not e!194633))))

(assert (=> b!312090 (= res!168699 (and (= lt!152867 lt!152866) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7557 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312090 (= lt!152867 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312091 () Bool)

(declare-fun res!168700 () Bool)

(assert (=> b!312091 (=> (not res!168700) (not e!194634))))

(assert (=> b!312091 (= res!168700 (and (= (size!7909 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7909 a!3293))))))

(declare-fun b!312092 () Bool)

(declare-fun res!168703 () Bool)

(assert (=> b!312092 (=> (not res!168703) (not e!194634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15954 (_ BitVec 32)) Bool)

(assert (=> b!312092 (= res!168703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312093 () Bool)

(declare-fun res!168701 () Bool)

(assert (=> b!312093 (=> (not res!168701) (not e!194634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312093 (= res!168701 (validKeyInArray!0 k!2441))))

(assert (= (and start!31054 res!168698) b!312091))

(assert (= (and b!312091 res!168700) b!312093))

(assert (= (and b!312093 res!168701) b!312089))

(assert (= (and b!312089 res!168696) b!312084))

(assert (= (and b!312084 res!168705) b!312092))

(assert (= (and b!312092 res!168703) b!312087))

(assert (= (and b!312087 res!168704) b!312086))

(assert (= (and b!312086 res!168702) b!312090))

(assert (= (and b!312090 res!168699) b!312085))

(assert (= (and b!312085 (not res!168697)) b!312088))

(declare-fun m!322191 () Bool)

(assert (=> b!312088 m!322191))

(declare-fun m!322193 () Bool)

(assert (=> b!312084 m!322193))

(declare-fun m!322195 () Bool)

(assert (=> b!312089 m!322195))

(declare-fun m!322197 () Bool)

(assert (=> b!312093 m!322197))

(declare-fun m!322199 () Bool)

(assert (=> b!312085 m!322199))

(declare-fun m!322201 () Bool)

(assert (=> b!312085 m!322201))

(declare-fun m!322203 () Bool)

(assert (=> b!312085 m!322203))

(declare-fun m!322205 () Bool)

(assert (=> b!312085 m!322205))

(declare-fun m!322207 () Bool)

(assert (=> b!312085 m!322207))

(declare-fun m!322209 () Bool)

(assert (=> b!312092 m!322209))

(declare-fun m!322211 () Bool)

(assert (=> start!31054 m!322211))

(declare-fun m!322213 () Bool)

(assert (=> start!31054 m!322213))

(declare-fun m!322215 () Bool)

(assert (=> b!312086 m!322215))

(declare-fun m!322217 () Bool)

(assert (=> b!312090 m!322217))

(declare-fun m!322219 () Bool)

(assert (=> b!312090 m!322219))

(declare-fun m!322221 () Bool)

(assert (=> b!312087 m!322221))

(assert (=> b!312087 m!322221))

(declare-fun m!322223 () Bool)

(assert (=> b!312087 m!322223))

(push 1)

(assert (not b!312090))

(assert (not b!312087))

(assert (not b!312089))

(assert (not start!31054))

(assert (not b!312084))

(assert (not b!312085))

(assert (not b!312093))

(assert (not b!312092))

(assert (not b!312088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

