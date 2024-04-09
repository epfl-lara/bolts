; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86510 () Bool)

(assert start!86510)

(declare-fun b!1001299 () Bool)

(declare-fun res!670945 () Bool)

(declare-fun e!564257 () Bool)

(assert (=> b!1001299 (=> (not res!670945) (not e!564257))))

(declare-datatypes ((array!63263 0))(
  ( (array!63264 (arr!30453 (Array (_ BitVec 32) (_ BitVec 64))) (size!30956 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63263)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001299 (= res!670945 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001300 () Bool)

(declare-fun res!670941 () Bool)

(declare-fun e!564261 () Bool)

(assert (=> b!1001300 (=> (not res!670941) (not e!564261))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442619 () (_ BitVec 64))

(declare-fun lt!442617 () array!63263)

(declare-datatypes ((SeekEntryResult!9385 0))(
  ( (MissingZero!9385 (index!39910 (_ BitVec 32))) (Found!9385 (index!39911 (_ BitVec 32))) (Intermediate!9385 (undefined!10197 Bool) (index!39912 (_ BitVec 32)) (x!87358 (_ BitVec 32))) (Undefined!9385) (MissingVacant!9385 (index!39913 (_ BitVec 32))) )
))
(declare-fun lt!442621 () SeekEntryResult!9385)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63263 (_ BitVec 32)) SeekEntryResult!9385)

(assert (=> b!1001300 (= res!670941 (not (= lt!442621 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442619 lt!442617 mask!3464))))))

(declare-fun b!1001301 () Bool)

(declare-fun e!564260 () Bool)

(declare-fun e!564263 () Bool)

(assert (=> b!1001301 (= e!564260 e!564263)))

(declare-fun res!670942 () Bool)

(assert (=> b!1001301 (=> (not res!670942) (not e!564263))))

(declare-fun lt!442623 () SeekEntryResult!9385)

(declare-fun lt!442622 () SeekEntryResult!9385)

(assert (=> b!1001301 (= res!670942 (= lt!442623 lt!442622))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001301 (= lt!442622 (Intermediate!9385 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001301 (= lt!442623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30453 a!3219) j!170) mask!3464) (select (arr!30453 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!670935 () Bool)

(assert (=> start!86510 (=> (not res!670935) (not e!564257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86510 (= res!670935 (validMask!0 mask!3464))))

(assert (=> start!86510 e!564257))

(declare-fun array_inv!23443 (array!63263) Bool)

(assert (=> start!86510 (array_inv!23443 a!3219)))

(assert (=> start!86510 true))

(declare-fun b!1001302 () Bool)

(declare-fun res!670937 () Bool)

(assert (=> b!1001302 (=> (not res!670937) (not e!564257))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001302 (= res!670937 (and (= (size!30956 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30956 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30956 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001303 () Bool)

(declare-fun res!670933 () Bool)

(assert (=> b!1001303 (=> (not res!670933) (not e!564260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63263 (_ BitVec 32)) Bool)

(assert (=> b!1001303 (= res!670933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001304 () Bool)

(assert (=> b!1001304 (= e!564257 e!564260)))

(declare-fun res!670947 () Bool)

(assert (=> b!1001304 (=> (not res!670947) (not e!564260))))

(declare-fun lt!442618 () SeekEntryResult!9385)

(assert (=> b!1001304 (= res!670947 (or (= lt!442618 (MissingVacant!9385 i!1194)) (= lt!442618 (MissingZero!9385 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63263 (_ BitVec 32)) SeekEntryResult!9385)

(assert (=> b!1001304 (= lt!442618 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001305 () Bool)

(declare-fun e!564259 () Bool)

(assert (=> b!1001305 (= e!564263 e!564259)))

(declare-fun res!670940 () Bool)

(assert (=> b!1001305 (=> (not res!670940) (not e!564259))))

(assert (=> b!1001305 (= res!670940 (= lt!442621 lt!442622))))

(assert (=> b!1001305 (= lt!442621 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30453 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001306 () Bool)

(declare-fun res!670943 () Bool)

(assert (=> b!1001306 (=> (not res!670943) (not e!564261))))

(assert (=> b!1001306 (= res!670943 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001307 () Bool)

(declare-fun res!670939 () Bool)

(assert (=> b!1001307 (=> (not res!670939) (not e!564257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001307 (= res!670939 (validKeyInArray!0 (select (arr!30453 a!3219) j!170)))))

(declare-fun b!1001308 () Bool)

(declare-fun res!670934 () Bool)

(assert (=> b!1001308 (=> (not res!670934) (not e!564257))))

(assert (=> b!1001308 (= res!670934 (validKeyInArray!0 k!2224))))

(declare-fun b!1001309 () Bool)

(declare-fun res!670938 () Bool)

(assert (=> b!1001309 (=> (not res!670938) (not e!564260))))

(assert (=> b!1001309 (= res!670938 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30956 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30956 a!3219))))))

(declare-fun b!1001310 () Bool)

(declare-fun res!670946 () Bool)

(declare-fun e!564258 () Bool)

(assert (=> b!1001310 (=> (not res!670946) (not e!564258))))

(declare-fun lt!442616 () (_ BitVec 32))

(assert (=> b!1001310 (= res!670946 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442616 (select (arr!30453 a!3219) j!170) a!3219 mask!3464) lt!442622))))

(declare-fun b!1001311 () Bool)

(declare-fun res!670948 () Bool)

(assert (=> b!1001311 (=> (not res!670948) (not e!564260))))

(declare-datatypes ((List!21255 0))(
  ( (Nil!21252) (Cons!21251 (h!22428 (_ BitVec 64)) (t!30264 List!21255)) )
))
(declare-fun arrayNoDuplicates!0 (array!63263 (_ BitVec 32) List!21255) Bool)

(assert (=> b!1001311 (= res!670948 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21252))))

(declare-fun b!1001312 () Bool)

(assert (=> b!1001312 (= e!564258 false)))

(declare-fun lt!442620 () SeekEntryResult!9385)

(assert (=> b!1001312 (= lt!442620 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442616 lt!442619 lt!442617 mask!3464))))

(declare-fun b!1001313 () Bool)

(assert (=> b!1001313 (= e!564261 e!564258)))

(declare-fun res!670936 () Bool)

(assert (=> b!1001313 (=> (not res!670936) (not e!564258))))

(assert (=> b!1001313 (= res!670936 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442616 #b00000000000000000000000000000000) (bvslt lt!442616 (size!30956 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001313 (= lt!442616 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001314 () Bool)

(assert (=> b!1001314 (= e!564259 e!564261)))

(declare-fun res!670944 () Bool)

(assert (=> b!1001314 (=> (not res!670944) (not e!564261))))

(assert (=> b!1001314 (= res!670944 (not (= lt!442623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442619 mask!3464) lt!442619 lt!442617 mask!3464))))))

(assert (=> b!1001314 (= lt!442619 (select (store (arr!30453 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001314 (= lt!442617 (array!63264 (store (arr!30453 a!3219) i!1194 k!2224) (size!30956 a!3219)))))

(assert (= (and start!86510 res!670935) b!1001302))

(assert (= (and b!1001302 res!670937) b!1001307))

(assert (= (and b!1001307 res!670939) b!1001308))

(assert (= (and b!1001308 res!670934) b!1001299))

(assert (= (and b!1001299 res!670945) b!1001304))

(assert (= (and b!1001304 res!670947) b!1001303))

(assert (= (and b!1001303 res!670933) b!1001311))

(assert (= (and b!1001311 res!670948) b!1001309))

(assert (= (and b!1001309 res!670938) b!1001301))

(assert (= (and b!1001301 res!670942) b!1001305))

(assert (= (and b!1001305 res!670940) b!1001314))

(assert (= (and b!1001314 res!670944) b!1001300))

(assert (= (and b!1001300 res!670941) b!1001306))

(assert (= (and b!1001306 res!670943) b!1001313))

(assert (= (and b!1001313 res!670936) b!1001310))

(assert (= (and b!1001310 res!670946) b!1001312))

(declare-fun m!927461 () Bool)

(assert (=> b!1001314 m!927461))

(assert (=> b!1001314 m!927461))

(declare-fun m!927463 () Bool)

(assert (=> b!1001314 m!927463))

(declare-fun m!927465 () Bool)

(assert (=> b!1001314 m!927465))

(declare-fun m!927467 () Bool)

(assert (=> b!1001314 m!927467))

(declare-fun m!927469 () Bool)

(assert (=> b!1001304 m!927469))

(declare-fun m!927471 () Bool)

(assert (=> b!1001303 m!927471))

(declare-fun m!927473 () Bool)

(assert (=> start!86510 m!927473))

(declare-fun m!927475 () Bool)

(assert (=> start!86510 m!927475))

(declare-fun m!927477 () Bool)

(assert (=> b!1001299 m!927477))

(declare-fun m!927479 () Bool)

(assert (=> b!1001301 m!927479))

(assert (=> b!1001301 m!927479))

(declare-fun m!927481 () Bool)

(assert (=> b!1001301 m!927481))

(assert (=> b!1001301 m!927481))

(assert (=> b!1001301 m!927479))

(declare-fun m!927483 () Bool)

(assert (=> b!1001301 m!927483))

(assert (=> b!1001310 m!927479))

(assert (=> b!1001310 m!927479))

(declare-fun m!927485 () Bool)

(assert (=> b!1001310 m!927485))

(assert (=> b!1001307 m!927479))

(assert (=> b!1001307 m!927479))

(declare-fun m!927487 () Bool)

(assert (=> b!1001307 m!927487))

(declare-fun m!927489 () Bool)

(assert (=> b!1001311 m!927489))

(declare-fun m!927491 () Bool)

(assert (=> b!1001300 m!927491))

(declare-fun m!927493 () Bool)

(assert (=> b!1001308 m!927493))

(declare-fun m!927495 () Bool)

(assert (=> b!1001312 m!927495))

(declare-fun m!927497 () Bool)

(assert (=> b!1001313 m!927497))

(assert (=> b!1001305 m!927479))

(assert (=> b!1001305 m!927479))

(declare-fun m!927499 () Bool)

(assert (=> b!1001305 m!927499))

(push 1)

