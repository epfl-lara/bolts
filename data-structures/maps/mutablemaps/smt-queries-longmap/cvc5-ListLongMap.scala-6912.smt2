; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86920 () Bool)

(assert start!86920)

(declare-fun b!1007301 () Bool)

(declare-fun res!676350 () Bool)

(declare-fun e!566951 () Bool)

(assert (=> b!1007301 (=> (not res!676350) (not e!566951))))

(declare-datatypes ((array!63520 0))(
  ( (array!63521 (arr!30577 (Array (_ BitVec 32) (_ BitVec 64))) (size!31080 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63520)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007301 (= res!676350 (and (= (size!31080 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31080 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31080 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007302 () Bool)

(declare-fun res!676351 () Bool)

(declare-fun e!566953 () Bool)

(assert (=> b!1007302 (=> (not res!676351) (not e!566953))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007302 (= res!676351 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31080 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31080 a!3219))))))

(declare-fun b!1007303 () Bool)

(declare-fun res!676352 () Bool)

(declare-fun e!566950 () Bool)

(assert (=> b!1007303 (=> (not res!676352) (not e!566950))))

(declare-fun lt!445143 () array!63520)

(declare-fun lt!445146 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9509 0))(
  ( (MissingZero!9509 (index!40406 (_ BitVec 32))) (Found!9509 (index!40407 (_ BitVec 32))) (Intermediate!9509 (undefined!10321 Bool) (index!40408 (_ BitVec 32)) (x!87836 (_ BitVec 32))) (Undefined!9509) (MissingVacant!9509 (index!40409 (_ BitVec 32))) )
))
(declare-fun lt!445140 () SeekEntryResult!9509)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63520 (_ BitVec 32)) SeekEntryResult!9509)

(assert (=> b!1007303 (= res!676352 (not (= lt!445140 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445146 lt!445143 mask!3464))))))

(declare-fun b!1007304 () Bool)

(declare-fun res!676353 () Bool)

