; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86094 () Bool)

(assert start!86094)

(declare-fun b!996815 () Bool)

(declare-fun res!667091 () Bool)

(declare-fun e!562329 () Bool)

(assert (=> b!996815 (=> (not res!667091) (not e!562329))))

(declare-datatypes ((array!63051 0))(
  ( (array!63052 (arr!30353 (Array (_ BitVec 32) (_ BitVec 64))) (size!30856 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63051)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996815 (= res!667091 (and (= (size!30856 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30856 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30856 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996816 () Bool)

(declare-fun res!667087 () Bool)

(declare-fun e!562331 () Bool)

(assert (=> b!996816 (=> (not res!667087) (not e!562331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63051 (_ BitVec 32)) Bool)

(assert (=> b!996816 (= res!667087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996817 () Bool)

(declare-fun res!667088 () Bool)

(assert (=> b!996817 (=> (not res!667088) (not e!562329))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996817 (= res!667088 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996818 () Bool)

(assert (=> b!996818 (= e!562331 false)))

(declare-datatypes ((SeekEntryResult!9285 0))(
  ( (MissingZero!9285 (index!39510 (_ BitVec 32))) (Found!9285 (index!39511 (_ BitVec 32))) (Intermediate!9285 (undefined!10097 Bool) (index!39512 (_ BitVec 32)) (x!86970 (_ BitVec 32))) (Undefined!9285) (MissingVacant!9285 (index!39513 (_ BitVec 32))) )
))
(declare-fun lt!441263 () SeekEntryResult!9285)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63051 (_ BitVec 32)) SeekEntryResult!9285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996818 (= lt!441263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30353 a!3219) j!170) mask!3464) (select (arr!30353 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996819 () Bool)

(declare-fun res!667089 () Bool)

(assert (=> b!996819 (=> (not res!667089) (not e!562331))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996819 (= res!667089 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30856 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30856 a!3219))))))

(declare-fun b!996820 () Bool)

(declare-fun res!667085 () Bool)

(assert (=> b!996820 (=> (not res!667085) (not e!562331))))

(declare-datatypes ((List!21155 0))(
  ( (Nil!21152) (Cons!21151 (h!22316 (_ BitVec 64)) (t!30164 List!21155)) )
))
(declare-fun arrayNoDuplicates!0 (array!63051 (_ BitVec 32) List!21155) Bool)

(assert (=> b!996820 (= res!667085 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21152))))

(declare-fun res!667093 () Bool)

(assert (=> start!86094 (=> (not res!667093) (not e!562329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86094 (= res!667093 (validMask!0 mask!3464))))

(assert (=> start!86094 e!562329))

(declare-fun array_inv!23343 (array!63051) Bool)

(assert (=> start!86094 (array_inv!23343 a!3219)))

(assert (=> start!86094 true))

(declare-fun b!996821 () Bool)

(declare-fun res!667086 () Bool)

(assert (=> b!996821 (=> (not res!667086) (not e!562329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996821 (= res!667086 (validKeyInArray!0 (select (arr!30353 a!3219) j!170)))))

(declare-fun b!996822 () Bool)

(declare-fun res!667090 () Bool)

(assert (=> b!996822 (=> (not res!667090) (not e!562329))))

(assert (=> b!996822 (= res!667090 (validKeyInArray!0 k0!2224))))

(declare-fun b!996823 () Bool)

(assert (=> b!996823 (= e!562329 e!562331)))

(declare-fun res!667092 () Bool)

(assert (=> b!996823 (=> (not res!667092) (not e!562331))))

(declare-fun lt!441264 () SeekEntryResult!9285)

(assert (=> b!996823 (= res!667092 (or (= lt!441264 (MissingVacant!9285 i!1194)) (= lt!441264 (MissingZero!9285 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63051 (_ BitVec 32)) SeekEntryResult!9285)

(assert (=> b!996823 (= lt!441264 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86094 res!667093) b!996815))

(assert (= (and b!996815 res!667091) b!996821))

(assert (= (and b!996821 res!667086) b!996822))

(assert (= (and b!996822 res!667090) b!996817))

(assert (= (and b!996817 res!667088) b!996823))

(assert (= (and b!996823 res!667092) b!996816))

(assert (= (and b!996816 res!667087) b!996820))

(assert (= (and b!996820 res!667085) b!996819))

(assert (= (and b!996819 res!667089) b!996818))

(declare-fun m!923929 () Bool)

(assert (=> b!996817 m!923929))

(declare-fun m!923931 () Bool)

(assert (=> start!86094 m!923931))

(declare-fun m!923933 () Bool)

(assert (=> start!86094 m!923933))

(declare-fun m!923935 () Bool)

(assert (=> b!996816 m!923935))

(declare-fun m!923937 () Bool)

(assert (=> b!996820 m!923937))

(declare-fun m!923939 () Bool)

(assert (=> b!996818 m!923939))

(assert (=> b!996818 m!923939))

(declare-fun m!923941 () Bool)

(assert (=> b!996818 m!923941))

(assert (=> b!996818 m!923941))

(assert (=> b!996818 m!923939))

(declare-fun m!923943 () Bool)

(assert (=> b!996818 m!923943))

(declare-fun m!923945 () Bool)

(assert (=> b!996822 m!923945))

(declare-fun m!923947 () Bool)

(assert (=> b!996823 m!923947))

(assert (=> b!996821 m!923939))

(assert (=> b!996821 m!923939))

(declare-fun m!923949 () Bool)

(assert (=> b!996821 m!923949))

(check-sat (not b!996822) (not b!996820) (not b!996817) (not b!996818) (not b!996816) (not b!996823) (not b!996821) (not start!86094))
(check-sat)
