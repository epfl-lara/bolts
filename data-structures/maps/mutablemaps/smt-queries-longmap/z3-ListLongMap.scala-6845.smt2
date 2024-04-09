; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86250 () Bool)

(assert start!86250)

(declare-fun b!998089 () Bool)

(declare-fun res!668049 () Bool)

(declare-fun e!562918 () Bool)

(assert (=> b!998089 (=> (not res!668049) (not e!562918))))

(declare-datatypes ((array!63105 0))(
  ( (array!63106 (arr!30377 (Array (_ BitVec 32) (_ BitVec 64))) (size!30880 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63105)

(declare-datatypes ((List!21179 0))(
  ( (Nil!21176) (Cons!21175 (h!22346 (_ BitVec 64)) (t!30188 List!21179)) )
))
(declare-fun arrayNoDuplicates!0 (array!63105 (_ BitVec 32) List!21179) Bool)

(assert (=> b!998089 (= res!668049 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21176))))

(declare-fun b!998090 () Bool)

(declare-fun res!668050 () Bool)

(assert (=> b!998090 (=> (not res!668050) (not e!562918))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63105 (_ BitVec 32)) Bool)

(assert (=> b!998090 (= res!668050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998091 () Bool)

(declare-fun res!668042 () Bool)

(declare-fun e!562919 () Bool)

(assert (=> b!998091 (=> (not res!668042) (not e!562919))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998091 (= res!668042 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998092 () Bool)

(assert (=> b!998092 (= e!562919 e!562918)))

(declare-fun res!668048 () Bool)

(assert (=> b!998092 (=> (not res!668048) (not e!562918))))

(declare-datatypes ((SeekEntryResult!9309 0))(
  ( (MissingZero!9309 (index!39606 (_ BitVec 32))) (Found!9309 (index!39607 (_ BitVec 32))) (Intermediate!9309 (undefined!10121 Bool) (index!39608 (_ BitVec 32)) (x!87070 (_ BitVec 32))) (Undefined!9309) (MissingVacant!9309 (index!39609 (_ BitVec 32))) )
))
(declare-fun lt!441608 () SeekEntryResult!9309)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998092 (= res!668048 (or (= lt!441608 (MissingVacant!9309 i!1194)) (= lt!441608 (MissingZero!9309 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63105 (_ BitVec 32)) SeekEntryResult!9309)

(assert (=> b!998092 (= lt!441608 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!668041 () Bool)

(assert (=> start!86250 (=> (not res!668041) (not e!562919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86250 (= res!668041 (validMask!0 mask!3464))))

(assert (=> start!86250 e!562919))

(declare-fun array_inv!23367 (array!63105) Bool)

(assert (=> start!86250 (array_inv!23367 a!3219)))

(assert (=> start!86250 true))

(declare-fun b!998093 () Bool)

(declare-fun res!668045 () Bool)

(assert (=> b!998093 (=> (not res!668045) (not e!562919))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!998093 (= res!668045 (and (= (size!30880 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30880 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30880 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998094 () Bool)

(declare-fun res!668047 () Bool)

(assert (=> b!998094 (=> (not res!668047) (not e!562918))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998094 (= res!668047 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30880 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30880 a!3219))))))

(declare-fun b!998095 () Bool)

(declare-fun res!668046 () Bool)

(assert (=> b!998095 (=> (not res!668046) (not e!562919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998095 (= res!668046 (validKeyInArray!0 (select (arr!30377 a!3219) j!170)))))

(declare-fun b!998096 () Bool)

(assert (=> b!998096 (= e!562918 false)))

(declare-fun lt!441609 () SeekEntryResult!9309)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63105 (_ BitVec 32)) SeekEntryResult!9309)

(assert (=> b!998096 (= lt!441609 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30377 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998097 () Bool)

(declare-fun res!668044 () Bool)

(assert (=> b!998097 (=> (not res!668044) (not e!562918))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998097 (= res!668044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30377 a!3219) j!170) mask!3464) (select (arr!30377 a!3219) j!170) a!3219 mask!3464) (Intermediate!9309 false resIndex!38 resX!38)))))

(declare-fun b!998098 () Bool)

(declare-fun res!668043 () Bool)

(assert (=> b!998098 (=> (not res!668043) (not e!562919))))

(assert (=> b!998098 (= res!668043 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86250 res!668041) b!998093))

(assert (= (and b!998093 res!668045) b!998095))

(assert (= (and b!998095 res!668046) b!998098))

(assert (= (and b!998098 res!668043) b!998091))

(assert (= (and b!998091 res!668042) b!998092))

(assert (= (and b!998092 res!668048) b!998090))

(assert (= (and b!998090 res!668050) b!998089))

(assert (= (and b!998089 res!668049) b!998094))

(assert (= (and b!998094 res!668047) b!998097))

(assert (= (and b!998097 res!668044) b!998096))

(declare-fun m!924789 () Bool)

(assert (=> b!998095 m!924789))

(assert (=> b!998095 m!924789))

(declare-fun m!924791 () Bool)

(assert (=> b!998095 m!924791))

(declare-fun m!924793 () Bool)

(assert (=> b!998092 m!924793))

(declare-fun m!924795 () Bool)

(assert (=> b!998090 m!924795))

(assert (=> b!998096 m!924789))

(assert (=> b!998096 m!924789))

(declare-fun m!924797 () Bool)

(assert (=> b!998096 m!924797))

(declare-fun m!924799 () Bool)

(assert (=> b!998089 m!924799))

(assert (=> b!998097 m!924789))

(assert (=> b!998097 m!924789))

(declare-fun m!924801 () Bool)

(assert (=> b!998097 m!924801))

(assert (=> b!998097 m!924801))

(assert (=> b!998097 m!924789))

(declare-fun m!924803 () Bool)

(assert (=> b!998097 m!924803))

(declare-fun m!924805 () Bool)

(assert (=> b!998091 m!924805))

(declare-fun m!924807 () Bool)

(assert (=> start!86250 m!924807))

(declare-fun m!924809 () Bool)

(assert (=> start!86250 m!924809))

(declare-fun m!924811 () Bool)

(assert (=> b!998098 m!924811))

(check-sat (not b!998091) (not b!998096) (not b!998092) (not b!998095) (not b!998089) (not b!998090) (not b!998098) (not start!86250) (not b!998097))
(check-sat)