(assert (=> b!1007304 (=> (not res!676353) (not e!566953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63520 (_ BitVec 32)) Bool)

(assert (=> b!1007304 (= res!676353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007305 () Bool)

(assert (=> b!1007305 (= e!566950 false)))

(declare-fun lt!445142 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007305 (= lt!445142 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007306 () Bool)

(declare-fun e!566949 () Bool)

(assert (=> b!1007306 (= e!566953 e!566949)))

(declare-fun res!676360 () Bool)

(assert (=> b!1007306 (=> (not res!676360) (not e!566949))))

(declare-fun lt!445145 () SeekEntryResult!9509)

(declare-fun lt!445141 () SeekEntryResult!9509)

(assert (=> b!1007306 (= res!676360 (= lt!445145 lt!445141))))

(assert (=> b!1007306 (= lt!445141 (Intermediate!9509 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007306 (= lt!445145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30577 a!3219) j!170) mask!3464) (select (arr!30577 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007307 () Bool)

(declare-fun e!566954 () Bool)

(assert (=> b!1007307 (= e!566949 e!566954)))

(declare-fun res!676363 () Bool)

(assert (=> b!1007307 (=> (not res!676363) (not e!566954))))

(assert (=> b!1007307 (= res!676363 (= lt!445140 lt!445141))))

(assert (=> b!1007307 (= lt!445140 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30577 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007308 () Bool)

(declare-fun res!676362 () Bool)

(assert (=> b!1007308 (=> (not res!676362) (not e!566951))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007308 (= res!676362 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007309 () Bool)

(declare-fun res!676355 () Bool)

(assert (=> b!1007309 (=> (not res!676355) (not e!566951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007309 (= res!676355 (validKeyInArray!0 (select (arr!30577 a!3219) j!170)))))

(declare-fun b!1007310 () Bool)

(declare-fun res!676354 () Bool)

(assert (=> b!1007310 (=> (not res!676354) (not e!566953))))

(declare-datatypes ((List!21379 0))(
  ( (Nil!21376) (Cons!21375 (h!22561 (_ BitVec 64)) (t!30388 List!21379)) )
))
(declare-fun arrayNoDuplicates!0 (array!63520 (_ BitVec 32) List!21379) Bool)

(assert (=> b!1007310 (= res!676354 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21376))))

(declare-fun b!1007311 () Bool)

(declare-fun res!676356 () Bool)

(assert (=> b!1007311 (=> (not res!676356) (not e!566951))))

(assert (=> b!1007311 (= res!676356 (validKeyInArray!0 k!2224))))

(declare-fun res!676359 () Bool)

(assert (=> start!86920 (=> (not res!676359) (not e!566951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86920 (= res!676359 (validMask!0 mask!3464))))

(assert (=> start!86920 e!566951))

(declare-fun array_inv!23567 (array!63520) Bool)

(assert (=> start!86920 (array_inv!23567 a!3219)))

(assert (=> start!86920 true))

(declare-fun b!1007312 () Bool)

(assert (=> b!1007312 (= e!566954 e!566950)))

(declare-fun res!676361 () Bool)

(assert (=> b!1007312 (=> (not res!676361) (not e!566950))))

(assert (=> b!1007312 (= res!676361 (not (= lt!445145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445146 mask!3464) lt!445146 lt!445143 mask!3464))))))

(assert (=> b!1007312 (= lt!445146 (select (store (arr!30577 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007312 (= lt!445143 (array!63521 (store (arr!30577 a!3219) i!1194 k!2224) (size!31080 a!3219)))))

(declare-fun b!1007313 () Bool)

(assert (=> b!1007313 (= e!566951 e!566953)))

(declare-fun res!676358 () Bool)

(assert (=> b!1007313 (=> (not res!676358) (not e!566953))))

(declare-fun lt!445144 () SeekEntryResult!9509)

(assert (=> b!1007313 (= res!676358 (or (= lt!445144 (MissingVacant!9509 i!1194)) (= lt!445144 (MissingZero!9509 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63520 (_ BitVec 32)) SeekEntryResult!9509)

(assert (=> b!1007313 (= lt!445144 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007314 () Bool)

(declare-fun res!676357 () Bool)

(assert (=> b!1007314 (=> (not res!676357) (not e!566950))))

(assert (=> b!1007314 (= res!676357 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86920 res!676359) b!1007301))

(assert (= (and b!1007301 res!676350) b!1007309))

(assert (= (and b!1007309 res!676355) b!1007311))

(assert (= (and b!1007311 res!676356) b!1007308))

(assert (= (and b!1007308 res!676362) b!1007313))

(assert (= (and b!1007313 res!676358) b!1007304))

(assert (= (and b!1007304 res!676353) b!1007310))

(assert (= (and b!1007310 res!676354) b!1007302))

(assert (= (and b!1007302 res!676351) b!1007306))

(assert (= (and b!1007306 res!676360) b!1007307))

(assert (= (and b!1007307 res!676363) b!1007312))

(assert (= (and b!1007312 res!676361) b!1007303))

(assert (= (and b!1007303 res!676352) b!1007314))

(assert (= (and b!1007314 res!676357) b!1007305))

(declare-fun m!932307 () Bool)

(assert (=> b!1007304 m!932307))

(declare-fun m!932309 () Bool)

(assert (=> b!1007308 m!932309))

(declare-fun m!932311 () Bool)

(assert (=> b!1007309 m!932311))

(assert (=> b!1007309 m!932311))

(declare-fun m!932313 () Bool)

(assert (=> b!1007309 m!932313))

(declare-fun m!932315 () Bool)

(assert (=> b!1007303 m!932315))

(declare-fun m!932317 () Bool)

(assert (=> b!1007311 m!932317))

(declare-fun m!932319 () Bool)

(assert (=> start!86920 m!932319))

(declare-fun m!932321 () Bool)

(assert (=> start!86920 m!932321))

(declare-fun m!932323 () Bool)

(assert (=> b!1007312 m!932323))

(assert (=> b!1007312 m!932323))

(declare-fun m!932325 () Bool)

(assert (=> b!1007312 m!932325))

(declare-fun m!932327 () Bool)

(assert (=> b!1007312 m!932327))

(declare-fun m!932329 () Bool)

(assert (=> b!1007312 m!932329))

(assert (=> b!1007307 m!932311))

(assert (=> b!1007307 m!932311))

(declare-fun m!932331 () Bool)

(assert (=> b!1007307 m!932331))

(assert (=> b!1007306 m!932311))

(assert (=> b!1007306 m!932311))

(declare-fun m!932333 () Bool)

(assert (=> b!1007306 m!932333))

(assert (=> b!1007306 m!932333))

(assert (=> b!1007306 m!932311))

(declare-fun m!932335 () Bool)

(assert (=> b!1007306 m!932335))

(declare-fun m!932337 () Bool)

(assert (=> b!1007305 m!932337))

(declare-fun m!932339 () Bool)

(assert (=> b!1007313 m!932339))

(declare-fun m!932341 () Bool)

(assert (=> b!1007310 m!932341))

(push 1)

