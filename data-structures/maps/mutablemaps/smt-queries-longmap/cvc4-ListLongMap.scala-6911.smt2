; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86918 () Bool)

(assert start!86918)

(declare-fun b!1007259 () Bool)

(declare-fun res!676312 () Bool)

(declare-fun e!566934 () Bool)

(assert (=> b!1007259 (=> (not res!676312) (not e!566934))))

(declare-datatypes ((array!63518 0))(
  ( (array!63519 (arr!30576 (Array (_ BitVec 32) (_ BitVec 64))) (size!31079 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63518)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007259 (= res!676312 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31079 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31079 a!3219))))))

(declare-fun b!1007260 () Bool)

(declare-fun e!566933 () Bool)

(assert (=> b!1007260 (= e!566933 false)))

(declare-fun lt!445123 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007260 (= lt!445123 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007261 () Bool)

(declare-fun res!676308 () Bool)

(declare-fun e!566931 () Bool)

(assert (=> b!1007261 (=> (not res!676308) (not e!566931))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007261 (= res!676308 (validKeyInArray!0 k!2224))))

(declare-fun b!1007262 () Bool)

(declare-fun e!566935 () Bool)

(declare-fun e!566932 () Bool)

(assert (=> b!1007262 (= e!566935 e!566932)))

(declare-fun res!676314 () Bool)

(assert (=> b!1007262 (=> (not res!676314) (not e!566932))))

(declare-datatypes ((SeekEntryResult!9508 0))(
  ( (MissingZero!9508 (index!40402 (_ BitVec 32))) (Found!9508 (index!40403 (_ BitVec 32))) (Intermediate!9508 (undefined!10320 Bool) (index!40404 (_ BitVec 32)) (x!87827 (_ BitVec 32))) (Undefined!9508) (MissingVacant!9508 (index!40405 (_ BitVec 32))) )
))
(declare-fun lt!445120 () SeekEntryResult!9508)

(declare-fun lt!445122 () SeekEntryResult!9508)

(assert (=> b!1007262 (= res!676314 (= lt!445120 lt!445122))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63518 (_ BitVec 32)) SeekEntryResult!9508)

(assert (=> b!1007262 (= lt!445120 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30576 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007263 () Bool)

(assert (=> b!1007263 (= e!566931 e!566934)))

(declare-fun res!676321 () Bool)

(assert (=> b!1007263 (=> (not res!676321) (not e!566934))))

(declare-fun lt!445124 () SeekEntryResult!9508)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007263 (= res!676321 (or (= lt!445124 (MissingVacant!9508 i!1194)) (= lt!445124 (MissingZero!9508 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63518 (_ BitVec 32)) SeekEntryResult!9508)

(assert (=> b!1007263 (= lt!445124 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007264 () Bool)

(assert (=> b!1007264 (= e!566932 e!566933)))

(declare-fun res!676309 () Bool)

(assert (=> b!1007264 (=> (not res!676309) (not e!566933))))

(declare-fun lt!445121 () array!63518)

(declare-fun lt!445125 () (_ BitVec 64))

(declare-fun lt!445119 () SeekEntryResult!9508)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007264 (= res!676309 (not (= lt!445119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445125 mask!3464) lt!445125 lt!445121 mask!3464))))))

(assert (=> b!1007264 (= lt!445125 (select (store (arr!30576 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007264 (= lt!445121 (array!63519 (store (arr!30576 a!3219) i!1194 k!2224) (size!31079 a!3219)))))

(declare-fun b!1007265 () Bool)

(declare-fun res!676311 () Bool)

(assert (=> b!1007265 (=> (not res!676311) (not e!566934))))

(declare-datatypes ((List!21378 0))(
  ( (Nil!21375) (Cons!21374 (h!22560 (_ BitVec 64)) (t!30387 List!21378)) )
))
(declare-fun arrayNoDuplicates!0 (array!63518 (_ BitVec 32) List!21378) Bool)

(assert (=> b!1007265 (= res!676311 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21375))))

(declare-fun b!1007266 () Bool)

(declare-fun res!676310 () Bool)

(assert (=> b!1007266 (=> (not res!676310) (not e!566931))))

(assert (=> b!1007266 (= res!676310 (and (= (size!31079 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31079 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31079 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!676319 () Bool)

(assert (=> start!86918 (=> (not res!676319) (not e!566931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86918 (= res!676319 (validMask!0 mask!3464))))

(assert (=> start!86918 e!566931))

(declare-fun array_inv!23566 (array!63518) Bool)

(assert (=> start!86918 (array_inv!23566 a!3219)))

(assert (=> start!86918 true))

(declare-fun b!1007267 () Bool)

(declare-fun res!676316 () Bool)

(assert (=> b!1007267 (=> (not res!676316) (not e!566933))))

(assert (=> b!1007267 (= res!676316 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007268 () Bool)

(declare-fun res!676313 () Bool)

(assert (=> b!1007268 (=> (not res!676313) (not e!566931))))

(assert (=> b!1007268 (= res!676313 (validKeyInArray!0 (select (arr!30576 a!3219) j!170)))))

(declare-fun b!1007269 () Bool)

(declare-fun res!676318 () Bool)

(assert (=> b!1007269 (=> (not res!676318) (not e!566934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63518 (_ BitVec 32)) Bool)

(assert (=> b!1007269 (= res!676318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007270 () Bool)

(declare-fun res!676320 () Bool)

(assert (=> b!1007270 (=> (not res!676320) (not e!566933))))

(assert (=> b!1007270 (= res!676320 (not (= lt!445120 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445125 lt!445121 mask!3464))))))

(declare-fun b!1007271 () Bool)

(declare-fun res!676317 () Bool)

(assert (=> b!1007271 (=> (not res!676317) (not e!566931))))

(declare-fun arrayContainsKey!0 (array!63518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007271 (= res!676317 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007272 () Bool)

(assert (=> b!1007272 (= e!566934 e!566935)))

(declare-fun res!676315 () Bool)

(assert (=> b!1007272 (=> (not res!676315) (not e!566935))))

(assert (=> b!1007272 (= res!676315 (= lt!445119 lt!445122))))

(assert (=> b!1007272 (= lt!445122 (Intermediate!9508 false resIndex!38 resX!38))))

(assert (=> b!1007272 (= lt!445119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30576 a!3219) j!170) mask!3464) (select (arr!30576 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86918 res!676319) b!1007266))

(assert (= (and b!1007266 res!676310) b!1007268))

(assert (= (and b!1007268 res!676313) b!1007261))

(assert (= (and b!1007261 res!676308) b!1007271))

(assert (= (and b!1007271 res!676317) b!1007263))

(assert (= (and b!1007263 res!676321) b!1007269))

(assert (= (and b!1007269 res!676318) b!1007265))

(assert (= (and b!1007265 res!676311) b!1007259))

(assert (= (and b!1007259 res!676312) b!1007272))

(assert (= (and b!1007272 res!676315) b!1007262))

(assert (= (and b!1007262 res!676314) b!1007264))

(assert (= (and b!1007264 res!676309) b!1007270))

(assert (= (and b!1007270 res!676320) b!1007267))

(assert (= (and b!1007267 res!676316) b!1007260))

(declare-fun m!932271 () Bool)

(assert (=> b!1007269 m!932271))

(declare-fun m!932273 () Bool)

(assert (=> b!1007264 m!932273))

(assert (=> b!1007264 m!932273))

(declare-fun m!932275 () Bool)

(assert (=> b!1007264 m!932275))

(declare-fun m!932277 () Bool)

(assert (=> b!1007264 m!932277))

(declare-fun m!932279 () Bool)

(assert (=> b!1007264 m!932279))

(declare-fun m!932281 () Bool)

(assert (=> b!1007270 m!932281))

(declare-fun m!932283 () Bool)

(assert (=> b!1007261 m!932283))

(declare-fun m!932285 () Bool)

(assert (=> b!1007263 m!932285))

(declare-fun m!932287 () Bool)

(assert (=> b!1007268 m!932287))

(assert (=> b!1007268 m!932287))

(declare-fun m!932289 () Bool)

(assert (=> b!1007268 m!932289))

(assert (=> b!1007272 m!932287))

(assert (=> b!1007272 m!932287))

(declare-fun m!932291 () Bool)

(assert (=> b!1007272 m!932291))

(assert (=> b!1007272 m!932291))

(assert (=> b!1007272 m!932287))

(declare-fun m!932293 () Bool)

(assert (=> b!1007272 m!932293))

(declare-fun m!932295 () Bool)

(assert (=> b!1007260 m!932295))

(declare-fun m!932297 () Bool)

(assert (=> start!86918 m!932297))

(declare-fun m!932299 () Bool)

(assert (=> start!86918 m!932299))

(declare-fun m!932301 () Bool)

(assert (=> b!1007271 m!932301))

(declare-fun m!932303 () Bool)

(assert (=> b!1007265 m!932303))

(assert (=> b!1007262 m!932287))

(assert (=> b!1007262 m!932287))

(declare-fun m!932305 () Bool)

(assert (=> b!1007262 m!932305))

(push 1)

