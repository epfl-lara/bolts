; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86554 () Bool)

(assert start!86554)

(declare-fun res!671993 () Bool)

(declare-fun e!564720 () Bool)

(assert (=> start!86554 (=> (not res!671993) (not e!564720))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86554 (= res!671993 (validMask!0 mask!3464))))

(assert (=> start!86554 e!564720))

(declare-datatypes ((array!63307 0))(
  ( (array!63308 (arr!30475 (Array (_ BitVec 32) (_ BitVec 64))) (size!30978 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63307)

(declare-fun array_inv!23465 (array!63307) Bool)

(assert (=> start!86554 (array_inv!23465 a!3219)))

(assert (=> start!86554 true))

(declare-fun b!1002355 () Bool)

(declare-fun e!564725 () Bool)

(assert (=> b!1002355 (= e!564720 e!564725)))

(declare-fun res!671992 () Bool)

(assert (=> b!1002355 (=> (not res!671992) (not e!564725))))

(declare-datatypes ((SeekEntryResult!9407 0))(
  ( (MissingZero!9407 (index!39998 (_ BitVec 32))) (Found!9407 (index!39999 (_ BitVec 32))) (Intermediate!9407 (undefined!10219 Bool) (index!40000 (_ BitVec 32)) (x!87444 (_ BitVec 32))) (Undefined!9407) (MissingVacant!9407 (index!40001 (_ BitVec 32))) )
))
(declare-fun lt!443150 () SeekEntryResult!9407)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002355 (= res!671992 (or (= lt!443150 (MissingVacant!9407 i!1194)) (= lt!443150 (MissingZero!9407 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63307 (_ BitVec 32)) SeekEntryResult!9407)

(assert (=> b!1002355 (= lt!443150 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002356 () Bool)

(declare-fun res!671994 () Bool)

(declare-fun e!564723 () Bool)

(assert (=> b!1002356 (=> (not res!671994) (not e!564723))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1002356 (= res!671994 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002357 () Bool)

(declare-fun res!671991 () Bool)

(assert (=> b!1002357 (=> (not res!671991) (not e!564725))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002357 (= res!671991 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30978 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30978 a!3219))))))

(declare-fun b!1002358 () Bool)

(declare-fun res!672001 () Bool)

(assert (=> b!1002358 (=> (not res!672001) (not e!564720))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1002358 (= res!672001 (and (= (size!30978 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30978 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30978 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002359 () Bool)

(declare-fun e!564721 () Bool)

(assert (=> b!1002359 (= e!564721 false)))

(declare-fun lt!443146 () (_ BitVec 32))

(declare-fun lt!443144 () SeekEntryResult!9407)

(declare-fun lt!443148 () (_ BitVec 64))

(declare-fun lt!443149 () array!63307)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63307 (_ BitVec 32)) SeekEntryResult!9407)

(assert (=> b!1002359 (= lt!443144 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443146 lt!443148 lt!443149 mask!3464))))

(declare-fun b!1002360 () Bool)

(declare-fun res!671997 () Bool)

(assert (=> b!1002360 (=> (not res!671997) (not e!564725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63307 (_ BitVec 32)) Bool)

(assert (=> b!1002360 (= res!671997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002361 () Bool)

(declare-fun res!671996 () Bool)

(assert (=> b!1002361 (=> (not res!671996) (not e!564723))))

(declare-fun lt!443147 () SeekEntryResult!9407)

(assert (=> b!1002361 (= res!671996 (not (= lt!443147 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443148 lt!443149 mask!3464))))))

(declare-fun b!1002362 () Bool)

(declare-fun res!672002 () Bool)

(assert (=> b!1002362 (=> (not res!672002) (not e!564720))))

(declare-fun arrayContainsKey!0 (array!63307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002362 (= res!672002 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002363 () Bool)

(declare-fun res!671989 () Bool)

(assert (=> b!1002363 (=> (not res!671989) (not e!564721))))

(declare-fun lt!443151 () SeekEntryResult!9407)

(assert (=> b!1002363 (= res!671989 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443146 (select (arr!30475 a!3219) j!170) a!3219 mask!3464) lt!443151))))

(declare-fun b!1002364 () Bool)

(declare-fun e!564719 () Bool)

(declare-fun e!564724 () Bool)

(assert (=> b!1002364 (= e!564719 e!564724)))

(declare-fun res!672000 () Bool)

(assert (=> b!1002364 (=> (not res!672000) (not e!564724))))

(assert (=> b!1002364 (= res!672000 (= lt!443147 lt!443151))))

(assert (=> b!1002364 (= lt!443147 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30475 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002365 () Bool)

(assert (=> b!1002365 (= e!564725 e!564719)))

(declare-fun res!672003 () Bool)

(assert (=> b!1002365 (=> (not res!672003) (not e!564719))))

(declare-fun lt!443145 () SeekEntryResult!9407)

(assert (=> b!1002365 (= res!672003 (= lt!443145 lt!443151))))

(assert (=> b!1002365 (= lt!443151 (Intermediate!9407 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002365 (= lt!443145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30475 a!3219) j!170) mask!3464) (select (arr!30475 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002366 () Bool)

(assert (=> b!1002366 (= e!564723 e!564721)))

(declare-fun res!671990 () Bool)

(assert (=> b!1002366 (=> (not res!671990) (not e!564721))))

(assert (=> b!1002366 (= res!671990 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443146 #b00000000000000000000000000000000) (bvslt lt!443146 (size!30978 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002366 (= lt!443146 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002367 () Bool)

(declare-fun res!671995 () Bool)

(assert (=> b!1002367 (=> (not res!671995) (not e!564725))))

(declare-datatypes ((List!21277 0))(
  ( (Nil!21274) (Cons!21273 (h!22450 (_ BitVec 64)) (t!30286 List!21277)) )
))
(declare-fun arrayNoDuplicates!0 (array!63307 (_ BitVec 32) List!21277) Bool)

(assert (=> b!1002367 (= res!671995 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21274))))

(declare-fun b!1002368 () Bool)

(declare-fun res!671998 () Bool)

(assert (=> b!1002368 (=> (not res!671998) (not e!564720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002368 (= res!671998 (validKeyInArray!0 (select (arr!30475 a!3219) j!170)))))

(declare-fun b!1002369 () Bool)

(assert (=> b!1002369 (= e!564724 e!564723)))

(declare-fun res!672004 () Bool)

(assert (=> b!1002369 (=> (not res!672004) (not e!564723))))

(assert (=> b!1002369 (= res!672004 (not (= lt!443145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443148 mask!3464) lt!443148 lt!443149 mask!3464))))))

(assert (=> b!1002369 (= lt!443148 (select (store (arr!30475 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002369 (= lt!443149 (array!63308 (store (arr!30475 a!3219) i!1194 k!2224) (size!30978 a!3219)))))

(declare-fun b!1002370 () Bool)

(declare-fun res!671999 () Bool)

(assert (=> b!1002370 (=> (not res!671999) (not e!564720))))

(assert (=> b!1002370 (= res!671999 (validKeyInArray!0 k!2224))))

(assert (= (and start!86554 res!671993) b!1002358))

(assert (= (and b!1002358 res!672001) b!1002368))

(assert (= (and b!1002368 res!671998) b!1002370))

(assert (= (and b!1002370 res!671999) b!1002362))

(assert (= (and b!1002362 res!672002) b!1002355))

(assert (= (and b!1002355 res!671992) b!1002360))

(assert (= (and b!1002360 res!671997) b!1002367))

(assert (= (and b!1002367 res!671995) b!1002357))

(assert (= (and b!1002357 res!671991) b!1002365))

(assert (= (and b!1002365 res!672003) b!1002364))

(assert (= (and b!1002364 res!672000) b!1002369))

(assert (= (and b!1002369 res!672004) b!1002361))

(assert (= (and b!1002361 res!671996) b!1002356))

(assert (= (and b!1002356 res!671994) b!1002366))

(assert (= (and b!1002366 res!671990) b!1002363))

(assert (= (and b!1002363 res!671989) b!1002359))

(declare-fun m!928341 () Bool)

(assert (=> b!1002367 m!928341))

(declare-fun m!928343 () Bool)

(assert (=> b!1002365 m!928343))

(assert (=> b!1002365 m!928343))

(declare-fun m!928345 () Bool)

(assert (=> b!1002365 m!928345))

(assert (=> b!1002365 m!928345))

(assert (=> b!1002365 m!928343))

(declare-fun m!928347 () Bool)

(assert (=> b!1002365 m!928347))

(declare-fun m!928349 () Bool)

(assert (=> b!1002361 m!928349))

(assert (=> b!1002363 m!928343))

(assert (=> b!1002363 m!928343))

(declare-fun m!928351 () Bool)

(assert (=> b!1002363 m!928351))

(declare-fun m!928353 () Bool)

(assert (=> b!1002355 m!928353))

(assert (=> b!1002368 m!928343))

(assert (=> b!1002368 m!928343))

(declare-fun m!928355 () Bool)

(assert (=> b!1002368 m!928355))

(declare-fun m!928357 () Bool)

(assert (=> b!1002360 m!928357))

(declare-fun m!928359 () Bool)

(assert (=> b!1002366 m!928359))

(declare-fun m!928361 () Bool)

(assert (=> b!1002370 m!928361))

(declare-fun m!928363 () Bool)

(assert (=> b!1002369 m!928363))

(assert (=> b!1002369 m!928363))

(declare-fun m!928365 () Bool)

(assert (=> b!1002369 m!928365))

(declare-fun m!928367 () Bool)

(assert (=> b!1002369 m!928367))

(declare-fun m!928369 () Bool)

(assert (=> b!1002369 m!928369))

(declare-fun m!928371 () Bool)

(assert (=> b!1002362 m!928371))

(assert (=> b!1002364 m!928343))

(assert (=> b!1002364 m!928343))

(declare-fun m!928373 () Bool)

(assert (=> b!1002364 m!928373))

(declare-fun m!928375 () Bool)

(assert (=> start!86554 m!928375))

(declare-fun m!928377 () Bool)

(assert (=> start!86554 m!928377))

(declare-fun m!928379 () Bool)

(assert (=> b!1002359 m!928379))

(push 1)

