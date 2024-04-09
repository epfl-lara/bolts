; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50010 () Bool)

(assert start!50010)

(declare-fun res!341516 () Bool)

(declare-fun e!316594 () Bool)

(assert (=> start!50010 (=> (not res!341516) (not e!316594))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50010 (= res!341516 (validMask!0 mask!3119))))

(assert (=> start!50010 e!316594))

(assert (=> start!50010 true))

(declare-datatypes ((array!34546 0))(
  ( (array!34547 (arr!16589 (Array (_ BitVec 32) (_ BitVec 64))) (size!16953 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34546)

(declare-fun array_inv!12363 (array!34546) Bool)

(assert (=> start!50010 (array_inv!12363 a!3118)))

(declare-fun b!547954 () Bool)

(declare-fun res!341513 () Bool)

(declare-fun e!316593 () Bool)

(assert (=> b!547954 (=> (not res!341513) (not e!316593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34546 (_ BitVec 32)) Bool)

(assert (=> b!547954 (= res!341513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547955 () Bool)

(declare-fun res!341517 () Bool)

(assert (=> b!547955 (=> (not res!341517) (not e!316594))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547955 (= res!341517 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547956 () Bool)

(declare-fun res!341514 () Bool)

(assert (=> b!547956 (=> (not res!341514) (not e!316594))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547956 (= res!341514 (and (= (size!16953 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16953 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16953 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547957 () Bool)

(assert (=> b!547957 (= e!316593 false)))

(declare-fun lt!249697 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547957 (= lt!249697 (toIndex!0 (select (arr!16589 a!3118) j!142) mask!3119))))

(declare-fun b!547958 () Bool)

(declare-fun res!341518 () Bool)

(assert (=> b!547958 (=> (not res!341518) (not e!316594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547958 (= res!341518 (validKeyInArray!0 (select (arr!16589 a!3118) j!142)))))

(declare-fun b!547959 () Bool)

(declare-fun res!341519 () Bool)

(assert (=> b!547959 (=> (not res!341519) (not e!316594))))

(assert (=> b!547959 (= res!341519 (validKeyInArray!0 k!1914))))

(declare-fun b!547960 () Bool)

(assert (=> b!547960 (= e!316594 e!316593)))

(declare-fun res!341512 () Bool)

(assert (=> b!547960 (=> (not res!341512) (not e!316593))))

(declare-datatypes ((SeekEntryResult!5045 0))(
  ( (MissingZero!5045 (index!22407 (_ BitVec 32))) (Found!5045 (index!22408 (_ BitVec 32))) (Intermediate!5045 (undefined!5857 Bool) (index!22409 (_ BitVec 32)) (x!51372 (_ BitVec 32))) (Undefined!5045) (MissingVacant!5045 (index!22410 (_ BitVec 32))) )
))
(declare-fun lt!249698 () SeekEntryResult!5045)

(assert (=> b!547960 (= res!341512 (or (= lt!249698 (MissingZero!5045 i!1132)) (= lt!249698 (MissingVacant!5045 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34546 (_ BitVec 32)) SeekEntryResult!5045)

(assert (=> b!547960 (= lt!249698 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547961 () Bool)

(declare-fun res!341515 () Bool)

(assert (=> b!547961 (=> (not res!341515) (not e!316593))))

(declare-datatypes ((List!10722 0))(
  ( (Nil!10719) (Cons!10718 (h!11685 (_ BitVec 64)) (t!16958 List!10722)) )
))
(declare-fun arrayNoDuplicates!0 (array!34546 (_ BitVec 32) List!10722) Bool)

(assert (=> b!547961 (= res!341515 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10719))))

(assert (= (and start!50010 res!341516) b!547956))

(assert (= (and b!547956 res!341514) b!547958))

(assert (= (and b!547958 res!341518) b!547959))

(assert (= (and b!547959 res!341519) b!547955))

(assert (= (and b!547955 res!341517) b!547960))

(assert (= (and b!547960 res!341512) b!547954))

(assert (= (and b!547954 res!341513) b!547961))

(assert (= (and b!547961 res!341515) b!547957))

(declare-fun m!525089 () Bool)

(assert (=> b!547958 m!525089))

(assert (=> b!547958 m!525089))

(declare-fun m!525091 () Bool)

(assert (=> b!547958 m!525091))

(declare-fun m!525093 () Bool)

(assert (=> b!547955 m!525093))

(declare-fun m!525095 () Bool)

(assert (=> start!50010 m!525095))

(declare-fun m!525097 () Bool)

(assert (=> start!50010 m!525097))

(assert (=> b!547957 m!525089))

(assert (=> b!547957 m!525089))

(declare-fun m!525099 () Bool)

(assert (=> b!547957 m!525099))

(declare-fun m!525101 () Bool)

(assert (=> b!547959 m!525101))

(declare-fun m!525103 () Bool)

(assert (=> b!547961 m!525103))

(declare-fun m!525105 () Bool)

(assert (=> b!547954 m!525105))

(declare-fun m!525107 () Bool)

(assert (=> b!547960 m!525107))

(push 1)

(assert (not b!547960))

(assert (not b!547955))

(assert (not start!50010))

(assert (not b!547954))

