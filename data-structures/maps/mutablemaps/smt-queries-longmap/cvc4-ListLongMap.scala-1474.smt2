; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28244 () Bool)

(assert start!28244)

(declare-fun b!289121 () Bool)

(declare-fun res!150785 () Bool)

(declare-fun e!183060 () Bool)

(assert (=> b!289121 (=> (not res!150785) (not e!183060))))

(declare-datatypes ((array!14547 0))(
  ( (array!14548 (arr!6900 (Array (_ BitVec 32) (_ BitVec 64))) (size!7252 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14547)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289121 (= res!150785 (and (= (size!7252 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7252 a!3312))))))

(declare-fun b!289122 () Bool)

(declare-fun e!183064 () Bool)

(assert (=> b!289122 (= e!183060 e!183064)))

(declare-fun res!150787 () Bool)

(assert (=> b!289122 (=> (not res!150787) (not e!183064))))

(declare-fun lt!142650 () Bool)

(declare-datatypes ((SeekEntryResult!2060 0))(
  ( (MissingZero!2060 (index!10410 (_ BitVec 32))) (Found!2060 (index!10411 (_ BitVec 32))) (Intermediate!2060 (undefined!2872 Bool) (index!10412 (_ BitVec 32)) (x!28585 (_ BitVec 32))) (Undefined!2060) (MissingVacant!2060 (index!10413 (_ BitVec 32))) )
))
(declare-fun lt!142651 () SeekEntryResult!2060)

(assert (=> b!289122 (= res!150787 (or lt!142650 (= lt!142651 (MissingVacant!2060 i!1256))))))

(assert (=> b!289122 (= lt!142650 (= lt!142651 (MissingZero!2060 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14547 (_ BitVec 32)) SeekEntryResult!2060)

(assert (=> b!289122 (= lt!142651 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!150788 () Bool)

(assert (=> start!28244 (=> (not res!150788) (not e!183060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28244 (= res!150788 (validMask!0 mask!3809))))

(assert (=> start!28244 e!183060))

(assert (=> start!28244 true))

(declare-fun array_inv!4854 (array!14547) Bool)

(assert (=> start!28244 (array_inv!4854 a!3312)))

(declare-fun b!289123 () Bool)

(declare-fun res!150786 () Bool)

(assert (=> b!289123 (=> (not res!150786) (not e!183060))))

(declare-fun arrayContainsKey!0 (array!14547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289123 (= res!150786 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289124 () Bool)

(declare-fun e!183061 () Bool)

(assert (=> b!289124 (= e!183061 (not true))))

(declare-fun lt!142648 () SeekEntryResult!2060)

(assert (=> b!289124 (and (= (select (arr!6900 a!3312) (index!10412 lt!142648)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10412 lt!142648) i!1256))))

(declare-fun b!289125 () Bool)

(declare-fun res!150789 () Bool)

(assert (=> b!289125 (=> (not res!150789) (not e!183060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289125 (= res!150789 (validKeyInArray!0 k!2524))))

(declare-fun b!289126 () Bool)

(declare-fun res!150784 () Bool)

(assert (=> b!289126 (=> (not res!150784) (not e!183064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14547 (_ BitVec 32)) Bool)

(assert (=> b!289126 (= res!150784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289127 () Bool)

(declare-fun e!183063 () Bool)

(assert (=> b!289127 (= e!183064 e!183063)))

(declare-fun res!150782 () Bool)

(assert (=> b!289127 (=> (not res!150782) (not e!183063))))

(assert (=> b!289127 (= res!150782 lt!142650)))

(declare-fun lt!142649 () SeekEntryResult!2060)

(declare-fun lt!142652 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14547 (_ BitVec 32)) SeekEntryResult!2060)

(assert (=> b!289127 (= lt!142649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142652 k!2524 (array!14548 (store (arr!6900 a!3312) i!1256 k!2524) (size!7252 a!3312)) mask!3809))))

(assert (=> b!289127 (= lt!142648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142652 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289127 (= lt!142652 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289128 () Bool)

(assert (=> b!289128 (= e!183063 e!183061)))

(declare-fun res!150783 () Bool)

(assert (=> b!289128 (=> (not res!150783) (not e!183061))))

(declare-fun lt!142647 () Bool)

(assert (=> b!289128 (= res!150783 (and (or lt!142647 (not (undefined!2872 lt!142648))) (or lt!142647 (not (= (select (arr!6900 a!3312) (index!10412 lt!142648)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142647 (not (= (select (arr!6900 a!3312) (index!10412 lt!142648)) k!2524))) (not lt!142647)))))

(assert (=> b!289128 (= lt!142647 (not (is-Intermediate!2060 lt!142648)))))

(assert (= (and start!28244 res!150788) b!289121))

(assert (= (and b!289121 res!150785) b!289125))

(assert (= (and b!289125 res!150789) b!289123))

(assert (= (and b!289123 res!150786) b!289122))

(assert (= (and b!289122 res!150787) b!289126))

(assert (= (and b!289126 res!150784) b!289127))

(assert (= (and b!289127 res!150782) b!289128))

(assert (= (and b!289128 res!150783) b!289124))

(declare-fun m!303333 () Bool)

(assert (=> b!289127 m!303333))

(declare-fun m!303335 () Bool)

(assert (=> b!289127 m!303335))

(declare-fun m!303337 () Bool)

(assert (=> b!289127 m!303337))

(declare-fun m!303339 () Bool)

(assert (=> b!289127 m!303339))

(declare-fun m!303341 () Bool)

(assert (=> start!28244 m!303341))

(declare-fun m!303343 () Bool)

(assert (=> start!28244 m!303343))

(declare-fun m!303345 () Bool)

(assert (=> b!289122 m!303345))

(declare-fun m!303347 () Bool)

(assert (=> b!289125 m!303347))

(declare-fun m!303349 () Bool)

(assert (=> b!289124 m!303349))

(declare-fun m!303351 () Bool)

(assert (=> b!289123 m!303351))

(declare-fun m!303353 () Bool)

(assert (=> b!289126 m!303353))

(assert (=> b!289128 m!303349))

(push 1)

