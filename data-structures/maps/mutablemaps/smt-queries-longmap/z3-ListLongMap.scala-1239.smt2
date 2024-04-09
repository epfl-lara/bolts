; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26004 () Bool)

(assert start!26004)

(declare-fun b!268162 () Bool)

(declare-fun res!132479 () Bool)

(declare-fun e!173252 () Bool)

(assert (=> b!268162 (=> (not res!132479) (not e!173252))))

(declare-datatypes ((array!13090 0))(
  ( (array!13091 (arr!6194 (Array (_ BitVec 32) (_ BitVec 64))) (size!6546 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13090)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268162 (= res!132479 (and (= (size!6546 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6546 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6546 a!3325))))))

(declare-fun res!132482 () Bool)

(assert (=> start!26004 (=> (not res!132482) (not e!173252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26004 (= res!132482 (validMask!0 mask!3868))))

(assert (=> start!26004 e!173252))

(declare-fun array_inv!4148 (array!13090) Bool)

(assert (=> start!26004 (array_inv!4148 a!3325)))

(assert (=> start!26004 true))

(declare-fun b!268163 () Bool)

(declare-fun e!173253 () Bool)

(assert (=> b!268163 (= e!173252 e!173253)))

(declare-fun res!132483 () Bool)

(assert (=> b!268163 (=> (not res!132483) (not e!173253))))

(declare-datatypes ((SeekEntryResult!1363 0))(
  ( (MissingZero!1363 (index!7622 (_ BitVec 32))) (Found!1363 (index!7623 (_ BitVec 32))) (Intermediate!1363 (undefined!2175 Bool) (index!7624 (_ BitVec 32)) (x!25960 (_ BitVec 32))) (Undefined!1363) (MissingVacant!1363 (index!7625 (_ BitVec 32))) )
))
(declare-fun lt!134834 () SeekEntryResult!1363)

(assert (=> b!268163 (= res!132483 (or (= lt!134834 (MissingZero!1363 i!1267)) (= lt!134834 (MissingVacant!1363 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13090 (_ BitVec 32)) SeekEntryResult!1363)

(assert (=> b!268163 (= lt!134834 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268164 () Bool)

(assert (=> b!268164 (= e!173253 false)))

(declare-fun lt!134833 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13090 (_ BitVec 32)) Bool)

(assert (=> b!268164 (= lt!134833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268165 () Bool)

(declare-fun res!132480 () Bool)

(assert (=> b!268165 (=> (not res!132480) (not e!173252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268165 (= res!132480 (validKeyInArray!0 k0!2581))))

(declare-fun b!268166 () Bool)

(declare-fun res!132481 () Bool)

(assert (=> b!268166 (=> (not res!132481) (not e!173252))))

(declare-fun arrayContainsKey!0 (array!13090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268166 (= res!132481 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268167 () Bool)

(declare-fun res!132478 () Bool)

(assert (=> b!268167 (=> (not res!132478) (not e!173252))))

(declare-datatypes ((List!4023 0))(
  ( (Nil!4020) (Cons!4019 (h!4686 (_ BitVec 64)) (t!9113 List!4023)) )
))
(declare-fun arrayNoDuplicates!0 (array!13090 (_ BitVec 32) List!4023) Bool)

(assert (=> b!268167 (= res!132478 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4020))))

(assert (= (and start!26004 res!132482) b!268162))

(assert (= (and b!268162 res!132479) b!268165))

(assert (= (and b!268165 res!132480) b!268167))

(assert (= (and b!268167 res!132478) b!268166))

(assert (= (and b!268166 res!132481) b!268163))

(assert (= (and b!268163 res!132483) b!268164))

(declare-fun m!284391 () Bool)

(assert (=> b!268163 m!284391))

(declare-fun m!284393 () Bool)

(assert (=> b!268167 m!284393))

(declare-fun m!284395 () Bool)

(assert (=> b!268166 m!284395))

(declare-fun m!284397 () Bool)

(assert (=> b!268164 m!284397))

(declare-fun m!284399 () Bool)

(assert (=> b!268165 m!284399))

(declare-fun m!284401 () Bool)

(assert (=> start!26004 m!284401))

(declare-fun m!284403 () Bool)

(assert (=> start!26004 m!284403))

(check-sat (not b!268165) (not b!268166) (not b!268167) (not b!268163) (not start!26004) (not b!268164))
(check-sat)
