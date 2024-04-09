; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29824 () Bool)

(assert start!29824)

(declare-fun b!299974 () Bool)

(declare-fun res!158169 () Bool)

(declare-fun e!189455 () Bool)

(assert (=> b!299974 (=> (not res!158169) (not e!189455))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15150 0))(
  ( (array!15151 (arr!7170 (Array (_ BitVec 32) (_ BitVec 64))) (size!7522 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15150)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!299974 (= res!158169 (and (= (size!7522 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7522 a!3312))))))

(declare-fun b!299975 () Bool)

(declare-fun res!158166 () Bool)

(assert (=> b!299975 (=> (not res!158166) (not e!189455))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299975 (= res!158166 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299976 () Bool)

(declare-fun e!189457 () Bool)

(assert (=> b!299976 (= e!189457 false)))

(declare-datatypes ((SeekEntryResult!2330 0))(
  ( (MissingZero!2330 (index!11496 (_ BitVec 32))) (Found!2330 (index!11497 (_ BitVec 32))) (Intermediate!2330 (undefined!3142 Bool) (index!11498 (_ BitVec 32)) (x!29713 (_ BitVec 32))) (Undefined!2330) (MissingVacant!2330 (index!11499 (_ BitVec 32))) )
))
(declare-fun lt!149261 () SeekEntryResult!2330)

(declare-fun lt!149258 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15150 (_ BitVec 32)) SeekEntryResult!2330)

(assert (=> b!299976 (= lt!149261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149258 k!2524 (array!15151 (store (arr!7170 a!3312) i!1256 k!2524) (size!7522 a!3312)) mask!3809))))

(declare-fun lt!149259 () SeekEntryResult!2330)

(assert (=> b!299976 (= lt!149259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149258 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299976 (= lt!149258 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!158164 () Bool)

(assert (=> start!29824 (=> (not res!158164) (not e!189455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29824 (= res!158164 (validMask!0 mask!3809))))

(assert (=> start!29824 e!189455))

(assert (=> start!29824 true))

(declare-fun array_inv!5124 (array!15150) Bool)

(assert (=> start!29824 (array_inv!5124 a!3312)))

(declare-fun b!299977 () Bool)

(assert (=> b!299977 (= e!189455 e!189457)))

(declare-fun res!158168 () Bool)

(assert (=> b!299977 (=> (not res!158168) (not e!189457))))

(declare-fun lt!149260 () SeekEntryResult!2330)

(assert (=> b!299977 (= res!158168 (or (= lt!149260 (MissingZero!2330 i!1256)) (= lt!149260 (MissingVacant!2330 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15150 (_ BitVec 32)) SeekEntryResult!2330)

(assert (=> b!299977 (= lt!149260 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299978 () Bool)

(declare-fun res!158167 () Bool)

(assert (=> b!299978 (=> (not res!158167) (not e!189455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299978 (= res!158167 (validKeyInArray!0 k!2524))))

(declare-fun b!299979 () Bool)

(declare-fun res!158165 () Bool)

(assert (=> b!299979 (=> (not res!158165) (not e!189457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15150 (_ BitVec 32)) Bool)

(assert (=> b!299979 (= res!158165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29824 res!158164) b!299974))

(assert (= (and b!299974 res!158169) b!299978))

(assert (= (and b!299978 res!158167) b!299975))

(assert (= (and b!299975 res!158166) b!299977))

(assert (= (and b!299977 res!158168) b!299979))

(assert (= (and b!299979 res!158165) b!299976))

(declare-fun m!312053 () Bool)

(assert (=> b!299975 m!312053))

(declare-fun m!312055 () Bool)

(assert (=> b!299978 m!312055))

(declare-fun m!312057 () Bool)

(assert (=> b!299979 m!312057))

(declare-fun m!312059 () Bool)

(assert (=> b!299976 m!312059))

(declare-fun m!312061 () Bool)

(assert (=> b!299976 m!312061))

(declare-fun m!312063 () Bool)

(assert (=> b!299976 m!312063))

(declare-fun m!312065 () Bool)

(assert (=> b!299976 m!312065))

(declare-fun m!312067 () Bool)

(assert (=> b!299977 m!312067))

(declare-fun m!312069 () Bool)

(assert (=> start!29824 m!312069))

(declare-fun m!312071 () Bool)

(assert (=> start!29824 m!312071))

(push 1)

(assert (not b!299976))

(assert (not b!299975))

(assert (not start!29824))

(assert (not b!299977))

