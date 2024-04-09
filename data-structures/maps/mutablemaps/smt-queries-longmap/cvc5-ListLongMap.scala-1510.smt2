; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28600 () Bool)

(assert start!28600)

(declare-fun b!292277 () Bool)

(declare-fun e!184940 () Bool)

(declare-fun e!184941 () Bool)

(assert (=> b!292277 (= e!184940 e!184941)))

(declare-fun res!153375 () Bool)

(assert (=> b!292277 (=> (not res!153375) (not e!184941))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2166 0))(
  ( (MissingZero!2166 (index!10834 (_ BitVec 32))) (Found!2166 (index!10835 (_ BitVec 32))) (Intermediate!2166 (undefined!2978 Bool) (index!10836 (_ BitVec 32)) (x!28997 (_ BitVec 32))) (Undefined!2166) (MissingVacant!2166 (index!10837 (_ BitVec 32))) )
))
(declare-fun lt!144777 () SeekEntryResult!2166)

(declare-fun lt!144779 () Bool)

(assert (=> b!292277 (= res!153375 (and (not lt!144779) (= lt!144777 (MissingVacant!2166 i!1256))))))

(declare-fun lt!144774 () (_ BitVec 32))

(declare-datatypes ((array!14768 0))(
  ( (array!14769 (arr!7006 (Array (_ BitVec 32) (_ BitVec 64))) (size!7358 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14768)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!144775 () SeekEntryResult!2166)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14768 (_ BitVec 32)) SeekEntryResult!2166)

(assert (=> b!292277 (= lt!144775 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144774 k!2524 (array!14769 (store (arr!7006 a!3312) i!1256 k!2524) (size!7358 a!3312)) mask!3809))))

(declare-fun lt!144778 () SeekEntryResult!2166)

(assert (=> b!292277 (= lt!144778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144774 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292277 (= lt!144774 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153374 () Bool)

(declare-fun e!184938 () Bool)

(assert (=> start!28600 (=> (not res!153374) (not e!184938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28600 (= res!153374 (validMask!0 mask!3809))))

(assert (=> start!28600 e!184938))

(assert (=> start!28600 true))

(declare-fun array_inv!4960 (array!14768) Bool)

(assert (=> start!28600 (array_inv!4960 a!3312)))

(declare-fun b!292278 () Bool)

(declare-fun res!153372 () Bool)

(assert (=> b!292278 (=> (not res!153372) (not e!184938))))

(declare-fun arrayContainsKey!0 (array!14768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292278 (= res!153372 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292279 () Bool)

(declare-fun res!153371 () Bool)

(assert (=> b!292279 (=> (not res!153371) (not e!184938))))

(assert (=> b!292279 (= res!153371 (and (= (size!7358 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7358 a!3312))))))

(declare-fun b!292280 () Bool)

(declare-fun e!184942 () Bool)

(assert (=> b!292280 (= e!184942 (not true))))

(declare-datatypes ((Unit!9163 0))(
  ( (Unit!9164) )
))
(declare-fun lt!144773 () Unit!9163)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14768 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9163)

(assert (=> b!292280 (= lt!144773 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144774 (index!10836 lt!144778) (x!28997 lt!144778) mask!3809))))

(assert (=> b!292280 (= (index!10836 lt!144778) i!1256)))

(declare-fun b!292281 () Bool)

(assert (=> b!292281 (= e!184941 e!184942)))

(declare-fun res!153373 () Bool)

(assert (=> b!292281 (=> (not res!153373) (not e!184942))))

(declare-fun lt!144776 () Bool)

(assert (=> b!292281 (= res!153373 (and (or lt!144776 (not (undefined!2978 lt!144778))) (not lt!144776) (= (select (arr!7006 a!3312) (index!10836 lt!144778)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292281 (= lt!144776 (not (is-Intermediate!2166 lt!144778)))))

(declare-fun b!292282 () Bool)

(declare-fun res!153377 () Bool)

(assert (=> b!292282 (=> (not res!153377) (not e!184940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14768 (_ BitVec 32)) Bool)

(assert (=> b!292282 (= res!153377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292283 () Bool)

(assert (=> b!292283 (= e!184938 e!184940)))

(declare-fun res!153376 () Bool)

(assert (=> b!292283 (=> (not res!153376) (not e!184940))))

(assert (=> b!292283 (= res!153376 (or lt!144779 (= lt!144777 (MissingVacant!2166 i!1256))))))

(assert (=> b!292283 (= lt!144779 (= lt!144777 (MissingZero!2166 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14768 (_ BitVec 32)) SeekEntryResult!2166)

(assert (=> b!292283 (= lt!144777 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292284 () Bool)

(declare-fun res!153378 () Bool)

(assert (=> b!292284 (=> (not res!153378) (not e!184938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292284 (= res!153378 (validKeyInArray!0 k!2524))))

(assert (= (and start!28600 res!153374) b!292279))

(assert (= (and b!292279 res!153371) b!292284))

(assert (= (and b!292284 res!153378) b!292278))

(assert (= (and b!292278 res!153372) b!292283))

(assert (= (and b!292283 res!153376) b!292282))

(assert (= (and b!292282 res!153377) b!292277))

(assert (= (and b!292277 res!153375) b!292281))

(assert (= (and b!292281 res!153373) b!292280))

(declare-fun m!306043 () Bool)

(assert (=> b!292281 m!306043))

(declare-fun m!306045 () Bool)

(assert (=> start!28600 m!306045))

(declare-fun m!306047 () Bool)

(assert (=> start!28600 m!306047))

(declare-fun m!306049 () Bool)

(assert (=> b!292277 m!306049))

(declare-fun m!306051 () Bool)

(assert (=> b!292277 m!306051))

(declare-fun m!306053 () Bool)

(assert (=> b!292277 m!306053))

(declare-fun m!306055 () Bool)

(assert (=> b!292277 m!306055))

(declare-fun m!306057 () Bool)

(assert (=> b!292278 m!306057))

(declare-fun m!306059 () Bool)

(assert (=> b!292282 m!306059))

(declare-fun m!306061 () Bool)

(assert (=> b!292280 m!306061))

(declare-fun m!306063 () Bool)

(assert (=> b!292283 m!306063))

(declare-fun m!306065 () Bool)

(assert (=> b!292284 m!306065))

(push 1)

(assert (not b!292278))

(assert (not b!292284))

(assert (not b!292280))

(assert (not start!28600))

