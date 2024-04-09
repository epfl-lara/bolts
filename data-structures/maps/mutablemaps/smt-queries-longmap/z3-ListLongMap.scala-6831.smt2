; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86058 () Bool)

(assert start!86058)

(declare-fun b!996302 () Bool)

(declare-fun res!666575 () Bool)

(declare-fun e!562169 () Bool)

(assert (=> b!996302 (=> (not res!666575) (not e!562169))))

(declare-datatypes ((array!63015 0))(
  ( (array!63016 (arr!30335 (Array (_ BitVec 32) (_ BitVec 64))) (size!30838 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63015)

(declare-datatypes ((List!21137 0))(
  ( (Nil!21134) (Cons!21133 (h!22298 (_ BitVec 64)) (t!30146 List!21137)) )
))
(declare-fun arrayNoDuplicates!0 (array!63015 (_ BitVec 32) List!21137) Bool)

(assert (=> b!996302 (= res!666575 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21134))))

(declare-fun res!666572 () Bool)

(declare-fun e!562167 () Bool)

(assert (=> start!86058 (=> (not res!666572) (not e!562167))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86058 (= res!666572 (validMask!0 mask!3464))))

(assert (=> start!86058 e!562167))

(declare-fun array_inv!23325 (array!63015) Bool)

(assert (=> start!86058 (array_inv!23325 a!3219)))

(assert (=> start!86058 true))

(declare-fun b!996303 () Bool)

(declare-fun res!666580 () Bool)

(assert (=> b!996303 (=> (not res!666580) (not e!562169))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996303 (= res!666580 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30838 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30838 a!3219))))))

(declare-fun b!996304 () Bool)

(assert (=> b!996304 (= e!562167 e!562169)))

(declare-fun res!666577 () Bool)

(assert (=> b!996304 (=> (not res!666577) (not e!562169))))

(declare-datatypes ((SeekEntryResult!9267 0))(
  ( (MissingZero!9267 (index!39438 (_ BitVec 32))) (Found!9267 (index!39439 (_ BitVec 32))) (Intermediate!9267 (undefined!10079 Bool) (index!39440 (_ BitVec 32)) (x!86904 (_ BitVec 32))) (Undefined!9267) (MissingVacant!9267 (index!39441 (_ BitVec 32))) )
))
(declare-fun lt!441183 () SeekEntryResult!9267)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996304 (= res!666577 (or (= lt!441183 (MissingVacant!9267 i!1194)) (= lt!441183 (MissingZero!9267 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63015 (_ BitVec 32)) SeekEntryResult!9267)

(assert (=> b!996304 (= lt!441183 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996305 () Bool)

(declare-fun res!666576 () Bool)

(assert (=> b!996305 (=> (not res!666576) (not e!562169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63015 (_ BitVec 32)) Bool)

(assert (=> b!996305 (= res!666576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996306 () Bool)

(declare-fun res!666574 () Bool)

(assert (=> b!996306 (=> (not res!666574) (not e!562167))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996306 (= res!666574 (and (= (size!30838 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30838 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30838 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996307 () Bool)

(assert (=> b!996307 (= e!562169 false)))

(declare-fun lt!441182 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996307 (= lt!441182 (toIndex!0 (select (arr!30335 a!3219) j!170) mask!3464))))

(declare-fun b!996308 () Bool)

(declare-fun res!666578 () Bool)

(assert (=> b!996308 (=> (not res!666578) (not e!562167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996308 (= res!666578 (validKeyInArray!0 k0!2224))))

(declare-fun b!996309 () Bool)

(declare-fun res!666573 () Bool)

(assert (=> b!996309 (=> (not res!666573) (not e!562167))))

(declare-fun arrayContainsKey!0 (array!63015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996309 (= res!666573 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996310 () Bool)

(declare-fun res!666579 () Bool)

(assert (=> b!996310 (=> (not res!666579) (not e!562167))))

(assert (=> b!996310 (= res!666579 (validKeyInArray!0 (select (arr!30335 a!3219) j!170)))))

(assert (= (and start!86058 res!666572) b!996306))

(assert (= (and b!996306 res!666574) b!996310))

(assert (= (and b!996310 res!666579) b!996308))

(assert (= (and b!996308 res!666578) b!996309))

(assert (= (and b!996309 res!666573) b!996304))

(assert (= (and b!996304 res!666577) b!996305))

(assert (= (and b!996305 res!666576) b!996302))

(assert (= (and b!996302 res!666575) b!996303))

(assert (= (and b!996303 res!666580) b!996307))

(declare-fun m!923537 () Bool)

(assert (=> start!86058 m!923537))

(declare-fun m!923539 () Bool)

(assert (=> start!86058 m!923539))

(declare-fun m!923541 () Bool)

(assert (=> b!996302 m!923541))

(declare-fun m!923543 () Bool)

(assert (=> b!996304 m!923543))

(declare-fun m!923545 () Bool)

(assert (=> b!996308 m!923545))

(declare-fun m!923547 () Bool)

(assert (=> b!996307 m!923547))

(assert (=> b!996307 m!923547))

(declare-fun m!923549 () Bool)

(assert (=> b!996307 m!923549))

(assert (=> b!996310 m!923547))

(assert (=> b!996310 m!923547))

(declare-fun m!923551 () Bool)

(assert (=> b!996310 m!923551))

(declare-fun m!923553 () Bool)

(assert (=> b!996309 m!923553))

(declare-fun m!923555 () Bool)

(assert (=> b!996305 m!923555))

(check-sat (not b!996307) (not b!996304) (not b!996308) (not b!996302) (not b!996305) (not b!996310) (not start!86058) (not b!996309))
(check-sat)
