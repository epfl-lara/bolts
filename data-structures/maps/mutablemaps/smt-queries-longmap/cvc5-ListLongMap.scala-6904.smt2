; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86818 () Bool)

(assert start!86818)

(declare-fun b!1006098 () Bool)

(declare-fun res!675345 () Bool)

(declare-fun e!566387 () Bool)

(assert (=> b!1006098 (=> (not res!675345) (not e!566387))))

(declare-datatypes ((array!63469 0))(
  ( (array!63470 (arr!30553 (Array (_ BitVec 32) (_ BitVec 64))) (size!31056 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63469)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006098 (= res!675345 (validKeyInArray!0 (select (arr!30553 a!3219) j!170)))))

(declare-fun b!1006099 () Bool)

(declare-fun e!566389 () Bool)

(assert (=> b!1006099 (= e!566389 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9485 0))(
  ( (MissingZero!9485 (index!40310 (_ BitVec 32))) (Found!9485 (index!40311 (_ BitVec 32))) (Intermediate!9485 (undefined!10297 Bool) (index!40312 (_ BitVec 32)) (x!87742 (_ BitVec 32))) (Undefined!9485) (MissingVacant!9485 (index!40313 (_ BitVec 32))) )
))
(declare-fun lt!444677 () SeekEntryResult!9485)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63469 (_ BitVec 32)) SeekEntryResult!9485)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006099 (= lt!444677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30553 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30553 a!3219) i!1194 k!2224) j!170) (array!63470 (store (arr!30553 a!3219) i!1194 k!2224) (size!31056 a!3219)) mask!3464))))

(declare-fun res!675349 () Bool)

(assert (=> start!86818 (=> (not res!675349) (not e!566387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86818 (= res!675349 (validMask!0 mask!3464))))

(assert (=> start!86818 e!566387))

(declare-fun array_inv!23543 (array!63469) Bool)

(assert (=> start!86818 (array_inv!23543 a!3219)))

(assert (=> start!86818 true))

(declare-fun b!1006100 () Bool)

(declare-fun e!566390 () Bool)

(assert (=> b!1006100 (= e!566390 e!566389)))

(declare-fun res!675346 () Bool)

(assert (=> b!1006100 (=> (not res!675346) (not e!566389))))

(declare-fun lt!444678 () SeekEntryResult!9485)

(assert (=> b!1006100 (= res!675346 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30553 a!3219) j!170) mask!3464) (select (arr!30553 a!3219) j!170) a!3219 mask!3464) lt!444678))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006100 (= lt!444678 (Intermediate!9485 false resIndex!38 resX!38))))

(declare-fun b!1006101 () Bool)

(declare-fun res!675343 () Bool)

(assert (=> b!1006101 (=> (not res!675343) (not e!566390))))

(declare-datatypes ((List!21355 0))(
  ( (Nil!21352) (Cons!21351 (h!22534 (_ BitVec 64)) (t!30364 List!21355)) )
))
(declare-fun arrayNoDuplicates!0 (array!63469 (_ BitVec 32) List!21355) Bool)

(assert (=> b!1006101 (= res!675343 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21352))))

(declare-fun b!1006102 () Bool)

(declare-fun res!675344 () Bool)

(assert (=> b!1006102 (=> (not res!675344) (not e!566387))))

(assert (=> b!1006102 (= res!675344 (validKeyInArray!0 k!2224))))

(declare-fun b!1006103 () Bool)

(declare-fun res!675347 () Bool)

(assert (=> b!1006103 (=> (not res!675347) (not e!566387))))

(declare-fun arrayContainsKey!0 (array!63469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006103 (= res!675347 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006104 () Bool)

(declare-fun res!675351 () Bool)

(assert (=> b!1006104 (=> (not res!675351) (not e!566387))))

(assert (=> b!1006104 (= res!675351 (and (= (size!31056 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31056 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31056 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006105 () Bool)

(declare-fun res!675342 () Bool)

(assert (=> b!1006105 (=> (not res!675342) (not e!566390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63469 (_ BitVec 32)) Bool)

(assert (=> b!1006105 (= res!675342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006106 () Bool)

(declare-fun res!675348 () Bool)

(assert (=> b!1006106 (=> (not res!675348) (not e!566389))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006106 (= res!675348 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30553 a!3219) j!170) a!3219 mask!3464) lt!444678))))

(declare-fun b!1006107 () Bool)

(declare-fun res!675352 () Bool)

(assert (=> b!1006107 (=> (not res!675352) (not e!566390))))

(assert (=> b!1006107 (= res!675352 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31056 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31056 a!3219))))))

(declare-fun b!1006108 () Bool)

(assert (=> b!1006108 (= e!566387 e!566390)))

(declare-fun res!675350 () Bool)

(assert (=> b!1006108 (=> (not res!675350) (not e!566390))))

(declare-fun lt!444676 () SeekEntryResult!9485)

(assert (=> b!1006108 (= res!675350 (or (= lt!444676 (MissingVacant!9485 i!1194)) (= lt!444676 (MissingZero!9485 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63469 (_ BitVec 32)) SeekEntryResult!9485)

(assert (=> b!1006108 (= lt!444676 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86818 res!675349) b!1006104))

(assert (= (and b!1006104 res!675351) b!1006098))

(assert (= (and b!1006098 res!675345) b!1006102))

(assert (= (and b!1006102 res!675344) b!1006103))

(assert (= (and b!1006103 res!675347) b!1006108))

(assert (= (and b!1006108 res!675350) b!1006105))

(assert (= (and b!1006105 res!675342) b!1006101))

(assert (= (and b!1006101 res!675343) b!1006107))

(assert (= (and b!1006107 res!675352) b!1006100))

(assert (= (and b!1006100 res!675346) b!1006106))

(assert (= (and b!1006106 res!675348) b!1006099))

(declare-fun m!931317 () Bool)

(assert (=> b!1006108 m!931317))

(declare-fun m!931319 () Bool)

(assert (=> b!1006099 m!931319))

(declare-fun m!931321 () Bool)

(assert (=> b!1006099 m!931321))

(assert (=> b!1006099 m!931321))

(declare-fun m!931323 () Bool)

(assert (=> b!1006099 m!931323))

(assert (=> b!1006099 m!931323))

(assert (=> b!1006099 m!931321))

(declare-fun m!931325 () Bool)

(assert (=> b!1006099 m!931325))

(declare-fun m!931327 () Bool)

(assert (=> b!1006101 m!931327))

(declare-fun m!931329 () Bool)

(assert (=> b!1006103 m!931329))

(declare-fun m!931331 () Bool)

(assert (=> b!1006100 m!931331))

(assert (=> b!1006100 m!931331))

(declare-fun m!931333 () Bool)

(assert (=> b!1006100 m!931333))

(assert (=> b!1006100 m!931333))

(assert (=> b!1006100 m!931331))

(declare-fun m!931335 () Bool)

(assert (=> b!1006100 m!931335))

(declare-fun m!931337 () Bool)

(assert (=> b!1006105 m!931337))

(assert (=> b!1006098 m!931331))

(assert (=> b!1006098 m!931331))

(declare-fun m!931339 () Bool)

(assert (=> b!1006098 m!931339))

(declare-fun m!931341 () Bool)

(assert (=> b!1006102 m!931341))

(declare-fun m!931343 () Bool)

(assert (=> start!86818 m!931343))

(declare-fun m!931345 () Bool)

(assert (=> start!86818 m!931345))

(assert (=> b!1006106 m!931331))

(assert (=> b!1006106 m!931331))

(declare-fun m!931347 () Bool)

(assert (=> b!1006106 m!931347))

(push 1)

