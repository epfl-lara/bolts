; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30540 () Bool)

(assert start!30540)

(declare-fun b!305417 () Bool)

(declare-fun res!162719 () Bool)

(declare-fun e!191779 () Bool)

(assert (=> b!305417 (=> (not res!162719) (not e!191779))))

(declare-datatypes ((array!15542 0))(
  ( (array!15543 (arr!7354 (Array (_ BitVec 32) (_ BitVec 64))) (size!7706 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15542)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305417 (= res!162719 (and (= (select (arr!7354 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7706 a!3293))))))

(declare-fun b!305418 () Bool)

(declare-fun res!162721 () Bool)

(assert (=> b!305418 (=> (not res!162721) (not e!191779))))

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!305418 (= res!162721 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7354 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305419 () Bool)

(declare-fun res!162724 () Bool)

(assert (=> b!305419 (=> (not res!162724) (not e!191779))))

(declare-datatypes ((SeekEntryResult!2505 0))(
  ( (MissingZero!2505 (index!12196 (_ BitVec 32))) (Found!2505 (index!12197 (_ BitVec 32))) (Intermediate!2505 (undefined!3317 Bool) (index!12198 (_ BitVec 32)) (x!30423 (_ BitVec 32))) (Undefined!2505) (MissingVacant!2505 (index!12199 (_ BitVec 32))) )
))
(declare-fun lt!150747 () SeekEntryResult!2505)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15542 (_ BitVec 32)) SeekEntryResult!2505)

(assert (=> b!305419 (= res!162724 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150747))))

(declare-fun res!162725 () Bool)

(declare-fun e!191776 () Bool)

(assert (=> start!30540 (=> (not res!162725) (not e!191776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30540 (= res!162725 (validMask!0 mask!3709))))

(assert (=> start!30540 e!191776))

(declare-fun array_inv!5308 (array!15542) Bool)

(assert (=> start!30540 (array_inv!5308 a!3293)))

(assert (=> start!30540 true))

(declare-fun b!305420 () Bool)

(assert (=> b!305420 false))

(declare-datatypes ((Unit!9403 0))(
  ( (Unit!9404) )
))
(declare-fun e!191777 () Unit!9403)

(declare-fun Unit!9405 () Unit!9403)

(assert (=> b!305420 (= e!191777 Unit!9405)))

(declare-fun b!305421 () Bool)

(assert (=> b!305421 (= e!191779 (not (or (not (= (select (arr!7354 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(assert (=> b!305421 (= index!1781 resIndex!52)))

(declare-fun lt!150749 () Unit!9403)

(declare-fun e!191775 () Unit!9403)

(assert (=> b!305421 (= lt!150749 e!191775)))

(declare-fun c!48953 () Bool)

(assert (=> b!305421 (= c!48953 (not (= resIndex!52 index!1781)))))

(declare-fun b!305422 () Bool)

(declare-fun res!162718 () Bool)

(assert (=> b!305422 (=> (not res!162718) (not e!191776))))

(declare-fun arrayContainsKey!0 (array!15542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305422 (= res!162718 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305423 () Bool)

(declare-fun res!162717 () Bool)

(assert (=> b!305423 (=> (not res!162717) (not e!191776))))

(assert (=> b!305423 (= res!162717 (and (= (size!7706 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7706 a!3293))))))

(declare-fun b!305424 () Bool)

(assert (=> b!305424 (= e!191776 e!191779)))

(declare-fun res!162723 () Bool)

(assert (=> b!305424 (=> (not res!162723) (not e!191779))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305424 (= res!162723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150747))))

(assert (=> b!305424 (= lt!150747 (Intermediate!2505 false resIndex!52 resX!52))))

(declare-fun b!305425 () Bool)

(assert (=> b!305425 false))

(declare-fun lt!150748 () SeekEntryResult!2505)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305425 (= lt!150748 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9406 () Unit!9403)

(assert (=> b!305425 (= e!191777 Unit!9406)))

(declare-fun b!305426 () Bool)

(declare-fun res!162722 () Bool)

(assert (=> b!305426 (=> (not res!162722) (not e!191776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15542 (_ BitVec 32)) Bool)

(assert (=> b!305426 (= res!162722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305427 () Bool)

(declare-fun res!162726 () Bool)

(assert (=> b!305427 (=> (not res!162726) (not e!191776))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15542 (_ BitVec 32)) SeekEntryResult!2505)

(assert (=> b!305427 (= res!162726 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2505 i!1240)))))

(declare-fun b!305428 () Bool)

(assert (=> b!305428 (= e!191775 e!191777)))

(declare-fun c!48952 () Bool)

(assert (=> b!305428 (= c!48952 (or (= (select (arr!7354 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7354 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305429 () Bool)

(declare-fun res!162720 () Bool)

(assert (=> b!305429 (=> (not res!162720) (not e!191776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305429 (= res!162720 (validKeyInArray!0 k!2441))))

(declare-fun b!305430 () Bool)

(declare-fun Unit!9407 () Unit!9403)

(assert (=> b!305430 (= e!191775 Unit!9407)))

(assert (= (and start!30540 res!162725) b!305423))

(assert (= (and b!305423 res!162717) b!305429))

(assert (= (and b!305429 res!162720) b!305422))

(assert (= (and b!305422 res!162718) b!305427))

(assert (= (and b!305427 res!162726) b!305426))

(assert (= (and b!305426 res!162722) b!305424))

(assert (= (and b!305424 res!162723) b!305417))

(assert (= (and b!305417 res!162719) b!305419))

(assert (= (and b!305419 res!162724) b!305418))

(assert (= (and b!305418 res!162721) b!305421))

(assert (= (and b!305421 c!48953) b!305428))

(assert (= (and b!305421 (not c!48953)) b!305430))

(assert (= (and b!305428 c!48952) b!305420))

(assert (= (and b!305428 (not c!48952)) b!305425))

(declare-fun m!316363 () Bool)

(assert (=> b!305425 m!316363))

(assert (=> b!305425 m!316363))

(declare-fun m!316365 () Bool)

(assert (=> b!305425 m!316365))

(declare-fun m!316367 () Bool)

(assert (=> b!305429 m!316367))

(declare-fun m!316369 () Bool)

(assert (=> b!305421 m!316369))

(declare-fun m!316371 () Bool)

(assert (=> b!305424 m!316371))

(assert (=> b!305424 m!316371))

(declare-fun m!316373 () Bool)

(assert (=> b!305424 m!316373))

(declare-fun m!316375 () Bool)

(assert (=> b!305427 m!316375))

(assert (=> b!305418 m!316369))

(declare-fun m!316377 () Bool)

(assert (=> b!305419 m!316377))

(declare-fun m!316379 () Bool)

(assert (=> start!30540 m!316379))

(declare-fun m!316381 () Bool)

(assert (=> start!30540 m!316381))

(assert (=> b!305428 m!316369))

(declare-fun m!316383 () Bool)

(assert (=> b!305417 m!316383))

(declare-fun m!316385 () Bool)

(assert (=> b!305422 m!316385))

(declare-fun m!316387 () Bool)

(assert (=> b!305426 m!316387))

(push 1)

