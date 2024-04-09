; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50612 () Bool)

(assert start!50612)

(declare-fun b!552629 () Bool)

(declare-fun e!318874 () Bool)

(declare-datatypes ((SeekEntryResult!5157 0))(
  ( (MissingZero!5157 (index!22855 (_ BitVec 32))) (Found!5157 (index!22856 (_ BitVec 32))) (Intermediate!5157 (undefined!5969 Bool) (index!22857 (_ BitVec 32)) (x!51818 (_ BitVec 32))) (Undefined!5157) (MissingVacant!5157 (index!22858 (_ BitVec 32))) )
))
(declare-fun lt!251253 () SeekEntryResult!5157)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!552629 (= e!318874 (not (or (not (is-Intermediate!5157 lt!251253)) (not (undefined!5969 lt!251253)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!318872 () Bool)

(assert (=> b!552629 e!318872))

(declare-fun res!345195 () Bool)

(assert (=> b!552629 (=> (not res!345195) (not e!318872))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34791 0))(
  ( (array!34792 (arr!16701 (Array (_ BitVec 32) (_ BitVec 64))) (size!17065 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34791)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34791 (_ BitVec 32)) Bool)

(assert (=> b!552629 (= res!345195 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17088 0))(
  ( (Unit!17089) )
))
(declare-fun lt!251255 () Unit!17088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17088)

(assert (=> b!552629 (= lt!251255 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552630 () Bool)

(declare-fun res!345197 () Bool)

(declare-fun e!318871 () Bool)

(assert (=> b!552630 (=> (not res!345197) (not e!318871))))

(assert (=> b!552630 (= res!345197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552631 () Bool)

(declare-fun e!318870 () Bool)

(assert (=> b!552631 (= e!318870 e!318871)))

(declare-fun res!345199 () Bool)

(assert (=> b!552631 (=> (not res!345199) (not e!318871))))

(declare-fun lt!251252 () SeekEntryResult!5157)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552631 (= res!345199 (or (= lt!251252 (MissingZero!5157 i!1132)) (= lt!251252 (MissingVacant!5157 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34791 (_ BitVec 32)) SeekEntryResult!5157)

(assert (=> b!552631 (= lt!251252 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552632 () Bool)

(declare-fun res!345194 () Bool)

(assert (=> b!552632 (=> (not res!345194) (not e!318871))))

(declare-datatypes ((List!10834 0))(
  ( (Nil!10831) (Cons!10830 (h!11815 (_ BitVec 64)) (t!17070 List!10834)) )
))
(declare-fun arrayNoDuplicates!0 (array!34791 (_ BitVec 32) List!10834) Bool)

(assert (=> b!552632 (= res!345194 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10831))))

(declare-fun res!345192 () Bool)

(assert (=> start!50612 (=> (not res!345192) (not e!318870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50612 (= res!345192 (validMask!0 mask!3119))))

(assert (=> start!50612 e!318870))

(assert (=> start!50612 true))

(declare-fun array_inv!12475 (array!34791) Bool)

(assert (=> start!50612 (array_inv!12475 a!3118)))

(declare-fun b!552633 () Bool)

(assert (=> b!552633 (= e!318871 e!318874)))

(declare-fun res!345191 () Bool)

(assert (=> b!552633 (=> (not res!345191) (not e!318874))))

(declare-fun lt!251254 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34791 (_ BitVec 32)) SeekEntryResult!5157)

(assert (=> b!552633 (= res!345191 (= lt!251253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251254 (select (store (arr!16701 a!3118) i!1132 k!1914) j!142) (array!34792 (store (arr!16701 a!3118) i!1132 k!1914) (size!17065 a!3118)) mask!3119)))))

(declare-fun lt!251251 () (_ BitVec 32))

(assert (=> b!552633 (= lt!251253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251251 (select (arr!16701 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552633 (= lt!251254 (toIndex!0 (select (store (arr!16701 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552633 (= lt!251251 (toIndex!0 (select (arr!16701 a!3118) j!142) mask!3119))))

(declare-fun b!552634 () Bool)

(declare-fun res!345200 () Bool)

(assert (=> b!552634 (=> (not res!345200) (not e!318870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552634 (= res!345200 (validKeyInArray!0 (select (arr!16701 a!3118) j!142)))))

(declare-fun b!552635 () Bool)

(declare-fun res!345193 () Bool)

(assert (=> b!552635 (=> (not res!345193) (not e!318870))))

(assert (=> b!552635 (= res!345193 (validKeyInArray!0 k!1914))))

(declare-fun b!552636 () Bool)

(declare-fun res!345198 () Bool)

(assert (=> b!552636 (=> (not res!345198) (not e!318870))))

(declare-fun arrayContainsKey!0 (array!34791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552636 (= res!345198 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552637 () Bool)

(assert (=> b!552637 (= e!318872 (= (seekEntryOrOpen!0 (select (arr!16701 a!3118) j!142) a!3118 mask!3119) (Found!5157 j!142)))))

(declare-fun b!552638 () Bool)

(declare-fun res!345196 () Bool)

(assert (=> b!552638 (=> (not res!345196) (not e!318870))))

(assert (=> b!552638 (= res!345196 (and (= (size!17065 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17065 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17065 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50612 res!345192) b!552638))

(assert (= (and b!552638 res!345196) b!552634))

(assert (= (and b!552634 res!345200) b!552635))

(assert (= (and b!552635 res!345193) b!552636))

(assert (= (and b!552636 res!345198) b!552631))

(assert (= (and b!552631 res!345199) b!552630))

(assert (= (and b!552630 res!345197) b!552632))

(assert (= (and b!552632 res!345194) b!552633))

(assert (= (and b!552633 res!345191) b!552629))

(assert (= (and b!552629 res!345195) b!552637))

(declare-fun m!529627 () Bool)

(assert (=> b!552633 m!529627))

(declare-fun m!529629 () Bool)

(assert (=> b!552633 m!529629))

(assert (=> b!552633 m!529627))

(declare-fun m!529631 () Bool)

(assert (=> b!552633 m!529631))

(declare-fun m!529633 () Bool)

(assert (=> b!552633 m!529633))

(assert (=> b!552633 m!529631))

(declare-fun m!529635 () Bool)

(assert (=> b!552633 m!529635))

(assert (=> b!552633 m!529627))

(declare-fun m!529637 () Bool)

(assert (=> b!552633 m!529637))

(assert (=> b!552633 m!529631))

(declare-fun m!529639 () Bool)

(assert (=> b!552633 m!529639))

(assert (=> b!552634 m!529627))

(assert (=> b!552634 m!529627))

(declare-fun m!529641 () Bool)

(assert (=> b!552634 m!529641))

(declare-fun m!529643 () Bool)

(assert (=> b!552632 m!529643))

(declare-fun m!529645 () Bool)

(assert (=> b!552636 m!529645))

(declare-fun m!529647 () Bool)

(assert (=> b!552635 m!529647))

(declare-fun m!529649 () Bool)

(assert (=> b!552630 m!529649))

(declare-fun m!529651 () Bool)

(assert (=> b!552631 m!529651))

(declare-fun m!529653 () Bool)

(assert (=> b!552629 m!529653))

(declare-fun m!529655 () Bool)

(assert (=> b!552629 m!529655))

(assert (=> b!552637 m!529627))

(assert (=> b!552637 m!529627))

(declare-fun m!529657 () Bool)

(assert (=> b!552637 m!529657))

(declare-fun m!529659 () Bool)

(assert (=> start!50612 m!529659))

(declare-fun m!529661 () Bool)

(assert (=> start!50612 m!529661))

(push 1)

