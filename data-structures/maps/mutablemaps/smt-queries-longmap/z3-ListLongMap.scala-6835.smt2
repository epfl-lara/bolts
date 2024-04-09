; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86082 () Bool)

(assert start!86082)

(declare-fun res!666916 () Bool)

(declare-fun e!562276 () Bool)

(assert (=> start!86082 (=> (not res!666916) (not e!562276))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86082 (= res!666916 (validMask!0 mask!3464))))

(assert (=> start!86082 e!562276))

(declare-datatypes ((array!63039 0))(
  ( (array!63040 (arr!30347 (Array (_ BitVec 32) (_ BitVec 64))) (size!30850 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63039)

(declare-fun array_inv!23337 (array!63039) Bool)

(assert (=> start!86082 (array_inv!23337 a!3219)))

(assert (=> start!86082 true))

(declare-fun b!996640 () Bool)

(declare-fun res!666911 () Bool)

(declare-fun e!562277 () Bool)

(assert (=> b!996640 (=> (not res!666911) (not e!562277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63039 (_ BitVec 32)) Bool)

(assert (=> b!996640 (= res!666911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996641 () Bool)

(declare-fun res!666917 () Bool)

(assert (=> b!996641 (=> (not res!666917) (not e!562277))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9279 0))(
  ( (MissingZero!9279 (index!39486 (_ BitVec 32))) (Found!9279 (index!39487 (_ BitVec 32))) (Intermediate!9279 (undefined!10091 Bool) (index!39488 (_ BitVec 32)) (x!86948 (_ BitVec 32))) (Undefined!9279) (MissingVacant!9279 (index!39489 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63039 (_ BitVec 32)) SeekEntryResult!9279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996641 (= res!666917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30347 a!3219) j!170) mask!3464) (select (arr!30347 a!3219) j!170) a!3219 mask!3464) (Intermediate!9279 false resIndex!38 resX!38)))))

(declare-fun b!996642 () Bool)

(declare-fun res!666914 () Bool)

(assert (=> b!996642 (=> (not res!666914) (not e!562277))))

(declare-datatypes ((List!21149 0))(
  ( (Nil!21146) (Cons!21145 (h!22310 (_ BitVec 64)) (t!30158 List!21149)) )
))
(declare-fun arrayNoDuplicates!0 (array!63039 (_ BitVec 32) List!21149) Bool)

(assert (=> b!996642 (= res!666914 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21146))))

(declare-fun b!996643 () Bool)

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996643 (= e!562277 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!996644 () Bool)

(declare-fun res!666915 () Bool)

(assert (=> b!996644 (=> (not res!666915) (not e!562276))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996644 (= res!666915 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996645 () Bool)

(declare-fun res!666913 () Bool)

(assert (=> b!996645 (=> (not res!666913) (not e!562276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996645 (= res!666913 (validKeyInArray!0 k0!2224))))

(declare-fun b!996646 () Bool)

(declare-fun res!666910 () Bool)

(assert (=> b!996646 (=> (not res!666910) (not e!562276))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996646 (= res!666910 (and (= (size!30850 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30850 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30850 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996647 () Bool)

(declare-fun res!666912 () Bool)

(assert (=> b!996647 (=> (not res!666912) (not e!562277))))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!996647 (= res!666912 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30850 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30850 a!3219))))))

(declare-fun b!996648 () Bool)

(declare-fun res!666918 () Bool)

(assert (=> b!996648 (=> (not res!666918) (not e!562276))))

(assert (=> b!996648 (= res!666918 (validKeyInArray!0 (select (arr!30347 a!3219) j!170)))))

(declare-fun b!996649 () Bool)

(assert (=> b!996649 (= e!562276 e!562277)))

(declare-fun res!666919 () Bool)

(assert (=> b!996649 (=> (not res!666919) (not e!562277))))

(declare-fun lt!441240 () SeekEntryResult!9279)

(assert (=> b!996649 (= res!666919 (or (= lt!441240 (MissingVacant!9279 i!1194)) (= lt!441240 (MissingZero!9279 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63039 (_ BitVec 32)) SeekEntryResult!9279)

(assert (=> b!996649 (= lt!441240 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86082 res!666916) b!996646))

(assert (= (and b!996646 res!666910) b!996648))

(assert (= (and b!996648 res!666918) b!996645))

(assert (= (and b!996645 res!666913) b!996644))

(assert (= (and b!996644 res!666915) b!996649))

(assert (= (and b!996649 res!666919) b!996640))

(assert (= (and b!996640 res!666911) b!996642))

(assert (= (and b!996642 res!666914) b!996647))

(assert (= (and b!996647 res!666912) b!996641))

(assert (= (and b!996641 res!666917) b!996643))

(declare-fun m!923797 () Bool)

(assert (=> b!996649 m!923797))

(declare-fun m!923799 () Bool)

(assert (=> b!996645 m!923799))

(declare-fun m!923801 () Bool)

(assert (=> start!86082 m!923801))

(declare-fun m!923803 () Bool)

(assert (=> start!86082 m!923803))

(declare-fun m!923805 () Bool)

(assert (=> b!996641 m!923805))

(assert (=> b!996641 m!923805))

(declare-fun m!923807 () Bool)

(assert (=> b!996641 m!923807))

(assert (=> b!996641 m!923807))

(assert (=> b!996641 m!923805))

(declare-fun m!923809 () Bool)

(assert (=> b!996641 m!923809))

(declare-fun m!923811 () Bool)

(assert (=> b!996644 m!923811))

(declare-fun m!923813 () Bool)

(assert (=> b!996642 m!923813))

(assert (=> b!996648 m!923805))

(assert (=> b!996648 m!923805))

(declare-fun m!923815 () Bool)

(assert (=> b!996648 m!923815))

(declare-fun m!923817 () Bool)

(assert (=> b!996640 m!923817))

(check-sat (not b!996645) (not b!996644) (not b!996640) (not b!996641) (not b!996642) (not b!996649) (not start!86082) (not b!996648))
(check-sat)
