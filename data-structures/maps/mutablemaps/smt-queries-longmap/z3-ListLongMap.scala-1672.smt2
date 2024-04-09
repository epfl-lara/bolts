; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30926 () Bool)

(assert start!30926)

(declare-fun b!310164 () Bool)

(declare-fun res!166780 () Bool)

(declare-fun e!193674 () Bool)

(assert (=> b!310164 (=> (not res!166780) (not e!193674))))

(declare-datatypes ((array!15826 0))(
  ( (array!15827 (arr!7493 (Array (_ BitVec 32) (_ BitVec 64))) (size!7845 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15826)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310164 (= res!166780 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310165 () Bool)

(declare-fun res!166783 () Bool)

(assert (=> b!310165 (=> (not res!166783) (not e!193674))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15826 (_ BitVec 32)) Bool)

(assert (=> b!310165 (= res!166783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun e!193675 () Bool)

(declare-fun b!310167 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310167 (= e!193675 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun e!193672 () Bool)

(assert (=> b!310167 e!193672))

(declare-fun res!166782 () Bool)

(assert (=> b!310167 (=> (not res!166782) (not e!193672))))

(declare-datatypes ((SeekEntryResult!2644 0))(
  ( (MissingZero!2644 (index!12752 (_ BitVec 32))) (Found!2644 (index!12753 (_ BitVec 32))) (Intermediate!2644 (undefined!3456 Bool) (index!12754 (_ BitVec 32)) (x!30948 (_ BitVec 32))) (Undefined!2644) (MissingVacant!2644 (index!12755 (_ BitVec 32))) )
))
(declare-fun lt!151887 () SeekEntryResult!2644)

(declare-fun lt!151889 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15826 (_ BitVec 32)) SeekEntryResult!2644)

(assert (=> b!310167 (= res!166782 (= lt!151887 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151889 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310167 (= lt!151889 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310168 () Bool)

(declare-fun res!166778 () Bool)

(assert (=> b!310168 (=> (not res!166778) (not e!193674))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15826 (_ BitVec 32)) SeekEntryResult!2644)

(assert (=> b!310168 (= res!166778 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2644 i!1240)))))

(declare-fun b!310169 () Bool)

(declare-fun e!193671 () Bool)

(assert (=> b!310169 (= e!193674 e!193671)))

(declare-fun res!166781 () Bool)

(assert (=> b!310169 (=> (not res!166781) (not e!193671))))

(declare-fun lt!151886 () SeekEntryResult!2644)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310169 (= res!166781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151886))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310169 (= lt!151886 (Intermediate!2644 false resIndex!52 resX!52))))

(declare-fun b!310170 () Bool)

(assert (=> b!310170 (= e!193671 e!193675)))

(declare-fun res!166776 () Bool)

(assert (=> b!310170 (=> (not res!166776) (not e!193675))))

(assert (=> b!310170 (= res!166776 (and (= lt!151887 lt!151886) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7493 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310170 (= lt!151887 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310171 () Bool)

(declare-fun res!166784 () Bool)

(assert (=> b!310171 (=> (not res!166784) (not e!193674))))

(assert (=> b!310171 (= res!166784 (and (= (size!7845 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7845 a!3293))))))

(declare-fun b!310172 () Bool)

(declare-fun lt!151888 () array!15826)

(assert (=> b!310172 (= e!193672 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151888 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151889 k0!2441 lt!151888 mask!3709)))))

(assert (=> b!310172 (= lt!151888 (array!15827 (store (arr!7493 a!3293) i!1240 k0!2441) (size!7845 a!3293)))))

(declare-fun b!310173 () Bool)

(declare-fun res!166785 () Bool)

(assert (=> b!310173 (=> (not res!166785) (not e!193674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310173 (= res!166785 (validKeyInArray!0 k0!2441))))

(declare-fun b!310166 () Bool)

(declare-fun res!166777 () Bool)

(assert (=> b!310166 (=> (not res!166777) (not e!193671))))

(assert (=> b!310166 (= res!166777 (and (= (select (arr!7493 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7845 a!3293))))))

(declare-fun res!166779 () Bool)

(assert (=> start!30926 (=> (not res!166779) (not e!193674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30926 (= res!166779 (validMask!0 mask!3709))))

(assert (=> start!30926 e!193674))

(declare-fun array_inv!5447 (array!15826) Bool)

(assert (=> start!30926 (array_inv!5447 a!3293)))

(assert (=> start!30926 true))

(assert (= (and start!30926 res!166779) b!310171))

(assert (= (and b!310171 res!166784) b!310173))

(assert (= (and b!310173 res!166785) b!310164))

(assert (= (and b!310164 res!166780) b!310168))

(assert (= (and b!310168 res!166778) b!310165))

(assert (= (and b!310165 res!166783) b!310169))

(assert (= (and b!310169 res!166781) b!310166))

(assert (= (and b!310166 res!166777) b!310170))

(assert (= (and b!310170 res!166776) b!310167))

(assert (= (and b!310167 res!166782) b!310172))

(declare-fun m!320109 () Bool)

(assert (=> b!310168 m!320109))

(declare-fun m!320111 () Bool)

(assert (=> b!310169 m!320111))

(assert (=> b!310169 m!320111))

(declare-fun m!320113 () Bool)

(assert (=> b!310169 m!320113))

(declare-fun m!320115 () Bool)

(assert (=> b!310166 m!320115))

(declare-fun m!320117 () Bool)

(assert (=> b!310165 m!320117))

(declare-fun m!320119 () Bool)

(assert (=> b!310173 m!320119))

(declare-fun m!320121 () Bool)

(assert (=> b!310172 m!320121))

(declare-fun m!320123 () Bool)

(assert (=> b!310172 m!320123))

(declare-fun m!320125 () Bool)

(assert (=> b!310172 m!320125))

(declare-fun m!320127 () Bool)

(assert (=> start!30926 m!320127))

(declare-fun m!320129 () Bool)

(assert (=> start!30926 m!320129))

(declare-fun m!320131 () Bool)

(assert (=> b!310170 m!320131))

(declare-fun m!320133 () Bool)

(assert (=> b!310170 m!320133))

(declare-fun m!320135 () Bool)

(assert (=> b!310164 m!320135))

(declare-fun m!320137 () Bool)

(assert (=> b!310167 m!320137))

(declare-fun m!320139 () Bool)

(assert (=> b!310167 m!320139))

(check-sat (not b!310172) (not b!310170) (not b!310167) (not b!310165) (not b!310169) (not b!310164) (not b!310168) (not start!30926) (not b!310173))
(check-sat)
