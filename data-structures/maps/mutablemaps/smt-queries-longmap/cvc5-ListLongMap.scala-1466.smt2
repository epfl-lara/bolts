; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28192 () Bool)

(assert start!28192)

(declare-fun b!288497 () Bool)

(declare-fun e!182670 () Bool)

(declare-fun e!182671 () Bool)

(assert (=> b!288497 (= e!182670 e!182671)))

(declare-fun res!150159 () Bool)

(assert (=> b!288497 (=> (not res!150159) (not e!182671))))

(declare-fun lt!142184 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2034 0))(
  ( (MissingZero!2034 (index!10306 (_ BitVec 32))) (Found!2034 (index!10307 (_ BitVec 32))) (Intermediate!2034 (undefined!2846 Bool) (index!10308 (_ BitVec 32)) (x!28495 (_ BitVec 32))) (Undefined!2034) (MissingVacant!2034 (index!10309 (_ BitVec 32))) )
))
(declare-fun lt!142182 () SeekEntryResult!2034)

(assert (=> b!288497 (= res!150159 (or lt!142184 (= lt!142182 (MissingVacant!2034 i!1256))))))

(assert (=> b!288497 (= lt!142184 (= lt!142182 (MissingZero!2034 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14495 0))(
  ( (array!14496 (arr!6874 (Array (_ BitVec 32) (_ BitVec 64))) (size!7226 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14495)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14495 (_ BitVec 32)) SeekEntryResult!2034)

(assert (=> b!288497 (= lt!142182 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288498 () Bool)

(declare-fun res!150158 () Bool)

(assert (=> b!288498 (=> (not res!150158) (not e!182670))))

(assert (=> b!288498 (= res!150158 (and (= (size!7226 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7226 a!3312))))))

(declare-fun res!150162 () Bool)

(assert (=> start!28192 (=> (not res!150162) (not e!182670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28192 (= res!150162 (validMask!0 mask!3809))))

(assert (=> start!28192 e!182670))

(assert (=> start!28192 true))

(declare-fun array_inv!4828 (array!14495) Bool)

(assert (=> start!28192 (array_inv!4828 a!3312)))

(declare-fun b!288499 () Bool)

(declare-fun res!150160 () Bool)

(assert (=> b!288499 (=> (not res!150160) (not e!182671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14495 (_ BitVec 32)) Bool)

(assert (=> b!288499 (= res!150160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288500 () Bool)

(declare-fun res!150165 () Bool)

(assert (=> b!288500 (=> (not res!150165) (not e!182670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288500 (= res!150165 (validKeyInArray!0 k!2524))))

(declare-fun b!288501 () Bool)

(declare-fun res!150161 () Bool)

(assert (=> b!288501 (=> (not res!150161) (not e!182670))))

(declare-fun arrayContainsKey!0 (array!14495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288501 (= res!150161 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288502 () Bool)

(declare-fun e!182672 () Bool)

(assert (=> b!288502 (= e!182672 (not true))))

(declare-fun lt!142181 () SeekEntryResult!2034)

(assert (=> b!288502 (and (= (select (arr!6874 a!3312) (index!10308 lt!142181)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10308 lt!142181) i!1256))))

(declare-fun b!288503 () Bool)

(declare-fun e!182674 () Bool)

(assert (=> b!288503 (= e!182674 e!182672)))

(declare-fun res!150164 () Bool)

(assert (=> b!288503 (=> (not res!150164) (not e!182672))))

(declare-fun lt!142179 () Bool)

(assert (=> b!288503 (= res!150164 (and (or lt!142179 (not (undefined!2846 lt!142181))) (or lt!142179 (not (= (select (arr!6874 a!3312) (index!10308 lt!142181)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142179 (not (= (select (arr!6874 a!3312) (index!10308 lt!142181)) k!2524))) (not lt!142179)))))

(assert (=> b!288503 (= lt!142179 (not (is-Intermediate!2034 lt!142181)))))

(declare-fun b!288504 () Bool)

(assert (=> b!288504 (= e!182671 e!182674)))

(declare-fun res!150163 () Bool)

(assert (=> b!288504 (=> (not res!150163) (not e!182674))))

(assert (=> b!288504 (= res!150163 lt!142184)))

(declare-fun lt!142180 () (_ BitVec 32))

(declare-fun lt!142183 () SeekEntryResult!2034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14495 (_ BitVec 32)) SeekEntryResult!2034)

(assert (=> b!288504 (= lt!142183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142180 k!2524 (array!14496 (store (arr!6874 a!3312) i!1256 k!2524) (size!7226 a!3312)) mask!3809))))

(assert (=> b!288504 (= lt!142181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142180 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288504 (= lt!142180 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28192 res!150162) b!288498))

(assert (= (and b!288498 res!150158) b!288500))

(assert (= (and b!288500 res!150165) b!288501))

(assert (= (and b!288501 res!150161) b!288497))

(assert (= (and b!288497 res!150159) b!288499))

(assert (= (and b!288499 res!150160) b!288504))

(assert (= (and b!288504 res!150163) b!288503))

(assert (= (and b!288503 res!150164) b!288502))

(declare-fun m!302761 () Bool)

(assert (=> b!288500 m!302761))

(declare-fun m!302763 () Bool)

(assert (=> b!288503 m!302763))

(declare-fun m!302765 () Bool)

(assert (=> start!28192 m!302765))

(declare-fun m!302767 () Bool)

(assert (=> start!28192 m!302767))

(declare-fun m!302769 () Bool)

(assert (=> b!288501 m!302769))

(assert (=> b!288502 m!302763))

(declare-fun m!302771 () Bool)

(assert (=> b!288497 m!302771))

(declare-fun m!302773 () Bool)

(assert (=> b!288499 m!302773))

(declare-fun m!302775 () Bool)

(assert (=> b!288504 m!302775))

(declare-fun m!302777 () Bool)

(assert (=> b!288504 m!302777))

(declare-fun m!302779 () Bool)

(assert (=> b!288504 m!302779))

(declare-fun m!302781 () Bool)

(assert (=> b!288504 m!302781))

(push 1)

(assert (not b!288497))

(assert (not b!288504))

(assert (not b!288501))

(assert (not b!288500))

(assert (not b!288499))

(assert (not start!28192))

(check-sat)

