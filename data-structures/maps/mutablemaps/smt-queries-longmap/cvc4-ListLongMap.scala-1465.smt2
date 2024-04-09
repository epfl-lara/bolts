; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28190 () Bool)

(assert start!28190)

(declare-fun b!288473 () Bool)

(declare-fun res!150141 () Bool)

(declare-fun e!182659 () Bool)

(assert (=> b!288473 (=> (not res!150141) (not e!182659))))

(declare-datatypes ((array!14493 0))(
  ( (array!14494 (arr!6873 (Array (_ BitVec 32) (_ BitVec 64))) (size!7225 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14493)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14493 (_ BitVec 32)) Bool)

(assert (=> b!288473 (= res!150141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288474 () Bool)

(declare-fun e!182655 () Bool)

(assert (=> b!288474 (= e!182655 e!182659)))

(declare-fun res!150138 () Bool)

(assert (=> b!288474 (=> (not res!150138) (not e!182659))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2033 0))(
  ( (MissingZero!2033 (index!10302 (_ BitVec 32))) (Found!2033 (index!10303 (_ BitVec 32))) (Intermediate!2033 (undefined!2845 Bool) (index!10304 (_ BitVec 32)) (x!28486 (_ BitVec 32))) (Undefined!2033) (MissingVacant!2033 (index!10305 (_ BitVec 32))) )
))
(declare-fun lt!142164 () SeekEntryResult!2033)

(declare-fun lt!142161 () Bool)

(assert (=> b!288474 (= res!150138 (or lt!142161 (= lt!142164 (MissingVacant!2033 i!1256))))))

(assert (=> b!288474 (= lt!142161 (= lt!142164 (MissingZero!2033 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14493 (_ BitVec 32)) SeekEntryResult!2033)

(assert (=> b!288474 (= lt!142164 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288476 () Bool)

(declare-fun e!182658 () Bool)

(assert (=> b!288476 (= e!182659 e!182658)))

(declare-fun res!150137 () Bool)

(assert (=> b!288476 (=> (not res!150137) (not e!182658))))

(assert (=> b!288476 (= res!150137 lt!142161)))

(declare-fun lt!142165 () (_ BitVec 32))

(declare-fun lt!142163 () SeekEntryResult!2033)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14493 (_ BitVec 32)) SeekEntryResult!2033)

(assert (=> b!288476 (= lt!142163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142165 k!2524 (array!14494 (store (arr!6873 a!3312) i!1256 k!2524) (size!7225 a!3312)) mask!3809))))

(declare-fun lt!142166 () SeekEntryResult!2033)

(assert (=> b!288476 (= lt!142166 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142165 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288476 (= lt!142165 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288477 () Bool)

(declare-fun e!182657 () Bool)

(assert (=> b!288477 (= e!182657 (not true))))

(assert (=> b!288477 (and (= (select (arr!6873 a!3312) (index!10304 lt!142166)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10304 lt!142166) i!1256))))

(declare-fun b!288478 () Bool)

(declare-fun res!150140 () Bool)

(assert (=> b!288478 (=> (not res!150140) (not e!182655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288478 (= res!150140 (validKeyInArray!0 k!2524))))

(declare-fun b!288475 () Bool)

(assert (=> b!288475 (= e!182658 e!182657)))

(declare-fun res!150135 () Bool)

(assert (=> b!288475 (=> (not res!150135) (not e!182657))))

(declare-fun lt!142162 () Bool)

(assert (=> b!288475 (= res!150135 (and (or lt!142162 (not (undefined!2845 lt!142166))) (or lt!142162 (not (= (select (arr!6873 a!3312) (index!10304 lt!142166)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142162 (not (= (select (arr!6873 a!3312) (index!10304 lt!142166)) k!2524))) (not lt!142162)))))

(assert (=> b!288475 (= lt!142162 (not (is-Intermediate!2033 lt!142166)))))

(declare-fun res!150134 () Bool)

(assert (=> start!28190 (=> (not res!150134) (not e!182655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28190 (= res!150134 (validMask!0 mask!3809))))

(assert (=> start!28190 e!182655))

(assert (=> start!28190 true))

(declare-fun array_inv!4827 (array!14493) Bool)

(assert (=> start!28190 (array_inv!4827 a!3312)))

(declare-fun b!288479 () Bool)

(declare-fun res!150139 () Bool)

(assert (=> b!288479 (=> (not res!150139) (not e!182655))))

(assert (=> b!288479 (= res!150139 (and (= (size!7225 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7225 a!3312))))))

(declare-fun b!288480 () Bool)

(declare-fun res!150136 () Bool)

(assert (=> b!288480 (=> (not res!150136) (not e!182655))))

(declare-fun arrayContainsKey!0 (array!14493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288480 (= res!150136 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28190 res!150134) b!288479))

(assert (= (and b!288479 res!150139) b!288478))

(assert (= (and b!288478 res!150140) b!288480))

(assert (= (and b!288480 res!150136) b!288474))

(assert (= (and b!288474 res!150138) b!288473))

(assert (= (and b!288473 res!150141) b!288476))

(assert (= (and b!288476 res!150137) b!288475))

(assert (= (and b!288475 res!150135) b!288477))

(declare-fun m!302739 () Bool)

(assert (=> b!288477 m!302739))

(declare-fun m!302741 () Bool)

(assert (=> b!288476 m!302741))

(declare-fun m!302743 () Bool)

(assert (=> b!288476 m!302743))

(declare-fun m!302745 () Bool)

(assert (=> b!288476 m!302745))

(declare-fun m!302747 () Bool)

(assert (=> b!288476 m!302747))

(declare-fun m!302749 () Bool)

(assert (=> b!288478 m!302749))

(declare-fun m!302751 () Bool)

(assert (=> start!28190 m!302751))

(declare-fun m!302753 () Bool)

(assert (=> start!28190 m!302753))

(declare-fun m!302755 () Bool)

(assert (=> b!288473 m!302755))

(declare-fun m!302757 () Bool)

(assert (=> b!288474 m!302757))

(declare-fun m!302759 () Bool)

(assert (=> b!288480 m!302759))

(assert (=> b!288475 m!302739))

(push 1)

