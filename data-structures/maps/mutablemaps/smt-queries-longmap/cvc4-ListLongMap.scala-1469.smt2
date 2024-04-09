; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28214 () Bool)

(assert start!28214)

(declare-fun b!288761 () Bool)

(declare-fun e!182837 () Bool)

(declare-fun e!182839 () Bool)

(assert (=> b!288761 (= e!182837 e!182839)))

(declare-fun res!150422 () Bool)

(assert (=> b!288761 (=> (not res!150422) (not e!182839))))

(declare-fun lt!142377 () Bool)

(declare-datatypes ((SeekEntryResult!2045 0))(
  ( (MissingZero!2045 (index!10350 (_ BitVec 32))) (Found!2045 (index!10351 (_ BitVec 32))) (Intermediate!2045 (undefined!2857 Bool) (index!10352 (_ BitVec 32)) (x!28530 (_ BitVec 32))) (Undefined!2045) (MissingVacant!2045 (index!10353 (_ BitVec 32))) )
))
(declare-fun lt!142379 () SeekEntryResult!2045)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288761 (= res!150422 (or lt!142377 (= lt!142379 (MissingVacant!2045 i!1256))))))

(assert (=> b!288761 (= lt!142377 (= lt!142379 (MissingZero!2045 i!1256)))))

(declare-datatypes ((array!14517 0))(
  ( (array!14518 (arr!6885 (Array (_ BitVec 32) (_ BitVec 64))) (size!7237 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14517)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14517 (_ BitVec 32)) SeekEntryResult!2045)

(assert (=> b!288761 (= lt!142379 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!150424 () Bool)

(assert (=> start!28214 (=> (not res!150424) (not e!182837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28214 (= res!150424 (validMask!0 mask!3809))))

(assert (=> start!28214 e!182837))

(assert (=> start!28214 true))

(declare-fun array_inv!4839 (array!14517) Bool)

(assert (=> start!28214 (array_inv!4839 a!3312)))

(declare-fun b!288762 () Bool)

(declare-fun res!150426 () Bool)

(assert (=> b!288762 (=> (not res!150426) (not e!182837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288762 (= res!150426 (validKeyInArray!0 k!2524))))

(declare-fun b!288763 () Bool)

(declare-fun e!182835 () Bool)

(assert (=> b!288763 (= e!182835 (not true))))

(declare-fun lt!142381 () SeekEntryResult!2045)

(assert (=> b!288763 (and (= (select (arr!6885 a!3312) (index!10352 lt!142381)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10352 lt!142381) i!1256))))

(declare-fun b!288764 () Bool)

(declare-fun e!182836 () Bool)

(assert (=> b!288764 (= e!182836 e!182835)))

(declare-fun res!150429 () Bool)

(assert (=> b!288764 (=> (not res!150429) (not e!182835))))

(declare-fun lt!142378 () Bool)

(assert (=> b!288764 (= res!150429 (and (or lt!142378 (not (undefined!2857 lt!142381))) (or lt!142378 (not (= (select (arr!6885 a!3312) (index!10352 lt!142381)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142378 (not (= (select (arr!6885 a!3312) (index!10352 lt!142381)) k!2524))) (not lt!142378)))))

(assert (=> b!288764 (= lt!142378 (not (is-Intermediate!2045 lt!142381)))))

(declare-fun b!288765 () Bool)

(declare-fun res!150427 () Bool)

(assert (=> b!288765 (=> (not res!150427) (not e!182837))))

(declare-fun arrayContainsKey!0 (array!14517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288765 (= res!150427 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288766 () Bool)

(declare-fun res!150428 () Bool)

(assert (=> b!288766 (=> (not res!150428) (not e!182837))))

(assert (=> b!288766 (= res!150428 (and (= (size!7237 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7237 a!3312))))))

(declare-fun b!288767 () Bool)

(declare-fun res!150425 () Bool)

(assert (=> b!288767 (=> (not res!150425) (not e!182839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14517 (_ BitVec 32)) Bool)

(assert (=> b!288767 (= res!150425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288768 () Bool)

(assert (=> b!288768 (= e!182839 e!182836)))

(declare-fun res!150423 () Bool)

(assert (=> b!288768 (=> (not res!150423) (not e!182836))))

(assert (=> b!288768 (= res!150423 lt!142377)))

(declare-fun lt!142382 () (_ BitVec 32))

(declare-fun lt!142380 () SeekEntryResult!2045)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14517 (_ BitVec 32)) SeekEntryResult!2045)

(assert (=> b!288768 (= lt!142380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142382 k!2524 (array!14518 (store (arr!6885 a!3312) i!1256 k!2524) (size!7237 a!3312)) mask!3809))))

(assert (=> b!288768 (= lt!142381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142382 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288768 (= lt!142382 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28214 res!150424) b!288766))

(assert (= (and b!288766 res!150428) b!288762))

(assert (= (and b!288762 res!150426) b!288765))

(assert (= (and b!288765 res!150427) b!288761))

(assert (= (and b!288761 res!150422) b!288767))

(assert (= (and b!288767 res!150425) b!288768))

(assert (= (and b!288768 res!150423) b!288764))

(assert (= (and b!288764 res!150429) b!288763))

(declare-fun m!303003 () Bool)

(assert (=> start!28214 m!303003))

(declare-fun m!303005 () Bool)

(assert (=> start!28214 m!303005))

(declare-fun m!303007 () Bool)

(assert (=> b!288761 m!303007))

(declare-fun m!303009 () Bool)

(assert (=> b!288767 m!303009))

(declare-fun m!303011 () Bool)

(assert (=> b!288765 m!303011))

(declare-fun m!303013 () Bool)

(assert (=> b!288764 m!303013))

(declare-fun m!303015 () Bool)

(assert (=> b!288762 m!303015))

(declare-fun m!303017 () Bool)

(assert (=> b!288768 m!303017))

(declare-fun m!303019 () Bool)

(assert (=> b!288768 m!303019))

(declare-fun m!303021 () Bool)

(assert (=> b!288768 m!303021))

(declare-fun m!303023 () Bool)

(assert (=> b!288768 m!303023))

(assert (=> b!288763 m!303013))

(push 1)

