; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50066 () Bool)

(assert start!50066)

(declare-fun b!548203 () Bool)

(declare-fun res!341676 () Bool)

(declare-fun e!316738 () Bool)

(assert (=> b!548203 (=> (not res!341676) (not e!316738))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548203 (= res!341676 (validKeyInArray!0 k!1914))))

(declare-fun res!341675 () Bool)

(assert (=> start!50066 (=> (not res!341675) (not e!316738))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50066 (= res!341675 (validMask!0 mask!3119))))

(assert (=> start!50066 e!316738))

(assert (=> start!50066 true))

(declare-datatypes ((array!34557 0))(
  ( (array!34558 (arr!16593 (Array (_ BitVec 32) (_ BitVec 64))) (size!16957 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34557)

(declare-fun array_inv!12367 (array!34557) Bool)

(assert (=> start!50066 (array_inv!12367 a!3118)))

(declare-fun b!548204 () Bool)

(declare-fun e!316737 () Bool)

(assert (=> b!548204 (= e!316738 e!316737)))

(declare-fun res!341677 () Bool)

(assert (=> b!548204 (=> (not res!341677) (not e!316737))))

(declare-datatypes ((SeekEntryResult!5049 0))(
  ( (MissingZero!5049 (index!22423 (_ BitVec 32))) (Found!5049 (index!22424 (_ BitVec 32))) (Intermediate!5049 (undefined!5861 Bool) (index!22425 (_ BitVec 32)) (x!51395 (_ BitVec 32))) (Undefined!5049) (MissingVacant!5049 (index!22426 (_ BitVec 32))) )
))
(declare-fun lt!249794 () SeekEntryResult!5049)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548204 (= res!341677 (or (= lt!249794 (MissingZero!5049 i!1132)) (= lt!249794 (MissingVacant!5049 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34557 (_ BitVec 32)) SeekEntryResult!5049)

(assert (=> b!548204 (= lt!249794 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548205 () Bool)

(declare-fun res!341681 () Bool)

(assert (=> b!548205 (=> (not res!341681) (not e!316738))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548205 (= res!341681 (validKeyInArray!0 (select (arr!16593 a!3118) j!142)))))

(declare-fun b!548206 () Bool)

(declare-fun res!341674 () Bool)

(assert (=> b!548206 (=> (not res!341674) (not e!316737))))

(declare-datatypes ((List!10726 0))(
  ( (Nil!10723) (Cons!10722 (h!11692 (_ BitVec 64)) (t!16962 List!10726)) )
))
(declare-fun arrayNoDuplicates!0 (array!34557 (_ BitVec 32) List!10726) Bool)

(assert (=> b!548206 (= res!341674 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10723))))

(declare-fun b!548207 () Bool)

(declare-fun res!341680 () Bool)

(assert (=> b!548207 (=> (not res!341680) (not e!316738))))

(assert (=> b!548207 (= res!341680 (and (= (size!16957 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16957 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16957 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548208 () Bool)

(assert (=> b!548208 (= e!316737 false)))

(declare-fun lt!249793 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548208 (= lt!249793 (toIndex!0 (select (arr!16593 a!3118) j!142) mask!3119))))

(declare-fun b!548209 () Bool)

(declare-fun res!341679 () Bool)

(assert (=> b!548209 (=> (not res!341679) (not e!316738))))

(declare-fun arrayContainsKey!0 (array!34557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548209 (= res!341679 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548210 () Bool)

(declare-fun res!341678 () Bool)

(assert (=> b!548210 (=> (not res!341678) (not e!316737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34557 (_ BitVec 32)) Bool)

(assert (=> b!548210 (= res!341678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50066 res!341675) b!548207))

(assert (= (and b!548207 res!341680) b!548205))

(assert (= (and b!548205 res!341681) b!548203))

(assert (= (and b!548203 res!341676) b!548209))

(assert (= (and b!548209 res!341679) b!548204))

(assert (= (and b!548204 res!341677) b!548210))

(assert (= (and b!548210 res!341678) b!548206))

(assert (= (and b!548206 res!341674) b!548208))

(declare-fun m!525265 () Bool)

(assert (=> start!50066 m!525265))

(declare-fun m!525267 () Bool)

(assert (=> start!50066 m!525267))

(declare-fun m!525269 () Bool)

(assert (=> b!548205 m!525269))

(assert (=> b!548205 m!525269))

(declare-fun m!525271 () Bool)

(assert (=> b!548205 m!525271))

(assert (=> b!548208 m!525269))

(assert (=> b!548208 m!525269))

(declare-fun m!525273 () Bool)

(assert (=> b!548208 m!525273))

(declare-fun m!525275 () Bool)

(assert (=> b!548209 m!525275))

(declare-fun m!525277 () Bool)

(assert (=> b!548206 m!525277))

(declare-fun m!525279 () Bool)

(assert (=> b!548204 m!525279))

(declare-fun m!525281 () Bool)

(assert (=> b!548210 m!525281))

(declare-fun m!525283 () Bool)

(assert (=> b!548203 m!525283))

(push 1)

