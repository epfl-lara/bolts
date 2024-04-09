; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29514 () Bool)

(assert start!29514)

(declare-fun b!298155 () Bool)

(declare-fun res!157251 () Bool)

(declare-fun e!188395 () Bool)

(assert (=> b!298155 (=> (not res!157251) (not e!188395))))

(declare-datatypes ((array!15083 0))(
  ( (array!15084 (arr!7144 (Array (_ BitVec 32) (_ BitVec 64))) (size!7496 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15083)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15083 (_ BitVec 32)) Bool)

(assert (=> b!298155 (= res!157251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298156 () Bool)

(declare-fun e!188394 () Bool)

(assert (=> b!298156 (= e!188394 e!188395)))

(declare-fun res!157250 () Bool)

(assert (=> b!298156 (=> (not res!157250) (not e!188395))))

(declare-datatypes ((SeekEntryResult!2304 0))(
  ( (MissingZero!2304 (index!11389 (_ BitVec 32))) (Found!2304 (index!11390 (_ BitVec 32))) (Intermediate!2304 (undefined!3116 Bool) (index!11391 (_ BitVec 32)) (x!29586 (_ BitVec 32))) (Undefined!2304) (MissingVacant!2304 (index!11392 (_ BitVec 32))) )
))
(declare-fun lt!148268 () SeekEntryResult!2304)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!298156 (= res!157250 (or (= lt!148268 (MissingZero!2304 i!1256)) (= lt!148268 (MissingVacant!2304 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15083 (_ BitVec 32)) SeekEntryResult!2304)

(assert (=> b!298156 (= lt!148268 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298157 () Bool)

(declare-fun res!157249 () Bool)

(assert (=> b!298157 (=> (not res!157249) (not e!188394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298157 (= res!157249 (validKeyInArray!0 k!2524))))

(declare-fun b!298158 () Bool)

(declare-fun res!157248 () Bool)

(assert (=> b!298158 (=> (not res!157248) (not e!188394))))

(declare-fun arrayContainsKey!0 (array!15083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298158 (= res!157248 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298159 () Bool)

(assert (=> b!298159 (= e!188395 false)))

(declare-fun lt!148267 () SeekEntryResult!2304)

(declare-fun lt!148265 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15083 (_ BitVec 32)) SeekEntryResult!2304)

(assert (=> b!298159 (= lt!148267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148265 k!2524 (array!15084 (store (arr!7144 a!3312) i!1256 k!2524) (size!7496 a!3312)) mask!3809))))

(declare-fun lt!148266 () SeekEntryResult!2304)

(assert (=> b!298159 (= lt!148266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148265 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298159 (= lt!148265 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298160 () Bool)

(declare-fun res!157246 () Bool)

(assert (=> b!298160 (=> (not res!157246) (not e!188394))))

(assert (=> b!298160 (= res!157246 (and (= (size!7496 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7496 a!3312))))))

(declare-fun res!157247 () Bool)

(assert (=> start!29514 (=> (not res!157247) (not e!188394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29514 (= res!157247 (validMask!0 mask!3809))))

(assert (=> start!29514 e!188394))

(assert (=> start!29514 true))

(declare-fun array_inv!5098 (array!15083) Bool)

(assert (=> start!29514 (array_inv!5098 a!3312)))

(assert (= (and start!29514 res!157247) b!298160))

(assert (= (and b!298160 res!157246) b!298157))

(assert (= (and b!298157 res!157249) b!298158))

(assert (= (and b!298158 res!157248) b!298156))

(assert (= (and b!298156 res!157250) b!298155))

(assert (= (and b!298155 res!157251) b!298159))

(declare-fun m!310703 () Bool)

(assert (=> start!29514 m!310703))

(declare-fun m!310705 () Bool)

(assert (=> start!29514 m!310705))

(declare-fun m!310707 () Bool)

(assert (=> b!298155 m!310707))

(declare-fun m!310709 () Bool)

(assert (=> b!298159 m!310709))

(declare-fun m!310711 () Bool)

(assert (=> b!298159 m!310711))

(declare-fun m!310713 () Bool)

(assert (=> b!298159 m!310713))

(declare-fun m!310715 () Bool)

(assert (=> b!298159 m!310715))

(declare-fun m!310717 () Bool)

(assert (=> b!298158 m!310717))

(declare-fun m!310719 () Bool)

(assert (=> b!298157 m!310719))

(declare-fun m!310721 () Bool)

(assert (=> b!298156 m!310721))

(push 1)

