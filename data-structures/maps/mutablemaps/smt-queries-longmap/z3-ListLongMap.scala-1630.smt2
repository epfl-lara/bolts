; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30566 () Bool)

(assert start!30566)

(declare-fun b!305963 () Bool)

(declare-fun res!163112 () Bool)

(declare-fun e!191973 () Bool)

(assert (=> b!305963 (=> (not res!163112) (not e!191973))))

(declare-datatypes ((array!15568 0))(
  ( (array!15569 (arr!7367 (Array (_ BitVec 32) (_ BitVec 64))) (size!7719 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15568)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305963 (= res!163112 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7367 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305964 () Bool)

(assert (=> b!305964 false))

(declare-datatypes ((Unit!9468 0))(
  ( (Unit!9469) )
))
(declare-fun e!191970 () Unit!9468)

(declare-fun Unit!9470 () Unit!9468)

(assert (=> b!305964 (= e!191970 Unit!9470)))

(declare-fun b!305965 () Bool)

(declare-fun res!163114 () Bool)

(declare-fun e!191972 () Bool)

(assert (=> b!305965 (=> (not res!163114) (not e!191972))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305965 (= res!163114 (and (= (size!7719 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7719 a!3293))))))

(declare-fun b!305966 () Bool)

(assert (=> b!305966 false))

(declare-datatypes ((SeekEntryResult!2518 0))(
  ( (MissingZero!2518 (index!12248 (_ BitVec 32))) (Found!2518 (index!12249 (_ BitVec 32))) (Intermediate!2518 (undefined!3330 Bool) (index!12250 (_ BitVec 32)) (x!30468 (_ BitVec 32))) (Undefined!2518) (MissingVacant!2518 (index!12251 (_ BitVec 32))) )
))
(declare-fun lt!150866 () SeekEntryResult!2518)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15568 (_ BitVec 32)) SeekEntryResult!2518)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305966 (= lt!150866 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9471 () Unit!9468)

(assert (=> b!305966 (= e!191970 Unit!9471)))

(declare-fun b!305967 () Bool)

(assert (=> b!305967 (= e!191972 e!191973)))

(declare-fun res!163109 () Bool)

(assert (=> b!305967 (=> (not res!163109) (not e!191973))))

(declare-fun lt!150864 () SeekEntryResult!2518)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305967 (= res!163109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150864))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305967 (= lt!150864 (Intermediate!2518 false resIndex!52 resX!52))))

(declare-fun b!305968 () Bool)

(declare-fun e!191974 () Unit!9468)

(declare-fun Unit!9472 () Unit!9468)

(assert (=> b!305968 (= e!191974 Unit!9472)))

(declare-fun b!305969 () Bool)

(declare-fun res!163111 () Bool)

(assert (=> b!305969 (=> (not res!163111) (not e!191972))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15568 (_ BitVec 32)) SeekEntryResult!2518)

(assert (=> b!305969 (= res!163111 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2518 i!1240)))))

(declare-fun b!305970 () Bool)

(declare-fun res!163107 () Bool)

(assert (=> b!305970 (=> (not res!163107) (not e!191972))))

(declare-fun arrayContainsKey!0 (array!15568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305970 (= res!163107 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305971 () Bool)

(assert (=> b!305971 (= e!191974 e!191970)))

(declare-fun c!49031 () Bool)

(assert (=> b!305971 (= c!49031 (or (= (select (arr!7367 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7367 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305972 () Bool)

(assert (=> b!305972 (= e!191973 (not true))))

(assert (=> b!305972 (= index!1781 resIndex!52)))

(declare-fun lt!150865 () Unit!9468)

(assert (=> b!305972 (= lt!150865 e!191974)))

(declare-fun c!49030 () Bool)

(assert (=> b!305972 (= c!49030 (not (= resIndex!52 index!1781)))))

(declare-fun b!305973 () Bool)

(declare-fun res!163110 () Bool)

(assert (=> b!305973 (=> (not res!163110) (not e!191973))))

(assert (=> b!305973 (= res!163110 (and (= (select (arr!7367 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7719 a!3293))))))

(declare-fun b!305974 () Bool)

(declare-fun res!163115 () Bool)

(assert (=> b!305974 (=> (not res!163115) (not e!191972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15568 (_ BitVec 32)) Bool)

(assert (=> b!305974 (= res!163115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305975 () Bool)

(declare-fun res!163108 () Bool)

(assert (=> b!305975 (=> (not res!163108) (not e!191972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305975 (= res!163108 (validKeyInArray!0 k0!2441))))

(declare-fun res!163113 () Bool)

(assert (=> start!30566 (=> (not res!163113) (not e!191972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30566 (= res!163113 (validMask!0 mask!3709))))

(assert (=> start!30566 e!191972))

(declare-fun array_inv!5321 (array!15568) Bool)

(assert (=> start!30566 (array_inv!5321 a!3293)))

(assert (=> start!30566 true))

(declare-fun b!305976 () Bool)

(declare-fun res!163116 () Bool)

(assert (=> b!305976 (=> (not res!163116) (not e!191973))))

(assert (=> b!305976 (= res!163116 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150864))))

(assert (= (and start!30566 res!163113) b!305965))

(assert (= (and b!305965 res!163114) b!305975))

(assert (= (and b!305975 res!163108) b!305970))

(assert (= (and b!305970 res!163107) b!305969))

(assert (= (and b!305969 res!163111) b!305974))

(assert (= (and b!305974 res!163115) b!305967))

(assert (= (and b!305967 res!163109) b!305973))

(assert (= (and b!305973 res!163110) b!305976))

(assert (= (and b!305976 res!163116) b!305963))

(assert (= (and b!305963 res!163112) b!305972))

(assert (= (and b!305972 c!49030) b!305971))

(assert (= (and b!305972 (not c!49030)) b!305968))

(assert (= (and b!305971 c!49031) b!305964))

(assert (= (and b!305971 (not c!49031)) b!305966))

(declare-fun m!316701 () Bool)

(assert (=> b!305966 m!316701))

(assert (=> b!305966 m!316701))

(declare-fun m!316703 () Bool)

(assert (=> b!305966 m!316703))

(declare-fun m!316705 () Bool)

(assert (=> b!305970 m!316705))

(declare-fun m!316707 () Bool)

(assert (=> start!30566 m!316707))

(declare-fun m!316709 () Bool)

(assert (=> start!30566 m!316709))

(declare-fun m!316711 () Bool)

(assert (=> b!305976 m!316711))

(declare-fun m!316713 () Bool)

(assert (=> b!305974 m!316713))

(declare-fun m!316715 () Bool)

(assert (=> b!305975 m!316715))

(declare-fun m!316717 () Bool)

(assert (=> b!305967 m!316717))

(assert (=> b!305967 m!316717))

(declare-fun m!316719 () Bool)

(assert (=> b!305967 m!316719))

(declare-fun m!316721 () Bool)

(assert (=> b!305971 m!316721))

(declare-fun m!316723 () Bool)

(assert (=> b!305969 m!316723))

(assert (=> b!305963 m!316721))

(declare-fun m!316725 () Bool)

(assert (=> b!305973 m!316725))

(check-sat (not b!305975) (not b!305976) (not b!305966) (not b!305969) (not start!30566) (not b!305970) (not b!305967) (not b!305974))
(check-sat)
