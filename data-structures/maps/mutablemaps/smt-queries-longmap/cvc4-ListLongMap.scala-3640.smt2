; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50238 () Bool)

(assert start!50238)

(declare-fun b!549502 () Bool)

(declare-fun res!342797 () Bool)

(declare-fun e!317332 () Bool)

(assert (=> b!549502 (=> (not res!342797) (not e!317332))))

(declare-datatypes ((array!34645 0))(
  ( (array!34646 (arr!16634 (Array (_ BitVec 32) (_ BitVec 64))) (size!16998 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34645)

(declare-datatypes ((List!10767 0))(
  ( (Nil!10764) (Cons!10763 (h!11736 (_ BitVec 64)) (t!17003 List!10767)) )
))
(declare-fun arrayNoDuplicates!0 (array!34645 (_ BitVec 32) List!10767) Bool)

(assert (=> b!549502 (= res!342797 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10764))))

(declare-fun b!549503 () Bool)

(declare-fun res!342799 () Bool)

(declare-fun e!317330 () Bool)

(assert (=> b!549503 (=> (not res!342799) (not e!317330))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549503 (= res!342799 (validKeyInArray!0 (select (arr!16634 a!3118) j!142)))))

(declare-fun b!549504 () Bool)

(declare-fun res!342803 () Bool)

(assert (=> b!549504 (=> (not res!342803) (not e!317330))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!549504 (= res!342803 (validKeyInArray!0 k!1914))))

(declare-fun b!549505 () Bool)

(declare-fun res!342801 () Bool)

(assert (=> b!549505 (=> (not res!342801) (not e!317330))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549505 (= res!342801 (and (= (size!16998 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16998 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16998 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549506 () Bool)

(assert (=> b!549506 (= e!317330 e!317332)))

(declare-fun res!342796 () Bool)

(assert (=> b!549506 (=> (not res!342796) (not e!317332))))

(declare-datatypes ((SeekEntryResult!5090 0))(
  ( (MissingZero!5090 (index!22587 (_ BitVec 32))) (Found!5090 (index!22588 (_ BitVec 32))) (Intermediate!5090 (undefined!5902 Bool) (index!22589 (_ BitVec 32)) (x!51543 (_ BitVec 32))) (Undefined!5090) (MissingVacant!5090 (index!22590 (_ BitVec 32))) )
))
(declare-fun lt!250254 () SeekEntryResult!5090)

(assert (=> b!549506 (= res!342796 (or (= lt!250254 (MissingZero!5090 i!1132)) (= lt!250254 (MissingVacant!5090 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34645 (_ BitVec 32)) SeekEntryResult!5090)

(assert (=> b!549506 (= lt!250254 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549508 () Bool)

(assert (=> b!549508 (= e!317332 false)))

(declare-fun lt!250256 () (_ BitVec 32))

(declare-fun lt!250253 () SeekEntryResult!5090)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34645 (_ BitVec 32)) SeekEntryResult!5090)

(assert (=> b!549508 (= lt!250253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250256 (select (store (arr!16634 a!3118) i!1132 k!1914) j!142) (array!34646 (store (arr!16634 a!3118) i!1132 k!1914) (size!16998 a!3118)) mask!3119))))

(declare-fun lt!250255 () (_ BitVec 32))

(declare-fun lt!250252 () SeekEntryResult!5090)

(assert (=> b!549508 (= lt!250252 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250255 (select (arr!16634 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549508 (= lt!250256 (toIndex!0 (select (store (arr!16634 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549508 (= lt!250255 (toIndex!0 (select (arr!16634 a!3118) j!142) mask!3119))))

(declare-fun b!549509 () Bool)

(declare-fun res!342802 () Bool)

(assert (=> b!549509 (=> (not res!342802) (not e!317330))))

(declare-fun arrayContainsKey!0 (array!34645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549509 (= res!342802 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342798 () Bool)

(assert (=> start!50238 (=> (not res!342798) (not e!317330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50238 (= res!342798 (validMask!0 mask!3119))))

(assert (=> start!50238 e!317330))

(assert (=> start!50238 true))

(declare-fun array_inv!12408 (array!34645) Bool)

(assert (=> start!50238 (array_inv!12408 a!3118)))

(declare-fun b!549507 () Bool)

(declare-fun res!342800 () Bool)

(assert (=> b!549507 (=> (not res!342800) (not e!317332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34645 (_ BitVec 32)) Bool)

(assert (=> b!549507 (= res!342800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50238 res!342798) b!549505))

(assert (= (and b!549505 res!342801) b!549503))

(assert (= (and b!549503 res!342799) b!549504))

(assert (= (and b!549504 res!342803) b!549509))

(assert (= (and b!549509 res!342802) b!549506))

(assert (= (and b!549506 res!342796) b!549507))

(assert (= (and b!549507 res!342800) b!549502))

(assert (= (and b!549502 res!342797) b!549508))

(declare-fun m!526453 () Bool)

(assert (=> b!549509 m!526453))

(declare-fun m!526455 () Bool)

(assert (=> b!549502 m!526455))

(declare-fun m!526457 () Bool)

(assert (=> b!549504 m!526457))

(declare-fun m!526459 () Bool)

(assert (=> b!549506 m!526459))

(declare-fun m!526461 () Bool)

(assert (=> start!50238 m!526461))

(declare-fun m!526463 () Bool)

(assert (=> start!50238 m!526463))

(declare-fun m!526465 () Bool)

(assert (=> b!549507 m!526465))

(declare-fun m!526467 () Bool)

(assert (=> b!549503 m!526467))

(assert (=> b!549503 m!526467))

(declare-fun m!526469 () Bool)

(assert (=> b!549503 m!526469))

(assert (=> b!549508 m!526467))

(declare-fun m!526471 () Bool)

(assert (=> b!549508 m!526471))

(declare-fun m!526473 () Bool)

(assert (=> b!549508 m!526473))

(declare-fun m!526475 () Bool)

(assert (=> b!549508 m!526475))

(assert (=> b!549508 m!526467))

(assert (=> b!549508 m!526473))

(declare-fun m!526477 () Bool)

(assert (=> b!549508 m!526477))

(assert (=> b!549508 m!526467))

(declare-fun m!526479 () Bool)

(assert (=> b!549508 m!526479))

(assert (=> b!549508 m!526473))

(declare-fun m!526481 () Bool)

(assert (=> b!549508 m!526481))

(push 1)

(assert (not b!549509))

(assert (not b!549503))

