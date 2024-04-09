; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28442 () Bool)

(assert start!28442)

(declare-fun b!291101 () Bool)

(declare-fun e!184210 () Bool)

(declare-fun e!184213 () Bool)

(assert (=> b!291101 (= e!184210 e!184213)))

(declare-fun res!152477 () Bool)

(assert (=> b!291101 (=> (not res!152477) (not e!184213))))

(declare-datatypes ((SeekEntryResult!2135 0))(
  ( (MissingZero!2135 (index!10710 (_ BitVec 32))) (Found!2135 (index!10711 (_ BitVec 32))) (Intermediate!2135 (undefined!2947 Bool) (index!10712 (_ BitVec 32)) (x!28866 (_ BitVec 32))) (Undefined!2135) (MissingVacant!2135 (index!10713 (_ BitVec 32))) )
))
(declare-fun lt!143996 () SeekEntryResult!2135)

(declare-fun lt!143998 () Bool)

(declare-datatypes ((array!14700 0))(
  ( (array!14701 (arr!6975 (Array (_ BitVec 32) (_ BitVec 64))) (size!7327 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14700)

(assert (=> b!291101 (= res!152477 (and (or lt!143998 (not (undefined!2947 lt!143996))) (not lt!143998) (= (select (arr!6975 a!3312) (index!10712 lt!143996)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291101 (= lt!143998 (not (is-Intermediate!2135 lt!143996)))))

(declare-fun b!291102 () Bool)

(declare-fun e!184212 () Bool)

(assert (=> b!291102 (= e!184212 e!184210)))

(declare-fun res!152480 () Bool)

(assert (=> b!291102 (=> (not res!152480) (not e!184210))))

(declare-fun lt!143997 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143995 () SeekEntryResult!2135)

(assert (=> b!291102 (= res!152480 (and (not lt!143997) (= lt!143995 (MissingVacant!2135 i!1256))))))

(declare-fun lt!143994 () SeekEntryResult!2135)

(declare-fun lt!143999 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14700 (_ BitVec 32)) SeekEntryResult!2135)

(assert (=> b!291102 (= lt!143994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143999 k!2524 (array!14701 (store (arr!6975 a!3312) i!1256 k!2524) (size!7327 a!3312)) mask!3809))))

(assert (=> b!291102 (= lt!143996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143999 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291102 (= lt!143999 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291103 () Bool)

(declare-fun res!152484 () Bool)

(assert (=> b!291103 (=> (not res!152484) (not e!184212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14700 (_ BitVec 32)) Bool)

(assert (=> b!291103 (= res!152484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291104 () Bool)

(assert (=> b!291104 (= e!184213 (not true))))

(assert (=> b!291104 (= (index!10712 lt!143996) i!1256)))

(declare-fun b!291105 () Bool)

(declare-fun res!152481 () Bool)

(declare-fun e!184211 () Bool)

(assert (=> b!291105 (=> (not res!152481) (not e!184211))))

(declare-fun arrayContainsKey!0 (array!14700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291105 (= res!152481 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!152479 () Bool)

(assert (=> start!28442 (=> (not res!152479) (not e!184211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28442 (= res!152479 (validMask!0 mask!3809))))

(assert (=> start!28442 e!184211))

(assert (=> start!28442 true))

(declare-fun array_inv!4929 (array!14700) Bool)

(assert (=> start!28442 (array_inv!4929 a!3312)))

(declare-fun b!291106 () Bool)

(declare-fun res!152483 () Bool)

(assert (=> b!291106 (=> (not res!152483) (not e!184211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291106 (= res!152483 (validKeyInArray!0 k!2524))))

(declare-fun b!291107 () Bool)

(assert (=> b!291107 (= e!184211 e!184212)))

(declare-fun res!152482 () Bool)

(assert (=> b!291107 (=> (not res!152482) (not e!184212))))

(assert (=> b!291107 (= res!152482 (or lt!143997 (= lt!143995 (MissingVacant!2135 i!1256))))))

(assert (=> b!291107 (= lt!143997 (= lt!143995 (MissingZero!2135 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14700 (_ BitVec 32)) SeekEntryResult!2135)

(assert (=> b!291107 (= lt!143995 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291108 () Bool)

(declare-fun res!152478 () Bool)

(assert (=> b!291108 (=> (not res!152478) (not e!184211))))

(assert (=> b!291108 (= res!152478 (and (= (size!7327 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7327 a!3312))))))

(assert (= (and start!28442 res!152479) b!291108))

(assert (= (and b!291108 res!152478) b!291106))

(assert (= (and b!291106 res!152483) b!291105))

(assert (= (and b!291105 res!152481) b!291107))

(assert (= (and b!291107 res!152482) b!291103))

(assert (= (and b!291103 res!152484) b!291102))

(assert (= (and b!291102 res!152480) b!291101))

(assert (= (and b!291101 res!152477) b!291104))

(declare-fun m!305103 () Bool)

(assert (=> b!291105 m!305103))

(declare-fun m!305105 () Bool)

(assert (=> b!291103 m!305105))

(declare-fun m!305107 () Bool)

(assert (=> b!291102 m!305107))

(declare-fun m!305109 () Bool)

(assert (=> b!291102 m!305109))

(declare-fun m!305111 () Bool)

(assert (=> b!291102 m!305111))

(declare-fun m!305113 () Bool)

(assert (=> b!291102 m!305113))

(declare-fun m!305115 () Bool)

(assert (=> start!28442 m!305115))

(declare-fun m!305117 () Bool)

(assert (=> start!28442 m!305117))

(declare-fun m!305119 () Bool)

(assert (=> b!291107 m!305119))

(declare-fun m!305121 () Bool)

(assert (=> b!291101 m!305121))

(declare-fun m!305123 () Bool)

(assert (=> b!291106 m!305123))

(push 1)

(assert (not start!28442))

