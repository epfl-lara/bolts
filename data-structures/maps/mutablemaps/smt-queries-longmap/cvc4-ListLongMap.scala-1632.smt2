; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30580 () Bool)

(assert start!30580)

(declare-fun res!163319 () Bool)

(declare-fun e!192075 () Bool)

(assert (=> start!30580 (=> (not res!163319) (not e!192075))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30580 (= res!163319 (validMask!0 mask!3709))))

(assert (=> start!30580 e!192075))

(declare-datatypes ((array!15582 0))(
  ( (array!15583 (arr!7374 (Array (_ BitVec 32) (_ BitVec 64))) (size!7726 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15582)

(declare-fun array_inv!5328 (array!15582) Bool)

(assert (=> start!30580 (array_inv!5328 a!3293)))

(assert (=> start!30580 true))

(declare-fun b!306257 () Bool)

(assert (=> b!306257 false))

(declare-datatypes ((SeekEntryResult!2525 0))(
  ( (MissingZero!2525 (index!12276 (_ BitVec 32))) (Found!2525 (index!12277 (_ BitVec 32))) (Intermediate!2525 (undefined!3337 Bool) (index!12278 (_ BitVec 32)) (x!30491 (_ BitVec 32))) (Undefined!2525) (MissingVacant!2525 (index!12279 (_ BitVec 32))) )
))
(declare-fun lt!150929 () SeekEntryResult!2525)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15582 (_ BitVec 32)) SeekEntryResult!2525)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306257 (= lt!150929 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9503 0))(
  ( (Unit!9504) )
))
(declare-fun e!192077 () Unit!9503)

(declare-fun Unit!9505 () Unit!9503)

(assert (=> b!306257 (= e!192077 Unit!9505)))

(declare-fun b!306258 () Bool)

(declare-fun e!192076 () Unit!9503)

(assert (=> b!306258 (= e!192076 e!192077)))

(declare-fun c!49073 () Bool)

(assert (=> b!306258 (= c!49073 (or (= (select (arr!7374 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7374 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306259 () Bool)

(declare-fun res!163325 () Bool)

(declare-fun e!192078 () Bool)

(assert (=> b!306259 (=> (not res!163325) (not e!192078))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306259 (= res!163325 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7374 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306260 () Bool)

(assert (=> b!306260 (= e!192078 (not (or (not (= (select (arr!7374 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306260 (= index!1781 resIndex!52)))

(declare-fun lt!150927 () Unit!9503)

(assert (=> b!306260 (= lt!150927 e!192076)))

(declare-fun c!49072 () Bool)

(assert (=> b!306260 (= c!49072 (not (= resIndex!52 index!1781)))))

(declare-fun b!306261 () Bool)

(declare-fun res!163321 () Bool)

(assert (=> b!306261 (=> (not res!163321) (not e!192075))))

(declare-fun arrayContainsKey!0 (array!15582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306261 (= res!163321 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306262 () Bool)

(declare-fun res!163322 () Bool)

(assert (=> b!306262 (=> (not res!163322) (not e!192075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306262 (= res!163322 (validKeyInArray!0 k!2441))))

(declare-fun b!306263 () Bool)

(assert (=> b!306263 (= e!192075 e!192078)))

(declare-fun res!163326 () Bool)

(assert (=> b!306263 (=> (not res!163326) (not e!192078))))

(declare-fun lt!150928 () SeekEntryResult!2525)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306263 (= res!163326 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150928))))

(assert (=> b!306263 (= lt!150928 (Intermediate!2525 false resIndex!52 resX!52))))

(declare-fun b!306264 () Bool)

(declare-fun res!163323 () Bool)

(assert (=> b!306264 (=> (not res!163323) (not e!192075))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15582 (_ BitVec 32)) SeekEntryResult!2525)

(assert (=> b!306264 (= res!163323 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2525 i!1240)))))

(declare-fun b!306265 () Bool)

(declare-fun res!163317 () Bool)

(assert (=> b!306265 (=> (not res!163317) (not e!192078))))

(assert (=> b!306265 (= res!163317 (and (= (select (arr!7374 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7726 a!3293))))))

(declare-fun b!306266 () Bool)

(declare-fun res!163324 () Bool)

(assert (=> b!306266 (=> (not res!163324) (not e!192075))))

(assert (=> b!306266 (= res!163324 (and (= (size!7726 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7726 a!3293))))))

(declare-fun b!306267 () Bool)

(declare-fun res!163318 () Bool)

(assert (=> b!306267 (=> (not res!163318) (not e!192075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15582 (_ BitVec 32)) Bool)

(assert (=> b!306267 (= res!163318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306268 () Bool)

(assert (=> b!306268 false))

(declare-fun Unit!9506 () Unit!9503)

(assert (=> b!306268 (= e!192077 Unit!9506)))

(declare-fun b!306269 () Bool)

(declare-fun res!163320 () Bool)

(assert (=> b!306269 (=> (not res!163320) (not e!192078))))

(assert (=> b!306269 (= res!163320 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150928))))

(declare-fun b!306270 () Bool)

(declare-fun Unit!9507 () Unit!9503)

(assert (=> b!306270 (= e!192076 Unit!9507)))

(assert (= (and start!30580 res!163319) b!306266))

(assert (= (and b!306266 res!163324) b!306262))

(assert (= (and b!306262 res!163322) b!306261))

(assert (= (and b!306261 res!163321) b!306264))

(assert (= (and b!306264 res!163323) b!306267))

(assert (= (and b!306267 res!163318) b!306263))

(assert (= (and b!306263 res!163326) b!306265))

(assert (= (and b!306265 res!163317) b!306269))

(assert (= (and b!306269 res!163320) b!306259))

(assert (= (and b!306259 res!163325) b!306260))

(assert (= (and b!306260 c!49072) b!306258))

(assert (= (and b!306260 (not c!49072)) b!306270))

(assert (= (and b!306258 c!49073) b!306268))

(assert (= (and b!306258 (not c!49073)) b!306257))

(declare-fun m!316883 () Bool)

(assert (=> b!306263 m!316883))

(assert (=> b!306263 m!316883))

(declare-fun m!316885 () Bool)

(assert (=> b!306263 m!316885))

(declare-fun m!316887 () Bool)

(assert (=> b!306262 m!316887))

(declare-fun m!316889 () Bool)

(assert (=> b!306258 m!316889))

(assert (=> b!306260 m!316889))

(declare-fun m!316891 () Bool)

(assert (=> b!306261 m!316891))

(declare-fun m!316893 () Bool)

(assert (=> b!306269 m!316893))

(declare-fun m!316895 () Bool)

(assert (=> b!306265 m!316895))

(declare-fun m!316897 () Bool)

(assert (=> b!306267 m!316897))

(declare-fun m!316899 () Bool)

(assert (=> start!30580 m!316899))

(declare-fun m!316901 () Bool)

(assert (=> start!30580 m!316901))

(declare-fun m!316903 () Bool)

(assert (=> b!306257 m!316903))

(assert (=> b!306257 m!316903))

(declare-fun m!316905 () Bool)

(assert (=> b!306257 m!316905))

(declare-fun m!316907 () Bool)

(assert (=> b!306264 m!316907))

(assert (=> b!306259 m!316889))

(push 1)

(assert (not b!306261))

(assert (not b!306263))

(assert (not b!306257))

(assert (not b!306264))

(assert (not b!306269))

(assert (not start!30580))

