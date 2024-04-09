; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86060 () Bool)

(assert start!86060)

(declare-fun b!996329 () Bool)

(declare-fun res!666600 () Bool)

(declare-fun e!562176 () Bool)

(assert (=> b!996329 (=> (not res!666600) (not e!562176))))

(declare-datatypes ((array!63017 0))(
  ( (array!63018 (arr!30336 (Array (_ BitVec 32) (_ BitVec 64))) (size!30839 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63017)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996329 (= res!666600 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996330 () Bool)

(declare-fun res!666605 () Bool)

(assert (=> b!996330 (=> (not res!666605) (not e!562176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996330 (= res!666605 (validKeyInArray!0 k!2224))))

(declare-fun b!996331 () Bool)

(declare-fun e!562178 () Bool)

(assert (=> b!996331 (= e!562178 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441189 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996331 (= lt!441189 (toIndex!0 (select (arr!30336 a!3219) j!170) mask!3464))))

(declare-fun b!996332 () Bool)

(assert (=> b!996332 (= e!562176 e!562178)))

(declare-fun res!666603 () Bool)

(assert (=> b!996332 (=> (not res!666603) (not e!562178))))

(declare-datatypes ((SeekEntryResult!9268 0))(
  ( (MissingZero!9268 (index!39442 (_ BitVec 32))) (Found!9268 (index!39443 (_ BitVec 32))) (Intermediate!9268 (undefined!10080 Bool) (index!39444 (_ BitVec 32)) (x!86905 (_ BitVec 32))) (Undefined!9268) (MissingVacant!9268 (index!39445 (_ BitVec 32))) )
))
(declare-fun lt!441188 () SeekEntryResult!9268)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996332 (= res!666603 (or (= lt!441188 (MissingVacant!9268 i!1194)) (= lt!441188 (MissingZero!9268 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63017 (_ BitVec 32)) SeekEntryResult!9268)

(assert (=> b!996332 (= lt!441188 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!666602 () Bool)

(assert (=> start!86060 (=> (not res!666602) (not e!562176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86060 (= res!666602 (validMask!0 mask!3464))))

(assert (=> start!86060 e!562176))

(declare-fun array_inv!23326 (array!63017) Bool)

(assert (=> start!86060 (array_inv!23326 a!3219)))

(assert (=> start!86060 true))

(declare-fun b!996333 () Bool)

(declare-fun res!666606 () Bool)

(assert (=> b!996333 (=> (not res!666606) (not e!562176))))

(assert (=> b!996333 (= res!666606 (and (= (size!30839 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30839 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30839 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996334 () Bool)

(declare-fun res!666599 () Bool)

(assert (=> b!996334 (=> (not res!666599) (not e!562178))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996334 (= res!666599 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30839 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30839 a!3219))))))

(declare-fun b!996335 () Bool)

(declare-fun res!666601 () Bool)

(assert (=> b!996335 (=> (not res!666601) (not e!562178))))

(declare-datatypes ((List!21138 0))(
  ( (Nil!21135) (Cons!21134 (h!22299 (_ BitVec 64)) (t!30147 List!21138)) )
))
(declare-fun arrayNoDuplicates!0 (array!63017 (_ BitVec 32) List!21138) Bool)

(assert (=> b!996335 (= res!666601 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21135))))

(declare-fun b!996336 () Bool)

(declare-fun res!666604 () Bool)

(assert (=> b!996336 (=> (not res!666604) (not e!562176))))

(assert (=> b!996336 (= res!666604 (validKeyInArray!0 (select (arr!30336 a!3219) j!170)))))

(declare-fun b!996337 () Bool)

(declare-fun res!666607 () Bool)

(assert (=> b!996337 (=> (not res!666607) (not e!562178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63017 (_ BitVec 32)) Bool)

(assert (=> b!996337 (= res!666607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86060 res!666602) b!996333))

(assert (= (and b!996333 res!666606) b!996336))

(assert (= (and b!996336 res!666604) b!996330))

(assert (= (and b!996330 res!666605) b!996329))

(assert (= (and b!996329 res!666600) b!996332))

(assert (= (and b!996332 res!666603) b!996337))

(assert (= (and b!996337 res!666607) b!996335))

(assert (= (and b!996335 res!666601) b!996334))

(assert (= (and b!996334 res!666599) b!996331))

(declare-fun m!923557 () Bool)

(assert (=> b!996330 m!923557))

(declare-fun m!923559 () Bool)

(assert (=> b!996336 m!923559))

(assert (=> b!996336 m!923559))

(declare-fun m!923561 () Bool)

(assert (=> b!996336 m!923561))

(declare-fun m!923563 () Bool)

(assert (=> b!996335 m!923563))

(declare-fun m!923565 () Bool)

(assert (=> b!996337 m!923565))

(declare-fun m!923567 () Bool)

(assert (=> start!86060 m!923567))

(declare-fun m!923569 () Bool)

(assert (=> start!86060 m!923569))

(declare-fun m!923571 () Bool)

(assert (=> b!996332 m!923571))

(declare-fun m!923573 () Bool)

(assert (=> b!996329 m!923573))

(assert (=> b!996331 m!923559))

(assert (=> b!996331 m!923559))

(declare-fun m!923575 () Bool)

(assert (=> b!996331 m!923575))

(push 1)

(assert (not b!996329))

(assert (not b!996336))

(assert (not b!996335))

(assert (not b!996332))

(assert (not start!86060))

