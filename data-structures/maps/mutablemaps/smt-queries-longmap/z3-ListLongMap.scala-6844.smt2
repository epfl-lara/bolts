; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86244 () Bool)

(assert start!86244)

(declare-fun b!997999 () Bool)

(declare-fun res!667953 () Bool)

(declare-fun e!562892 () Bool)

(assert (=> b!997999 (=> (not res!667953) (not e!562892))))

(declare-datatypes ((array!63099 0))(
  ( (array!63100 (arr!30374 (Array (_ BitVec 32) (_ BitVec 64))) (size!30877 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63099)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997999 (= res!667953 (validKeyInArray!0 (select (arr!30374 a!3219) j!170)))))

(declare-fun b!998000 () Bool)

(declare-fun res!667955 () Bool)

(assert (=> b!998000 (=> (not res!667955) (not e!562892))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998000 (= res!667955 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998001 () Bool)

(declare-fun res!667954 () Bool)

(declare-fun e!562890 () Bool)

(assert (=> b!998001 (=> (not res!667954) (not e!562890))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9306 0))(
  ( (MissingZero!9306 (index!39594 (_ BitVec 32))) (Found!9306 (index!39595 (_ BitVec 32))) (Intermediate!9306 (undefined!10118 Bool) (index!39596 (_ BitVec 32)) (x!87059 (_ BitVec 32))) (Undefined!9306) (MissingVacant!9306 (index!39597 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63099 (_ BitVec 32)) SeekEntryResult!9306)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998001 (= res!667954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30374 a!3219) j!170) mask!3464) (select (arr!30374 a!3219) j!170) a!3219 mask!3464) (Intermediate!9306 false resIndex!38 resX!38)))))

(declare-fun b!998002 () Bool)

(assert (=> b!998002 (= e!562892 e!562890)))

(declare-fun res!667957 () Bool)

(assert (=> b!998002 (=> (not res!667957) (not e!562890))))

(declare-fun lt!441591 () SeekEntryResult!9306)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998002 (= res!667957 (or (= lt!441591 (MissingVacant!9306 i!1194)) (= lt!441591 (MissingZero!9306 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63099 (_ BitVec 32)) SeekEntryResult!9306)

(assert (=> b!998002 (= lt!441591 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998003 () Bool)

(declare-fun res!667952 () Bool)

(assert (=> b!998003 (=> (not res!667952) (not e!562892))))

(assert (=> b!998003 (= res!667952 (validKeyInArray!0 k0!2224))))

(declare-fun b!998004 () Bool)

(declare-fun res!667960 () Bool)

(assert (=> b!998004 (=> (not res!667960) (not e!562890))))

(declare-datatypes ((List!21176 0))(
  ( (Nil!21173) (Cons!21172 (h!22343 (_ BitVec 64)) (t!30185 List!21176)) )
))
(declare-fun arrayNoDuplicates!0 (array!63099 (_ BitVec 32) List!21176) Bool)

(assert (=> b!998004 (= res!667960 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21173))))

(declare-fun b!998005 () Bool)

(declare-fun res!667958 () Bool)

(assert (=> b!998005 (=> (not res!667958) (not e!562890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63099 (_ BitVec 32)) Bool)

(assert (=> b!998005 (= res!667958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667956 () Bool)

(assert (=> start!86244 (=> (not res!667956) (not e!562892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86244 (= res!667956 (validMask!0 mask!3464))))

(assert (=> start!86244 e!562892))

(declare-fun array_inv!23364 (array!63099) Bool)

(assert (=> start!86244 (array_inv!23364 a!3219)))

(assert (=> start!86244 true))

(declare-fun b!998006 () Bool)

(declare-fun res!667951 () Bool)

(assert (=> b!998006 (=> (not res!667951) (not e!562890))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!998006 (= res!667951 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30877 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30877 a!3219))))))

(declare-fun b!998007 () Bool)

(assert (=> b!998007 (= e!562890 false)))

(declare-fun lt!441590 () SeekEntryResult!9306)

(assert (=> b!998007 (= lt!441590 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30374 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998008 () Bool)

(declare-fun res!667959 () Bool)

(assert (=> b!998008 (=> (not res!667959) (not e!562892))))

(assert (=> b!998008 (= res!667959 (and (= (size!30877 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30877 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30877 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86244 res!667956) b!998008))

(assert (= (and b!998008 res!667959) b!997999))

(assert (= (and b!997999 res!667953) b!998003))

(assert (= (and b!998003 res!667952) b!998000))

(assert (= (and b!998000 res!667955) b!998002))

(assert (= (and b!998002 res!667957) b!998005))

(assert (= (and b!998005 res!667958) b!998004))

(assert (= (and b!998004 res!667960) b!998006))

(assert (= (and b!998006 res!667951) b!998001))

(assert (= (and b!998001 res!667954) b!998007))

(declare-fun m!924717 () Bool)

(assert (=> b!998000 m!924717))

(declare-fun m!924719 () Bool)

(assert (=> b!998004 m!924719))

(declare-fun m!924721 () Bool)

(assert (=> b!998005 m!924721))

(declare-fun m!924723 () Bool)

(assert (=> b!998001 m!924723))

(assert (=> b!998001 m!924723))

(declare-fun m!924725 () Bool)

(assert (=> b!998001 m!924725))

(assert (=> b!998001 m!924725))

(assert (=> b!998001 m!924723))

(declare-fun m!924727 () Bool)

(assert (=> b!998001 m!924727))

(declare-fun m!924729 () Bool)

(assert (=> start!86244 m!924729))

(declare-fun m!924731 () Bool)

(assert (=> start!86244 m!924731))

(assert (=> b!998007 m!924723))

(assert (=> b!998007 m!924723))

(declare-fun m!924733 () Bool)

(assert (=> b!998007 m!924733))

(declare-fun m!924735 () Bool)

(assert (=> b!998003 m!924735))

(assert (=> b!997999 m!924723))

(assert (=> b!997999 m!924723))

(declare-fun m!924737 () Bool)

(assert (=> b!997999 m!924737))

(declare-fun m!924739 () Bool)

(assert (=> b!998002 m!924739))

(check-sat (not start!86244) (not b!998002) (not b!998001) (not b!998003) (not b!998007) (not b!998000) (not b!997999) (not b!998005) (not b!998004))
