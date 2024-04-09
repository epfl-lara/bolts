; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50774 () Bool)

(assert start!50774)

(declare-fun b!555003 () Bool)

(declare-fun res!347566 () Bool)

(declare-fun e!319923 () Bool)

(assert (=> b!555003 (=> (not res!347566) (not e!319923))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555003 (= res!347566 (validKeyInArray!0 k!1914))))

(declare-fun res!347567 () Bool)

(assert (=> start!50774 (=> (not res!347567) (not e!319923))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50774 (= res!347567 (validMask!0 mask!3119))))

(assert (=> start!50774 e!319923))

(assert (=> start!50774 true))

(declare-datatypes ((array!34953 0))(
  ( (array!34954 (arr!16782 (Array (_ BitVec 32) (_ BitVec 64))) (size!17146 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34953)

(declare-fun array_inv!12556 (array!34953) Bool)

(assert (=> start!50774 (array_inv!12556 a!3118)))

(declare-fun b!555004 () Bool)

(declare-fun res!347570 () Bool)

(assert (=> b!555004 (=> (not res!347570) (not e!319923))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555004 (= res!347570 (and (= (size!17146 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17146 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17146 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555005 () Bool)

(declare-fun res!347569 () Bool)

(declare-fun e!319921 () Bool)

(assert (=> b!555005 (=> (not res!347569) (not e!319921))))

(declare-datatypes ((List!10915 0))(
  ( (Nil!10912) (Cons!10911 (h!11896 (_ BitVec 64)) (t!17151 List!10915)) )
))
(declare-fun arrayNoDuplicates!0 (array!34953 (_ BitVec 32) List!10915) Bool)

(assert (=> b!555005 (= res!347569 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10912))))

(declare-fun b!555006 () Bool)

(declare-fun res!347565 () Bool)

(assert (=> b!555006 (=> (not res!347565) (not e!319923))))

(assert (=> b!555006 (= res!347565 (validKeyInArray!0 (select (arr!16782 a!3118) j!142)))))

(declare-fun b!555007 () Bool)

(declare-fun e!319924 () Bool)

(assert (=> b!555007 (= e!319924 (not true))))

(declare-datatypes ((SeekEntryResult!5238 0))(
  ( (MissingZero!5238 (index!23179 (_ BitVec 32))) (Found!5238 (index!23180 (_ BitVec 32))) (Intermediate!5238 (undefined!6050 Bool) (index!23181 (_ BitVec 32)) (x!52115 (_ BitVec 32))) (Undefined!5238) (MissingVacant!5238 (index!23182 (_ BitVec 32))) )
))
(declare-fun lt!252219 () SeekEntryResult!5238)

(declare-fun lt!252218 () SeekEntryResult!5238)

(assert (=> b!555007 (and (= lt!252218 (Found!5238 j!142)) (or (undefined!6050 lt!252219) (not (is-Intermediate!5238 lt!252219)) (= (select (arr!16782 a!3118) (index!23181 lt!252219)) (select (arr!16782 a!3118) j!142)) (not (= (select (arr!16782 a!3118) (index!23181 lt!252219)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252218 (MissingZero!5238 (index!23181 lt!252219)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34953 (_ BitVec 32)) SeekEntryResult!5238)

(assert (=> b!555007 (= lt!252218 (seekEntryOrOpen!0 (select (arr!16782 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34953 (_ BitVec 32)) Bool)

(assert (=> b!555007 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17250 0))(
  ( (Unit!17251) )
))
(declare-fun lt!252216 () Unit!17250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17250)

(assert (=> b!555007 (= lt!252216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555008 () Bool)

(declare-fun res!347573 () Bool)

(assert (=> b!555008 (=> (not res!347573) (not e!319921))))

(assert (=> b!555008 (= res!347573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555009 () Bool)

(declare-fun res!347571 () Bool)

(assert (=> b!555009 (=> (not res!347571) (not e!319923))))

(declare-fun arrayContainsKey!0 (array!34953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555009 (= res!347571 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555010 () Bool)

(assert (=> b!555010 (= e!319923 e!319921)))

(declare-fun res!347572 () Bool)

(assert (=> b!555010 (=> (not res!347572) (not e!319921))))

(declare-fun lt!252217 () SeekEntryResult!5238)

(assert (=> b!555010 (= res!347572 (or (= lt!252217 (MissingZero!5238 i!1132)) (= lt!252217 (MissingVacant!5238 i!1132))))))

(assert (=> b!555010 (= lt!252217 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555011 () Bool)

(assert (=> b!555011 (= e!319921 e!319924)))

(declare-fun res!347568 () Bool)

(assert (=> b!555011 (=> (not res!347568) (not e!319924))))

(declare-fun lt!252221 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34953 (_ BitVec 32)) SeekEntryResult!5238)

(assert (=> b!555011 (= res!347568 (= lt!252219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252221 (select (store (arr!16782 a!3118) i!1132 k!1914) j!142) (array!34954 (store (arr!16782 a!3118) i!1132 k!1914) (size!17146 a!3118)) mask!3119)))))

(declare-fun lt!252220 () (_ BitVec 32))

(assert (=> b!555011 (= lt!252219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252220 (select (arr!16782 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555011 (= lt!252221 (toIndex!0 (select (store (arr!16782 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555011 (= lt!252220 (toIndex!0 (select (arr!16782 a!3118) j!142) mask!3119))))

(assert (= (and start!50774 res!347567) b!555004))

(assert (= (and b!555004 res!347570) b!555006))

(assert (= (and b!555006 res!347565) b!555003))

(assert (= (and b!555003 res!347566) b!555009))

(assert (= (and b!555009 res!347571) b!555010))

(assert (= (and b!555010 res!347572) b!555008))

(assert (= (and b!555008 res!347573) b!555005))

(assert (= (and b!555005 res!347569) b!555011))

(assert (= (and b!555011 res!347568) b!555007))

(declare-fun m!532627 () Bool)

(assert (=> b!555007 m!532627))

(declare-fun m!532629 () Bool)

(assert (=> b!555007 m!532629))

(declare-fun m!532631 () Bool)

(assert (=> b!555007 m!532631))

(declare-fun m!532633 () Bool)

(assert (=> b!555007 m!532633))

(assert (=> b!555007 m!532629))

(declare-fun m!532635 () Bool)

(assert (=> b!555007 m!532635))

(assert (=> b!555006 m!532629))

(assert (=> b!555006 m!532629))

(declare-fun m!532637 () Bool)

(assert (=> b!555006 m!532637))

(declare-fun m!532639 () Bool)

(assert (=> start!50774 m!532639))

(declare-fun m!532641 () Bool)

(assert (=> start!50774 m!532641))

(declare-fun m!532643 () Bool)

(assert (=> b!555005 m!532643))

(declare-fun m!532645 () Bool)

(assert (=> b!555010 m!532645))

(declare-fun m!532647 () Bool)

(assert (=> b!555003 m!532647))

(assert (=> b!555011 m!532629))

(declare-fun m!532649 () Bool)

(assert (=> b!555011 m!532649))

(assert (=> b!555011 m!532629))

(assert (=> b!555011 m!532629))

(declare-fun m!532651 () Bool)

(assert (=> b!555011 m!532651))

(declare-fun m!532653 () Bool)

(assert (=> b!555011 m!532653))

(declare-fun m!532655 () Bool)

(assert (=> b!555011 m!532655))

(assert (=> b!555011 m!532653))

(declare-fun m!532657 () Bool)

(assert (=> b!555011 m!532657))

(assert (=> b!555011 m!532653))

(declare-fun m!532659 () Bool)

(assert (=> b!555011 m!532659))

(declare-fun m!532661 () Bool)

(assert (=> b!555008 m!532661))

(declare-fun m!532663 () Bool)

(assert (=> b!555009 m!532663))

(push 1)

