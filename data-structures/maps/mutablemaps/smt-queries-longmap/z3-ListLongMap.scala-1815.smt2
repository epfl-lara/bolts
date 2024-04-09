; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32708 () Bool)

(assert start!32708)

(declare-fun b!326598 () Bool)

(declare-fun res!179787 () Bool)

(declare-fun e!201025 () Bool)

(assert (=> b!326598 (=> (not res!179787) (not e!201025))))

(declare-datatypes ((array!16741 0))(
  ( (array!16742 (arr!7922 (Array (_ BitVec 32) (_ BitVec 64))) (size!8274 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16741)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326598 (= res!179787 (and (= (select (arr!7922 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8274 a!3305))))))

(declare-fun b!326599 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!326599 (= e!201025 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((Unit!10137 0))(
  ( (Unit!10138) )
))
(declare-fun lt!157358 () Unit!10137)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16741 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10137)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326599 (= lt!157358 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326600 () Bool)

(declare-fun res!179788 () Bool)

(declare-fun e!201023 () Bool)

(assert (=> b!326600 (=> (not res!179788) (not e!201023))))

(assert (=> b!326600 (= res!179788 (and (= (size!8274 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8274 a!3305))))))

(declare-fun b!326601 () Bool)

(declare-fun res!179791 () Bool)

(assert (=> b!326601 (=> (not res!179791) (not e!201023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326601 (= res!179791 (validKeyInArray!0 k0!2497))))

(declare-fun b!326602 () Bool)

(assert (=> b!326602 (= e!201023 e!201025)))

(declare-fun res!179796 () Bool)

(assert (=> b!326602 (=> (not res!179796) (not e!201025))))

(declare-datatypes ((SeekEntryResult!3064 0))(
  ( (MissingZero!3064 (index!14432 (_ BitVec 32))) (Found!3064 (index!14433 (_ BitVec 32))) (Intermediate!3064 (undefined!3876 Bool) (index!14434 (_ BitVec 32)) (x!32641 (_ BitVec 32))) (Undefined!3064) (MissingVacant!3064 (index!14435 (_ BitVec 32))) )
))
(declare-fun lt!157357 () SeekEntryResult!3064)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16741 (_ BitVec 32)) SeekEntryResult!3064)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326602 (= res!179796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157357))))

(assert (=> b!326602 (= lt!157357 (Intermediate!3064 false resIndex!58 resX!58))))

(declare-fun b!326603 () Bool)

(declare-fun res!179789 () Bool)

(assert (=> b!326603 (=> (not res!179789) (not e!201023))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16741 (_ BitVec 32)) SeekEntryResult!3064)

(assert (=> b!326603 (= res!179789 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3064 i!1250)))))

(declare-fun res!179790 () Bool)

(assert (=> start!32708 (=> (not res!179790) (not e!201023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32708 (= res!179790 (validMask!0 mask!3777))))

(assert (=> start!32708 e!201023))

(declare-fun array_inv!5876 (array!16741) Bool)

(assert (=> start!32708 (array_inv!5876 a!3305)))

(assert (=> start!32708 true))

(declare-fun b!326604 () Bool)

(declare-fun res!179792 () Bool)

(assert (=> b!326604 (=> (not res!179792) (not e!201025))))

(assert (=> b!326604 (= res!179792 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7922 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326605 () Bool)

(declare-fun res!179794 () Bool)

(assert (=> b!326605 (=> (not res!179794) (not e!201023))))

(declare-fun arrayContainsKey!0 (array!16741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326605 (= res!179794 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326606 () Bool)

(declare-fun res!179793 () Bool)

(assert (=> b!326606 (=> (not res!179793) (not e!201023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16741 (_ BitVec 32)) Bool)

(assert (=> b!326606 (= res!179793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326607 () Bool)

(declare-fun res!179795 () Bool)

(assert (=> b!326607 (=> (not res!179795) (not e!201025))))

(assert (=> b!326607 (= res!179795 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157357))))

(assert (= (and start!32708 res!179790) b!326600))

(assert (= (and b!326600 res!179788) b!326601))

(assert (= (and b!326601 res!179791) b!326605))

(assert (= (and b!326605 res!179794) b!326603))

(assert (= (and b!326603 res!179789) b!326606))

(assert (= (and b!326606 res!179793) b!326602))

(assert (= (and b!326602 res!179796) b!326598))

(assert (= (and b!326598 res!179787) b!326607))

(assert (= (and b!326607 res!179795) b!326604))

(assert (= (and b!326604 res!179792) b!326599))

(declare-fun m!333141 () Bool)

(assert (=> b!326601 m!333141))

(declare-fun m!333143 () Bool)

(assert (=> b!326599 m!333143))

(assert (=> b!326599 m!333143))

(declare-fun m!333145 () Bool)

(assert (=> b!326599 m!333145))

(declare-fun m!333147 () Bool)

(assert (=> b!326598 m!333147))

(declare-fun m!333149 () Bool)

(assert (=> b!326605 m!333149))

(declare-fun m!333151 () Bool)

(assert (=> start!32708 m!333151))

(declare-fun m!333153 () Bool)

(assert (=> start!32708 m!333153))

(declare-fun m!333155 () Bool)

(assert (=> b!326606 m!333155))

(declare-fun m!333157 () Bool)

(assert (=> b!326603 m!333157))

(declare-fun m!333159 () Bool)

(assert (=> b!326602 m!333159))

(assert (=> b!326602 m!333159))

(declare-fun m!333161 () Bool)

(assert (=> b!326602 m!333161))

(declare-fun m!333163 () Bool)

(assert (=> b!326604 m!333163))

(declare-fun m!333165 () Bool)

(assert (=> b!326607 m!333165))

(check-sat (not b!326603) (not b!326602) (not b!326606) (not b!326599) (not start!32708) (not b!326605) (not b!326607) (not b!326601))
(check-sat)
