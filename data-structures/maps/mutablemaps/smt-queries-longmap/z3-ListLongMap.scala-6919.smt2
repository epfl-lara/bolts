; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86964 () Bool)

(assert start!86964)

(declare-fun b!1008225 () Bool)

(declare-fun res!677280 () Bool)

(declare-fun e!567346 () Bool)

(assert (=> b!1008225 (=> (not res!677280) (not e!567346))))

(declare-datatypes ((array!63564 0))(
  ( (array!63565 (arr!30599 (Array (_ BitVec 32) (_ BitVec 64))) (size!31102 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63564)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008225 (= res!677280 (validKeyInArray!0 (select (arr!30599 a!3219) j!170)))))

(declare-fun b!1008226 () Bool)

(declare-fun res!677287 () Bool)

(declare-fun e!567350 () Bool)

(assert (=> b!1008226 (=> (not res!677287) (not e!567350))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445603 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9531 0))(
  ( (MissingZero!9531 (index!40494 (_ BitVec 32))) (Found!9531 (index!40495 (_ BitVec 32))) (Intermediate!9531 (undefined!10343 Bool) (index!40496 (_ BitVec 32)) (x!87914 (_ BitVec 32))) (Undefined!9531) (MissingVacant!9531 (index!40497 (_ BitVec 32))) )
))
(declare-fun lt!445608 () SeekEntryResult!9531)

(declare-fun lt!445604 () array!63564)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63564 (_ BitVec 32)) SeekEntryResult!9531)

(assert (=> b!1008226 (= res!677287 (not (= lt!445608 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445603 lt!445604 mask!3464))))))

(declare-fun b!1008227 () Bool)

(declare-fun res!677274 () Bool)

