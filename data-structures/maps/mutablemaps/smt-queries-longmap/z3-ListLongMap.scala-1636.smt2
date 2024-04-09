; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30602 () Bool)

(assert start!30602)

(declare-fun b!306719 () Bool)

(assert (=> b!306719 false))

(declare-datatypes ((Unit!9558 0))(
  ( (Unit!9559) )
))
(declare-fun e!192240 () Unit!9558)

(declare-fun Unit!9560 () Unit!9558)

(assert (=> b!306719 (= e!192240 Unit!9560)))

(declare-fun b!306720 () Bool)

(declare-fun res!163649 () Bool)

(declare-fun e!192241 () Bool)

(assert (=> b!306720 (=> (not res!163649) (not e!192241))))

(declare-datatypes ((array!15604 0))(
  ( (array!15605 (arr!7385 (Array (_ BitVec 32) (_ BitVec 64))) (size!7737 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15604)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2536 0))(
  ( (MissingZero!2536 (index!12320 (_ BitVec 32))) (Found!2536 (index!12321 (_ BitVec 32))) (Intermediate!2536 (undefined!3348 Bool) (index!12322 (_ BitVec 32)) (x!30534 (_ BitVec 32))) (Undefined!2536) (MissingVacant!2536 (index!12323 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15604 (_ BitVec 32)) SeekEntryResult!2536)

(assert (=> b!306720 (= res!163649 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2536 i!1240)))))

(declare-fun b!306721 () Bool)

(declare-fun res!163650 () Bool)

(assert (=> b!306721 (=> (not res!163650) (not e!192241))))

(assert (=> b!306721 (= res!163650 (and (= (size!7737 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7737 a!3293))))))

(declare-fun b!306722 () Bool)

(declare-fun res!163652 () Bool)

(declare-fun e!192244 () Bool)

(assert (=> b!306722 (=> (not res!163652) (not e!192244))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306722 (= res!163652 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7385 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306723 () Bool)

(assert (=> b!306723 (= e!192241 e!192244)))

(declare-fun res!163648 () Bool)

(assert (=> b!306723 (=> (not res!163648) (not e!192244))))

(declare-fun lt!151027 () SeekEntryResult!2536)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15604 (_ BitVec 32)) SeekEntryResult!2536)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306723 (= res!163648 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151027))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306723 (= lt!151027 (Intermediate!2536 false resIndex!52 resX!52))))

(declare-fun b!306724 () Bool)

(declare-fun res!163651 () Bool)

(assert (=> b!306724 (=> (not res!163651) (not e!192241))))

(declare-fun arrayContainsKey!0 (array!15604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306724 (= res!163651 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306725 () Bool)

(declare-fun e!192242 () Unit!9558)

(declare-fun Unit!9561 () Unit!9558)

(assert (=> b!306725 (= e!192242 Unit!9561)))

(declare-fun res!163656 () Bool)

(assert (=> start!30602 (=> (not res!163656) (not e!192241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30602 (= res!163656 (validMask!0 mask!3709))))

(assert (=> start!30602 e!192241))

(declare-fun array_inv!5339 (array!15604) Bool)

(assert (=> start!30602 (array_inv!5339 a!3293)))

(assert (=> start!30602 true))

(declare-fun b!306726 () Bool)

(declare-fun res!163655 () Bool)

(assert (=> b!306726 (=> (not res!163655) (not e!192241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15604 (_ BitVec 32)) Bool)

(assert (=> b!306726 (= res!163655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306727 () Bool)

(declare-fun res!163647 () Bool)

(assert (=> b!306727 (=> (not res!163647) (not e!192244))))

(assert (=> b!306727 (= res!163647 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151027))))

(declare-fun b!306728 () Bool)

(declare-fun res!163653 () Bool)

(assert (=> b!306728 (=> (not res!163653) (not e!192241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306728 (= res!163653 (validKeyInArray!0 k0!2441))))

(declare-fun b!306729 () Bool)

(declare-fun res!163654 () Bool)

(assert (=> b!306729 (=> (not res!163654) (not e!192244))))

(assert (=> b!306729 (= res!163654 (and (= (select (arr!7385 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7737 a!3293))))))

(declare-fun b!306730 () Bool)

(assert (=> b!306730 (= e!192244 (not true))))

(assert (=> b!306730 (= index!1781 resIndex!52)))

(declare-fun lt!151028 () Unit!9558)

(assert (=> b!306730 (= lt!151028 e!192242)))

(declare-fun c!49138 () Bool)

(assert (=> b!306730 (= c!49138 (not (= resIndex!52 index!1781)))))

(declare-fun b!306731 () Bool)

(assert (=> b!306731 (= e!192242 e!192240)))

(declare-fun c!49139 () Bool)

(assert (=> b!306731 (= c!49139 (or (= (select (arr!7385 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7385 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306732 () Bool)

(assert (=> b!306732 false))

(declare-fun lt!151026 () SeekEntryResult!2536)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306732 (= lt!151026 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9562 () Unit!9558)

(assert (=> b!306732 (= e!192240 Unit!9562)))

(assert (= (and start!30602 res!163656) b!306721))

(assert (= (and b!306721 res!163650) b!306728))

(assert (= (and b!306728 res!163653) b!306724))

(assert (= (and b!306724 res!163651) b!306720))

(assert (= (and b!306720 res!163649) b!306726))

(assert (= (and b!306726 res!163655) b!306723))

(assert (= (and b!306723 res!163648) b!306729))

(assert (= (and b!306729 res!163654) b!306727))

(assert (= (and b!306727 res!163647) b!306722))

(assert (= (and b!306722 res!163652) b!306730))

(assert (= (and b!306730 c!49138) b!306731))

(assert (= (and b!306730 (not c!49138)) b!306725))

(assert (= (and b!306731 c!49139) b!306719))

(assert (= (and b!306731 (not c!49139)) b!306732))

(declare-fun m!317169 () Bool)

(assert (=> b!306722 m!317169))

(declare-fun m!317171 () Bool)

(assert (=> b!306729 m!317171))

(declare-fun m!317173 () Bool)

(assert (=> b!306723 m!317173))

(assert (=> b!306723 m!317173))

(declare-fun m!317175 () Bool)

(assert (=> b!306723 m!317175))

(assert (=> b!306731 m!317169))

(declare-fun m!317177 () Bool)

(assert (=> b!306727 m!317177))

(declare-fun m!317179 () Bool)

(assert (=> b!306728 m!317179))

(declare-fun m!317181 () Bool)

(assert (=> b!306732 m!317181))

(assert (=> b!306732 m!317181))

(declare-fun m!317183 () Bool)

(assert (=> b!306732 m!317183))

(declare-fun m!317185 () Bool)

(assert (=> start!30602 m!317185))

(declare-fun m!317187 () Bool)

(assert (=> start!30602 m!317187))

(declare-fun m!317189 () Bool)

(assert (=> b!306720 m!317189))

(declare-fun m!317191 () Bool)

(assert (=> b!306724 m!317191))

(declare-fun m!317193 () Bool)

(assert (=> b!306726 m!317193))

(check-sat (not b!306724) (not b!306723) (not b!306727) (not b!306726) (not b!306728) (not b!306732) (not start!30602) (not b!306720))
(check-sat)
