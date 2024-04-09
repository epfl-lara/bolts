; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50812 () Bool)

(assert start!50812)

(declare-fun b!555516 () Bool)

(declare-fun res!348080 () Bool)

(declare-fun e!320152 () Bool)

(assert (=> b!555516 (=> (not res!348080) (not e!320152))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555516 (= res!348080 (validKeyInArray!0 k0!1914))))

(declare-fun b!555517 () Bool)

(declare-fun res!348083 () Bool)

(assert (=> b!555517 (=> (not res!348083) (not e!320152))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34991 0))(
  ( (array!34992 (arr!16801 (Array (_ BitVec 32) (_ BitVec 64))) (size!17165 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34991)

(assert (=> b!555517 (= res!348083 (and (= (size!17165 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17165 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17165 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555518 () Bool)

(declare-fun res!348082 () Bool)

(declare-fun e!320150 () Bool)

(assert (=> b!555518 (=> (not res!348082) (not e!320150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34991 (_ BitVec 32)) Bool)

(assert (=> b!555518 (= res!348082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555519 () Bool)

(assert (=> b!555519 (= e!320152 e!320150)))

(declare-fun res!348085 () Bool)

(assert (=> b!555519 (=> (not res!348085) (not e!320150))))

(declare-datatypes ((SeekEntryResult!5257 0))(
  ( (MissingZero!5257 (index!23255 (_ BitVec 32))) (Found!5257 (index!23256 (_ BitVec 32))) (Intermediate!5257 (undefined!6069 Bool) (index!23257 (_ BitVec 32)) (x!52182 (_ BitVec 32))) (Undefined!5257) (MissingVacant!5257 (index!23258 (_ BitVec 32))) )
))
(declare-fun lt!252558 () SeekEntryResult!5257)

(assert (=> b!555519 (= res!348085 (or (= lt!252558 (MissingZero!5257 i!1132)) (= lt!252558 (MissingVacant!5257 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34991 (_ BitVec 32)) SeekEntryResult!5257)

(assert (=> b!555519 (= lt!252558 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555520 () Bool)

(declare-fun e!320149 () Bool)

(assert (=> b!555520 (= e!320150 e!320149)))

(declare-fun res!348086 () Bool)

(assert (=> b!555520 (=> (not res!348086) (not e!320149))))

(declare-fun lt!252560 () SeekEntryResult!5257)

(declare-fun lt!252561 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34991 (_ BitVec 32)) SeekEntryResult!5257)

(assert (=> b!555520 (= res!348086 (= lt!252560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252561 (select (store (arr!16801 a!3118) i!1132 k0!1914) j!142) (array!34992 (store (arr!16801 a!3118) i!1132 k0!1914) (size!17165 a!3118)) mask!3119)))))

(declare-fun lt!252559 () (_ BitVec 32))

(assert (=> b!555520 (= lt!252560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252559 (select (arr!16801 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555520 (= lt!252561 (toIndex!0 (select (store (arr!16801 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555520 (= lt!252559 (toIndex!0 (select (arr!16801 a!3118) j!142) mask!3119))))

(declare-fun b!555521 () Bool)

(declare-fun res!348081 () Bool)

(assert (=> b!555521 (=> (not res!348081) (not e!320150))))

(declare-datatypes ((List!10934 0))(
  ( (Nil!10931) (Cons!10930 (h!11915 (_ BitVec 64)) (t!17170 List!10934)) )
))
(declare-fun arrayNoDuplicates!0 (array!34991 (_ BitVec 32) List!10934) Bool)

(assert (=> b!555521 (= res!348081 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10931))))

(declare-fun b!555522 () Bool)

(declare-fun res!348084 () Bool)

(assert (=> b!555522 (=> (not res!348084) (not e!320152))))

(assert (=> b!555522 (= res!348084 (validKeyInArray!0 (select (arr!16801 a!3118) j!142)))))

(declare-fun b!555523 () Bool)

(declare-fun res!348078 () Bool)

(assert (=> b!555523 (=> (not res!348078) (not e!320152))))

(declare-fun arrayContainsKey!0 (array!34991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555523 (= res!348078 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!348079 () Bool)

(assert (=> start!50812 (=> (not res!348079) (not e!320152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50812 (= res!348079 (validMask!0 mask!3119))))

(assert (=> start!50812 e!320152))

(assert (=> start!50812 true))

(declare-fun array_inv!12575 (array!34991) Bool)

(assert (=> start!50812 (array_inv!12575 a!3118)))

(declare-fun b!555524 () Bool)

(assert (=> b!555524 (= e!320149 (not true))))

(declare-fun lt!252562 () SeekEntryResult!5257)

(get-info :version)

(assert (=> b!555524 (and (= lt!252562 (Found!5257 j!142)) (or (undefined!6069 lt!252560) (not ((_ is Intermediate!5257) lt!252560)) (= (select (arr!16801 a!3118) (index!23257 lt!252560)) (select (arr!16801 a!3118) j!142)) (not (= (select (arr!16801 a!3118) (index!23257 lt!252560)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252562 (MissingZero!5257 (index!23257 lt!252560)))))))

(assert (=> b!555524 (= lt!252562 (seekEntryOrOpen!0 (select (arr!16801 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555524 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17288 0))(
  ( (Unit!17289) )
))
(declare-fun lt!252563 () Unit!17288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17288)

(assert (=> b!555524 (= lt!252563 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50812 res!348079) b!555517))

(assert (= (and b!555517 res!348083) b!555522))

(assert (= (and b!555522 res!348084) b!555516))

(assert (= (and b!555516 res!348080) b!555523))

(assert (= (and b!555523 res!348078) b!555519))

(assert (= (and b!555519 res!348085) b!555518))

(assert (= (and b!555518 res!348082) b!555521))

(assert (= (and b!555521 res!348081) b!555520))

(assert (= (and b!555520 res!348086) b!555524))

(declare-fun m!533349 () Bool)

(assert (=> b!555520 m!533349))

(declare-fun m!533351 () Bool)

(assert (=> b!555520 m!533351))

(assert (=> b!555520 m!533349))

(declare-fun m!533353 () Bool)

(assert (=> b!555520 m!533353))

(assert (=> b!555520 m!533349))

(declare-fun m!533355 () Bool)

(assert (=> b!555520 m!533355))

(declare-fun m!533357 () Bool)

(assert (=> b!555520 m!533357))

(assert (=> b!555520 m!533355))

(declare-fun m!533359 () Bool)

(assert (=> b!555520 m!533359))

(assert (=> b!555520 m!533355))

(declare-fun m!533361 () Bool)

(assert (=> b!555520 m!533361))

(assert (=> b!555522 m!533349))

(assert (=> b!555522 m!533349))

(declare-fun m!533363 () Bool)

(assert (=> b!555522 m!533363))

(declare-fun m!533365 () Bool)

(assert (=> b!555516 m!533365))

(declare-fun m!533367 () Bool)

(assert (=> b!555518 m!533367))

(declare-fun m!533369 () Bool)

(assert (=> b!555519 m!533369))

(declare-fun m!533371 () Bool)

(assert (=> start!50812 m!533371))

(declare-fun m!533373 () Bool)

(assert (=> start!50812 m!533373))

(declare-fun m!533375 () Bool)

(assert (=> b!555524 m!533375))

(assert (=> b!555524 m!533349))

(declare-fun m!533377 () Bool)

(assert (=> b!555524 m!533377))

(declare-fun m!533379 () Bool)

(assert (=> b!555524 m!533379))

(assert (=> b!555524 m!533349))

(declare-fun m!533381 () Bool)

(assert (=> b!555524 m!533381))

(declare-fun m!533383 () Bool)

(assert (=> b!555523 m!533383))

(declare-fun m!533385 () Bool)

(assert (=> b!555521 m!533385))

(check-sat (not b!555521) (not b!555518) (not start!50812) (not b!555519) (not b!555524) (not b!555523) (not b!555520) (not b!555522) (not b!555516))
(check-sat)
