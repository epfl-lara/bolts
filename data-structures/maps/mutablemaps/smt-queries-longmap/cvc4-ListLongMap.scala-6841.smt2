; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86174 () Bool)

(assert start!86174)

(declare-fun b!997488 () Bool)

(declare-fun e!562641 () Bool)

(declare-fun e!562643 () Bool)

(assert (=> b!997488 (= e!562641 e!562643)))

(declare-fun res!667608 () Bool)

(assert (=> b!997488 (=> (not res!667608) (not e!562643))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((array!63080 0))(
  ( (array!63081 (arr!30366 (Array (_ BitVec 32) (_ BitVec 64))) (size!30869 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63080)

(declare-datatypes ((SeekEntryResult!9298 0))(
  ( (MissingZero!9298 (index!39562 (_ BitVec 32))) (Found!9298 (index!39563 (_ BitVec 32))) (Intermediate!9298 (undefined!10110 Bool) (index!39564 (_ BitVec 32)) (x!87021 (_ BitVec 32))) (Undefined!9298) (MissingVacant!9298 (index!39565 (_ BitVec 32))) )
))
(declare-fun lt!441437 () SeekEntryResult!9298)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63080 (_ BitVec 32)) SeekEntryResult!9298)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997488 (= res!667608 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30366 a!3219) j!170) mask!3464) (select (arr!30366 a!3219) j!170) a!3219 mask!3464) lt!441437))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997488 (= lt!441437 (Intermediate!9298 false resIndex!38 resX!38))))

(declare-fun b!997489 () Bool)

(declare-fun res!667600 () Bool)

(assert (=> b!997489 (=> (not res!667600) (not e!562641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63080 (_ BitVec 32)) Bool)

(assert (=> b!997489 (= res!667600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997490 () Bool)

(declare-fun res!667606 () Bool)

(declare-fun e!562642 () Bool)

(assert (=> b!997490 (=> (not res!667606) (not e!562642))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997490 (= res!667606 (and (= (size!30869 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30869 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30869 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997491 () Bool)

(declare-fun res!667603 () Bool)

(assert (=> b!997491 (=> (not res!667603) (not e!562643))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!997491 (= res!667603 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30366 a!3219) j!170) a!3219 mask!3464) lt!441437))))

(declare-fun b!997492 () Bool)

(declare-fun res!667609 () Bool)

(assert (=> b!997492 (=> (not res!667609) (not e!562641))))

(assert (=> b!997492 (= res!667609 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30869 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30869 a!3219))))))

(declare-fun b!997493 () Bool)

(declare-fun res!667599 () Bool)

(assert (=> b!997493 (=> (not res!667599) (not e!562642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997493 (= res!667599 (validKeyInArray!0 (select (arr!30366 a!3219) j!170)))))

(declare-fun b!997494 () Bool)

(assert (=> b!997494 (= e!562642 e!562641)))

(declare-fun res!667604 () Bool)

(assert (=> b!997494 (=> (not res!667604) (not e!562641))))

(declare-fun lt!441438 () SeekEntryResult!9298)

(assert (=> b!997494 (= res!667604 (or (= lt!441438 (MissingVacant!9298 i!1194)) (= lt!441438 (MissingZero!9298 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63080 (_ BitVec 32)) SeekEntryResult!9298)

(assert (=> b!997494 (= lt!441438 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997495 () Bool)

(declare-fun res!667607 () Bool)

(assert (=> b!997495 (=> (not res!667607) (not e!562642))))

(assert (=> b!997495 (= res!667607 (validKeyInArray!0 k!2224))))

(declare-fun res!667601 () Bool)

(assert (=> start!86174 (=> (not res!667601) (not e!562642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86174 (= res!667601 (validMask!0 mask!3464))))

(assert (=> start!86174 e!562642))

(declare-fun array_inv!23356 (array!63080) Bool)

(assert (=> start!86174 (array_inv!23356 a!3219)))

(assert (=> start!86174 true))

(declare-fun b!997496 () Bool)

(declare-fun res!667602 () Bool)

(assert (=> b!997496 (=> (not res!667602) (not e!562641))))

(declare-datatypes ((List!21168 0))(
  ( (Nil!21165) (Cons!21164 (h!22332 (_ BitVec 64)) (t!30177 List!21168)) )
))
(declare-fun arrayNoDuplicates!0 (array!63080 (_ BitVec 32) List!21168) Bool)

(assert (=> b!997496 (= res!667602 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21165))))

(declare-fun b!997497 () Bool)

(assert (=> b!997497 (= e!562643 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!997498 () Bool)

(declare-fun res!667605 () Bool)

(assert (=> b!997498 (=> (not res!667605) (not e!562642))))

(declare-fun arrayContainsKey!0 (array!63080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997498 (= res!667605 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86174 res!667601) b!997490))

(assert (= (and b!997490 res!667606) b!997493))

(assert (= (and b!997493 res!667599) b!997495))

(assert (= (and b!997495 res!667607) b!997498))

(assert (= (and b!997498 res!667605) b!997494))

(assert (= (and b!997494 res!667604) b!997489))

(assert (= (and b!997489 res!667600) b!997496))

(assert (= (and b!997496 res!667602) b!997492))

(assert (= (and b!997492 res!667609) b!997488))

(assert (= (and b!997488 res!667608) b!997491))

(assert (= (and b!997491 res!667603) b!997497))

(declare-fun m!924381 () Bool)

(assert (=> start!86174 m!924381))

(declare-fun m!924383 () Bool)

(assert (=> start!86174 m!924383))

(declare-fun m!924385 () Bool)

(assert (=> b!997493 m!924385))

(assert (=> b!997493 m!924385))

(declare-fun m!924387 () Bool)

(assert (=> b!997493 m!924387))

(assert (=> b!997488 m!924385))

(assert (=> b!997488 m!924385))

(declare-fun m!924389 () Bool)

(assert (=> b!997488 m!924389))

(assert (=> b!997488 m!924389))

(assert (=> b!997488 m!924385))

(declare-fun m!924391 () Bool)

(assert (=> b!997488 m!924391))

(declare-fun m!924393 () Bool)

(assert (=> b!997489 m!924393))

(assert (=> b!997491 m!924385))

(assert (=> b!997491 m!924385))

(declare-fun m!924395 () Bool)

(assert (=> b!997491 m!924395))

(declare-fun m!924397 () Bool)

(assert (=> b!997495 m!924397))

(declare-fun m!924399 () Bool)

(assert (=> b!997494 m!924399))

(declare-fun m!924401 () Bool)

(assert (=> b!997496 m!924401))

(declare-fun m!924403 () Bool)

(assert (=> b!997498 m!924403))

(push 1)

(assert (not b!997493))

(assert (not b!997491))

(assert (not b!997496))

(assert (not b!997498))

(assert (not b!997489))

(assert (not b!997488))

(assert (not start!86174))

(assert (not b!997494))

(assert (not b!997495))

