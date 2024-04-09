; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32240 () Bool)

(assert start!32240)

(declare-fun b!320797 () Bool)

(declare-fun res!175080 () Bool)

(declare-fun e!198929 () Bool)

(assert (=> b!320797 (=> (not res!175080) (not e!198929))))

(declare-datatypes ((array!16426 0))(
  ( (array!16427 (arr!7769 (Array (_ BitVec 32) (_ BitVec 64))) (size!8121 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16426)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320797 (= res!175080 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320798 () Bool)

(declare-fun res!175081 () Bool)

(assert (=> b!320798 (=> (not res!175081) (not e!198929))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320798 (= res!175081 (and (= (size!8121 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8121 a!3305))))))

(declare-fun b!320799 () Bool)

(declare-fun e!198930 () Bool)

(assert (=> b!320799 (= e!198929 e!198930)))

(declare-fun res!175083 () Bool)

(assert (=> b!320799 (=> (not res!175083) (not e!198930))))

(declare-datatypes ((SeekEntryResult!2911 0))(
  ( (MissingZero!2911 (index!13820 (_ BitVec 32))) (Found!2911 (index!13821 (_ BitVec 32))) (Intermediate!2911 (undefined!3723 Bool) (index!13822 (_ BitVec 32)) (x!32053 (_ BitVec 32))) (Undefined!2911) (MissingVacant!2911 (index!13823 (_ BitVec 32))) )
))
(declare-fun lt!156104 () SeekEntryResult!2911)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16426 (_ BitVec 32)) SeekEntryResult!2911)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320799 (= res!175083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156104))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320799 (= lt!156104 (Intermediate!2911 false resIndex!58 resX!58))))

(declare-fun res!175076 () Bool)

(assert (=> start!32240 (=> (not res!175076) (not e!198929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32240 (= res!175076 (validMask!0 mask!3777))))

(assert (=> start!32240 e!198929))

(declare-fun array_inv!5723 (array!16426) Bool)

(assert (=> start!32240 (array_inv!5723 a!3305)))

(assert (=> start!32240 true))

(declare-fun b!320800 () Bool)

(declare-fun res!175077 () Bool)

(assert (=> b!320800 (=> (not res!175077) (not e!198929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320800 (= res!175077 (validKeyInArray!0 k0!2497))))

(declare-fun b!320801 () Bool)

(declare-fun res!175078 () Bool)

(assert (=> b!320801 (=> (not res!175078) (not e!198929))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16426 (_ BitVec 32)) SeekEntryResult!2911)

(assert (=> b!320801 (= res!175078 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2911 i!1250)))))

(declare-fun b!320802 () Bool)

(declare-fun res!175079 () Bool)

(assert (=> b!320802 (=> (not res!175079) (not e!198930))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320802 (= res!175079 (and (= (select (arr!7769 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8121 a!3305))))))

(declare-fun b!320803 () Bool)

(declare-fun res!175082 () Bool)

(assert (=> b!320803 (=> (not res!175082) (not e!198929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16426 (_ BitVec 32)) Bool)

(assert (=> b!320803 (= res!175082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320804 () Bool)

(declare-fun res!175075 () Bool)

(assert (=> b!320804 (=> (not res!175075) (not e!198930))))

(assert (=> b!320804 (= res!175075 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156104))))

(declare-fun b!320805 () Bool)

(assert (=> b!320805 (= e!198930 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7769 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7769 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7769 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(assert (= (and start!32240 res!175076) b!320798))

(assert (= (and b!320798 res!175081) b!320800))

(assert (= (and b!320800 res!175077) b!320797))

(assert (= (and b!320797 res!175080) b!320801))

(assert (= (and b!320801 res!175078) b!320803))

(assert (= (and b!320803 res!175082) b!320799))

(assert (= (and b!320799 res!175083) b!320802))

(assert (= (and b!320802 res!175079) b!320804))

(assert (= (and b!320804 res!175075) b!320805))

(declare-fun m!329063 () Bool)

(assert (=> b!320803 m!329063))

(declare-fun m!329065 () Bool)

(assert (=> start!32240 m!329065))

(declare-fun m!329067 () Bool)

(assert (=> start!32240 m!329067))

(declare-fun m!329069 () Bool)

(assert (=> b!320804 m!329069))

(declare-fun m!329071 () Bool)

(assert (=> b!320802 m!329071))

(declare-fun m!329073 () Bool)

(assert (=> b!320805 m!329073))

(declare-fun m!329075 () Bool)

(assert (=> b!320800 m!329075))

(declare-fun m!329077 () Bool)

(assert (=> b!320801 m!329077))

(declare-fun m!329079 () Bool)

(assert (=> b!320797 m!329079))

(declare-fun m!329081 () Bool)

(assert (=> b!320799 m!329081))

(assert (=> b!320799 m!329081))

(declare-fun m!329083 () Bool)

(assert (=> b!320799 m!329083))

(check-sat (not b!320797) (not b!320799) (not b!320800) (not b!320801) (not b!320803) (not start!32240) (not b!320804))
(check-sat)
