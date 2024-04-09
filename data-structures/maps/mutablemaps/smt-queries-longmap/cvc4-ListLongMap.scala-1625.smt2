; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30538 () Bool)

(assert start!30538)

(declare-fun b!305375 () Bool)

(declare-fun e!191761 () Bool)

(declare-fun e!191763 () Bool)

(assert (=> b!305375 (= e!191761 e!191763)))

(declare-fun res!162690 () Bool)

(assert (=> b!305375 (=> (not res!162690) (not e!191763))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((array!15540 0))(
  ( (array!15541 (arr!7353 (Array (_ BitVec 32) (_ BitVec 64))) (size!7705 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15540)

(declare-datatypes ((SeekEntryResult!2504 0))(
  ( (MissingZero!2504 (index!12192 (_ BitVec 32))) (Found!2504 (index!12193 (_ BitVec 32))) (Intermediate!2504 (undefined!3316 Bool) (index!12194 (_ BitVec 32)) (x!30414 (_ BitVec 32))) (Undefined!2504) (MissingVacant!2504 (index!12195 (_ BitVec 32))) )
))
(declare-fun lt!150738 () SeekEntryResult!2504)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15540 (_ BitVec 32)) SeekEntryResult!2504)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305375 (= res!162690 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150738))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305375 (= lt!150738 (Intermediate!2504 false resIndex!52 resX!52))))

(declare-fun b!305376 () Bool)

(declare-fun res!162691 () Bool)

(assert (=> b!305376 (=> (not res!162691) (not e!191761))))

(declare-fun arrayContainsKey!0 (array!15540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305376 (= res!162691 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305377 () Bool)

(assert (=> b!305377 false))

(declare-datatypes ((Unit!9398 0))(
  ( (Unit!9399) )
))
(declare-fun e!191764 () Unit!9398)

(declare-fun Unit!9400 () Unit!9398)

(assert (=> b!305377 (= e!191764 Unit!9400)))

(declare-fun b!305378 () Bool)

(assert (=> b!305378 (= e!191763 (not true))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305378 (= index!1781 resIndex!52)))

(declare-fun lt!150739 () Unit!9398)

(declare-fun e!191762 () Unit!9398)

(assert (=> b!305378 (= lt!150739 e!191762)))

(declare-fun c!48946 () Bool)

(assert (=> b!305378 (= c!48946 (not (= resIndex!52 index!1781)))))

(declare-fun b!305380 () Bool)

(declare-fun res!162688 () Bool)

(assert (=> b!305380 (=> (not res!162688) (not e!191761))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305380 (= res!162688 (and (= (size!7705 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7705 a!3293))))))

(declare-fun b!305381 () Bool)

(declare-fun res!162694 () Bool)

(assert (=> b!305381 (=> (not res!162694) (not e!191761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305381 (= res!162694 (validKeyInArray!0 k!2441))))

(declare-fun b!305382 () Bool)

(declare-fun Unit!9401 () Unit!9398)

(assert (=> b!305382 (= e!191762 Unit!9401)))

(declare-fun b!305383 () Bool)

(declare-fun res!162692 () Bool)

(assert (=> b!305383 (=> (not res!162692) (not e!191763))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!305383 (= res!162692 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7353 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305384 () Bool)

(declare-fun res!162687 () Bool)

(assert (=> b!305384 (=> (not res!162687) (not e!191763))))

(assert (=> b!305384 (= res!162687 (and (= (select (arr!7353 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7705 a!3293))))))

(declare-fun b!305385 () Bool)

(assert (=> b!305385 (= e!191762 e!191764)))

(declare-fun c!48947 () Bool)

(assert (=> b!305385 (= c!48947 (or (= (select (arr!7353 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7353 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305386 () Bool)

(declare-fun res!162689 () Bool)

(assert (=> b!305386 (=> (not res!162689) (not e!191761))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15540 (_ BitVec 32)) SeekEntryResult!2504)

(assert (=> b!305386 (= res!162689 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2504 i!1240)))))

(declare-fun b!305379 () Bool)

(assert (=> b!305379 false))

(declare-fun lt!150740 () SeekEntryResult!2504)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305379 (= lt!150740 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9402 () Unit!9398)

(assert (=> b!305379 (= e!191764 Unit!9402)))

(declare-fun res!162693 () Bool)

(assert (=> start!30538 (=> (not res!162693) (not e!191761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30538 (= res!162693 (validMask!0 mask!3709))))

(assert (=> start!30538 e!191761))

(declare-fun array_inv!5307 (array!15540) Bool)

(assert (=> start!30538 (array_inv!5307 a!3293)))

(assert (=> start!30538 true))

(declare-fun b!305387 () Bool)

(declare-fun res!162695 () Bool)

(assert (=> b!305387 (=> (not res!162695) (not e!191763))))

(assert (=> b!305387 (= res!162695 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150738))))

(declare-fun b!305388 () Bool)

(declare-fun res!162696 () Bool)

(assert (=> b!305388 (=> (not res!162696) (not e!191761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15540 (_ BitVec 32)) Bool)

(assert (=> b!305388 (= res!162696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30538 res!162693) b!305380))

(assert (= (and b!305380 res!162688) b!305381))

(assert (= (and b!305381 res!162694) b!305376))

(assert (= (and b!305376 res!162691) b!305386))

(assert (= (and b!305386 res!162689) b!305388))

(assert (= (and b!305388 res!162696) b!305375))

(assert (= (and b!305375 res!162690) b!305384))

(assert (= (and b!305384 res!162687) b!305387))

(assert (= (and b!305387 res!162695) b!305383))

(assert (= (and b!305383 res!162692) b!305378))

(assert (= (and b!305378 c!48946) b!305385))

(assert (= (and b!305378 (not c!48946)) b!305382))

(assert (= (and b!305385 c!48947) b!305377))

(assert (= (and b!305385 (not c!48947)) b!305379))

(declare-fun m!316337 () Bool)

(assert (=> b!305375 m!316337))

(assert (=> b!305375 m!316337))

(declare-fun m!316339 () Bool)

(assert (=> b!305375 m!316339))

(declare-fun m!316341 () Bool)

(assert (=> b!305376 m!316341))

(declare-fun m!316343 () Bool)

(assert (=> b!305381 m!316343))

(declare-fun m!316345 () Bool)

(assert (=> b!305384 m!316345))

(declare-fun m!316347 () Bool)

(assert (=> b!305386 m!316347))

(declare-fun m!316349 () Bool)

(assert (=> b!305387 m!316349))

(declare-fun m!316351 () Bool)

(assert (=> b!305388 m!316351))

(declare-fun m!316353 () Bool)

(assert (=> b!305383 m!316353))

(declare-fun m!316355 () Bool)

(assert (=> b!305379 m!316355))

(assert (=> b!305379 m!316355))

(declare-fun m!316357 () Bool)

(assert (=> b!305379 m!316357))

(assert (=> b!305385 m!316353))

(declare-fun m!316359 () Bool)

(assert (=> start!30538 m!316359))

(declare-fun m!316361 () Bool)

(assert (=> start!30538 m!316361))

(push 1)

(assert (not b!305381))

