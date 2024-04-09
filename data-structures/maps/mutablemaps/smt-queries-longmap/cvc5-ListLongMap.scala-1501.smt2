; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28450 () Bool)

(assert start!28450)

(declare-fun res!152580 () Bool)

(declare-fun e!184271 () Bool)

(assert (=> start!28450 (=> (not res!152580) (not e!184271))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28450 (= res!152580 (validMask!0 mask!3809))))

(assert (=> start!28450 e!184271))

(assert (=> start!28450 true))

(declare-datatypes ((array!14708 0))(
  ( (array!14709 (arr!6979 (Array (_ BitVec 32) (_ BitVec 64))) (size!7331 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14708)

(declare-fun array_inv!4933 (array!14708) Bool)

(assert (=> start!28450 (array_inv!4933 a!3312)))

(declare-fun b!291197 () Bool)

(declare-fun res!152577 () Bool)

(declare-fun e!184272 () Bool)

(assert (=> b!291197 (=> (not res!152577) (not e!184272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14708 (_ BitVec 32)) Bool)

(assert (=> b!291197 (= res!152577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291198 () Bool)

(declare-fun e!184273 () Bool)

(assert (=> b!291198 (= e!184272 e!184273)))

(declare-fun res!152578 () Bool)

(assert (=> b!291198 (=> (not res!152578) (not e!184273))))

(declare-fun lt!144069 () Bool)

(declare-datatypes ((SeekEntryResult!2139 0))(
  ( (MissingZero!2139 (index!10726 (_ BitVec 32))) (Found!2139 (index!10727 (_ BitVec 32))) (Intermediate!2139 (undefined!2951 Bool) (index!10728 (_ BitVec 32)) (x!28886 (_ BitVec 32))) (Undefined!2139) (MissingVacant!2139 (index!10729 (_ BitVec 32))) )
))
(declare-fun lt!144066 () SeekEntryResult!2139)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291198 (= res!152578 (and (not lt!144069) (= lt!144066 (MissingVacant!2139 i!1256))))))

(declare-fun lt!144070 () SeekEntryResult!2139)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!144067 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14708 (_ BitVec 32)) SeekEntryResult!2139)

(assert (=> b!291198 (= lt!144070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144067 k!2524 (array!14709 (store (arr!6979 a!3312) i!1256 k!2524) (size!7331 a!3312)) mask!3809))))

(declare-fun lt!144071 () SeekEntryResult!2139)

(assert (=> b!291198 (= lt!144071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144067 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291198 (= lt!144067 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291199 () Bool)

(declare-fun res!152575 () Bool)

(assert (=> b!291199 (=> (not res!152575) (not e!184271))))

(declare-fun arrayContainsKey!0 (array!14708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291199 (= res!152575 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291200 () Bool)

(declare-fun e!184269 () Bool)

(assert (=> b!291200 (= e!184273 e!184269)))

(declare-fun res!152576 () Bool)

(assert (=> b!291200 (=> (not res!152576) (not e!184269))))

(declare-fun lt!144068 () Bool)

(assert (=> b!291200 (= res!152576 (and (or lt!144068 (not (undefined!2951 lt!144071))) (not lt!144068) (= (select (arr!6979 a!3312) (index!10728 lt!144071)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291200 (= lt!144068 (not (is-Intermediate!2139 lt!144071)))))

(declare-fun b!291201 () Bool)

(declare-fun res!152573 () Bool)

(assert (=> b!291201 (=> (not res!152573) (not e!184271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291201 (= res!152573 (validKeyInArray!0 k!2524))))

(declare-fun b!291202 () Bool)

(assert (=> b!291202 (= e!184269 (not true))))

(assert (=> b!291202 (= (index!10728 lt!144071) i!1256)))

(declare-fun b!291203 () Bool)

(assert (=> b!291203 (= e!184271 e!184272)))

(declare-fun res!152574 () Bool)

(assert (=> b!291203 (=> (not res!152574) (not e!184272))))

(assert (=> b!291203 (= res!152574 (or lt!144069 (= lt!144066 (MissingVacant!2139 i!1256))))))

(assert (=> b!291203 (= lt!144069 (= lt!144066 (MissingZero!2139 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14708 (_ BitVec 32)) SeekEntryResult!2139)

(assert (=> b!291203 (= lt!144066 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291204 () Bool)

(declare-fun res!152579 () Bool)

(assert (=> b!291204 (=> (not res!152579) (not e!184271))))

(assert (=> b!291204 (= res!152579 (and (= (size!7331 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7331 a!3312))))))

(assert (= (and start!28450 res!152580) b!291204))

(assert (= (and b!291204 res!152579) b!291201))

(assert (= (and b!291201 res!152573) b!291199))

(assert (= (and b!291199 res!152575) b!291203))

(assert (= (and b!291203 res!152574) b!291197))

(assert (= (and b!291197 res!152577) b!291198))

(assert (= (and b!291198 res!152578) b!291200))

(assert (= (and b!291200 res!152576) b!291202))

(declare-fun m!305191 () Bool)

(assert (=> b!291198 m!305191))

(declare-fun m!305193 () Bool)

(assert (=> b!291198 m!305193))

(declare-fun m!305195 () Bool)

(assert (=> b!291198 m!305195))

(declare-fun m!305197 () Bool)

(assert (=> b!291198 m!305197))

(declare-fun m!305199 () Bool)

(assert (=> b!291203 m!305199))

(declare-fun m!305201 () Bool)

(assert (=> b!291201 m!305201))

(declare-fun m!305203 () Bool)

(assert (=> b!291199 m!305203))

(declare-fun m!305205 () Bool)

(assert (=> start!28450 m!305205))

(declare-fun m!305207 () Bool)

(assert (=> start!28450 m!305207))

(declare-fun m!305209 () Bool)

(assert (=> b!291200 m!305209))

(declare-fun m!305211 () Bool)

(assert (=> b!291197 m!305211))

(push 1)