(assert (=> b!1008227 (=> (not res!677274) (not e!567350))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008227 (= res!677274 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008228 () Bool)

(assert (=> b!1008228 (= e!567350 false)))

(declare-fun lt!445605 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008228 (= lt!445605 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008230 () Bool)

(declare-fun res!677286 () Bool)

(assert (=> b!1008230 (=> (not res!677286) (not e!567346))))

(assert (=> b!1008230 (= res!677286 (and (= (size!31102 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31102 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31102 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008231 () Bool)

(declare-fun e!567348 () Bool)

(assert (=> b!1008231 (= e!567348 e!567350)))

(declare-fun res!677279 () Bool)

(assert (=> b!1008231 (=> (not res!677279) (not e!567350))))

(declare-fun lt!445606 () SeekEntryResult!9531)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008231 (= res!677279 (not (= lt!445606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445603 mask!3464) lt!445603 lt!445604 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1008231 (= lt!445603 (select (store (arr!30599 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008231 (= lt!445604 (array!63565 (store (arr!30599 a!3219) i!1194 k0!2224) (size!31102 a!3219)))))

(declare-fun b!1008232 () Bool)

(declare-fun res!677275 () Bool)

(declare-fun e!567345 () Bool)

(assert (=> b!1008232 (=> (not res!677275) (not e!567345))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008232 (= res!677275 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31102 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31102 a!3219))))))

(declare-fun b!1008233 () Bool)

(declare-fun e!567349 () Bool)

(assert (=> b!1008233 (= e!567349 e!567348)))

(declare-fun res!677284 () Bool)

(assert (=> b!1008233 (=> (not res!677284) (not e!567348))))

(declare-fun lt!445607 () SeekEntryResult!9531)

(assert (=> b!1008233 (= res!677284 (= lt!445608 lt!445607))))

(assert (=> b!1008233 (= lt!445608 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30599 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008234 () Bool)

(assert (=> b!1008234 (= e!567346 e!567345)))

(declare-fun res!677277 () Bool)

(assert (=> b!1008234 (=> (not res!677277) (not e!567345))))

(declare-fun lt!445602 () SeekEntryResult!9531)

(assert (=> b!1008234 (= res!677277 (or (= lt!445602 (MissingVacant!9531 i!1194)) (= lt!445602 (MissingZero!9531 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63564 (_ BitVec 32)) SeekEntryResult!9531)

(assert (=> b!1008234 (= lt!445602 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008235 () Bool)

(assert (=> b!1008235 (= e!567345 e!567349)))

(declare-fun res!677281 () Bool)

(assert (=> b!1008235 (=> (not res!677281) (not e!567349))))

(assert (=> b!1008235 (= res!677281 (= lt!445606 lt!445607))))

(assert (=> b!1008235 (= lt!445607 (Intermediate!9531 false resIndex!38 resX!38))))

(assert (=> b!1008235 (= lt!445606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30599 a!3219) j!170) mask!3464) (select (arr!30599 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008236 () Bool)

(declare-fun res!677283 () Bool)

(assert (=> b!1008236 (=> (not res!677283) (not e!567345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63564 (_ BitVec 32)) Bool)

(assert (=> b!1008236 (= res!677283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!677278 () Bool)

(assert (=> start!86964 (=> (not res!677278) (not e!567346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86964 (= res!677278 (validMask!0 mask!3464))))

(assert (=> start!86964 e!567346))

(declare-fun array_inv!23589 (array!63564) Bool)

(assert (=> start!86964 (array_inv!23589 a!3219)))

(assert (=> start!86964 true))

(declare-fun b!1008229 () Bool)

(declare-fun res!677276 () Bool)

(assert (=> b!1008229 (=> (not res!677276) (not e!567346))))

(declare-fun arrayContainsKey!0 (array!63564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008229 (= res!677276 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008237 () Bool)

(declare-fun res!677282 () Bool)

(assert (=> b!1008237 (=> (not res!677282) (not e!567345))))

(declare-datatypes ((List!21401 0))(
  ( (Nil!21398) (Cons!21397 (h!22583 (_ BitVec 64)) (t!30410 List!21401)) )
))
(declare-fun arrayNoDuplicates!0 (array!63564 (_ BitVec 32) List!21401) Bool)

(assert (=> b!1008237 (= res!677282 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21398))))

(declare-fun b!1008238 () Bool)

(declare-fun res!677285 () Bool)

(assert (=> b!1008238 (=> (not res!677285) (not e!567346))))

(assert (=> b!1008238 (= res!677285 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86964 res!677278) b!1008230))

(assert (= (and b!1008230 res!677286) b!1008225))

(assert (= (and b!1008225 res!677280) b!1008238))

(assert (= (and b!1008238 res!677285) b!1008229))

(assert (= (and b!1008229 res!677276) b!1008234))

(assert (= (and b!1008234 res!677277) b!1008236))

(assert (= (and b!1008236 res!677283) b!1008237))

(assert (= (and b!1008237 res!677282) b!1008232))

(assert (= (and b!1008232 res!677275) b!1008235))

(assert (= (and b!1008235 res!677281) b!1008233))

(assert (= (and b!1008233 res!677284) b!1008231))

(assert (= (and b!1008231 res!677279) b!1008226))

(assert (= (and b!1008226 res!677287) b!1008227))

(assert (= (and b!1008227 res!677274) b!1008228))

(declare-fun m!933099 () Bool)

(assert (=> b!1008229 m!933099))

(declare-fun m!933101 () Bool)

(assert (=> b!1008234 m!933101))

(declare-fun m!933103 () Bool)

(assert (=> b!1008233 m!933103))

(assert (=> b!1008233 m!933103))

(declare-fun m!933105 () Bool)

(assert (=> b!1008233 m!933105))

(declare-fun m!933107 () Bool)

(assert (=> b!1008236 m!933107))

(assert (=> b!1008235 m!933103))

(assert (=> b!1008235 m!933103))

(declare-fun m!933109 () Bool)

(assert (=> b!1008235 m!933109))

(assert (=> b!1008235 m!933109))

(assert (=> b!1008235 m!933103))

(declare-fun m!933111 () Bool)

(assert (=> b!1008235 m!933111))

(declare-fun m!933113 () Bool)

(assert (=> b!1008226 m!933113))

(assert (=> b!1008225 m!933103))

(assert (=> b!1008225 m!933103))

(declare-fun m!933115 () Bool)

(assert (=> b!1008225 m!933115))

(declare-fun m!933117 () Bool)

(assert (=> b!1008238 m!933117))

(declare-fun m!933119 () Bool)

(assert (=> b!1008228 m!933119))

(declare-fun m!933121 () Bool)

(assert (=> b!1008237 m!933121))

(declare-fun m!933123 () Bool)

(assert (=> b!1008231 m!933123))

(assert (=> b!1008231 m!933123))

(declare-fun m!933125 () Bool)

(assert (=> b!1008231 m!933125))

(declare-fun m!933127 () Bool)

(assert (=> b!1008231 m!933127))

(declare-fun m!933129 () Bool)

(assert (=> b!1008231 m!933129))

(declare-fun m!933131 () Bool)

(assert (=> start!86964 m!933131))

(declare-fun m!933133 () Bool)

(assert (=> start!86964 m!933133))

(check-sat (not b!1008229) (not b!1008226) (not b!1008236) (not start!86964) (not b!1008233) (not b!1008234) (not b!1008237) (not b!1008231) (not b!1008238) (not b!1008225) (not b!1008235) (not b!1008228))
(check-sat)
