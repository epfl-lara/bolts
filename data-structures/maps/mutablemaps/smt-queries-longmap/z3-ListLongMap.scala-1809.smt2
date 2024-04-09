; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32672 () Bool)

(assert start!32672)

(declare-fun res!179250 () Bool)

(declare-fun e!200862 () Bool)

(assert (=> start!32672 (=> (not res!179250) (not e!200862))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32672 (= res!179250 (validMask!0 mask!3777))))

(assert (=> start!32672 e!200862))

(declare-datatypes ((array!16705 0))(
  ( (array!16706 (arr!7904 (Array (_ BitVec 32) (_ BitVec 64))) (size!8256 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16705)

(declare-fun array_inv!5858 (array!16705) Bool)

(assert (=> start!32672 (array_inv!5858 a!3305)))

(assert (=> start!32672 true))

(declare-fun b!326058 () Bool)

(declare-fun res!179256 () Bool)

(declare-fun e!200861 () Bool)

(assert (=> b!326058 (=> (not res!179256) (not e!200861))))

(declare-datatypes ((SeekEntryResult!3046 0))(
  ( (MissingZero!3046 (index!14360 (_ BitVec 32))) (Found!3046 (index!14361 (_ BitVec 32))) (Intermediate!3046 (undefined!3858 Bool) (index!14362 (_ BitVec 32)) (x!32575 (_ BitVec 32))) (Undefined!3046) (MissingVacant!3046 (index!14363 (_ BitVec 32))) )
))
(declare-fun lt!157250 () SeekEntryResult!3046)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16705 (_ BitVec 32)) SeekEntryResult!3046)

(assert (=> b!326058 (= res!179256 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157250))))

(declare-fun b!326059 () Bool)

(assert (=> b!326059 (= e!200862 e!200861)))

(declare-fun res!179247 () Bool)

(assert (=> b!326059 (=> (not res!179247) (not e!200861))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326059 (= res!179247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157250))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326059 (= lt!157250 (Intermediate!3046 false resIndex!58 resX!58))))

(declare-fun b!326060 () Bool)

(declare-fun res!179249 () Bool)

(assert (=> b!326060 (=> (not res!179249) (not e!200862))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326060 (= res!179249 (and (= (size!8256 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8256 a!3305))))))

(declare-fun b!326061 () Bool)

(declare-fun res!179254 () Bool)

(assert (=> b!326061 (=> (not res!179254) (not e!200862))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16705 (_ BitVec 32)) SeekEntryResult!3046)

(assert (=> b!326061 (= res!179254 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3046 i!1250)))))

(declare-fun b!326062 () Bool)

(declare-fun res!179252 () Bool)

(assert (=> b!326062 (=> (not res!179252) (not e!200861))))

(assert (=> b!326062 (= res!179252 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7904 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326063 () Bool)

(declare-fun res!179248 () Bool)

(assert (=> b!326063 (=> (not res!179248) (not e!200862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326063 (= res!179248 (validKeyInArray!0 k0!2497))))

(declare-fun b!326064 () Bool)

(declare-fun res!179255 () Bool)

(assert (=> b!326064 (=> (not res!179255) (not e!200862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16705 (_ BitVec 32)) Bool)

(assert (=> b!326064 (= res!179255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326065 () Bool)

(declare-fun res!179251 () Bool)

(assert (=> b!326065 (=> (not res!179251) (not e!200861))))

(assert (=> b!326065 (= res!179251 (and (= (select (arr!7904 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8256 a!3305))))))

(declare-fun b!326066 () Bool)

(declare-fun res!179253 () Bool)

(assert (=> b!326066 (=> (not res!179253) (not e!200862))))

(declare-fun arrayContainsKey!0 (array!16705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326066 (= res!179253 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326067 () Bool)

(assert (=> b!326067 (= e!200861 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10101 0))(
  ( (Unit!10102) )
))
(declare-fun lt!157249 () Unit!10101)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16705 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10101)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326067 (= lt!157249 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(assert (= (and start!32672 res!179250) b!326060))

(assert (= (and b!326060 res!179249) b!326063))

(assert (= (and b!326063 res!179248) b!326066))

(assert (= (and b!326066 res!179253) b!326061))

(assert (= (and b!326061 res!179254) b!326064))

(assert (= (and b!326064 res!179255) b!326059))

(assert (= (and b!326059 res!179247) b!326065))

(assert (= (and b!326065 res!179251) b!326058))

(assert (= (and b!326058 res!179256) b!326062))

(assert (= (and b!326062 res!179252) b!326067))

(declare-fun m!332673 () Bool)

(assert (=> start!32672 m!332673))

(declare-fun m!332675 () Bool)

(assert (=> start!32672 m!332675))

(declare-fun m!332677 () Bool)

(assert (=> b!326067 m!332677))

(assert (=> b!326067 m!332677))

(declare-fun m!332679 () Bool)

(assert (=> b!326067 m!332679))

(declare-fun m!332681 () Bool)

(assert (=> b!326066 m!332681))

(declare-fun m!332683 () Bool)

(assert (=> b!326059 m!332683))

(assert (=> b!326059 m!332683))

(declare-fun m!332685 () Bool)

(assert (=> b!326059 m!332685))

(declare-fun m!332687 () Bool)

(assert (=> b!326062 m!332687))

(declare-fun m!332689 () Bool)

(assert (=> b!326064 m!332689))

(declare-fun m!332691 () Bool)

(assert (=> b!326058 m!332691))

(declare-fun m!332693 () Bool)

(assert (=> b!326061 m!332693))

(declare-fun m!332695 () Bool)

(assert (=> b!326065 m!332695))

(declare-fun m!332697 () Bool)

(assert (=> b!326063 m!332697))

(check-sat (not start!32672) (not b!326061) (not b!326067) (not b!326064) (not b!326063) (not b!326059) (not b!326058) (not b!326066))
(check-sat)
