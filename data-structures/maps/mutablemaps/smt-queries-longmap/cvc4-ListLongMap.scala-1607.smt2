; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30322 () Bool)

(assert start!30322)

(declare-fun b!303364 () Bool)

(declare-fun res!161008 () Bool)

(declare-fun e!190889 () Bool)

(assert (=> b!303364 (=> (not res!161008) (not e!190889))))

(declare-datatypes ((array!15426 0))(
  ( (array!15427 (arr!7299 (Array (_ BitVec 32) (_ BitVec 64))) (size!7651 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15426)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303364 (= res!161008 (and (= (select (arr!7299 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7651 a!3293))))))

(declare-fun b!303365 () Bool)

(declare-fun res!161012 () Bool)

(declare-fun e!190891 () Bool)

(assert (=> b!303365 (=> (not res!161012) (not e!190891))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15426 (_ BitVec 32)) Bool)

(assert (=> b!303365 (= res!161012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303366 () Bool)

(assert (=> b!303366 (= e!190891 e!190889)))

(declare-fun res!161013 () Bool)

(assert (=> b!303366 (=> (not res!161013) (not e!190889))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2450 0))(
  ( (MissingZero!2450 (index!11976 (_ BitVec 32))) (Found!2450 (index!11977 (_ BitVec 32))) (Intermediate!2450 (undefined!3262 Bool) (index!11978 (_ BitVec 32)) (x!30198 (_ BitVec 32))) (Undefined!2450) (MissingVacant!2450 (index!11979 (_ BitVec 32))) )
))
(declare-fun lt!150182 () SeekEntryResult!2450)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15426 (_ BitVec 32)) SeekEntryResult!2450)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303366 (= res!161013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150182))))

(assert (=> b!303366 (= lt!150182 (Intermediate!2450 false resIndex!52 resX!52))))

(declare-fun b!303367 () Bool)

(declare-fun res!161010 () Bool)

(assert (=> b!303367 (=> (not res!161010) (not e!190891))))

(declare-fun arrayContainsKey!0 (array!15426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303367 (= res!161010 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303368 () Bool)

(declare-fun res!161015 () Bool)

(assert (=> b!303368 (=> (not res!161015) (not e!190891))))

(assert (=> b!303368 (= res!161015 (and (= (size!7651 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7651 a!3293))))))

(declare-fun res!161016 () Bool)

(assert (=> start!30322 (=> (not res!161016) (not e!190891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30322 (= res!161016 (validMask!0 mask!3709))))

(assert (=> start!30322 e!190891))

(declare-fun array_inv!5253 (array!15426) Bool)

(assert (=> start!30322 (array_inv!5253 a!3293)))

(assert (=> start!30322 true))

(declare-fun b!303369 () Bool)

(declare-fun res!161011 () Bool)

(assert (=> b!303369 (=> (not res!161011) (not e!190891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303369 (= res!161011 (validKeyInArray!0 k!2441))))

(declare-fun b!303370 () Bool)

(assert (=> b!303370 (= e!190889 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7299 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7299 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7299 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!303371 () Bool)

(declare-fun res!161009 () Bool)

(assert (=> b!303371 (=> (not res!161009) (not e!190891))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15426 (_ BitVec 32)) SeekEntryResult!2450)

(assert (=> b!303371 (= res!161009 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2450 i!1240)))))

(declare-fun b!303372 () Bool)

(declare-fun res!161014 () Bool)

(assert (=> b!303372 (=> (not res!161014) (not e!190889))))

(assert (=> b!303372 (= res!161014 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150182))))

(assert (= (and start!30322 res!161016) b!303368))

(assert (= (and b!303368 res!161015) b!303369))

(assert (= (and b!303369 res!161011) b!303367))

(assert (= (and b!303367 res!161010) b!303371))

(assert (= (and b!303371 res!161009) b!303365))

(assert (= (and b!303365 res!161012) b!303366))

(assert (= (and b!303366 res!161013) b!303364))

(assert (= (and b!303364 res!161008) b!303372))

(assert (= (and b!303372 res!161014) b!303370))

(declare-fun m!314733 () Bool)

(assert (=> b!303364 m!314733))

(declare-fun m!314735 () Bool)

(assert (=> b!303366 m!314735))

(assert (=> b!303366 m!314735))

(declare-fun m!314737 () Bool)

(assert (=> b!303366 m!314737))

(declare-fun m!314739 () Bool)

(assert (=> b!303370 m!314739))

(declare-fun m!314741 () Bool)

(assert (=> b!303371 m!314741))

(declare-fun m!314743 () Bool)

(assert (=> b!303365 m!314743))

(declare-fun m!314745 () Bool)

(assert (=> b!303369 m!314745))

(declare-fun m!314747 () Bool)

(assert (=> b!303372 m!314747))

(declare-fun m!314749 () Bool)

(assert (=> b!303367 m!314749))

(declare-fun m!314751 () Bool)

(assert (=> start!30322 m!314751))

(declare-fun m!314753 () Bool)

(assert (=> start!30322 m!314753))

(push 1)

(assert (not b!303369))

(assert (not b!303371))

(assert (not b!303365))

(assert (not b!303366))

(assert (not start!30322))

(assert (not b!303367))

(assert (not b!303372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

