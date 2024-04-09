; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50232 () Bool)

(assert start!50232)

(declare-fun b!549430 () Bool)

(declare-fun res!342724 () Bool)

(declare-fun e!317304 () Bool)

(assert (=> b!549430 (=> (not res!342724) (not e!317304))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549430 (= res!342724 (validKeyInArray!0 k!1914))))

(declare-fun b!549431 () Bool)

(declare-fun e!317303 () Bool)

(assert (=> b!549431 (= e!317303 false)))

(declare-datatypes ((SeekEntryResult!5087 0))(
  ( (MissingZero!5087 (index!22575 (_ BitVec 32))) (Found!5087 (index!22576 (_ BitVec 32))) (Intermediate!5087 (undefined!5899 Bool) (index!22577 (_ BitVec 32)) (x!51532 (_ BitVec 32))) (Undefined!5087) (MissingVacant!5087 (index!22578 (_ BitVec 32))) )
))
(declare-fun lt!250208 () SeekEntryResult!5087)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!250210 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34639 0))(
  ( (array!34640 (arr!16631 (Array (_ BitVec 32) (_ BitVec 64))) (size!16995 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34639)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34639 (_ BitVec 32)) SeekEntryResult!5087)

(assert (=> b!549431 (= lt!250208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250210 (select (store (arr!16631 a!3118) i!1132 k!1914) j!142) (array!34640 (store (arr!16631 a!3118) i!1132 k!1914) (size!16995 a!3118)) mask!3119))))

(declare-fun lt!250209 () SeekEntryResult!5087)

(declare-fun lt!250211 () (_ BitVec 32))

(assert (=> b!549431 (= lt!250209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250211 (select (arr!16631 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549431 (= lt!250210 (toIndex!0 (select (store (arr!16631 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549431 (= lt!250211 (toIndex!0 (select (arr!16631 a!3118) j!142) mask!3119))))

(declare-fun b!549432 () Bool)

(assert (=> b!549432 (= e!317304 e!317303)))

(declare-fun res!342729 () Bool)

(assert (=> b!549432 (=> (not res!342729) (not e!317303))))

(declare-fun lt!250207 () SeekEntryResult!5087)

(assert (=> b!549432 (= res!342729 (or (= lt!250207 (MissingZero!5087 i!1132)) (= lt!250207 (MissingVacant!5087 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34639 (_ BitVec 32)) SeekEntryResult!5087)

(assert (=> b!549432 (= lt!250207 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342731 () Bool)

(assert (=> start!50232 (=> (not res!342731) (not e!317304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50232 (= res!342731 (validMask!0 mask!3119))))

(assert (=> start!50232 e!317304))

(assert (=> start!50232 true))

(declare-fun array_inv!12405 (array!34639) Bool)

(assert (=> start!50232 (array_inv!12405 a!3118)))

(declare-fun b!549433 () Bool)

(declare-fun res!342730 () Bool)

(assert (=> b!549433 (=> (not res!342730) (not e!317304))))

(declare-fun arrayContainsKey!0 (array!34639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549433 (= res!342730 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549434 () Bool)

(declare-fun res!342725 () Bool)

(assert (=> b!549434 (=> (not res!342725) (not e!317303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34639 (_ BitVec 32)) Bool)

(assert (=> b!549434 (= res!342725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549435 () Bool)

(declare-fun res!342728 () Bool)

(assert (=> b!549435 (=> (not res!342728) (not e!317304))))

(assert (=> b!549435 (= res!342728 (and (= (size!16995 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16995 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16995 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549436 () Bool)

(declare-fun res!342726 () Bool)

(assert (=> b!549436 (=> (not res!342726) (not e!317303))))

(declare-datatypes ((List!10764 0))(
  ( (Nil!10761) (Cons!10760 (h!11733 (_ BitVec 64)) (t!17000 List!10764)) )
))
(declare-fun arrayNoDuplicates!0 (array!34639 (_ BitVec 32) List!10764) Bool)

(assert (=> b!549436 (= res!342726 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10761))))

(declare-fun b!549437 () Bool)

(declare-fun res!342727 () Bool)

(assert (=> b!549437 (=> (not res!342727) (not e!317304))))

(assert (=> b!549437 (= res!342727 (validKeyInArray!0 (select (arr!16631 a!3118) j!142)))))

(assert (= (and start!50232 res!342731) b!549435))

(assert (= (and b!549435 res!342728) b!549437))

(assert (= (and b!549437 res!342727) b!549430))

(assert (= (and b!549430 res!342724) b!549433))

(assert (= (and b!549433 res!342730) b!549432))

(assert (= (and b!549432 res!342729) b!549434))

(assert (= (and b!549434 res!342725) b!549436))

(assert (= (and b!549436 res!342726) b!549431))

(declare-fun m!526363 () Bool)

(assert (=> start!50232 m!526363))

(declare-fun m!526365 () Bool)

(assert (=> start!50232 m!526365))

(declare-fun m!526367 () Bool)

(assert (=> b!549433 m!526367))

(declare-fun m!526369 () Bool)

(assert (=> b!549434 m!526369))

(declare-fun m!526371 () Bool)

(assert (=> b!549436 m!526371))

(declare-fun m!526373 () Bool)

(assert (=> b!549437 m!526373))

(assert (=> b!549437 m!526373))

(declare-fun m!526375 () Bool)

(assert (=> b!549437 m!526375))

(declare-fun m!526377 () Bool)

(assert (=> b!549430 m!526377))

(assert (=> b!549431 m!526373))

(declare-fun m!526379 () Bool)

(assert (=> b!549431 m!526379))

(assert (=> b!549431 m!526373))

(declare-fun m!526381 () Bool)

(assert (=> b!549431 m!526381))

(declare-fun m!526383 () Bool)

(assert (=> b!549431 m!526383))

(declare-fun m!526385 () Bool)

(assert (=> b!549431 m!526385))

(assert (=> b!549431 m!526383))

(declare-fun m!526387 () Bool)

(assert (=> b!549431 m!526387))

(assert (=> b!549431 m!526383))

(declare-fun m!526389 () Bool)

(assert (=> b!549431 m!526389))

(assert (=> b!549431 m!526373))

(declare-fun m!526391 () Bool)

(assert (=> b!549432 m!526391))

(push 1)

(assert (not start!50232))

