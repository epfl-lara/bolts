; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30588 () Bool)

(assert start!30588)

(declare-datatypes ((array!15590 0))(
  ( (array!15591 (arr!7378 (Array (_ BitVec 32) (_ BitVec 64))) (size!7730 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15590)

(declare-fun e!192138 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun b!306425 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!306425 (= e!192138 (not (or (not (= (select (arr!7378 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306425 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9523 0))(
  ( (Unit!9524) )
))
(declare-fun lt!150964 () Unit!9523)

(declare-fun e!192139 () Unit!9523)

(assert (=> b!306425 (= lt!150964 e!192139)))

(declare-fun c!49096 () Bool)

(assert (=> b!306425 (= c!49096 (not (= resIndex!52 index!1781)))))

(declare-fun b!306426 () Bool)

(assert (=> b!306426 false))

(declare-datatypes ((SeekEntryResult!2529 0))(
  ( (MissingZero!2529 (index!12292 (_ BitVec 32))) (Found!2529 (index!12293 (_ BitVec 32))) (Intermediate!2529 (undefined!3341 Bool) (index!12294 (_ BitVec 32)) (x!30511 (_ BitVec 32))) (Undefined!2529) (MissingVacant!2529 (index!12295 (_ BitVec 32))) )
))
(declare-fun lt!150965 () SeekEntryResult!2529)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15590 (_ BitVec 32)) SeekEntryResult!2529)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306426 (= lt!150965 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!192135 () Unit!9523)

(declare-fun Unit!9525 () Unit!9523)

(assert (=> b!306426 (= e!192135 Unit!9525)))

(declare-fun b!306427 () Bool)

(declare-fun res!163445 () Bool)

(assert (=> b!306427 (=> (not res!163445) (not e!192138))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!306427 (= res!163445 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7378 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306428 () Bool)

(declare-fun res!163441 () Bool)

(assert (=> b!306428 (=> (not res!163441) (not e!192138))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306428 (= res!163441 (and (= (select (arr!7378 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7730 a!3293))))))

(declare-fun b!306429 () Bool)

(declare-fun res!163443 () Bool)

(declare-fun e!192137 () Bool)

(assert (=> b!306429 (=> (not res!163443) (not e!192137))))

(declare-fun arrayContainsKey!0 (array!15590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306429 (= res!163443 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306430 () Bool)

(declare-fun res!163442 () Bool)

(assert (=> b!306430 (=> (not res!163442) (not e!192137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15590 (_ BitVec 32)) Bool)

(assert (=> b!306430 (= res!163442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306431 () Bool)

(declare-fun res!163444 () Bool)

(assert (=> b!306431 (=> (not res!163444) (not e!192137))))

(assert (=> b!306431 (= res!163444 (and (= (size!7730 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7730 a!3293))))))

(declare-fun b!306432 () Bool)

(declare-fun res!163439 () Bool)

(assert (=> b!306432 (=> (not res!163439) (not e!192137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306432 (= res!163439 (validKeyInArray!0 k!2441))))

(declare-fun b!306433 () Bool)

(declare-fun res!163446 () Bool)

(assert (=> b!306433 (=> (not res!163446) (not e!192137))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15590 (_ BitVec 32)) SeekEntryResult!2529)

(assert (=> b!306433 (= res!163446 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2529 i!1240)))))

(declare-fun b!306434 () Bool)

(declare-fun Unit!9526 () Unit!9523)

(assert (=> b!306434 (= e!192139 Unit!9526)))

(declare-fun res!163437 () Bool)

(assert (=> start!30588 (=> (not res!163437) (not e!192137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30588 (= res!163437 (validMask!0 mask!3709))))

(assert (=> start!30588 e!192137))

(declare-fun array_inv!5332 (array!15590) Bool)

(assert (=> start!30588 (array_inv!5332 a!3293)))

(assert (=> start!30588 true))

(declare-fun b!306435 () Bool)

(assert (=> b!306435 (= e!192139 e!192135)))

(declare-fun c!49097 () Bool)

(assert (=> b!306435 (= c!49097 (or (= (select (arr!7378 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7378 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306436 () Bool)

(assert (=> b!306436 (= e!192137 e!192138)))

(declare-fun res!163440 () Bool)

(assert (=> b!306436 (=> (not res!163440) (not e!192138))))

(declare-fun lt!150963 () SeekEntryResult!2529)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306436 (= res!163440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150963))))

(assert (=> b!306436 (= lt!150963 (Intermediate!2529 false resIndex!52 resX!52))))

(declare-fun b!306437 () Bool)

(declare-fun res!163438 () Bool)

(assert (=> b!306437 (=> (not res!163438) (not e!192138))))

(assert (=> b!306437 (= res!163438 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150963))))

(declare-fun b!306438 () Bool)

(assert (=> b!306438 false))

(declare-fun Unit!9527 () Unit!9523)

(assert (=> b!306438 (= e!192135 Unit!9527)))

(assert (= (and start!30588 res!163437) b!306431))

(assert (= (and b!306431 res!163444) b!306432))

(assert (= (and b!306432 res!163439) b!306429))

(assert (= (and b!306429 res!163443) b!306433))

(assert (= (and b!306433 res!163446) b!306430))

(assert (= (and b!306430 res!163442) b!306436))

(assert (= (and b!306436 res!163440) b!306428))

(assert (= (and b!306428 res!163441) b!306437))

(assert (= (and b!306437 res!163438) b!306427))

(assert (= (and b!306427 res!163445) b!306425))

(assert (= (and b!306425 c!49096) b!306435))

(assert (= (and b!306425 (not c!49096)) b!306434))

(assert (= (and b!306435 c!49097) b!306438))

(assert (= (and b!306435 (not c!49097)) b!306426))

(declare-fun m!316987 () Bool)

(assert (=> b!306433 m!316987))

(declare-fun m!316989 () Bool)

(assert (=> b!306427 m!316989))

(declare-fun m!316991 () Bool)

(assert (=> b!306426 m!316991))

(assert (=> b!306426 m!316991))

(declare-fun m!316993 () Bool)

(assert (=> b!306426 m!316993))

(declare-fun m!316995 () Bool)

(assert (=> b!306428 m!316995))

(declare-fun m!316997 () Bool)

(assert (=> b!306432 m!316997))

(declare-fun m!316999 () Bool)

(assert (=> b!306429 m!316999))

(assert (=> b!306425 m!316989))

(declare-fun m!317001 () Bool)

(assert (=> b!306437 m!317001))

(declare-fun m!317003 () Bool)

(assert (=> start!30588 m!317003))

(declare-fun m!317005 () Bool)

(assert (=> start!30588 m!317005))

(declare-fun m!317007 () Bool)

(assert (=> b!306436 m!317007))

(assert (=> b!306436 m!317007))

(declare-fun m!317009 () Bool)

(assert (=> b!306436 m!317009))

(declare-fun m!317011 () Bool)

(assert (=> b!306430 m!317011))

(assert (=> b!306435 m!316989))

(push 1)

(assert (not b!306432))

(assert (not start!30588))

(assert (not b!306433))

(assert (not b!306426))

(assert (not b!306430))

(assert (not b!306437))

(assert (not b!306429))

(assert (not b!306436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

