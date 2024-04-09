; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86052 () Bool)

(assert start!86052)

(declare-fun b!996221 () Bool)

(declare-fun e!562141 () Bool)

(declare-fun e!562142 () Bool)

(assert (=> b!996221 (= e!562141 e!562142)))

(declare-fun res!666494 () Bool)

(assert (=> b!996221 (=> (not res!666494) (not e!562142))))

(declare-datatypes ((SeekEntryResult!9264 0))(
  ( (MissingZero!9264 (index!39426 (_ BitVec 32))) (Found!9264 (index!39427 (_ BitVec 32))) (Intermediate!9264 (undefined!10076 Bool) (index!39428 (_ BitVec 32)) (x!86893 (_ BitVec 32))) (Undefined!9264) (MissingVacant!9264 (index!39429 (_ BitVec 32))) )
))
(declare-fun lt!441164 () SeekEntryResult!9264)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996221 (= res!666494 (or (= lt!441164 (MissingVacant!9264 i!1194)) (= lt!441164 (MissingZero!9264 i!1194))))))

(declare-datatypes ((array!63009 0))(
  ( (array!63010 (arr!30332 (Array (_ BitVec 32) (_ BitVec 64))) (size!30835 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63009)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63009 (_ BitVec 32)) SeekEntryResult!9264)

(assert (=> b!996221 (= lt!441164 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996222 () Bool)

(declare-fun res!666493 () Bool)

(assert (=> b!996222 (=> (not res!666493) (not e!562141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996222 (= res!666493 (validKeyInArray!0 k0!2224))))

(declare-fun b!996223 () Bool)

(declare-fun res!666492 () Bool)

(assert (=> b!996223 (=> (not res!666492) (not e!562141))))

(declare-fun arrayContainsKey!0 (array!63009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996223 (= res!666492 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996224 () Bool)

(declare-fun res!666499 () Bool)

(assert (=> b!996224 (=> (not res!666499) (not e!562142))))

(declare-datatypes ((List!21134 0))(
  ( (Nil!21131) (Cons!21130 (h!22295 (_ BitVec 64)) (t!30143 List!21134)) )
))
(declare-fun arrayNoDuplicates!0 (array!63009 (_ BitVec 32) List!21134) Bool)

(assert (=> b!996224 (= res!666499 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21131))))

(declare-fun b!996225 () Bool)

(declare-fun res!666491 () Bool)

(assert (=> b!996225 (=> (not res!666491) (not e!562141))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996225 (= res!666491 (validKeyInArray!0 (select (arr!30332 a!3219) j!170)))))

(declare-fun b!996226 () Bool)

(assert (=> b!996226 (= e!562142 false)))

(declare-fun lt!441165 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996226 (= lt!441165 (toIndex!0 (select (arr!30332 a!3219) j!170) mask!3464))))

(declare-fun res!666498 () Bool)

(assert (=> start!86052 (=> (not res!666498) (not e!562141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86052 (= res!666498 (validMask!0 mask!3464))))

(assert (=> start!86052 e!562141))

(declare-fun array_inv!23322 (array!63009) Bool)

(assert (=> start!86052 (array_inv!23322 a!3219)))

(assert (=> start!86052 true))

(declare-fun b!996227 () Bool)

(declare-fun res!666497 () Bool)

(assert (=> b!996227 (=> (not res!666497) (not e!562142))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996227 (= res!666497 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30835 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30835 a!3219))))))

(declare-fun b!996228 () Bool)

(declare-fun res!666496 () Bool)

(assert (=> b!996228 (=> (not res!666496) (not e!562141))))

(assert (=> b!996228 (= res!666496 (and (= (size!30835 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30835 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30835 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996229 () Bool)

(declare-fun res!666495 () Bool)

(assert (=> b!996229 (=> (not res!666495) (not e!562142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63009 (_ BitVec 32)) Bool)

(assert (=> b!996229 (= res!666495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86052 res!666498) b!996228))

(assert (= (and b!996228 res!666496) b!996225))

(assert (= (and b!996225 res!666491) b!996222))

(assert (= (and b!996222 res!666493) b!996223))

(assert (= (and b!996223 res!666492) b!996221))

(assert (= (and b!996221 res!666494) b!996229))

(assert (= (and b!996229 res!666495) b!996224))

(assert (= (and b!996224 res!666499) b!996227))

(assert (= (and b!996227 res!666497) b!996226))

(declare-fun m!923477 () Bool)

(assert (=> b!996226 m!923477))

(assert (=> b!996226 m!923477))

(declare-fun m!923479 () Bool)

(assert (=> b!996226 m!923479))

(declare-fun m!923481 () Bool)

(assert (=> b!996223 m!923481))

(declare-fun m!923483 () Bool)

(assert (=> b!996222 m!923483))

(assert (=> b!996225 m!923477))

(assert (=> b!996225 m!923477))

(declare-fun m!923485 () Bool)

(assert (=> b!996225 m!923485))

(declare-fun m!923487 () Bool)

(assert (=> b!996229 m!923487))

(declare-fun m!923489 () Bool)

(assert (=> b!996224 m!923489))

(declare-fun m!923491 () Bool)

(assert (=> start!86052 m!923491))

(declare-fun m!923493 () Bool)

(assert (=> start!86052 m!923493))

(declare-fun m!923495 () Bool)

(assert (=> b!996221 m!923495))

(check-sat (not b!996226) (not b!996222) (not start!86052) (not b!996221) (not b!996223) (not b!996229) (not b!996224) (not b!996225))
(check-sat)
