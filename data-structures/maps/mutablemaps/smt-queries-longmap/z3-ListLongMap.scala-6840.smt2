; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86166 () Bool)

(assert start!86166)

(declare-fun b!997360 () Bool)

(declare-fun res!667479 () Bool)

(declare-fun e!562598 () Bool)

(assert (=> b!997360 (=> (not res!667479) (not e!562598))))

(declare-datatypes ((array!63072 0))(
  ( (array!63073 (arr!30362 (Array (_ BitVec 32) (_ BitVec 64))) (size!30865 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63072)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63072 (_ BitVec 32)) Bool)

(assert (=> b!997360 (= res!667479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997361 () Bool)

(declare-fun res!667471 () Bool)

(declare-fun e!562597 () Bool)

(assert (=> b!997361 (=> (not res!667471) (not e!562597))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997361 (= res!667471 (validKeyInArray!0 k0!2224))))

(declare-fun b!997362 () Bool)

(assert (=> b!997362 (= e!562597 e!562598)))

(declare-fun res!667480 () Bool)

(assert (=> b!997362 (=> (not res!667480) (not e!562598))))

(declare-datatypes ((SeekEntryResult!9294 0))(
  ( (MissingZero!9294 (index!39546 (_ BitVec 32))) (Found!9294 (index!39547 (_ BitVec 32))) (Intermediate!9294 (undefined!10106 Bool) (index!39548 (_ BitVec 32)) (x!87009 (_ BitVec 32))) (Undefined!9294) (MissingVacant!9294 (index!39549 (_ BitVec 32))) )
))
(declare-fun lt!441413 () SeekEntryResult!9294)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997362 (= res!667480 (or (= lt!441413 (MissingVacant!9294 i!1194)) (= lt!441413 (MissingZero!9294 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63072 (_ BitVec 32)) SeekEntryResult!9294)

(assert (=> b!997362 (= lt!441413 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!997363 () Bool)

(declare-fun res!667478 () Bool)

(assert (=> b!997363 (=> (not res!667478) (not e!562597))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!997363 (= res!667478 (validKeyInArray!0 (select (arr!30362 a!3219) j!170)))))

(declare-fun b!997364 () Bool)

(declare-fun res!667472 () Bool)

(assert (=> b!997364 (=> (not res!667472) (not e!562598))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63072 (_ BitVec 32)) SeekEntryResult!9294)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997364 (= res!667472 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30362 a!3219) j!170) mask!3464) (select (arr!30362 a!3219) j!170) a!3219 mask!3464) (Intermediate!9294 false resIndex!38 resX!38)))))

(declare-fun res!667477 () Bool)

(assert (=> start!86166 (=> (not res!667477) (not e!562597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86166 (= res!667477 (validMask!0 mask!3464))))

(assert (=> start!86166 e!562597))

(declare-fun array_inv!23352 (array!63072) Bool)

(assert (=> start!86166 (array_inv!23352 a!3219)))

(assert (=> start!86166 true))

(declare-fun b!997365 () Bool)

(declare-fun res!667474 () Bool)

(assert (=> b!997365 (=> (not res!667474) (not e!562597))))

(assert (=> b!997365 (= res!667474 (and (= (size!30865 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30865 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30865 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997366 () Bool)

(declare-fun res!667473 () Bool)

(assert (=> b!997366 (=> (not res!667473) (not e!562598))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!997366 (= res!667473 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30865 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30865 a!3219))))))

(declare-fun b!997367 () Bool)

(declare-fun res!667476 () Bool)

(assert (=> b!997367 (=> (not res!667476) (not e!562598))))

(declare-datatypes ((List!21164 0))(
  ( (Nil!21161) (Cons!21160 (h!22328 (_ BitVec 64)) (t!30173 List!21164)) )
))
(declare-fun arrayNoDuplicates!0 (array!63072 (_ BitVec 32) List!21164) Bool)

(assert (=> b!997367 (= res!667476 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21161))))

(declare-fun b!997368 () Bool)

(assert (=> b!997368 (= e!562598 false)))

(declare-fun lt!441414 () SeekEntryResult!9294)

(assert (=> b!997368 (= lt!441414 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30362 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997369 () Bool)

(declare-fun res!667475 () Bool)

(assert (=> b!997369 (=> (not res!667475) (not e!562597))))

(declare-fun arrayContainsKey!0 (array!63072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997369 (= res!667475 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86166 res!667477) b!997365))

(assert (= (and b!997365 res!667474) b!997363))

(assert (= (and b!997363 res!667478) b!997361))

(assert (= (and b!997361 res!667471) b!997369))

(assert (= (and b!997369 res!667475) b!997362))

(assert (= (and b!997362 res!667480) b!997360))

(assert (= (and b!997360 res!667479) b!997367))

(assert (= (and b!997367 res!667476) b!997366))

(assert (= (and b!997366 res!667473) b!997364))

(assert (= (and b!997364 res!667472) b!997368))

(declare-fun m!924285 () Bool)

(assert (=> b!997367 m!924285))

(declare-fun m!924287 () Bool)

(assert (=> b!997360 m!924287))

(declare-fun m!924289 () Bool)

(assert (=> start!86166 m!924289))

(declare-fun m!924291 () Bool)

(assert (=> start!86166 m!924291))

(declare-fun m!924293 () Bool)

(assert (=> b!997363 m!924293))

(assert (=> b!997363 m!924293))

(declare-fun m!924295 () Bool)

(assert (=> b!997363 m!924295))

(declare-fun m!924297 () Bool)

(assert (=> b!997369 m!924297))

(assert (=> b!997364 m!924293))

(assert (=> b!997364 m!924293))

(declare-fun m!924299 () Bool)

(assert (=> b!997364 m!924299))

(assert (=> b!997364 m!924299))

(assert (=> b!997364 m!924293))

(declare-fun m!924301 () Bool)

(assert (=> b!997364 m!924301))

(declare-fun m!924303 () Bool)

(assert (=> b!997361 m!924303))

(declare-fun m!924305 () Bool)

(assert (=> b!997362 m!924305))

(assert (=> b!997368 m!924293))

(assert (=> b!997368 m!924293))

(declare-fun m!924307 () Bool)

(assert (=> b!997368 m!924307))

(check-sat (not b!997364) (not b!997369) (not b!997360) (not b!997363) (not b!997362) (not b!997368) (not b!997367) (not b!997361) (not start!86166))
(check-sat)
