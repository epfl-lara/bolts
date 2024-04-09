; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30582 () Bool)

(assert start!30582)

(declare-fun b!306299 () Bool)

(assert (=> b!306299 false))

(declare-datatypes ((Unit!9508 0))(
  ( (Unit!9509) )
))
(declare-fun e!192094 () Unit!9508)

(declare-fun Unit!9510 () Unit!9508)

(assert (=> b!306299 (= e!192094 Unit!9510)))

(declare-fun b!306300 () Bool)

(declare-fun res!163351 () Bool)

(declare-fun e!192091 () Bool)

(assert (=> b!306300 (=> (not res!163351) (not e!192091))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306300 (= res!163351 (validKeyInArray!0 k!2441))))

(declare-fun b!306301 () Bool)

(declare-fun e!192093 () Bool)

(assert (=> b!306301 (= e!192091 e!192093)))

(declare-fun res!163356 () Bool)

(assert (=> b!306301 (=> (not res!163356) (not e!192093))))

(declare-datatypes ((array!15584 0))(
  ( (array!15585 (arr!7375 (Array (_ BitVec 32) (_ BitVec 64))) (size!7727 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15584)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2526 0))(
  ( (MissingZero!2526 (index!12280 (_ BitVec 32))) (Found!2526 (index!12281 (_ BitVec 32))) (Intermediate!2526 (undefined!3338 Bool) (index!12282 (_ BitVec 32)) (x!30500 (_ BitVec 32))) (Undefined!2526) (MissingVacant!2526 (index!12283 (_ BitVec 32))) )
))
(declare-fun lt!150936 () SeekEntryResult!2526)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15584 (_ BitVec 32)) SeekEntryResult!2526)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306301 (= res!163356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150936))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306301 (= lt!150936 (Intermediate!2526 false resIndex!52 resX!52))))

(declare-fun b!306302 () Bool)

(assert (=> b!306302 false))

(declare-fun lt!150938 () SeekEntryResult!2526)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306302 (= lt!150938 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9511 () Unit!9508)

(assert (=> b!306302 (= e!192094 Unit!9511)))

(declare-fun b!306303 () Bool)

(declare-fun res!163352 () Bool)

(assert (=> b!306303 (=> (not res!163352) (not e!192093))))

(assert (=> b!306303 (= res!163352 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7375 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306304 () Bool)

(declare-fun res!163353 () Bool)

(assert (=> b!306304 (=> (not res!163353) (not e!192091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15584 (_ BitVec 32)) Bool)

(assert (=> b!306304 (= res!163353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306305 () Bool)

(declare-fun res!163355 () Bool)

(assert (=> b!306305 (=> (not res!163355) (not e!192091))))

(declare-fun arrayContainsKey!0 (array!15584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306305 (= res!163355 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306306 () Bool)

(assert (=> b!306306 (= e!192093 (not true))))

(assert (=> b!306306 (= index!1781 resIndex!52)))

(declare-fun lt!150937 () Unit!9508)

(declare-fun e!192092 () Unit!9508)

(assert (=> b!306306 (= lt!150937 e!192092)))

(declare-fun c!49078 () Bool)

(assert (=> b!306306 (= c!49078 (not (= resIndex!52 index!1781)))))

(declare-fun b!306307 () Bool)

(declare-fun res!163349 () Bool)

(assert (=> b!306307 (=> (not res!163349) (not e!192093))))

(assert (=> b!306307 (= res!163349 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150936))))

(declare-fun b!306308 () Bool)

(declare-fun res!163348 () Bool)

(assert (=> b!306308 (=> (not res!163348) (not e!192093))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306308 (= res!163348 (and (= (select (arr!7375 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7727 a!3293))))))

(declare-fun b!306309 () Bool)

(declare-fun Unit!9512 () Unit!9508)

(assert (=> b!306309 (= e!192092 Unit!9512)))

(declare-fun res!163354 () Bool)

(assert (=> start!30582 (=> (not res!163354) (not e!192091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30582 (= res!163354 (validMask!0 mask!3709))))

(assert (=> start!30582 e!192091))

(declare-fun array_inv!5329 (array!15584) Bool)

(assert (=> start!30582 (array_inv!5329 a!3293)))

(assert (=> start!30582 true))

(declare-fun b!306310 () Bool)

(declare-fun res!163350 () Bool)

(assert (=> b!306310 (=> (not res!163350) (not e!192091))))

(assert (=> b!306310 (= res!163350 (and (= (size!7727 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7727 a!3293))))))

(declare-fun b!306311 () Bool)

(assert (=> b!306311 (= e!192092 e!192094)))

(declare-fun c!49079 () Bool)

(assert (=> b!306311 (= c!49079 (or (= (select (arr!7375 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7375 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306312 () Bool)

(declare-fun res!163347 () Bool)

(assert (=> b!306312 (=> (not res!163347) (not e!192091))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15584 (_ BitVec 32)) SeekEntryResult!2526)

(assert (=> b!306312 (= res!163347 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2526 i!1240)))))

(assert (= (and start!30582 res!163354) b!306310))

(assert (= (and b!306310 res!163350) b!306300))

(assert (= (and b!306300 res!163351) b!306305))

(assert (= (and b!306305 res!163355) b!306312))

(assert (= (and b!306312 res!163347) b!306304))

(assert (= (and b!306304 res!163353) b!306301))

(assert (= (and b!306301 res!163356) b!306308))

(assert (= (and b!306308 res!163348) b!306307))

(assert (= (and b!306307 res!163349) b!306303))

(assert (= (and b!306303 res!163352) b!306306))

(assert (= (and b!306306 c!49078) b!306311))

(assert (= (and b!306306 (not c!49078)) b!306309))

(assert (= (and b!306311 c!49079) b!306299))

(assert (= (and b!306311 (not c!49079)) b!306302))

(declare-fun m!316909 () Bool)

(assert (=> b!306300 m!316909))

(declare-fun m!316911 () Bool)

(assert (=> b!306312 m!316911))

(declare-fun m!316913 () Bool)

(assert (=> b!306311 m!316913))

(declare-fun m!316915 () Bool)

(assert (=> start!30582 m!316915))

(declare-fun m!316917 () Bool)

(assert (=> start!30582 m!316917))

(declare-fun m!316919 () Bool)

(assert (=> b!306308 m!316919))

(declare-fun m!316921 () Bool)

(assert (=> b!306301 m!316921))

(assert (=> b!306301 m!316921))

(declare-fun m!316923 () Bool)

(assert (=> b!306301 m!316923))

(assert (=> b!306303 m!316913))

(declare-fun m!316925 () Bool)

(assert (=> b!306307 m!316925))

(declare-fun m!316927 () Bool)

(assert (=> b!306302 m!316927))

(assert (=> b!306302 m!316927))

(declare-fun m!316929 () Bool)

(assert (=> b!306302 m!316929))

(declare-fun m!316931 () Bool)

(assert (=> b!306304 m!316931))

(declare-fun m!316933 () Bool)

(assert (=> b!306305 m!316933))

(push 1)

