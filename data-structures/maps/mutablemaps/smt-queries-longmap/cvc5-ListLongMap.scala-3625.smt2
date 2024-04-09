; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50006 () Bool)

(assert start!50006)

(declare-fun b!547906 () Bool)

(declare-fun res!341471 () Bool)

(declare-fun e!316575 () Bool)

(assert (=> b!547906 (=> (not res!341471) (not e!316575))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34542 0))(
  ( (array!34543 (arr!16587 (Array (_ BitVec 32) (_ BitVec 64))) (size!16951 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34542)

(assert (=> b!547906 (= res!341471 (and (= (size!16951 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16951 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16951 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341464 () Bool)

(assert (=> start!50006 (=> (not res!341464) (not e!316575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50006 (= res!341464 (validMask!0 mask!3119))))

(assert (=> start!50006 e!316575))

(assert (=> start!50006 true))

(declare-fun array_inv!12361 (array!34542) Bool)

(assert (=> start!50006 (array_inv!12361 a!3118)))

(declare-fun b!547907 () Bool)

(declare-fun res!341466 () Bool)

(assert (=> b!547907 (=> (not res!341466) (not e!316575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547907 (= res!341466 (validKeyInArray!0 (select (arr!16587 a!3118) j!142)))))

(declare-fun b!547908 () Bool)

(declare-fun e!316574 () Bool)

(assert (=> b!547908 (= e!316574 false)))

(declare-fun lt!249686 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547908 (= lt!249686 (toIndex!0 (select (arr!16587 a!3118) j!142) mask!3119))))

(declare-fun b!547909 () Bool)

(declare-fun res!341467 () Bool)

(assert (=> b!547909 (=> (not res!341467) (not e!316575))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!547909 (= res!341467 (validKeyInArray!0 k!1914))))

(declare-fun b!547910 () Bool)

(assert (=> b!547910 (= e!316575 e!316574)))

(declare-fun res!341469 () Bool)

(assert (=> b!547910 (=> (not res!341469) (not e!316574))))

(declare-datatypes ((SeekEntryResult!5043 0))(
  ( (MissingZero!5043 (index!22399 (_ BitVec 32))) (Found!5043 (index!22400 (_ BitVec 32))) (Intermediate!5043 (undefined!5855 Bool) (index!22401 (_ BitVec 32)) (x!51370 (_ BitVec 32))) (Undefined!5043) (MissingVacant!5043 (index!22402 (_ BitVec 32))) )
))
(declare-fun lt!249685 () SeekEntryResult!5043)

(assert (=> b!547910 (= res!341469 (or (= lt!249685 (MissingZero!5043 i!1132)) (= lt!249685 (MissingVacant!5043 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34542 (_ BitVec 32)) SeekEntryResult!5043)

(assert (=> b!547910 (= lt!249685 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547911 () Bool)

(declare-fun res!341465 () Bool)

(assert (=> b!547911 (=> (not res!341465) (not e!316574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34542 (_ BitVec 32)) Bool)

(assert (=> b!547911 (= res!341465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547912 () Bool)

(declare-fun res!341470 () Bool)

(assert (=> b!547912 (=> (not res!341470) (not e!316574))))

(declare-datatypes ((List!10720 0))(
  ( (Nil!10717) (Cons!10716 (h!11683 (_ BitVec 64)) (t!16956 List!10720)) )
))
(declare-fun arrayNoDuplicates!0 (array!34542 (_ BitVec 32) List!10720) Bool)

(assert (=> b!547912 (= res!341470 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10717))))

(declare-fun b!547913 () Bool)

(declare-fun res!341468 () Bool)

(assert (=> b!547913 (=> (not res!341468) (not e!316575))))

(declare-fun arrayContainsKey!0 (array!34542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547913 (= res!341468 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50006 res!341464) b!547906))

(assert (= (and b!547906 res!341471) b!547907))

(assert (= (and b!547907 res!341466) b!547909))

(assert (= (and b!547909 res!341467) b!547913))

(assert (= (and b!547913 res!341468) b!547910))

(assert (= (and b!547910 res!341469) b!547911))

(assert (= (and b!547911 res!341465) b!547912))

(assert (= (and b!547912 res!341470) b!547908))

(declare-fun m!525049 () Bool)

(assert (=> b!547910 m!525049))

(declare-fun m!525051 () Bool)

(assert (=> b!547909 m!525051))

(declare-fun m!525053 () Bool)

(assert (=> b!547912 m!525053))

(declare-fun m!525055 () Bool)

(assert (=> b!547908 m!525055))

(assert (=> b!547908 m!525055))

(declare-fun m!525057 () Bool)

(assert (=> b!547908 m!525057))

(declare-fun m!525059 () Bool)

(assert (=> start!50006 m!525059))

(declare-fun m!525061 () Bool)

(assert (=> start!50006 m!525061))

(declare-fun m!525063 () Bool)

(assert (=> b!547911 m!525063))

(declare-fun m!525065 () Bool)

(assert (=> b!547913 m!525065))

(assert (=> b!547907 m!525055))

(assert (=> b!547907 m!525055))

(declare-fun m!525067 () Bool)

(assert (=> b!547907 m!525067))

(push 1)

