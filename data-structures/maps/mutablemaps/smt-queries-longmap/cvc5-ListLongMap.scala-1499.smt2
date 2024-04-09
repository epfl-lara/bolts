; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28438 () Bool)

(assert start!28438)

(declare-fun b!291053 () Bool)

(declare-fun e!184180 () Bool)

(declare-fun e!184182 () Bool)

(assert (=> b!291053 (= e!184180 e!184182)))

(declare-fun res!152432 () Bool)

(assert (=> b!291053 (=> (not res!152432) (not e!184182))))

(declare-datatypes ((SeekEntryResult!2133 0))(
  ( (MissingZero!2133 (index!10702 (_ BitVec 32))) (Found!2133 (index!10703 (_ BitVec 32))) (Intermediate!2133 (undefined!2945 Bool) (index!10704 (_ BitVec 32)) (x!28864 (_ BitVec 32))) (Undefined!2133) (MissingVacant!2133 (index!10705 (_ BitVec 32))) )
))
(declare-fun lt!143960 () SeekEntryResult!2133)

(declare-fun lt!143958 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291053 (= res!152432 (or lt!143958 (= lt!143960 (MissingVacant!2133 i!1256))))))

(assert (=> b!291053 (= lt!143958 (= lt!143960 (MissingZero!2133 i!1256)))))

(declare-datatypes ((array!14696 0))(
  ( (array!14697 (arr!6973 (Array (_ BitVec 32) (_ BitVec 64))) (size!7325 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14696)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14696 (_ BitVec 32)) SeekEntryResult!2133)

(assert (=> b!291053 (= lt!143960 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291054 () Bool)

(declare-fun res!152434 () Bool)

(assert (=> b!291054 (=> (not res!152434) (not e!184180))))

(declare-fun arrayContainsKey!0 (array!14696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291054 (= res!152434 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291055 () Bool)

(declare-fun e!184183 () Bool)

(assert (=> b!291055 (= e!184183 (not true))))

(declare-fun lt!143961 () SeekEntryResult!2133)

(assert (=> b!291055 (= (index!10704 lt!143961) i!1256)))

(declare-fun b!291056 () Bool)

(declare-fun e!184179 () Bool)

(assert (=> b!291056 (= e!184179 e!184183)))

(declare-fun res!152429 () Bool)

(assert (=> b!291056 (=> (not res!152429) (not e!184183))))

(declare-fun lt!143959 () Bool)

(assert (=> b!291056 (= res!152429 (and (or lt!143959 (not (undefined!2945 lt!143961))) (not lt!143959) (= (select (arr!6973 a!3312) (index!10704 lt!143961)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291056 (= lt!143959 (not (is-Intermediate!2133 lt!143961)))))

(declare-fun b!291057 () Bool)

(assert (=> b!291057 (= e!184182 e!184179)))

(declare-fun res!152433 () Bool)

(assert (=> b!291057 (=> (not res!152433) (not e!184179))))

(assert (=> b!291057 (= res!152433 (and (not lt!143958) (= lt!143960 (MissingVacant!2133 i!1256))))))

(declare-fun lt!143963 () SeekEntryResult!2133)

(declare-fun lt!143962 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14696 (_ BitVec 32)) SeekEntryResult!2133)

(assert (=> b!291057 (= lt!143963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143962 k!2524 (array!14697 (store (arr!6973 a!3312) i!1256 k!2524) (size!7325 a!3312)) mask!3809))))

(assert (=> b!291057 (= lt!143961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143962 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291057 (= lt!143962 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291058 () Bool)

(declare-fun res!152436 () Bool)

(assert (=> b!291058 (=> (not res!152436) (not e!184180))))

(assert (=> b!291058 (= res!152436 (and (= (size!7325 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7325 a!3312))))))

(declare-fun b!291060 () Bool)

(declare-fun res!152430 () Bool)

(assert (=> b!291060 (=> (not res!152430) (not e!184182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14696 (_ BitVec 32)) Bool)

(assert (=> b!291060 (= res!152430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!152435 () Bool)

(assert (=> start!28438 (=> (not res!152435) (not e!184180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28438 (= res!152435 (validMask!0 mask!3809))))

(assert (=> start!28438 e!184180))

(assert (=> start!28438 true))

(declare-fun array_inv!4927 (array!14696) Bool)

(assert (=> start!28438 (array_inv!4927 a!3312)))

(declare-fun b!291059 () Bool)

(declare-fun res!152431 () Bool)

(assert (=> b!291059 (=> (not res!152431) (not e!184180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291059 (= res!152431 (validKeyInArray!0 k!2524))))

(assert (= (and start!28438 res!152435) b!291058))

(assert (= (and b!291058 res!152436) b!291059))

(assert (= (and b!291059 res!152431) b!291054))

(assert (= (and b!291054 res!152434) b!291053))

(assert (= (and b!291053 res!152432) b!291060))

(assert (= (and b!291060 res!152430) b!291057))

(assert (= (and b!291057 res!152433) b!291056))

(assert (= (and b!291056 res!152429) b!291055))

(declare-fun m!305059 () Bool)

(assert (=> b!291060 m!305059))

(declare-fun m!305061 () Bool)

(assert (=> b!291054 m!305061))

(declare-fun m!305063 () Bool)

(assert (=> b!291056 m!305063))

(declare-fun m!305065 () Bool)

(assert (=> b!291053 m!305065))

(declare-fun m!305067 () Bool)

(assert (=> b!291057 m!305067))

(declare-fun m!305069 () Bool)

(assert (=> b!291057 m!305069))

(declare-fun m!305071 () Bool)

(assert (=> b!291057 m!305071))

(declare-fun m!305073 () Bool)

(assert (=> b!291057 m!305073))

(declare-fun m!305075 () Bool)

(assert (=> b!291059 m!305075))

(declare-fun m!305077 () Bool)

(assert (=> start!28438 m!305077))

(declare-fun m!305079 () Bool)

(assert (=> start!28438 m!305079))

(push 1)

