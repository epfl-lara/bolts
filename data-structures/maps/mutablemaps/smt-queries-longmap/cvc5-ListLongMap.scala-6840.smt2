; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86164 () Bool)

(assert start!86164)

(declare-fun b!997330 () Bool)

(declare-fun e!562588 () Bool)

(assert (=> b!997330 (= e!562588 false)))

(declare-datatypes ((array!63070 0))(
  ( (array!63071 (arr!30361 (Array (_ BitVec 32) (_ BitVec 64))) (size!30864 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63070)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9293 0))(
  ( (MissingZero!9293 (index!39542 (_ BitVec 32))) (Found!9293 (index!39543 (_ BitVec 32))) (Intermediate!9293 (undefined!10105 Bool) (index!39544 (_ BitVec 32)) (x!87008 (_ BitVec 32))) (Undefined!9293) (MissingVacant!9293 (index!39545 (_ BitVec 32))) )
))
(declare-fun lt!441407 () SeekEntryResult!9293)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63070 (_ BitVec 32)) SeekEntryResult!9293)

(assert (=> b!997330 (= lt!441407 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30361 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997331 () Bool)

(declare-fun e!562589 () Bool)

(assert (=> b!997331 (= e!562589 e!562588)))

(declare-fun res!667447 () Bool)

(assert (=> b!997331 (=> (not res!667447) (not e!562588))))

(declare-fun lt!441408 () SeekEntryResult!9293)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997331 (= res!667447 (or (= lt!441408 (MissingVacant!9293 i!1194)) (= lt!441408 (MissingZero!9293 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63070 (_ BitVec 32)) SeekEntryResult!9293)

(assert (=> b!997331 (= lt!441408 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997333 () Bool)

(declare-fun res!667450 () Bool)

(assert (=> b!997333 (=> (not res!667450) (not e!562588))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997333 (= res!667450 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30864 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30864 a!3219))))))

(declare-fun b!997334 () Bool)

(declare-fun res!667441 () Bool)

(assert (=> b!997334 (=> (not res!667441) (not e!562588))))

(declare-datatypes ((List!21163 0))(
  ( (Nil!21160) (Cons!21159 (h!22327 (_ BitVec 64)) (t!30172 List!21163)) )
))
(declare-fun arrayNoDuplicates!0 (array!63070 (_ BitVec 32) List!21163) Bool)

(assert (=> b!997334 (= res!667441 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21160))))

(declare-fun b!997335 () Bool)

(declare-fun res!667449 () Bool)

(assert (=> b!997335 (=> (not res!667449) (not e!562589))))

(assert (=> b!997335 (= res!667449 (and (= (size!30864 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30864 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30864 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997336 () Bool)

(declare-fun res!667443 () Bool)

(assert (=> b!997336 (=> (not res!667443) (not e!562589))))

(declare-fun arrayContainsKey!0 (array!63070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997336 (= res!667443 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997337 () Bool)

(declare-fun res!667448 () Bool)

(assert (=> b!997337 (=> (not res!667448) (not e!562589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997337 (= res!667448 (validKeyInArray!0 k!2224))))

(declare-fun b!997338 () Bool)

(declare-fun res!667445 () Bool)

(assert (=> b!997338 (=> (not res!667445) (not e!562588))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997338 (= res!667445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30361 a!3219) j!170) mask!3464) (select (arr!30361 a!3219) j!170) a!3219 mask!3464) (Intermediate!9293 false resIndex!38 resX!38)))))

(declare-fun b!997339 () Bool)

(declare-fun res!667444 () Bool)

(assert (=> b!997339 (=> (not res!667444) (not e!562588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63070 (_ BitVec 32)) Bool)

(assert (=> b!997339 (= res!667444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667446 () Bool)

(assert (=> start!86164 (=> (not res!667446) (not e!562589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86164 (= res!667446 (validMask!0 mask!3464))))

(assert (=> start!86164 e!562589))

(declare-fun array_inv!23351 (array!63070) Bool)

(assert (=> start!86164 (array_inv!23351 a!3219)))

(assert (=> start!86164 true))

(declare-fun b!997332 () Bool)

(declare-fun res!667442 () Bool)

(assert (=> b!997332 (=> (not res!667442) (not e!562589))))

(assert (=> b!997332 (= res!667442 (validKeyInArray!0 (select (arr!30361 a!3219) j!170)))))

(assert (= (and start!86164 res!667446) b!997335))

(assert (= (and b!997335 res!667449) b!997332))

(assert (= (and b!997332 res!667442) b!997337))

(assert (= (and b!997337 res!667448) b!997336))

(assert (= (and b!997336 res!667443) b!997331))

(assert (= (and b!997331 res!667447) b!997339))

(assert (= (and b!997339 res!667444) b!997334))

(assert (= (and b!997334 res!667441) b!997333))

(assert (= (and b!997333 res!667450) b!997338))

(assert (= (and b!997338 res!667445) b!997330))

(declare-fun m!924261 () Bool)

(assert (=> b!997331 m!924261))

(declare-fun m!924263 () Bool)

(assert (=> start!86164 m!924263))

(declare-fun m!924265 () Bool)

(assert (=> start!86164 m!924265))

(declare-fun m!924267 () Bool)

(assert (=> b!997330 m!924267))

(assert (=> b!997330 m!924267))

(declare-fun m!924269 () Bool)

(assert (=> b!997330 m!924269))

(assert (=> b!997332 m!924267))

(assert (=> b!997332 m!924267))

(declare-fun m!924271 () Bool)

(assert (=> b!997332 m!924271))

(assert (=> b!997338 m!924267))

(assert (=> b!997338 m!924267))

(declare-fun m!924273 () Bool)

(assert (=> b!997338 m!924273))

(assert (=> b!997338 m!924273))

(assert (=> b!997338 m!924267))

(declare-fun m!924275 () Bool)

(assert (=> b!997338 m!924275))

(declare-fun m!924277 () Bool)

(assert (=> b!997336 m!924277))

(declare-fun m!924279 () Bool)

(assert (=> b!997334 m!924279))

(declare-fun m!924281 () Bool)

(assert (=> b!997337 m!924281))

(declare-fun m!924283 () Bool)

(assert (=> b!997339 m!924283))

(push 1)

