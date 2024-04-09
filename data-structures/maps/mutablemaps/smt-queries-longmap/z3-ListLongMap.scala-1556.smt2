; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29516 () Bool)

(assert start!29516)

(declare-fun b!298173 () Bool)

(declare-fun res!157267 () Bool)

(declare-fun e!188405 () Bool)

(assert (=> b!298173 (=> (not res!157267) (not e!188405))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15085 0))(
  ( (array!15086 (arr!7145 (Array (_ BitVec 32) (_ BitVec 64))) (size!7497 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15085)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298173 (= res!157267 (and (= (size!7497 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7497 a!3312))))))

(declare-fun b!298174 () Bool)

(declare-fun res!157265 () Bool)

(declare-fun e!188404 () Bool)

(assert (=> b!298174 (=> (not res!157265) (not e!188404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15085 (_ BitVec 32)) Bool)

(assert (=> b!298174 (= res!157265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298175 () Bool)

(declare-fun res!157264 () Bool)

(assert (=> b!298175 (=> (not res!157264) (not e!188405))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298175 (= res!157264 (validKeyInArray!0 k0!2524))))

(declare-fun b!298176 () Bool)

(declare-fun res!157266 () Bool)

(assert (=> b!298176 (=> (not res!157266) (not e!188405))))

(declare-fun arrayContainsKey!0 (array!15085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298176 (= res!157266 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157269 () Bool)

(assert (=> start!29516 (=> (not res!157269) (not e!188405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29516 (= res!157269 (validMask!0 mask!3809))))

(assert (=> start!29516 e!188405))

(assert (=> start!29516 true))

(declare-fun array_inv!5099 (array!15085) Bool)

(assert (=> start!29516 (array_inv!5099 a!3312)))

(declare-fun b!298177 () Bool)

(assert (=> b!298177 (= e!188405 e!188404)))

(declare-fun res!157268 () Bool)

(assert (=> b!298177 (=> (not res!157268) (not e!188404))))

(declare-datatypes ((SeekEntryResult!2305 0))(
  ( (MissingZero!2305 (index!11393 (_ BitVec 32))) (Found!2305 (index!11394 (_ BitVec 32))) (Intermediate!2305 (undefined!3117 Bool) (index!11395 (_ BitVec 32)) (x!29587 (_ BitVec 32))) (Undefined!2305) (MissingVacant!2305 (index!11396 (_ BitVec 32))) )
))
(declare-fun lt!148280 () SeekEntryResult!2305)

(assert (=> b!298177 (= res!157268 (or (= lt!148280 (MissingZero!2305 i!1256)) (= lt!148280 (MissingVacant!2305 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15085 (_ BitVec 32)) SeekEntryResult!2305)

(assert (=> b!298177 (= lt!148280 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!298178 () Bool)

(assert (=> b!298178 (= e!188404 false)))

(declare-fun lt!148279 () SeekEntryResult!2305)

(declare-fun lt!148278 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15085 (_ BitVec 32)) SeekEntryResult!2305)

(assert (=> b!298178 (= lt!148279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148278 k0!2524 (array!15086 (store (arr!7145 a!3312) i!1256 k0!2524) (size!7497 a!3312)) mask!3809))))

(declare-fun lt!148277 () SeekEntryResult!2305)

(assert (=> b!298178 (= lt!148277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148278 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298178 (= lt!148278 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!29516 res!157269) b!298173))

(assert (= (and b!298173 res!157267) b!298175))

(assert (= (and b!298175 res!157264) b!298176))

(assert (= (and b!298176 res!157266) b!298177))

(assert (= (and b!298177 res!157268) b!298174))

(assert (= (and b!298174 res!157265) b!298178))

(declare-fun m!310723 () Bool)

(assert (=> b!298177 m!310723))

(declare-fun m!310725 () Bool)

(assert (=> b!298178 m!310725))

(declare-fun m!310727 () Bool)

(assert (=> b!298178 m!310727))

(declare-fun m!310729 () Bool)

(assert (=> b!298178 m!310729))

(declare-fun m!310731 () Bool)

(assert (=> b!298178 m!310731))

(declare-fun m!310733 () Bool)

(assert (=> b!298175 m!310733))

(declare-fun m!310735 () Bool)

(assert (=> b!298174 m!310735))

(declare-fun m!310737 () Bool)

(assert (=> start!29516 m!310737))

(declare-fun m!310739 () Bool)

(assert (=> start!29516 m!310739))

(declare-fun m!310741 () Bool)

(assert (=> b!298176 m!310741))

(check-sat (not start!29516) (not b!298174) (not b!298177) (not b!298175) (not b!298176) (not b!298178))
(check-sat)
