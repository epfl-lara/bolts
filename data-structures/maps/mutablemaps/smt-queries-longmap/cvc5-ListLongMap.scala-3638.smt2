; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50222 () Bool)

(assert start!50222)

(declare-fun b!549310 () Bool)

(declare-fun res!342606 () Bool)

(declare-fun e!317258 () Bool)

(assert (=> b!549310 (=> (not res!342606) (not e!317258))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549310 (= res!342606 (validKeyInArray!0 k!1914))))

(declare-fun b!549311 () Bool)

(declare-fun res!342608 () Bool)

(assert (=> b!549311 (=> (not res!342608) (not e!317258))))

(declare-datatypes ((array!34629 0))(
  ( (array!34630 (arr!16626 (Array (_ BitVec 32) (_ BitVec 64))) (size!16990 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34629)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549311 (= res!342608 (validKeyInArray!0 (select (arr!16626 a!3118) j!142)))))

(declare-fun b!549312 () Bool)

(declare-fun res!342609 () Bool)

(assert (=> b!549312 (=> (not res!342609) (not e!317258))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!549312 (= res!342609 (and (= (size!16990 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16990 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16990 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549314 () Bool)

(declare-fun e!317259 () Bool)

(assert (=> b!549314 (= e!317259 false)))

(declare-fun lt!250133 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5082 0))(
  ( (MissingZero!5082 (index!22555 (_ BitVec 32))) (Found!5082 (index!22556 (_ BitVec 32))) (Intermediate!5082 (undefined!5894 Bool) (index!22557 (_ BitVec 32)) (x!51519 (_ BitVec 32))) (Undefined!5082) (MissingVacant!5082 (index!22558 (_ BitVec 32))) )
))
(declare-fun lt!250134 () SeekEntryResult!5082)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34629 (_ BitVec 32)) SeekEntryResult!5082)

(assert (=> b!549314 (= lt!250134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250133 (select (store (arr!16626 a!3118) i!1132 k!1914) j!142) (array!34630 (store (arr!16626 a!3118) i!1132 k!1914) (size!16990 a!3118)) mask!3119))))

(declare-fun lt!250135 () SeekEntryResult!5082)

(declare-fun lt!250136 () (_ BitVec 32))

(assert (=> b!549314 (= lt!250135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250136 (select (arr!16626 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549314 (= lt!250133 (toIndex!0 (select (store (arr!16626 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549314 (= lt!250136 (toIndex!0 (select (arr!16626 a!3118) j!142) mask!3119))))

(declare-fun b!549315 () Bool)

(declare-fun res!342611 () Bool)

(assert (=> b!549315 (=> (not res!342611) (not e!317259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34629 (_ BitVec 32)) Bool)

(assert (=> b!549315 (= res!342611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549313 () Bool)

(assert (=> b!549313 (= e!317258 e!317259)))

(declare-fun res!342605 () Bool)

(assert (=> b!549313 (=> (not res!342605) (not e!317259))))

(declare-fun lt!250132 () SeekEntryResult!5082)

(assert (=> b!549313 (= res!342605 (or (= lt!250132 (MissingZero!5082 i!1132)) (= lt!250132 (MissingVacant!5082 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34629 (_ BitVec 32)) SeekEntryResult!5082)

(assert (=> b!549313 (= lt!250132 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342607 () Bool)

(assert (=> start!50222 (=> (not res!342607) (not e!317258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50222 (= res!342607 (validMask!0 mask!3119))))

(assert (=> start!50222 e!317258))

(assert (=> start!50222 true))

(declare-fun array_inv!12400 (array!34629) Bool)

(assert (=> start!50222 (array_inv!12400 a!3118)))

(declare-fun b!549316 () Bool)

(declare-fun res!342610 () Bool)

(assert (=> b!549316 (=> (not res!342610) (not e!317259))))

(declare-datatypes ((List!10759 0))(
  ( (Nil!10756) (Cons!10755 (h!11728 (_ BitVec 64)) (t!16995 List!10759)) )
))
(declare-fun arrayNoDuplicates!0 (array!34629 (_ BitVec 32) List!10759) Bool)

(assert (=> b!549316 (= res!342610 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10756))))

(declare-fun b!549317 () Bool)

(declare-fun res!342604 () Bool)

(assert (=> b!549317 (=> (not res!342604) (not e!317258))))

(declare-fun arrayContainsKey!0 (array!34629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549317 (= res!342604 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50222 res!342607) b!549312))

(assert (= (and b!549312 res!342609) b!549311))

(assert (= (and b!549311 res!342608) b!549310))

(assert (= (and b!549310 res!342606) b!549317))

(assert (= (and b!549317 res!342604) b!549313))

(assert (= (and b!549313 res!342605) b!549315))

(assert (= (and b!549315 res!342611) b!549316))

(assert (= (and b!549316 res!342610) b!549314))

(declare-fun m!526213 () Bool)

(assert (=> b!549311 m!526213))

(assert (=> b!549311 m!526213))

(declare-fun m!526215 () Bool)

(assert (=> b!549311 m!526215))

(declare-fun m!526217 () Bool)

(assert (=> b!549314 m!526217))

(declare-fun m!526219 () Bool)

(assert (=> b!549314 m!526219))

(assert (=> b!549314 m!526213))

(declare-fun m!526221 () Bool)

(assert (=> b!549314 m!526221))

(assert (=> b!549314 m!526213))

(assert (=> b!549314 m!526217))

(assert (=> b!549314 m!526213))

(declare-fun m!526223 () Bool)

(assert (=> b!549314 m!526223))

(declare-fun m!526225 () Bool)

(assert (=> b!549314 m!526225))

(assert (=> b!549314 m!526217))

(declare-fun m!526227 () Bool)

(assert (=> b!549314 m!526227))

(declare-fun m!526229 () Bool)

(assert (=> b!549315 m!526229))

(declare-fun m!526231 () Bool)

(assert (=> b!549316 m!526231))

(declare-fun m!526233 () Bool)

(assert (=> b!549313 m!526233))

(declare-fun m!526235 () Bool)

(assert (=> b!549317 m!526235))

(declare-fun m!526237 () Bool)

(assert (=> start!50222 m!526237))

(declare-fun m!526239 () Bool)

(assert (=> start!50222 m!526239))

(declare-fun m!526241 () Bool)

(assert (=> b!549310 m!526241))

(push 1)

