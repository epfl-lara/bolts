; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30326 () Bool)

(assert start!30326)

(declare-fun b!303418 () Bool)

(declare-fun res!161069 () Bool)

(declare-fun e!190907 () Bool)

(assert (=> b!303418 (=> (not res!161069) (not e!190907))))

(declare-datatypes ((array!15430 0))(
  ( (array!15431 (arr!7301 (Array (_ BitVec 32) (_ BitVec 64))) (size!7653 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15430)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303418 (= res!161069 (and (= (size!7653 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7653 a!3293))))))

(declare-fun b!303419 () Bool)

(declare-fun res!161066 () Bool)

(declare-fun e!190909 () Bool)

(assert (=> b!303419 (=> (not res!161066) (not e!190909))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303419 (= res!161066 (and (= (select (arr!7301 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7653 a!3293))))))

(declare-fun res!161070 () Bool)

(assert (=> start!30326 (=> (not res!161070) (not e!190907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30326 (= res!161070 (validMask!0 mask!3709))))

(assert (=> start!30326 e!190907))

(declare-fun array_inv!5255 (array!15430) Bool)

(assert (=> start!30326 (array_inv!5255 a!3293)))

(assert (=> start!30326 true))

(declare-fun b!303420 () Bool)

(declare-fun res!161067 () Bool)

(assert (=> b!303420 (=> (not res!161067) (not e!190907))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2452 0))(
  ( (MissingZero!2452 (index!11984 (_ BitVec 32))) (Found!2452 (index!11985 (_ BitVec 32))) (Intermediate!2452 (undefined!3264 Bool) (index!11986 (_ BitVec 32)) (x!30208 (_ BitVec 32))) (Undefined!2452) (MissingVacant!2452 (index!11987 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15430 (_ BitVec 32)) SeekEntryResult!2452)

(assert (=> b!303420 (= res!161067 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2452 i!1240)))))

(declare-fun b!303421 () Bool)

(declare-fun res!161065 () Bool)

(assert (=> b!303421 (=> (not res!161065) (not e!190907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303421 (= res!161065 (validKeyInArray!0 k0!2441))))

(declare-fun b!303422 () Bool)

(declare-fun res!161068 () Bool)

(assert (=> b!303422 (=> (not res!161068) (not e!190909))))

(declare-fun lt!150188 () SeekEntryResult!2452)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15430 (_ BitVec 32)) SeekEntryResult!2452)

(assert (=> b!303422 (= res!161068 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150188))))

(declare-fun b!303423 () Bool)

(declare-fun res!161064 () Bool)

(assert (=> b!303423 (=> (not res!161064) (not e!190907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15430 (_ BitVec 32)) Bool)

(assert (=> b!303423 (= res!161064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303424 () Bool)

(assert (=> b!303424 (= e!190909 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7301 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7301 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7301 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!303425 () Bool)

(declare-fun res!161063 () Bool)

(assert (=> b!303425 (=> (not res!161063) (not e!190907))))

(declare-fun arrayContainsKey!0 (array!15430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303425 (= res!161063 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303426 () Bool)

(assert (=> b!303426 (= e!190907 e!190909)))

(declare-fun res!161062 () Bool)

(assert (=> b!303426 (=> (not res!161062) (not e!190909))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303426 (= res!161062 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150188))))

(assert (=> b!303426 (= lt!150188 (Intermediate!2452 false resIndex!52 resX!52))))

(assert (= (and start!30326 res!161070) b!303418))

(assert (= (and b!303418 res!161069) b!303421))

(assert (= (and b!303421 res!161065) b!303425))

(assert (= (and b!303425 res!161063) b!303420))

(assert (= (and b!303420 res!161067) b!303423))

(assert (= (and b!303423 res!161064) b!303426))

(assert (= (and b!303426 res!161062) b!303419))

(assert (= (and b!303419 res!161066) b!303422))

(assert (= (and b!303422 res!161068) b!303424))

(declare-fun m!314777 () Bool)

(assert (=> b!303421 m!314777))

(declare-fun m!314779 () Bool)

(assert (=> b!303425 m!314779))

(declare-fun m!314781 () Bool)

(assert (=> b!303424 m!314781))

(declare-fun m!314783 () Bool)

(assert (=> b!303423 m!314783))

(declare-fun m!314785 () Bool)

(assert (=> start!30326 m!314785))

(declare-fun m!314787 () Bool)

(assert (=> start!30326 m!314787))

(declare-fun m!314789 () Bool)

(assert (=> b!303422 m!314789))

(declare-fun m!314791 () Bool)

(assert (=> b!303426 m!314791))

(assert (=> b!303426 m!314791))

(declare-fun m!314793 () Bool)

(assert (=> b!303426 m!314793))

(declare-fun m!314795 () Bool)

(assert (=> b!303420 m!314795))

(declare-fun m!314797 () Bool)

(assert (=> b!303419 m!314797))

(check-sat (not b!303425) (not b!303421) (not b!303422) (not b!303420) (not b!303423) (not start!30326) (not b!303426))
(check-sat)
