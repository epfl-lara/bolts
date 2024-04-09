; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28454 () Bool)

(assert start!28454)

(declare-fun b!291245 () Bool)

(declare-fun res!152625 () Bool)

(declare-fun e!184299 () Bool)

(assert (=> b!291245 (=> (not res!152625) (not e!184299))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291245 (= res!152625 (validKeyInArray!0 k!2524))))

(declare-fun b!291246 () Bool)

(declare-fun res!152623 () Bool)

(assert (=> b!291246 (=> (not res!152623) (not e!184299))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14712 0))(
  ( (array!14713 (arr!6981 (Array (_ BitVec 32) (_ BitVec 64))) (size!7333 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14712)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!291246 (= res!152623 (and (= (size!7333 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7333 a!3312))))))

(declare-fun res!152622 () Bool)

(assert (=> start!28454 (=> (not res!152622) (not e!184299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28454 (= res!152622 (validMask!0 mask!3809))))

(assert (=> start!28454 e!184299))

(assert (=> start!28454 true))

(declare-fun array_inv!4935 (array!14712) Bool)

(assert (=> start!28454 (array_inv!4935 a!3312)))

(declare-fun b!291247 () Bool)

(declare-fun res!152626 () Bool)

(declare-fun e!184303 () Bool)

(assert (=> b!291247 (=> (not res!152626) (not e!184303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14712 (_ BitVec 32)) Bool)

(assert (=> b!291247 (= res!152626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291248 () Bool)

(declare-fun e!184300 () Bool)

(assert (=> b!291248 (= e!184303 e!184300)))

(declare-fun res!152627 () Bool)

(assert (=> b!291248 (=> (not res!152627) (not e!184300))))

(declare-fun lt!144107 () Bool)

(declare-datatypes ((SeekEntryResult!2141 0))(
  ( (MissingZero!2141 (index!10734 (_ BitVec 32))) (Found!2141 (index!10735 (_ BitVec 32))) (Intermediate!2141 (undefined!2953 Bool) (index!10736 (_ BitVec 32)) (x!28888 (_ BitVec 32))) (Undefined!2141) (MissingVacant!2141 (index!10737 (_ BitVec 32))) )
))
(declare-fun lt!144106 () SeekEntryResult!2141)

(assert (=> b!291248 (= res!152627 (and (not lt!144107) (= lt!144106 (MissingVacant!2141 i!1256))))))

(declare-fun lt!144105 () (_ BitVec 32))

(declare-fun lt!144102 () SeekEntryResult!2141)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14712 (_ BitVec 32)) SeekEntryResult!2141)

(assert (=> b!291248 (= lt!144102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144105 k!2524 (array!14713 (store (arr!6981 a!3312) i!1256 k!2524) (size!7333 a!3312)) mask!3809))))

(declare-fun lt!144103 () SeekEntryResult!2141)

(assert (=> b!291248 (= lt!144103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144105 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291248 (= lt!144105 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291249 () Bool)

(declare-fun res!152621 () Bool)

(assert (=> b!291249 (=> (not res!152621) (not e!184299))))

(declare-fun arrayContainsKey!0 (array!14712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291249 (= res!152621 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291250 () Bool)

(declare-fun e!184302 () Bool)

(assert (=> b!291250 (= e!184300 e!184302)))

(declare-fun res!152624 () Bool)

(assert (=> b!291250 (=> (not res!152624) (not e!184302))))

(declare-fun lt!144104 () Bool)

(assert (=> b!291250 (= res!152624 (and (or lt!144104 (not (undefined!2953 lt!144103))) (not lt!144104) (= (select (arr!6981 a!3312) (index!10736 lt!144103)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291250 (= lt!144104 (not (is-Intermediate!2141 lt!144103)))))

(declare-fun b!291251 () Bool)

(assert (=> b!291251 (= e!184302 (not true))))

(assert (=> b!291251 (= (index!10736 lt!144103) i!1256)))

(declare-fun b!291252 () Bool)

(assert (=> b!291252 (= e!184299 e!184303)))

(declare-fun res!152628 () Bool)

(assert (=> b!291252 (=> (not res!152628) (not e!184303))))

(assert (=> b!291252 (= res!152628 (or lt!144107 (= lt!144106 (MissingVacant!2141 i!1256))))))

(assert (=> b!291252 (= lt!144107 (= lt!144106 (MissingZero!2141 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14712 (_ BitVec 32)) SeekEntryResult!2141)

(assert (=> b!291252 (= lt!144106 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28454 res!152622) b!291246))

(assert (= (and b!291246 res!152623) b!291245))

(assert (= (and b!291245 res!152625) b!291249))

(assert (= (and b!291249 res!152621) b!291252))

(assert (= (and b!291252 res!152628) b!291247))

(assert (= (and b!291247 res!152626) b!291248))

(assert (= (and b!291248 res!152627) b!291250))

(assert (= (and b!291250 res!152624) b!291251))

(declare-fun m!305235 () Bool)

(assert (=> start!28454 m!305235))

(declare-fun m!305237 () Bool)

(assert (=> start!28454 m!305237))

(declare-fun m!305239 () Bool)

(assert (=> b!291248 m!305239))

(declare-fun m!305241 () Bool)

(assert (=> b!291248 m!305241))

(declare-fun m!305243 () Bool)

(assert (=> b!291248 m!305243))

(declare-fun m!305245 () Bool)

(assert (=> b!291248 m!305245))

(declare-fun m!305247 () Bool)

(assert (=> b!291250 m!305247))

(declare-fun m!305249 () Bool)

(assert (=> b!291245 m!305249))

(declare-fun m!305251 () Bool)

(assert (=> b!291252 m!305251))

(declare-fun m!305253 () Bool)

(assert (=> b!291249 m!305253))

(declare-fun m!305255 () Bool)

(assert (=> b!291247 m!305255))

(push 1)

(assert (not b!291247))

(assert (not b!291252))

(assert (not b!291249))

(assert (not b!291245))

(assert (not start!28454))

(assert (not b!291248))

(check-sat)

(pop 1)

