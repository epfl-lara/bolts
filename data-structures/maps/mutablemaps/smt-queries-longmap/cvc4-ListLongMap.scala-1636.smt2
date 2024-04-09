; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30604 () Bool)

(assert start!30604)

(declare-fun b!306761 () Bool)

(declare-fun res!163685 () Bool)

(declare-fun e!192258 () Bool)

(assert (=> b!306761 (=> (not res!163685) (not e!192258))))

(declare-datatypes ((array!15606 0))(
  ( (array!15607 (arr!7386 (Array (_ BitVec 32) (_ BitVec 64))) (size!7738 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15606)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2537 0))(
  ( (MissingZero!2537 (index!12324 (_ BitVec 32))) (Found!2537 (index!12325 (_ BitVec 32))) (Intermediate!2537 (undefined!3349 Bool) (index!12326 (_ BitVec 32)) (x!30535 (_ BitVec 32))) (Undefined!2537) (MissingVacant!2537 (index!12327 (_ BitVec 32))) )
))
(declare-fun lt!151036 () SeekEntryResult!2537)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15606 (_ BitVec 32)) SeekEntryResult!2537)

(assert (=> b!306761 (= res!163685 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151036))))

(declare-fun b!306763 () Bool)

(assert (=> b!306763 (= e!192258 (not true))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306763 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9563 0))(
  ( (Unit!9564) )
))
(declare-fun lt!151037 () Unit!9563)

(declare-fun e!192257 () Unit!9563)

(assert (=> b!306763 (= lt!151037 e!192257)))

(declare-fun c!49145 () Bool)

(assert (=> b!306763 (= c!49145 (not (= resIndex!52 index!1781)))))

(declare-fun b!306764 () Bool)

(declare-fun res!163678 () Bool)

(assert (=> b!306764 (=> (not res!163678) (not e!192258))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306764 (= res!163678 (and (= (select (arr!7386 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7738 a!3293))))))

(declare-fun b!306765 () Bool)

(declare-fun e!192259 () Bool)

(assert (=> b!306765 (= e!192259 e!192258)))

(declare-fun res!163679 () Bool)

(assert (=> b!306765 (=> (not res!163679) (not e!192258))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306765 (= res!163679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151036))))

(assert (=> b!306765 (= lt!151036 (Intermediate!2537 false resIndex!52 resX!52))))

(declare-fun b!306766 () Bool)

(declare-fun res!163684 () Bool)

(assert (=> b!306766 (=> (not res!163684) (not e!192259))))

(declare-fun arrayContainsKey!0 (array!15606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306766 (= res!163684 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306767 () Bool)

(declare-fun e!192255 () Unit!9563)

(assert (=> b!306767 (= e!192257 e!192255)))

(declare-fun c!49144 () Bool)

(assert (=> b!306767 (= c!49144 (or (= (select (arr!7386 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7386 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306768 () Bool)

(declare-fun res!163677 () Bool)

(assert (=> b!306768 (=> (not res!163677) (not e!192259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15606 (_ BitVec 32)) Bool)

(assert (=> b!306768 (= res!163677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306769 () Bool)

(declare-fun res!163686 () Bool)

(assert (=> b!306769 (=> (not res!163686) (not e!192259))))

(assert (=> b!306769 (= res!163686 (and (= (size!7738 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7738 a!3293))))))

(declare-fun b!306770 () Bool)

(assert (=> b!306770 false))

(declare-fun lt!151035 () SeekEntryResult!2537)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306770 (= lt!151035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9565 () Unit!9563)

(assert (=> b!306770 (= e!192255 Unit!9565)))

(declare-fun b!306762 () Bool)

(declare-fun res!163681 () Bool)

(assert (=> b!306762 (=> (not res!163681) (not e!192259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306762 (= res!163681 (validKeyInArray!0 k!2441))))

(declare-fun res!163683 () Bool)

(assert (=> start!30604 (=> (not res!163683) (not e!192259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30604 (= res!163683 (validMask!0 mask!3709))))

(assert (=> start!30604 e!192259))

(declare-fun array_inv!5340 (array!15606) Bool)

(assert (=> start!30604 (array_inv!5340 a!3293)))

(assert (=> start!30604 true))

(declare-fun b!306771 () Bool)

(declare-fun Unit!9566 () Unit!9563)

(assert (=> b!306771 (= e!192257 Unit!9566)))

(declare-fun b!306772 () Bool)

(assert (=> b!306772 false))

(declare-fun Unit!9567 () Unit!9563)

(assert (=> b!306772 (= e!192255 Unit!9567)))

(declare-fun b!306773 () Bool)

(declare-fun res!163682 () Bool)

(assert (=> b!306773 (=> (not res!163682) (not e!192258))))

(assert (=> b!306773 (= res!163682 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7386 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306774 () Bool)

(declare-fun res!163680 () Bool)

(assert (=> b!306774 (=> (not res!163680) (not e!192259))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15606 (_ BitVec 32)) SeekEntryResult!2537)

(assert (=> b!306774 (= res!163680 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2537 i!1240)))))

(assert (= (and start!30604 res!163683) b!306769))

(assert (= (and b!306769 res!163686) b!306762))

(assert (= (and b!306762 res!163681) b!306766))

(assert (= (and b!306766 res!163684) b!306774))

(assert (= (and b!306774 res!163680) b!306768))

(assert (= (and b!306768 res!163677) b!306765))

(assert (= (and b!306765 res!163679) b!306764))

(assert (= (and b!306764 res!163678) b!306761))

(assert (= (and b!306761 res!163685) b!306773))

(assert (= (and b!306773 res!163682) b!306763))

(assert (= (and b!306763 c!49145) b!306767))

(assert (= (and b!306763 (not c!49145)) b!306771))

(assert (= (and b!306767 c!49144) b!306772))

(assert (= (and b!306767 (not c!49144)) b!306770))

(declare-fun m!317195 () Bool)

(assert (=> b!306764 m!317195))

(declare-fun m!317197 () Bool)

(assert (=> start!30604 m!317197))

(declare-fun m!317199 () Bool)

(assert (=> start!30604 m!317199))

(declare-fun m!317201 () Bool)

(assert (=> b!306770 m!317201))

(assert (=> b!306770 m!317201))

(declare-fun m!317203 () Bool)

(assert (=> b!306770 m!317203))

(declare-fun m!317205 () Bool)

(assert (=> b!306768 m!317205))

(declare-fun m!317207 () Bool)

(assert (=> b!306761 m!317207))

(declare-fun m!317209 () Bool)

(assert (=> b!306767 m!317209))

(declare-fun m!317211 () Bool)

(assert (=> b!306766 m!317211))

(declare-fun m!317213 () Bool)

(assert (=> b!306765 m!317213))

(assert (=> b!306765 m!317213))

(declare-fun m!317215 () Bool)

(assert (=> b!306765 m!317215))

(declare-fun m!317217 () Bool)

(assert (=> b!306762 m!317217))

(assert (=> b!306773 m!317209))

(declare-fun m!317219 () Bool)

(assert (=> b!306774 m!317219))

(push 1)

