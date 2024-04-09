; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86088 () Bool)

(assert start!86088)

(declare-fun b!996730 () Bool)

(declare-fun e!562304 () Bool)

(declare-fun e!562302 () Bool)

(assert (=> b!996730 (= e!562304 e!562302)))

(declare-fun res!667002 () Bool)

(assert (=> b!996730 (=> (not res!667002) (not e!562302))))

(declare-datatypes ((SeekEntryResult!9282 0))(
  ( (MissingZero!9282 (index!39498 (_ BitVec 32))) (Found!9282 (index!39499 (_ BitVec 32))) (Intermediate!9282 (undefined!10094 Bool) (index!39500 (_ BitVec 32)) (x!86959 (_ BitVec 32))) (Undefined!9282) (MissingVacant!9282 (index!39501 (_ BitVec 32))) )
))
(declare-fun lt!441249 () SeekEntryResult!9282)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996730 (= res!667002 (or (= lt!441249 (MissingVacant!9282 i!1194)) (= lt!441249 (MissingZero!9282 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-datatypes ((array!63045 0))(
  ( (array!63046 (arr!30350 (Array (_ BitVec 32) (_ BitVec 64))) (size!30853 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63045)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63045 (_ BitVec 32)) SeekEntryResult!9282)

(assert (=> b!996730 (= lt!441249 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!667008 () Bool)

(assert (=> start!86088 (=> (not res!667008) (not e!562304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86088 (= res!667008 (validMask!0 mask!3464))))

(assert (=> start!86088 e!562304))

(declare-fun array_inv!23340 (array!63045) Bool)

(assert (=> start!86088 (array_inv!23340 a!3219)))

(assert (=> start!86088 true))

(declare-fun b!996731 () Bool)

(declare-fun res!667007 () Bool)

(assert (=> b!996731 (=> (not res!667007) (not e!562304))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996731 (= res!667007 (validKeyInArray!0 (select (arr!30350 a!3219) j!170)))))

(declare-fun b!996732 () Bool)

(declare-fun res!667003 () Bool)

(assert (=> b!996732 (=> (not res!667003) (not e!562302))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63045 (_ BitVec 32)) SeekEntryResult!9282)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996732 (= res!667003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30350 a!3219) j!170) mask!3464) (select (arr!30350 a!3219) j!170) a!3219 mask!3464) (Intermediate!9282 false resIndex!38 resX!38)))))

(declare-fun b!996733 () Bool)

(declare-fun res!667009 () Bool)

(assert (=> b!996733 (=> (not res!667009) (not e!562302))))

(declare-datatypes ((List!21152 0))(
  ( (Nil!21149) (Cons!21148 (h!22313 (_ BitVec 64)) (t!30161 List!21152)) )
))
(declare-fun arrayNoDuplicates!0 (array!63045 (_ BitVec 32) List!21152) Bool)

(assert (=> b!996733 (= res!667009 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21149))))

(declare-fun b!996734 () Bool)

(declare-fun res!667000 () Bool)

(assert (=> b!996734 (=> (not res!667000) (not e!562302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63045 (_ BitVec 32)) Bool)

(assert (=> b!996734 (= res!667000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996735 () Bool)

(declare-fun res!667001 () Bool)

(assert (=> b!996735 (=> (not res!667001) (not e!562302))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996735 (= res!667001 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30853 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30853 a!3219))))))

(declare-fun b!996736 () Bool)

(declare-fun res!667005 () Bool)

(assert (=> b!996736 (=> (not res!667005) (not e!562304))))

(declare-fun arrayContainsKey!0 (array!63045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996736 (= res!667005 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996737 () Bool)

(declare-fun res!667006 () Bool)

(assert (=> b!996737 (=> (not res!667006) (not e!562304))))

(assert (=> b!996737 (= res!667006 (validKeyInArray!0 k0!2224))))

(declare-fun b!996738 () Bool)

(declare-fun res!667004 () Bool)

(assert (=> b!996738 (=> (not res!667004) (not e!562304))))

(assert (=> b!996738 (= res!667004 (and (= (size!30853 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30853 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30853 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996739 () Bool)

(assert (=> b!996739 (= e!562302 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(assert (= (and start!86088 res!667008) b!996738))

(assert (= (and b!996738 res!667004) b!996731))

(assert (= (and b!996731 res!667007) b!996737))

(assert (= (and b!996737 res!667006) b!996736))

(assert (= (and b!996736 res!667005) b!996730))

(assert (= (and b!996730 res!667002) b!996734))

(assert (= (and b!996734 res!667000) b!996733))

(assert (= (and b!996733 res!667009) b!996735))

(assert (= (and b!996735 res!667001) b!996732))

(assert (= (and b!996732 res!667003) b!996739))

(declare-fun m!923863 () Bool)

(assert (=> b!996734 m!923863))

(declare-fun m!923865 () Bool)

(assert (=> b!996731 m!923865))

(assert (=> b!996731 m!923865))

(declare-fun m!923867 () Bool)

(assert (=> b!996731 m!923867))

(declare-fun m!923869 () Bool)

(assert (=> b!996730 m!923869))

(declare-fun m!923871 () Bool)

(assert (=> start!86088 m!923871))

(declare-fun m!923873 () Bool)

(assert (=> start!86088 m!923873))

(assert (=> b!996732 m!923865))

(assert (=> b!996732 m!923865))

(declare-fun m!923875 () Bool)

(assert (=> b!996732 m!923875))

(assert (=> b!996732 m!923875))

(assert (=> b!996732 m!923865))

(declare-fun m!923877 () Bool)

(assert (=> b!996732 m!923877))

(declare-fun m!923879 () Bool)

(assert (=> b!996737 m!923879))

(declare-fun m!923881 () Bool)

(assert (=> b!996733 m!923881))

(declare-fun m!923883 () Bool)

(assert (=> b!996736 m!923883))

(check-sat (not b!996733) (not b!996734) (not b!996737) (not start!86088) (not b!996732) (not b!996736) (not b!996731) (not b!996730))
(check-sat)
