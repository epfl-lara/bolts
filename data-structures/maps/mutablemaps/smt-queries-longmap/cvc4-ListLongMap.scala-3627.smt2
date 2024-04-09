; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50070 () Bool)

(assert start!50070)

(declare-fun b!548251 () Bool)

(declare-fun res!341726 () Bool)

(declare-fun e!316756 () Bool)

(assert (=> b!548251 (=> (not res!341726) (not e!316756))))

(declare-datatypes ((array!34561 0))(
  ( (array!34562 (arr!16595 (Array (_ BitVec 32) (_ BitVec 64))) (size!16959 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34561)

(declare-datatypes ((List!10728 0))(
  ( (Nil!10725) (Cons!10724 (h!11694 (_ BitVec 64)) (t!16964 List!10728)) )
))
(declare-fun arrayNoDuplicates!0 (array!34561 (_ BitVec 32) List!10728) Bool)

(assert (=> b!548251 (= res!341726 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10725))))

(declare-fun b!548252 () Bool)

(declare-fun res!341722 () Bool)

(declare-fun e!316755 () Bool)

(assert (=> b!548252 (=> (not res!341722) (not e!316755))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548252 (= res!341722 (validKeyInArray!0 (select (arr!16595 a!3118) j!142)))))

(declare-fun res!341727 () Bool)

(assert (=> start!50070 (=> (not res!341727) (not e!316755))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50070 (= res!341727 (validMask!0 mask!3119))))

(assert (=> start!50070 e!316755))

(assert (=> start!50070 true))

(declare-fun array_inv!12369 (array!34561) Bool)

(assert (=> start!50070 (array_inv!12369 a!3118)))

(declare-fun b!548253 () Bool)

(declare-fun res!341725 () Bool)

(assert (=> b!548253 (=> (not res!341725) (not e!316756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34561 (_ BitVec 32)) Bool)

(assert (=> b!548253 (= res!341725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548254 () Bool)

(declare-fun res!341723 () Bool)

(assert (=> b!548254 (=> (not res!341723) (not e!316755))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!548254 (= res!341723 (validKeyInArray!0 k!1914))))

(declare-fun b!548255 () Bool)

(declare-fun res!341729 () Bool)

(assert (=> b!548255 (=> (not res!341729) (not e!316755))))

(declare-fun arrayContainsKey!0 (array!34561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548255 (= res!341729 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548256 () Bool)

(declare-fun res!341724 () Bool)

(assert (=> b!548256 (=> (not res!341724) (not e!316755))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548256 (= res!341724 (and (= (size!16959 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16959 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16959 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548257 () Bool)

(assert (=> b!548257 (= e!316755 e!316756)))

(declare-fun res!341728 () Bool)

(assert (=> b!548257 (=> (not res!341728) (not e!316756))))

(declare-datatypes ((SeekEntryResult!5051 0))(
  ( (MissingZero!5051 (index!22431 (_ BitVec 32))) (Found!5051 (index!22432 (_ BitVec 32))) (Intermediate!5051 (undefined!5863 Bool) (index!22433 (_ BitVec 32)) (x!51397 (_ BitVec 32))) (Undefined!5051) (MissingVacant!5051 (index!22434 (_ BitVec 32))) )
))
(declare-fun lt!249806 () SeekEntryResult!5051)

(assert (=> b!548257 (= res!341728 (or (= lt!249806 (MissingZero!5051 i!1132)) (= lt!249806 (MissingVacant!5051 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34561 (_ BitVec 32)) SeekEntryResult!5051)

(assert (=> b!548257 (= lt!249806 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548258 () Bool)

(assert (=> b!548258 (= e!316756 false)))

(declare-fun lt!249805 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548258 (= lt!249805 (toIndex!0 (select (arr!16595 a!3118) j!142) mask!3119))))

(assert (= (and start!50070 res!341727) b!548256))

(assert (= (and b!548256 res!341724) b!548252))

(assert (= (and b!548252 res!341722) b!548254))

(assert (= (and b!548254 res!341723) b!548255))

(assert (= (and b!548255 res!341729) b!548257))

(assert (= (and b!548257 res!341728) b!548253))

(assert (= (and b!548253 res!341725) b!548251))

(assert (= (and b!548251 res!341726) b!548258))

(declare-fun m!525305 () Bool)

(assert (=> b!548251 m!525305))

(declare-fun m!525307 () Bool)

(assert (=> b!548258 m!525307))

(assert (=> b!548258 m!525307))

(declare-fun m!525309 () Bool)

(assert (=> b!548258 m!525309))

(declare-fun m!525311 () Bool)

(assert (=> b!548253 m!525311))

(declare-fun m!525313 () Bool)

(assert (=> b!548257 m!525313))

(declare-fun m!525315 () Bool)

(assert (=> b!548254 m!525315))

(declare-fun m!525317 () Bool)

(assert (=> b!548255 m!525317))

(declare-fun m!525319 () Bool)

(assert (=> start!50070 m!525319))

(declare-fun m!525321 () Bool)

(assert (=> start!50070 m!525321))

(assert (=> b!548252 m!525307))

(assert (=> b!548252 m!525307))

(declare-fun m!525323 () Bool)

(assert (=> b!548252 m!525323))

(push 1)

(assert (not b!548252))

(assert (not start!50070))

(assert (not b!548255))

