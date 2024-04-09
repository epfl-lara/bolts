; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30578 () Bool)

(assert start!30578)

(declare-fun b!306215 () Bool)

(declare-fun res!163291 () Bool)

(declare-fun e!192061 () Bool)

(assert (=> b!306215 (=> (not res!163291) (not e!192061))))

(declare-datatypes ((array!15580 0))(
  ( (array!15581 (arr!7373 (Array (_ BitVec 32) (_ BitVec 64))) (size!7725 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15580)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306215 (= res!163291 (and (= (select (arr!7373 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7725 a!3293))))))

(declare-fun b!306216 () Bool)

(assert (=> b!306216 false))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2524 0))(
  ( (MissingZero!2524 (index!12272 (_ BitVec 32))) (Found!2524 (index!12273 (_ BitVec 32))) (Intermediate!2524 (undefined!3336 Bool) (index!12274 (_ BitVec 32)) (x!30490 (_ BitVec 32))) (Undefined!2524) (MissingVacant!2524 (index!12275 (_ BitVec 32))) )
))
(declare-fun lt!150919 () SeekEntryResult!2524)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15580 (_ BitVec 32)) SeekEntryResult!2524)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306216 (= lt!150919 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9498 0))(
  ( (Unit!9499) )
))
(declare-fun e!192064 () Unit!9498)

(declare-fun Unit!9500 () Unit!9498)

(assert (=> b!306216 (= e!192064 Unit!9500)))

(declare-fun b!306217 () Bool)

(declare-fun res!163288 () Bool)

(assert (=> b!306217 (=> (not res!163288) (not e!192061))))

(assert (=> b!306217 (= res!163288 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7373 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306218 () Bool)

(declare-fun res!163295 () Bool)

(declare-fun e!192063 () Bool)

(assert (=> b!306218 (=> (not res!163295) (not e!192063))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15580 (_ BitVec 32)) SeekEntryResult!2524)

(assert (=> b!306218 (= res!163295 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2524 i!1240)))))

(declare-fun b!306219 () Bool)

(assert (=> b!306219 false))

(declare-fun Unit!9501 () Unit!9498)

(assert (=> b!306219 (= e!192064 Unit!9501)))

(declare-fun b!306220 () Bool)

(declare-fun e!192062 () Unit!9498)

(assert (=> b!306220 (= e!192062 e!192064)))

(declare-fun c!49066 () Bool)

(assert (=> b!306220 (= c!49066 (or (= (select (arr!7373 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7373 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306221 () Bool)

(declare-fun res!163296 () Bool)

(assert (=> b!306221 (=> (not res!163296) (not e!192061))))

(declare-fun lt!150918 () SeekEntryResult!2524)

(assert (=> b!306221 (= res!163296 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150918))))

(declare-fun b!306222 () Bool)

(assert (=> b!306222 (= e!192063 e!192061)))

(declare-fun res!163289 () Bool)

(assert (=> b!306222 (=> (not res!163289) (not e!192061))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306222 (= res!163289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150918))))

(assert (=> b!306222 (= lt!150918 (Intermediate!2524 false resIndex!52 resX!52))))

(declare-fun b!306223 () Bool)

(declare-fun res!163292 () Bool)

(assert (=> b!306223 (=> (not res!163292) (not e!192063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15580 (_ BitVec 32)) Bool)

(assert (=> b!306223 (= res!163292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306224 () Bool)

(declare-fun res!163287 () Bool)

(assert (=> b!306224 (=> (not res!163287) (not e!192063))))

(assert (=> b!306224 (= res!163287 (and (= (size!7725 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7725 a!3293))))))

(declare-fun res!163294 () Bool)

(assert (=> start!30578 (=> (not res!163294) (not e!192063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30578 (= res!163294 (validMask!0 mask!3709))))

(assert (=> start!30578 e!192063))

(declare-fun array_inv!5327 (array!15580) Bool)

(assert (=> start!30578 (array_inv!5327 a!3293)))

(assert (=> start!30578 true))

(declare-fun b!306225 () Bool)

(assert (=> b!306225 (= e!192061 (not (or (not (= (select (arr!7373 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(assert (=> b!306225 (= index!1781 resIndex!52)))

(declare-fun lt!150920 () Unit!9498)

(assert (=> b!306225 (= lt!150920 e!192062)))

(declare-fun c!49067 () Bool)

(assert (=> b!306225 (= c!49067 (not (= resIndex!52 index!1781)))))

(declare-fun b!306226 () Bool)

(declare-fun res!163293 () Bool)

(assert (=> b!306226 (=> (not res!163293) (not e!192063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306226 (= res!163293 (validKeyInArray!0 k0!2441))))

(declare-fun b!306227 () Bool)

(declare-fun Unit!9502 () Unit!9498)

(assert (=> b!306227 (= e!192062 Unit!9502)))

(declare-fun b!306228 () Bool)

(declare-fun res!163290 () Bool)

(assert (=> b!306228 (=> (not res!163290) (not e!192063))))

(declare-fun arrayContainsKey!0 (array!15580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306228 (= res!163290 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30578 res!163294) b!306224))

(assert (= (and b!306224 res!163287) b!306226))

(assert (= (and b!306226 res!163293) b!306228))

(assert (= (and b!306228 res!163290) b!306218))

(assert (= (and b!306218 res!163295) b!306223))

(assert (= (and b!306223 res!163292) b!306222))

(assert (= (and b!306222 res!163289) b!306215))

(assert (= (and b!306215 res!163291) b!306221))

(assert (= (and b!306221 res!163296) b!306217))

(assert (= (and b!306217 res!163288) b!306225))

(assert (= (and b!306225 c!49067) b!306220))

(assert (= (and b!306225 (not c!49067)) b!306227))

(assert (= (and b!306220 c!49066) b!306219))

(assert (= (and b!306220 (not c!49066)) b!306216))

(declare-fun m!316857 () Bool)

(assert (=> b!306223 m!316857))

(declare-fun m!316859 () Bool)

(assert (=> b!306228 m!316859))

(declare-fun m!316861 () Bool)

(assert (=> b!306221 m!316861))

(declare-fun m!316863 () Bool)

(assert (=> b!306220 m!316863))

(assert (=> b!306225 m!316863))

(declare-fun m!316865 () Bool)

(assert (=> b!306218 m!316865))

(declare-fun m!316867 () Bool)

(assert (=> b!306215 m!316867))

(declare-fun m!316869 () Bool)

(assert (=> b!306222 m!316869))

(assert (=> b!306222 m!316869))

(declare-fun m!316871 () Bool)

(assert (=> b!306222 m!316871))

(declare-fun m!316873 () Bool)

(assert (=> start!30578 m!316873))

(declare-fun m!316875 () Bool)

(assert (=> start!30578 m!316875))

(declare-fun m!316877 () Bool)

(assert (=> b!306226 m!316877))

(assert (=> b!306217 m!316863))

(declare-fun m!316879 () Bool)

(assert (=> b!306216 m!316879))

(assert (=> b!306216 m!316879))

(declare-fun m!316881 () Bool)

(assert (=> b!306216 m!316881))

(check-sat (not b!306222) (not b!306228) (not b!306216) (not b!306221) (not b!306226) (not start!30578) (not b!306218) (not b!306223))
(check-sat)
