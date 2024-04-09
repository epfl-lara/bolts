; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52310 () Bool)

(assert start!52310)

(declare-fun b!570427 () Bool)

(declare-fun res!360365 () Bool)

(declare-fun e!328076 () Bool)

(assert (=> b!570427 (=> (not res!360365) (not e!328076))))

(declare-datatypes ((array!35724 0))(
  ( (array!35725 (arr!17148 (Array (_ BitVec 32) (_ BitVec 64))) (size!17512 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35724)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35724 (_ BitVec 32)) Bool)

(assert (=> b!570427 (= res!360365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570428 () Bool)

(declare-fun e!328080 () Bool)

(assert (=> b!570428 (= e!328080 e!328076)))

(declare-fun res!360359 () Bool)

(assert (=> b!570428 (=> (not res!360359) (not e!328076))))

(declare-datatypes ((SeekEntryResult!5604 0))(
  ( (MissingZero!5604 (index!24643 (_ BitVec 32))) (Found!5604 (index!24644 (_ BitVec 32))) (Intermediate!5604 (undefined!6416 Bool) (index!24645 (_ BitVec 32)) (x!53547 (_ BitVec 32))) (Undefined!5604) (MissingVacant!5604 (index!24646 (_ BitVec 32))) )
))
(declare-fun lt!260097 () SeekEntryResult!5604)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570428 (= res!360359 (or (= lt!260097 (MissingZero!5604 i!1132)) (= lt!260097 (MissingVacant!5604 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35724 (_ BitVec 32)) SeekEntryResult!5604)

(assert (=> b!570428 (= lt!260097 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570429 () Bool)

(declare-fun res!360364 () Bool)

(assert (=> b!570429 (=> (not res!360364) (not e!328080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570429 (= res!360364 (validKeyInArray!0 k!1914))))

(declare-fun b!570430 () Bool)

(declare-fun res!360366 () Bool)

(assert (=> b!570430 (=> (not res!360366) (not e!328076))))

(declare-datatypes ((List!11281 0))(
  ( (Nil!11278) (Cons!11277 (h!12301 (_ BitVec 64)) (t!17517 List!11281)) )
))
(declare-fun arrayNoDuplicates!0 (array!35724 (_ BitVec 32) List!11281) Bool)

(assert (=> b!570430 (= res!360366 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11278))))

(declare-fun b!570431 () Bool)

(declare-fun res!360360 () Bool)

(assert (=> b!570431 (=> (not res!360360) (not e!328080))))

(declare-fun arrayContainsKey!0 (array!35724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570431 (= res!360360 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!360368 () Bool)

(assert (=> start!52310 (=> (not res!360368) (not e!328080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52310 (= res!360368 (validMask!0 mask!3119))))

(assert (=> start!52310 e!328080))

(assert (=> start!52310 true))

(declare-fun array_inv!12922 (array!35724) Bool)

(assert (=> start!52310 (array_inv!12922 a!3118)))

(declare-fun b!570432 () Bool)

(declare-fun res!360361 () Bool)

(assert (=> b!570432 (=> (not res!360361) (not e!328080))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570432 (= res!360361 (validKeyInArray!0 (select (arr!17148 a!3118) j!142)))))

(declare-fun b!570433 () Bool)

(declare-fun e!328078 () Bool)

(assert (=> b!570433 (= e!328078 (not true))))

(declare-fun e!328081 () Bool)

(assert (=> b!570433 e!328081))

(declare-fun res!360362 () Bool)

(assert (=> b!570433 (=> (not res!360362) (not e!328081))))

(declare-fun lt!260094 () SeekEntryResult!5604)

(assert (=> b!570433 (= res!360362 (= lt!260094 (Found!5604 j!142)))))

(assert (=> b!570433 (= lt!260094 (seekEntryOrOpen!0 (select (arr!17148 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570433 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17910 0))(
  ( (Unit!17911) )
))
(declare-fun lt!260098 () Unit!17910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17910)

(assert (=> b!570433 (= lt!260098 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570434 () Bool)

(declare-fun e!328079 () Bool)

(assert (=> b!570434 (= e!328081 e!328079)))

(declare-fun res!360358 () Bool)

(assert (=> b!570434 (=> res!360358 e!328079)))

(declare-fun lt!260096 () SeekEntryResult!5604)

(assert (=> b!570434 (= res!360358 (or (undefined!6416 lt!260096) (not (is-Intermediate!5604 lt!260096)) (= (select (arr!17148 a!3118) (index!24645 lt!260096)) (select (arr!17148 a!3118) j!142)) (= (select (arr!17148 a!3118) (index!24645 lt!260096)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570435 () Bool)

(declare-fun res!360363 () Bool)

(assert (=> b!570435 (=> (not res!360363) (not e!328080))))

(assert (=> b!570435 (= res!360363 (and (= (size!17512 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17512 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17512 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570436 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35724 (_ BitVec 32)) SeekEntryResult!5604)

(assert (=> b!570436 (= e!328079 (= lt!260094 (seekKeyOrZeroReturnVacant!0 (x!53547 lt!260096) (index!24645 lt!260096) (index!24645 lt!260096) (select (arr!17148 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570437 () Bool)

(assert (=> b!570437 (= e!328076 e!328078)))

(declare-fun res!360367 () Bool)

(assert (=> b!570437 (=> (not res!360367) (not e!328078))))

(declare-fun lt!260095 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35724 (_ BitVec 32)) SeekEntryResult!5604)

(assert (=> b!570437 (= res!360367 (= lt!260096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260095 (select (store (arr!17148 a!3118) i!1132 k!1914) j!142) (array!35725 (store (arr!17148 a!3118) i!1132 k!1914) (size!17512 a!3118)) mask!3119)))))

(declare-fun lt!260099 () (_ BitVec 32))

(assert (=> b!570437 (= lt!260096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260099 (select (arr!17148 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570437 (= lt!260095 (toIndex!0 (select (store (arr!17148 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570437 (= lt!260099 (toIndex!0 (select (arr!17148 a!3118) j!142) mask!3119))))

(assert (= (and start!52310 res!360368) b!570435))

(assert (= (and b!570435 res!360363) b!570432))

(assert (= (and b!570432 res!360361) b!570429))

(assert (= (and b!570429 res!360364) b!570431))

(assert (= (and b!570431 res!360360) b!570428))

(assert (= (and b!570428 res!360359) b!570427))

(assert (= (and b!570427 res!360365) b!570430))

(assert (= (and b!570430 res!360366) b!570437))

(assert (= (and b!570437 res!360367) b!570433))

(assert (= (and b!570433 res!360362) b!570434))

(assert (= (and b!570434 (not res!360358)) b!570436))

(declare-fun m!549331 () Bool)

(assert (=> b!570432 m!549331))

(assert (=> b!570432 m!549331))

(declare-fun m!549333 () Bool)

(assert (=> b!570432 m!549333))

(declare-fun m!549335 () Bool)

(assert (=> b!570429 m!549335))

(declare-fun m!549337 () Bool)

(assert (=> b!570431 m!549337))

(assert (=> b!570437 m!549331))

(declare-fun m!549339 () Bool)

(assert (=> b!570437 m!549339))

(assert (=> b!570437 m!549331))

(declare-fun m!549341 () Bool)

(assert (=> b!570437 m!549341))

(assert (=> b!570437 m!549331))

(declare-fun m!549343 () Bool)

(assert (=> b!570437 m!549343))

(declare-fun m!549345 () Bool)

(assert (=> b!570437 m!549345))

(assert (=> b!570437 m!549343))

(declare-fun m!549347 () Bool)

(assert (=> b!570437 m!549347))

(assert (=> b!570437 m!549343))

(declare-fun m!549349 () Bool)

(assert (=> b!570437 m!549349))

(declare-fun m!549351 () Bool)

(assert (=> b!570434 m!549351))

(assert (=> b!570434 m!549331))

(declare-fun m!549353 () Bool)

(assert (=> b!570428 m!549353))

(assert (=> b!570436 m!549331))

(assert (=> b!570436 m!549331))

(declare-fun m!549355 () Bool)

(assert (=> b!570436 m!549355))

(declare-fun m!549357 () Bool)

(assert (=> start!52310 m!549357))

(declare-fun m!549359 () Bool)

(assert (=> start!52310 m!549359))

(assert (=> b!570433 m!549331))

(assert (=> b!570433 m!549331))

(declare-fun m!549361 () Bool)

(assert (=> b!570433 m!549361))

(declare-fun m!549363 () Bool)

(assert (=> b!570433 m!549363))

(declare-fun m!549365 () Bool)

(assert (=> b!570433 m!549365))

(declare-fun m!549367 () Bool)

(assert (=> b!570427 m!549367))

(declare-fun m!549369 () Bool)

(assert (=> b!570430 m!549369))

(push 1)

