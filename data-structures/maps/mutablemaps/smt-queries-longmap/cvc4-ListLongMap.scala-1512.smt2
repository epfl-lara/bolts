; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28616 () Bool)

(assert start!28616)

(declare-fun b!292435 () Bool)

(declare-fun e!185026 () Bool)

(declare-fun e!185024 () Bool)

(assert (=> b!292435 (= e!185026 e!185024)))

(declare-fun res!153530 () Bool)

(assert (=> b!292435 (=> (not res!153530) (not e!185024))))

(declare-datatypes ((SeekEntryResult!2174 0))(
  ( (MissingZero!2174 (index!10866 (_ BitVec 32))) (Found!2174 (index!10867 (_ BitVec 32))) (Intermediate!2174 (undefined!2986 Bool) (index!10868 (_ BitVec 32)) (x!29021 (_ BitVec 32))) (Undefined!2174) (MissingVacant!2174 (index!10869 (_ BitVec 32))) )
))
(declare-fun lt!144891 () SeekEntryResult!2174)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292435 (= res!153530 (or (= lt!144891 (MissingZero!2174 i!1256)) (= lt!144891 (MissingVacant!2174 i!1256))))))

(declare-datatypes ((array!14784 0))(
  ( (array!14785 (arr!7014 (Array (_ BitVec 32) (_ BitVec 64))) (size!7366 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14784)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14784 (_ BitVec 32)) SeekEntryResult!2174)

(assert (=> b!292435 (= lt!144891 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153532 () Bool)

(assert (=> start!28616 (=> (not res!153532) (not e!185026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28616 (= res!153532 (validMask!0 mask!3809))))

(assert (=> start!28616 e!185026))

(assert (=> start!28616 true))

(declare-fun array_inv!4968 (array!14784) Bool)

(assert (=> start!28616 (array_inv!4968 a!3312)))

(declare-fun b!292436 () Bool)

(declare-fun res!153533 () Bool)

(assert (=> b!292436 (=> (not res!153533) (not e!185024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14784 (_ BitVec 32)) Bool)

(assert (=> b!292436 (= res!153533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292437 () Bool)

(declare-fun res!153534 () Bool)

(assert (=> b!292437 (=> (not res!153534) (not e!185026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292437 (= res!153534 (validKeyInArray!0 k!2524))))

(declare-fun b!292438 () Bool)

(assert (=> b!292438 (= e!185024 false)))

(declare-fun lt!144893 () SeekEntryResult!2174)

(declare-fun lt!144890 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14784 (_ BitVec 32)) SeekEntryResult!2174)

(assert (=> b!292438 (= lt!144893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144890 k!2524 (array!14785 (store (arr!7014 a!3312) i!1256 k!2524) (size!7366 a!3312)) mask!3809))))

(declare-fun lt!144892 () SeekEntryResult!2174)

(assert (=> b!292438 (= lt!144892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144890 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292438 (= lt!144890 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292439 () Bool)

(declare-fun res!153529 () Bool)

(assert (=> b!292439 (=> (not res!153529) (not e!185026))))

(assert (=> b!292439 (= res!153529 (and (= (size!7366 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7366 a!3312))))))

(declare-fun b!292440 () Bool)

(declare-fun res!153531 () Bool)

(assert (=> b!292440 (=> (not res!153531) (not e!185026))))

(declare-fun arrayContainsKey!0 (array!14784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292440 (= res!153531 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28616 res!153532) b!292439))

(assert (= (and b!292439 res!153529) b!292437))

(assert (= (and b!292437 res!153534) b!292440))

(assert (= (and b!292440 res!153531) b!292435))

(assert (= (and b!292435 res!153530) b!292436))

(assert (= (and b!292436 res!153533) b!292438))

(declare-fun m!306215 () Bool)

(assert (=> b!292440 m!306215))

(declare-fun m!306217 () Bool)

(assert (=> b!292437 m!306217))

(declare-fun m!306219 () Bool)

(assert (=> b!292438 m!306219))

(declare-fun m!306221 () Bool)

(assert (=> b!292438 m!306221))

(declare-fun m!306223 () Bool)

(assert (=> b!292438 m!306223))

(declare-fun m!306225 () Bool)

(assert (=> b!292438 m!306225))

(declare-fun m!306227 () Bool)

(assert (=> start!28616 m!306227))

(declare-fun m!306229 () Bool)

(assert (=> start!28616 m!306229))

(declare-fun m!306231 () Bool)

(assert (=> b!292436 m!306231))

(declare-fun m!306233 () Bool)

(assert (=> b!292435 m!306233))

(push 1)

(assert (not start!28616))

(assert (not b!292437))

