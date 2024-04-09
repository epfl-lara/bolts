; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28198 () Bool)

(assert start!28198)

(declare-fun b!288569 () Bool)

(declare-fun e!182719 () Bool)

(declare-fun e!182717 () Bool)

(assert (=> b!288569 (= e!182719 e!182717)))

(declare-fun res!150234 () Bool)

(assert (=> b!288569 (=> (not res!150234) (not e!182717))))

(declare-datatypes ((SeekEntryResult!2037 0))(
  ( (MissingZero!2037 (index!10318 (_ BitVec 32))) (Found!2037 (index!10319 (_ BitVec 32))) (Intermediate!2037 (undefined!2849 Bool) (index!10320 (_ BitVec 32)) (x!28506 (_ BitVec 32))) (Undefined!2037) (MissingVacant!2037 (index!10321 (_ BitVec 32))) )
))
(declare-fun lt!142233 () SeekEntryResult!2037)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142234 () Bool)

(assert (=> b!288569 (= res!150234 (or lt!142234 (= lt!142233 (MissingVacant!2037 i!1256))))))

(assert (=> b!288569 (= lt!142234 (= lt!142233 (MissingZero!2037 i!1256)))))

(declare-datatypes ((array!14501 0))(
  ( (array!14502 (arr!6877 (Array (_ BitVec 32) (_ BitVec 64))) (size!7229 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14501)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14501 (_ BitVec 32)) SeekEntryResult!2037)

(assert (=> b!288569 (= lt!142233 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288570 () Bool)

(declare-fun res!150231 () Bool)

(assert (=> b!288570 (=> (not res!150231) (not e!182717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14501 (_ BitVec 32)) Bool)

(assert (=> b!288570 (= res!150231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288571 () Bool)

(declare-fun e!182715 () Bool)

(declare-fun e!182718 () Bool)

(assert (=> b!288571 (= e!182715 e!182718)))

(declare-fun res!150235 () Bool)

(assert (=> b!288571 (=> (not res!150235) (not e!182718))))

(declare-fun lt!142235 () Bool)

(declare-fun lt!142237 () SeekEntryResult!2037)

(assert (=> b!288571 (= res!150235 (and (or lt!142235 (not (undefined!2849 lt!142237))) (or lt!142235 (not (= (select (arr!6877 a!3312) (index!10320 lt!142237)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142235 (not (= (select (arr!6877 a!3312) (index!10320 lt!142237)) k!2524))) (not lt!142235)))))

(assert (=> b!288571 (= lt!142235 (not (is-Intermediate!2037 lt!142237)))))

(declare-fun b!288572 () Bool)

(assert (=> b!288572 (= e!182718 (not true))))

(assert (=> b!288572 (and (= (select (arr!6877 a!3312) (index!10320 lt!142237)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10320 lt!142237) i!1256))))

(declare-fun b!288573 () Bool)

(declare-fun res!150232 () Bool)

(assert (=> b!288573 (=> (not res!150232) (not e!182719))))

(declare-fun arrayContainsKey!0 (array!14501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288573 (= res!150232 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288574 () Bool)

(declare-fun res!150236 () Bool)

(assert (=> b!288574 (=> (not res!150236) (not e!182719))))

(assert (=> b!288574 (= res!150236 (and (= (size!7229 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7229 a!3312))))))

(declare-fun b!288575 () Bool)

(declare-fun res!150237 () Bool)

(assert (=> b!288575 (=> (not res!150237) (not e!182719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288575 (= res!150237 (validKeyInArray!0 k!2524))))

(declare-fun b!288576 () Bool)

(assert (=> b!288576 (= e!182717 e!182715)))

(declare-fun res!150230 () Bool)

(assert (=> b!288576 (=> (not res!150230) (not e!182715))))

(assert (=> b!288576 (= res!150230 lt!142234)))

(declare-fun lt!142238 () (_ BitVec 32))

(declare-fun lt!142236 () SeekEntryResult!2037)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14501 (_ BitVec 32)) SeekEntryResult!2037)

(assert (=> b!288576 (= lt!142236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142238 k!2524 (array!14502 (store (arr!6877 a!3312) i!1256 k!2524) (size!7229 a!3312)) mask!3809))))

(assert (=> b!288576 (= lt!142237 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142238 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288576 (= lt!142238 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150233 () Bool)

(assert (=> start!28198 (=> (not res!150233) (not e!182719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28198 (= res!150233 (validMask!0 mask!3809))))

(assert (=> start!28198 e!182719))

(assert (=> start!28198 true))

(declare-fun array_inv!4831 (array!14501) Bool)

(assert (=> start!28198 (array_inv!4831 a!3312)))

(assert (= (and start!28198 res!150233) b!288574))

(assert (= (and b!288574 res!150236) b!288575))

(assert (= (and b!288575 res!150237) b!288573))

(assert (= (and b!288573 res!150232) b!288569))

(assert (= (and b!288569 res!150234) b!288570))

(assert (= (and b!288570 res!150231) b!288576))

(assert (= (and b!288576 res!150230) b!288571))

(assert (= (and b!288571 res!150235) b!288572))

(declare-fun m!302827 () Bool)

(assert (=> b!288569 m!302827))

(declare-fun m!302829 () Bool)

(assert (=> b!288571 m!302829))

(assert (=> b!288572 m!302829))

(declare-fun m!302831 () Bool)

(assert (=> b!288576 m!302831))

(declare-fun m!302833 () Bool)

(assert (=> b!288576 m!302833))

(declare-fun m!302835 () Bool)

(assert (=> b!288576 m!302835))

(declare-fun m!302837 () Bool)

(assert (=> b!288576 m!302837))

(declare-fun m!302839 () Bool)

(assert (=> b!288570 m!302839))

(declare-fun m!302841 () Bool)

(assert (=> b!288573 m!302841))

(declare-fun m!302843 () Bool)

(assert (=> start!28198 m!302843))

(declare-fun m!302845 () Bool)

(assert (=> start!28198 m!302845))

(declare-fun m!302847 () Bool)

(assert (=> b!288575 m!302847))

(push 1)

