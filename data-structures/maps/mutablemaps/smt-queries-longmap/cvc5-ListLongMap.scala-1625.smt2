; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30534 () Bool)

(assert start!30534)

(declare-fun b!305291 () Bool)

(declare-fun res!162636 () Bool)

(declare-fun e!191730 () Bool)

(assert (=> b!305291 (=> (not res!162636) (not e!191730))))

(declare-datatypes ((array!15536 0))(
  ( (array!15537 (arr!7351 (Array (_ BitVec 32) (_ BitVec 64))) (size!7703 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15536)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305291 (= res!162636 (and (= (select (arr!7351 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7703 a!3293))))))

(declare-fun b!305292 () Bool)

(declare-fun res!162630 () Bool)

(declare-fun e!191732 () Bool)

(assert (=> b!305292 (=> (not res!162630) (not e!191732))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305292 (= res!162630 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305293 () Bool)

(assert (=> b!305293 false))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2502 0))(
  ( (MissingZero!2502 (index!12184 (_ BitVec 32))) (Found!2502 (index!12185 (_ BitVec 32))) (Intermediate!2502 (undefined!3314 Bool) (index!12186 (_ BitVec 32)) (x!30412 (_ BitVec 32))) (Undefined!2502) (MissingVacant!2502 (index!12187 (_ BitVec 32))) )
))
(declare-fun lt!150721 () SeekEntryResult!2502)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15536 (_ BitVec 32)) SeekEntryResult!2502)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305293 (= lt!150721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9388 0))(
  ( (Unit!9389) )
))
(declare-fun e!191733 () Unit!9388)

(declare-fun Unit!9390 () Unit!9388)

(assert (=> b!305293 (= e!191733 Unit!9390)))

(declare-fun b!305294 () Bool)

(declare-fun res!162627 () Bool)

(assert (=> b!305294 (=> (not res!162627) (not e!191730))))

(declare-fun lt!150720 () SeekEntryResult!2502)

(assert (=> b!305294 (= res!162627 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150720))))

(declare-fun b!305295 () Bool)

(assert (=> b!305295 (= e!191730 (not true))))

(assert (=> b!305295 (= index!1781 resIndex!52)))

(declare-fun lt!150722 () Unit!9388)

(declare-fun e!191734 () Unit!9388)

(assert (=> b!305295 (= lt!150722 e!191734)))

(declare-fun c!48934 () Bool)

(assert (=> b!305295 (= c!48934 (not (= resIndex!52 index!1781)))))

(declare-fun b!305296 () Bool)

(declare-fun res!162635 () Bool)

(assert (=> b!305296 (=> (not res!162635) (not e!191732))))

(assert (=> b!305296 (= res!162635 (and (= (size!7703 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7703 a!3293))))))

(declare-fun b!305297 () Bool)

(declare-fun res!162629 () Bool)

(assert (=> b!305297 (=> (not res!162629) (not e!191730))))

(assert (=> b!305297 (= res!162629 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7351 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305298 () Bool)

(declare-fun res!162631 () Bool)

(assert (=> b!305298 (=> (not res!162631) (not e!191732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305298 (= res!162631 (validKeyInArray!0 k!2441))))

(declare-fun b!305299 () Bool)

(declare-fun res!162634 () Bool)

(assert (=> b!305299 (=> (not res!162634) (not e!191732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15536 (_ BitVec 32)) Bool)

(assert (=> b!305299 (= res!162634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!162632 () Bool)

(assert (=> start!30534 (=> (not res!162632) (not e!191732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30534 (= res!162632 (validMask!0 mask!3709))))

(assert (=> start!30534 e!191732))

(declare-fun array_inv!5305 (array!15536) Bool)

(assert (=> start!30534 (array_inv!5305 a!3293)))

(assert (=> start!30534 true))

(declare-fun b!305300 () Bool)

(declare-fun res!162633 () Bool)

(assert (=> b!305300 (=> (not res!162633) (not e!191732))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15536 (_ BitVec 32)) SeekEntryResult!2502)

(assert (=> b!305300 (= res!162633 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2502 i!1240)))))

(declare-fun b!305301 () Bool)

(assert (=> b!305301 false))

(declare-fun Unit!9391 () Unit!9388)

(assert (=> b!305301 (= e!191733 Unit!9391)))

(declare-fun b!305302 () Bool)

(assert (=> b!305302 (= e!191734 e!191733)))

(declare-fun c!48935 () Bool)

(assert (=> b!305302 (= c!48935 (or (= (select (arr!7351 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7351 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305303 () Bool)

(declare-fun Unit!9392 () Unit!9388)

(assert (=> b!305303 (= e!191734 Unit!9392)))

(declare-fun b!305304 () Bool)

(assert (=> b!305304 (= e!191732 e!191730)))

(declare-fun res!162628 () Bool)

(assert (=> b!305304 (=> (not res!162628) (not e!191730))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305304 (= res!162628 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150720))))

(assert (=> b!305304 (= lt!150720 (Intermediate!2502 false resIndex!52 resX!52))))

(assert (= (and start!30534 res!162632) b!305296))

(assert (= (and b!305296 res!162635) b!305298))

(assert (= (and b!305298 res!162631) b!305292))

(assert (= (and b!305292 res!162630) b!305300))

(assert (= (and b!305300 res!162633) b!305299))

(assert (= (and b!305299 res!162634) b!305304))

(assert (= (and b!305304 res!162628) b!305291))

(assert (= (and b!305291 res!162636) b!305294))

(assert (= (and b!305294 res!162627) b!305297))

(assert (= (and b!305297 res!162629) b!305295))

(assert (= (and b!305295 c!48934) b!305302))

(assert (= (and b!305295 (not c!48934)) b!305303))

(assert (= (and b!305302 c!48935) b!305301))

(assert (= (and b!305302 (not c!48935)) b!305293))

(declare-fun m!316285 () Bool)

(assert (=> b!305291 m!316285))

(declare-fun m!316287 () Bool)

(assert (=> b!305304 m!316287))

(assert (=> b!305304 m!316287))

(declare-fun m!316289 () Bool)

(assert (=> b!305304 m!316289))

(declare-fun m!316291 () Bool)

(assert (=> start!30534 m!316291))

(declare-fun m!316293 () Bool)

(assert (=> start!30534 m!316293))

(declare-fun m!316295 () Bool)

(assert (=> b!305294 m!316295))

(declare-fun m!316297 () Bool)

(assert (=> b!305300 m!316297))

(declare-fun m!316299 () Bool)

(assert (=> b!305292 m!316299))

(declare-fun m!316301 () Bool)

(assert (=> b!305298 m!316301))

(declare-fun m!316303 () Bool)

(assert (=> b!305297 m!316303))

(declare-fun m!316305 () Bool)

(assert (=> b!305293 m!316305))

(assert (=> b!305293 m!316305))

(declare-fun m!316307 () Bool)

(assert (=> b!305293 m!316307))

(assert (=> b!305302 m!316303))

(declare-fun m!316309 () Bool)

(assert (=> b!305299 m!316309))

(push 1)

