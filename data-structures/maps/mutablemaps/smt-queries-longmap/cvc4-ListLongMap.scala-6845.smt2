; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86252 () Bool)

(assert start!86252)

(declare-fun b!998119 () Bool)

(declare-fun res!668079 () Bool)

(declare-fun e!562926 () Bool)

(assert (=> b!998119 (=> (not res!668079) (not e!562926))))

(declare-datatypes ((array!63107 0))(
  ( (array!63108 (arr!30378 (Array (_ BitVec 32) (_ BitVec 64))) (size!30881 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63107)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998119 (= res!668079 (and (= (size!30881 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30881 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30881 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998120 () Bool)

(declare-fun res!668078 () Bool)

(declare-fun e!562928 () Bool)

(assert (=> b!998120 (=> (not res!668078) (not e!562928))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998120 (= res!668078 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30881 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30881 a!3219))))))

(declare-fun b!998121 () Bool)

(declare-fun res!668073 () Bool)

(assert (=> b!998121 (=> (not res!668073) (not e!562928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63107 (_ BitVec 32)) Bool)

(assert (=> b!998121 (= res!668073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998122 () Bool)

(declare-fun res!668080 () Bool)

(assert (=> b!998122 (=> (not res!668080) (not e!562926))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998122 (= res!668080 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998123 () Bool)

(assert (=> b!998123 (= e!562928 false)))

(declare-datatypes ((SeekEntryResult!9310 0))(
  ( (MissingZero!9310 (index!39610 (_ BitVec 32))) (Found!9310 (index!39611 (_ BitVec 32))) (Intermediate!9310 (undefined!10122 Bool) (index!39612 (_ BitVec 32)) (x!87071 (_ BitVec 32))) (Undefined!9310) (MissingVacant!9310 (index!39613 (_ BitVec 32))) )
))
(declare-fun lt!441614 () SeekEntryResult!9310)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63107 (_ BitVec 32)) SeekEntryResult!9310)

(assert (=> b!998123 (= lt!441614 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30378 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998124 () Bool)

(declare-fun res!668071 () Bool)

(assert (=> b!998124 (=> (not res!668071) (not e!562928))))

(declare-datatypes ((List!21180 0))(
  ( (Nil!21177) (Cons!21176 (h!22347 (_ BitVec 64)) (t!30189 List!21180)) )
))
(declare-fun arrayNoDuplicates!0 (array!63107 (_ BitVec 32) List!21180) Bool)

(assert (=> b!998124 (= res!668071 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21177))))

(declare-fun b!998125 () Bool)

(declare-fun res!668077 () Bool)

(assert (=> b!998125 (=> (not res!668077) (not e!562926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998125 (= res!668077 (validKeyInArray!0 (select (arr!30378 a!3219) j!170)))))

(declare-fun b!998126 () Bool)

(declare-fun res!668075 () Bool)

(assert (=> b!998126 (=> (not res!668075) (not e!562928))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998126 (= res!668075 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30378 a!3219) j!170) mask!3464) (select (arr!30378 a!3219) j!170) a!3219 mask!3464) (Intermediate!9310 false resIndex!38 resX!38)))))

(declare-fun res!668074 () Bool)

(assert (=> start!86252 (=> (not res!668074) (not e!562926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86252 (= res!668074 (validMask!0 mask!3464))))

(assert (=> start!86252 e!562926))

(declare-fun array_inv!23368 (array!63107) Bool)

(assert (=> start!86252 (array_inv!23368 a!3219)))

(assert (=> start!86252 true))

(declare-fun b!998127 () Bool)

(declare-fun res!668076 () Bool)

(assert (=> b!998127 (=> (not res!668076) (not e!562926))))

(assert (=> b!998127 (= res!668076 (validKeyInArray!0 k!2224))))

(declare-fun b!998128 () Bool)

(assert (=> b!998128 (= e!562926 e!562928)))

(declare-fun res!668072 () Bool)

(assert (=> b!998128 (=> (not res!668072) (not e!562928))))

(declare-fun lt!441615 () SeekEntryResult!9310)

(assert (=> b!998128 (= res!668072 (or (= lt!441615 (MissingVacant!9310 i!1194)) (= lt!441615 (MissingZero!9310 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63107 (_ BitVec 32)) SeekEntryResult!9310)

(assert (=> b!998128 (= lt!441615 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86252 res!668074) b!998119))

(assert (= (and b!998119 res!668079) b!998125))

(assert (= (and b!998125 res!668077) b!998127))

(assert (= (and b!998127 res!668076) b!998122))

(assert (= (and b!998122 res!668080) b!998128))

(assert (= (and b!998128 res!668072) b!998121))

(assert (= (and b!998121 res!668073) b!998124))

(assert (= (and b!998124 res!668071) b!998120))

(assert (= (and b!998120 res!668078) b!998126))

(assert (= (and b!998126 res!668075) b!998123))

(declare-fun m!924813 () Bool)

(assert (=> b!998128 m!924813))

(declare-fun m!924815 () Bool)

(assert (=> b!998124 m!924815))

(declare-fun m!924817 () Bool)

(assert (=> b!998123 m!924817))

(assert (=> b!998123 m!924817))

(declare-fun m!924819 () Bool)

(assert (=> b!998123 m!924819))

(declare-fun m!924821 () Bool)

(assert (=> start!86252 m!924821))

(declare-fun m!924823 () Bool)

(assert (=> start!86252 m!924823))

(declare-fun m!924825 () Bool)

(assert (=> b!998127 m!924825))

(declare-fun m!924827 () Bool)

(assert (=> b!998122 m!924827))

(declare-fun m!924829 () Bool)

(assert (=> b!998121 m!924829))

(assert (=> b!998126 m!924817))

(assert (=> b!998126 m!924817))

(declare-fun m!924831 () Bool)

(assert (=> b!998126 m!924831))

(assert (=> b!998126 m!924831))

(assert (=> b!998126 m!924817))

(declare-fun m!924833 () Bool)

(assert (=> b!998126 m!924833))

(assert (=> b!998125 m!924817))

(assert (=> b!998125 m!924817))

(declare-fun m!924835 () Bool)

(assert (=> b!998125 m!924835))

(push 1)

(assert (not b!998123))

(assert (not b!998122))

(assert (not b!998121))

(assert (not b!998126))

(assert (not b!998124))

(assert (not b!998128))

(assert (not b!998127))

