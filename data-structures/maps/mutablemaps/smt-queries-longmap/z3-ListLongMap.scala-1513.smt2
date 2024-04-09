; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28620 () Bool)

(assert start!28620)

(declare-fun b!292471 () Bool)

(declare-fun res!153567 () Bool)

(declare-fun e!185042 () Bool)

(assert (=> b!292471 (=> (not res!153567) (not e!185042))))

(declare-datatypes ((array!14788 0))(
  ( (array!14789 (arr!7016 (Array (_ BitVec 32) (_ BitVec 64))) (size!7368 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14788)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292471 (= res!153567 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292472 () Bool)

(declare-fun res!153565 () Bool)

(assert (=> b!292472 (=> (not res!153565) (not e!185042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292472 (= res!153565 (validKeyInArray!0 k0!2524))))

(declare-fun b!292473 () Bool)

(declare-fun res!153566 () Bool)

(assert (=> b!292473 (=> (not res!153566) (not e!185042))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292473 (= res!153566 (and (= (size!7368 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7368 a!3312))))))

(declare-fun b!292474 () Bool)

(declare-fun res!153568 () Bool)

(declare-fun e!185043 () Bool)

(assert (=> b!292474 (=> (not res!153568) (not e!185043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14788 (_ BitVec 32)) Bool)

(assert (=> b!292474 (= res!153568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292476 () Bool)

(assert (=> b!292476 (= e!185043 false)))

(declare-fun lt!144916 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2176 0))(
  ( (MissingZero!2176 (index!10874 (_ BitVec 32))) (Found!2176 (index!10875 (_ BitVec 32))) (Intermediate!2176 (undefined!2988 Bool) (index!10876 (_ BitVec 32)) (x!29031 (_ BitVec 32))) (Undefined!2176) (MissingVacant!2176 (index!10877 (_ BitVec 32))) )
))
(declare-fun lt!144914 () SeekEntryResult!2176)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14788 (_ BitVec 32)) SeekEntryResult!2176)

(assert (=> b!292476 (= lt!144914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144916 k0!2524 (array!14789 (store (arr!7016 a!3312) i!1256 k0!2524) (size!7368 a!3312)) mask!3809))))

(declare-fun lt!144915 () SeekEntryResult!2176)

(assert (=> b!292476 (= lt!144915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144916 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292476 (= lt!144916 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!153570 () Bool)

(assert (=> start!28620 (=> (not res!153570) (not e!185042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28620 (= res!153570 (validMask!0 mask!3809))))

(assert (=> start!28620 e!185042))

(assert (=> start!28620 true))

(declare-fun array_inv!4970 (array!14788) Bool)

(assert (=> start!28620 (array_inv!4970 a!3312)))

(declare-fun b!292475 () Bool)

(assert (=> b!292475 (= e!185042 e!185043)))

(declare-fun res!153569 () Bool)

(assert (=> b!292475 (=> (not res!153569) (not e!185043))))

(declare-fun lt!144917 () SeekEntryResult!2176)

(assert (=> b!292475 (= res!153569 (or (= lt!144917 (MissingZero!2176 i!1256)) (= lt!144917 (MissingVacant!2176 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14788 (_ BitVec 32)) SeekEntryResult!2176)

(assert (=> b!292475 (= lt!144917 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28620 res!153570) b!292473))

(assert (= (and b!292473 res!153566) b!292472))

(assert (= (and b!292472 res!153565) b!292471))

(assert (= (and b!292471 res!153567) b!292475))

(assert (= (and b!292475 res!153569) b!292474))

(assert (= (and b!292474 res!153568) b!292476))

(declare-fun m!306255 () Bool)

(assert (=> b!292476 m!306255))

(declare-fun m!306257 () Bool)

(assert (=> b!292476 m!306257))

(declare-fun m!306259 () Bool)

(assert (=> b!292476 m!306259))

(declare-fun m!306261 () Bool)

(assert (=> b!292476 m!306261))

(declare-fun m!306263 () Bool)

(assert (=> start!28620 m!306263))

(declare-fun m!306265 () Bool)

(assert (=> start!28620 m!306265))

(declare-fun m!306267 () Bool)

(assert (=> b!292475 m!306267))

(declare-fun m!306269 () Bool)

(assert (=> b!292472 m!306269))

(declare-fun m!306271 () Bool)

(assert (=> b!292474 m!306271))

(declare-fun m!306273 () Bool)

(assert (=> b!292471 m!306273))

(check-sat (not b!292475) (not b!292471) (not start!28620) (not b!292474) (not b!292472) (not b!292476))
(check-sat)
