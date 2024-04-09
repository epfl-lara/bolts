; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86056 () Bool)

(assert start!86056)

(declare-fun b!996275 () Bool)

(declare-fun res!666546 () Bool)

(declare-fun e!562160 () Bool)

(assert (=> b!996275 (=> (not res!666546) (not e!562160))))

(declare-datatypes ((array!63013 0))(
  ( (array!63014 (arr!30334 (Array (_ BitVec 32) (_ BitVec 64))) (size!30837 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63013)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996275 (= res!666546 (and (= (size!30837 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30837 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30837 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996276 () Bool)

(declare-fun res!666545 () Bool)

(declare-fun e!562159 () Bool)

(assert (=> b!996276 (=> (not res!666545) (not e!562159))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996276 (= res!666545 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30837 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30837 a!3219))))))

(declare-fun res!666547 () Bool)

(assert (=> start!86056 (=> (not res!666547) (not e!562160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86056 (= res!666547 (validMask!0 mask!3464))))

(assert (=> start!86056 e!562160))

(declare-fun array_inv!23324 (array!63013) Bool)

(assert (=> start!86056 (array_inv!23324 a!3219)))

(assert (=> start!86056 true))

(declare-fun b!996277 () Bool)

(declare-fun res!666548 () Bool)

(assert (=> b!996277 (=> (not res!666548) (not e!562159))))

(declare-datatypes ((List!21136 0))(
  ( (Nil!21133) (Cons!21132 (h!22297 (_ BitVec 64)) (t!30145 List!21136)) )
))
(declare-fun arrayNoDuplicates!0 (array!63013 (_ BitVec 32) List!21136) Bool)

(assert (=> b!996277 (= res!666548 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21133))))

(declare-fun b!996278 () Bool)

(assert (=> b!996278 (= e!562160 e!562159)))

(declare-fun res!666549 () Bool)

(assert (=> b!996278 (=> (not res!666549) (not e!562159))))

(declare-datatypes ((SeekEntryResult!9266 0))(
  ( (MissingZero!9266 (index!39434 (_ BitVec 32))) (Found!9266 (index!39435 (_ BitVec 32))) (Intermediate!9266 (undefined!10078 Bool) (index!39436 (_ BitVec 32)) (x!86903 (_ BitVec 32))) (Undefined!9266) (MissingVacant!9266 (index!39437 (_ BitVec 32))) )
))
(declare-fun lt!441177 () SeekEntryResult!9266)

(assert (=> b!996278 (= res!666549 (or (= lt!441177 (MissingVacant!9266 i!1194)) (= lt!441177 (MissingZero!9266 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63013 (_ BitVec 32)) SeekEntryResult!9266)

(assert (=> b!996278 (= lt!441177 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996279 () Bool)

(declare-fun res!666553 () Bool)

(assert (=> b!996279 (=> (not res!666553) (not e!562160))))

(declare-fun arrayContainsKey!0 (array!63013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996279 (= res!666553 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996280 () Bool)

(declare-fun res!666551 () Bool)

(assert (=> b!996280 (=> (not res!666551) (not e!562160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996280 (= res!666551 (validKeyInArray!0 k!2224))))

(declare-fun b!996281 () Bool)

(declare-fun res!666552 () Bool)

(assert (=> b!996281 (=> (not res!666552) (not e!562160))))

(assert (=> b!996281 (= res!666552 (validKeyInArray!0 (select (arr!30334 a!3219) j!170)))))

(declare-fun b!996282 () Bool)

(assert (=> b!996282 (= e!562159 false)))

(declare-fun lt!441176 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996282 (= lt!441176 (toIndex!0 (select (arr!30334 a!3219) j!170) mask!3464))))

(declare-fun b!996283 () Bool)

(declare-fun res!666550 () Bool)

(assert (=> b!996283 (=> (not res!666550) (not e!562159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63013 (_ BitVec 32)) Bool)

(assert (=> b!996283 (= res!666550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86056 res!666547) b!996275))

(assert (= (and b!996275 res!666546) b!996281))

(assert (= (and b!996281 res!666552) b!996280))

(assert (= (and b!996280 res!666551) b!996279))

(assert (= (and b!996279 res!666553) b!996278))

(assert (= (and b!996278 res!666549) b!996283))

(assert (= (and b!996283 res!666550) b!996277))

(assert (= (and b!996277 res!666548) b!996276))

(assert (= (and b!996276 res!666545) b!996282))

(declare-fun m!923517 () Bool)

(assert (=> b!996279 m!923517))

(declare-fun m!923519 () Bool)

(assert (=> b!996277 m!923519))

(declare-fun m!923521 () Bool)

(assert (=> b!996282 m!923521))

(assert (=> b!996282 m!923521))

(declare-fun m!923523 () Bool)

(assert (=> b!996282 m!923523))

(declare-fun m!923525 () Bool)

(assert (=> b!996280 m!923525))

(declare-fun m!923527 () Bool)

(assert (=> b!996283 m!923527))

(assert (=> b!996281 m!923521))

(assert (=> b!996281 m!923521))

(declare-fun m!923529 () Bool)

(assert (=> b!996281 m!923529))

(declare-fun m!923531 () Bool)

(assert (=> start!86056 m!923531))

(declare-fun m!923533 () Bool)

(assert (=> start!86056 m!923533))

(declare-fun m!923535 () Bool)

(assert (=> b!996278 m!923535))

(push 1)

