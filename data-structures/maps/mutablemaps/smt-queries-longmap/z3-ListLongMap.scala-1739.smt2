; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31946 () Bool)

(assert start!31946)

(declare-fun res!173605 () Bool)

(declare-fun e!198196 () Bool)

(assert (=> start!31946 (=> (not res!173605) (not e!198196))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31946 (= res!173605 (validMask!0 mask!3709))))

(assert (=> start!31946 e!198196))

(declare-datatypes ((array!16264 0))(
  ( (array!16265 (arr!7694 (Array (_ BitVec 32) (_ BitVec 64))) (size!8046 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16264)

(declare-fun array_inv!5648 (array!16264) Bool)

(assert (=> start!31946 (array_inv!5648 a!3293)))

(assert (=> start!31946 true))

(declare-fun b!319056 () Bool)

(declare-fun res!173600 () Bool)

(assert (=> b!319056 (=> (not res!173600) (not e!198196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16264 (_ BitVec 32)) Bool)

(assert (=> b!319056 (= res!173600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!319057 () Bool)

(declare-fun e!198194 () Bool)

(declare-fun e!198193 () Bool)

(assert (=> b!319057 (= e!198194 (not e!198193))))

(declare-fun res!173606 () Bool)

(assert (=> b!319057 (=> res!173606 e!198193)))

(declare-datatypes ((SeekEntryResult!2845 0))(
  ( (MissingZero!2845 (index!13556 (_ BitVec 32))) (Found!2845 (index!13557 (_ BitVec 32))) (Intermediate!2845 (undefined!3657 Bool) (index!13558 (_ BitVec 32)) (x!31778 (_ BitVec 32))) (Undefined!2845) (MissingVacant!2845 (index!13559 (_ BitVec 32))) )
))
(declare-fun lt!155723 () SeekEntryResult!2845)

(declare-fun lt!155720 () (_ BitVec 32))

(declare-fun lt!155722 () SeekEntryResult!2845)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!319057 (= res!173606 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155720 #b00000000000000000000000000000000) (bvsge lt!155720 (size!8046 a!3293)) (not (= lt!155723 lt!155722))))))

(declare-fun lt!155716 () SeekEntryResult!2845)

(declare-fun lt!155721 () SeekEntryResult!2845)

(assert (=> b!319057 (= lt!155716 lt!155721)))

(declare-fun lt!155719 () array!16264)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16264 (_ BitVec 32)) SeekEntryResult!2845)

(assert (=> b!319057 (= lt!155721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155720 k0!2441 lt!155719 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!319057 (= lt!155716 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155719 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!319057 (= lt!155719 (array!16265 (store (arr!7694 a!3293) i!1240 k0!2441) (size!8046 a!3293)))))

(declare-fun lt!155718 () SeekEntryResult!2845)

(assert (=> b!319057 (= lt!155718 lt!155723)))

(assert (=> b!319057 (= lt!155723 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155720 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319057 (= lt!155720 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!319058 () Bool)

(assert (=> b!319058 (= e!198193 (= lt!155716 lt!155718))))

(assert (=> b!319058 (= lt!155721 lt!155723)))

(declare-datatypes ((Unit!9801 0))(
  ( (Unit!9802) )
))
(declare-fun lt!155717 () Unit!9801)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9801)

(assert (=> b!319058 (= lt!155717 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155720 resIndex!52 resX!52 mask!3709))))

(declare-fun b!319059 () Bool)

(declare-fun e!198195 () Bool)

(assert (=> b!319059 (= e!198196 e!198195)))

(declare-fun res!173602 () Bool)

(assert (=> b!319059 (=> (not res!173602) (not e!198195))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319059 (= res!173602 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155722))))

(assert (=> b!319059 (= lt!155722 (Intermediate!2845 false resIndex!52 resX!52))))

(declare-fun b!319060 () Bool)

(assert (=> b!319060 (= e!198195 e!198194)))

(declare-fun res!173598 () Bool)

(assert (=> b!319060 (=> (not res!173598) (not e!198194))))

(assert (=> b!319060 (= res!173598 (and (= lt!155718 lt!155722) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7694 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!319060 (= lt!155718 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!319061 () Bool)

(declare-fun res!173601 () Bool)

(assert (=> b!319061 (=> (not res!173601) (not e!198196))))

(declare-fun arrayContainsKey!0 (array!16264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319061 (= res!173601 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!319062 () Bool)

(declare-fun res!173607 () Bool)

(assert (=> b!319062 (=> (not res!173607) (not e!198196))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16264 (_ BitVec 32)) SeekEntryResult!2845)

(assert (=> b!319062 (= res!173607 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2845 i!1240)))))

(declare-fun b!319063 () Bool)

(declare-fun res!173603 () Bool)

(assert (=> b!319063 (=> (not res!173603) (not e!198196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319063 (= res!173603 (validKeyInArray!0 k0!2441))))

(declare-fun b!319064 () Bool)

(declare-fun res!173599 () Bool)

(assert (=> b!319064 (=> (not res!173599) (not e!198195))))

(assert (=> b!319064 (= res!173599 (and (= (select (arr!7694 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8046 a!3293))))))

(declare-fun b!319065 () Bool)

(declare-fun res!173604 () Bool)

(assert (=> b!319065 (=> (not res!173604) (not e!198196))))

(assert (=> b!319065 (= res!173604 (and (= (size!8046 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8046 a!3293))))))

(assert (= (and start!31946 res!173605) b!319065))

(assert (= (and b!319065 res!173604) b!319063))

(assert (= (and b!319063 res!173603) b!319061))

(assert (= (and b!319061 res!173601) b!319062))

(assert (= (and b!319062 res!173607) b!319056))

(assert (= (and b!319056 res!173600) b!319059))

(assert (= (and b!319059 res!173602) b!319064))

(assert (= (and b!319064 res!173599) b!319060))

(assert (= (and b!319060 res!173598) b!319057))

(assert (= (and b!319057 (not res!173606)) b!319058))

(declare-fun m!327719 () Bool)

(assert (=> b!319059 m!327719))

(assert (=> b!319059 m!327719))

(declare-fun m!327721 () Bool)

(assert (=> b!319059 m!327721))

(declare-fun m!327723 () Bool)

(assert (=> b!319064 m!327723))

(declare-fun m!327725 () Bool)

(assert (=> b!319063 m!327725))

(declare-fun m!327727 () Bool)

(assert (=> b!319056 m!327727))

(declare-fun m!327729 () Bool)

(assert (=> b!319062 m!327729))

(declare-fun m!327731 () Bool)

(assert (=> b!319061 m!327731))

(declare-fun m!327733 () Bool)

(assert (=> start!31946 m!327733))

(declare-fun m!327735 () Bool)

(assert (=> start!31946 m!327735))

(declare-fun m!327737 () Bool)

(assert (=> b!319060 m!327737))

(declare-fun m!327739 () Bool)

(assert (=> b!319060 m!327739))

(declare-fun m!327741 () Bool)

(assert (=> b!319057 m!327741))

(declare-fun m!327743 () Bool)

(assert (=> b!319057 m!327743))

(declare-fun m!327745 () Bool)

(assert (=> b!319057 m!327745))

(declare-fun m!327747 () Bool)

(assert (=> b!319057 m!327747))

(declare-fun m!327749 () Bool)

(assert (=> b!319057 m!327749))

(declare-fun m!327751 () Bool)

(assert (=> b!319058 m!327751))

(check-sat (not b!319060) (not start!31946) (not b!319063) (not b!319062) (not b!319058) (not b!319059) (not b!319061) (not b!319057) (not b!319056))
(check-sat)
