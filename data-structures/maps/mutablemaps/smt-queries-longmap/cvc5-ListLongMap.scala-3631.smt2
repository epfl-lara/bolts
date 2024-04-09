; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50132 () Bool)

(assert start!50132)

(declare-fun b!548644 () Bool)

(declare-fun e!316952 () Bool)

(assert (=> b!548644 (= e!316952 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34584 0))(
  ( (array!34585 (arr!16605 (Array (_ BitVec 32) (_ BitVec 64))) (size!16969 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34584)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!249901 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548644 (= lt!249901 (toIndex!0 (select (store (arr!16605 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!548645 () Bool)

(declare-fun res!342031 () Bool)

(declare-fun e!316953 () Bool)

(assert (=> b!548645 (=> (not res!342031) (not e!316953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548645 (= res!342031 (validKeyInArray!0 k!1914))))

(declare-fun b!548646 () Bool)

(assert (=> b!548646 (= e!316953 e!316952)))

(declare-fun res!342029 () Bool)

(assert (=> b!548646 (=> (not res!342029) (not e!316952))))

(declare-datatypes ((SeekEntryResult!5061 0))(
  ( (MissingZero!5061 (index!22471 (_ BitVec 32))) (Found!5061 (index!22472 (_ BitVec 32))) (Intermediate!5061 (undefined!5873 Bool) (index!22473 (_ BitVec 32)) (x!51439 (_ BitVec 32))) (Undefined!5061) (MissingVacant!5061 (index!22474 (_ BitVec 32))) )
))
(declare-fun lt!249902 () SeekEntryResult!5061)

(assert (=> b!548646 (= res!342029 (or (= lt!249902 (MissingZero!5061 i!1132)) (= lt!249902 (MissingVacant!5061 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34584 (_ BitVec 32)) SeekEntryResult!5061)

(assert (=> b!548646 (= lt!249902 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342026 () Bool)

(assert (=> start!50132 (=> (not res!342026) (not e!316953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50132 (= res!342026 (validMask!0 mask!3119))))

(assert (=> start!50132 e!316953))

(assert (=> start!50132 true))

(declare-fun array_inv!12379 (array!34584) Bool)

(assert (=> start!50132 (array_inv!12379 a!3118)))

(declare-fun b!548647 () Bool)

(declare-fun res!342028 () Bool)

(assert (=> b!548647 (=> (not res!342028) (not e!316952))))

(declare-datatypes ((List!10738 0))(
  ( (Nil!10735) (Cons!10734 (h!11704 (_ BitVec 64)) (t!16974 List!10738)) )
))
(declare-fun arrayNoDuplicates!0 (array!34584 (_ BitVec 32) List!10738) Bool)

(assert (=> b!548647 (= res!342028 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10735))))

(declare-fun b!548648 () Bool)

(declare-fun res!342030 () Bool)

(assert (=> b!548648 (=> (not res!342030) (not e!316953))))

(assert (=> b!548648 (= res!342030 (validKeyInArray!0 (select (arr!16605 a!3118) j!142)))))

(declare-fun b!548649 () Bool)

(declare-fun res!342027 () Bool)

(assert (=> b!548649 (=> (not res!342027) (not e!316953))))

(assert (=> b!548649 (= res!342027 (and (= (size!16969 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16969 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16969 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548650 () Bool)

(declare-fun res!342025 () Bool)

(assert (=> b!548650 (=> (not res!342025) (not e!316953))))

(declare-fun arrayContainsKey!0 (array!34584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548650 (= res!342025 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548651 () Bool)

(declare-fun res!342032 () Bool)

(assert (=> b!548651 (=> (not res!342032) (not e!316952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34584 (_ BitVec 32)) Bool)

(assert (=> b!548651 (= res!342032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50132 res!342026) b!548649))

(assert (= (and b!548649 res!342027) b!548648))

(assert (= (and b!548648 res!342030) b!548645))

(assert (= (and b!548645 res!342031) b!548650))

(assert (= (and b!548650 res!342025) b!548646))

(assert (= (and b!548646 res!342029) b!548651))

(assert (= (and b!548651 res!342032) b!548647))

(assert (= (and b!548647 res!342028) b!548644))

(declare-fun m!525589 () Bool)

(assert (=> b!548650 m!525589))

(declare-fun m!525591 () Bool)

(assert (=> b!548647 m!525591))

(declare-fun m!525593 () Bool)

(assert (=> b!548644 m!525593))

(declare-fun m!525595 () Bool)

(assert (=> b!548644 m!525595))

(assert (=> b!548644 m!525595))

(declare-fun m!525597 () Bool)

(assert (=> b!548644 m!525597))

(declare-fun m!525599 () Bool)

(assert (=> b!548651 m!525599))

(declare-fun m!525601 () Bool)

(assert (=> b!548646 m!525601))

(declare-fun m!525603 () Bool)

(assert (=> b!548648 m!525603))

(assert (=> b!548648 m!525603))

(declare-fun m!525605 () Bool)

(assert (=> b!548648 m!525605))

(declare-fun m!525607 () Bool)

(assert (=> start!50132 m!525607))

(declare-fun m!525609 () Bool)

(assert (=> start!50132 m!525609))

(declare-fun m!525611 () Bool)

(assert (=> b!548645 m!525611))

(push 1)

