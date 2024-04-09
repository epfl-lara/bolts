; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50616 () Bool)

(assert start!50616)

(declare-fun b!552689 () Bool)

(declare-fun res!345252 () Bool)

(declare-fun e!318902 () Bool)

(assert (=> b!552689 (=> (not res!345252) (not e!318902))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34795 0))(
  ( (array!34796 (arr!16703 (Array (_ BitVec 32) (_ BitVec 64))) (size!17067 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34795)

(assert (=> b!552689 (= res!345252 (and (= (size!17067 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17067 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17067 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552690 () Bool)

(declare-fun res!345255 () Bool)

(declare-fun e!318900 () Bool)

(assert (=> b!552690 (=> (not res!345255) (not e!318900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34795 (_ BitVec 32)) Bool)

(assert (=> b!552690 (= res!345255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!318904 () Bool)

(declare-fun b!552691 () Bool)

(declare-datatypes ((SeekEntryResult!5159 0))(
  ( (MissingZero!5159 (index!22863 (_ BitVec 32))) (Found!5159 (index!22864 (_ BitVec 32))) (Intermediate!5159 (undefined!5971 Bool) (index!22865 (_ BitVec 32)) (x!51820 (_ BitVec 32))) (Undefined!5159) (MissingVacant!5159 (index!22866 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34795 (_ BitVec 32)) SeekEntryResult!5159)

(assert (=> b!552691 (= e!318904 (= (seekEntryOrOpen!0 (select (arr!16703 a!3118) j!142) a!3118 mask!3119) (Found!5159 j!142)))))

(declare-fun b!552692 () Bool)

(declare-fun e!318901 () Bool)

(assert (=> b!552692 (= e!318900 e!318901)))

(declare-fun res!345259 () Bool)

(assert (=> b!552692 (=> (not res!345259) (not e!318901))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!251284 () (_ BitVec 32))

(declare-fun lt!251283 () SeekEntryResult!5159)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34795 (_ BitVec 32)) SeekEntryResult!5159)

(assert (=> b!552692 (= res!345259 (= lt!251283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251284 (select (store (arr!16703 a!3118) i!1132 k!1914) j!142) (array!34796 (store (arr!16703 a!3118) i!1132 k!1914) (size!17067 a!3118)) mask!3119)))))

(declare-fun lt!251281 () (_ BitVec 32))

(assert (=> b!552692 (= lt!251283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251281 (select (arr!16703 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552692 (= lt!251284 (toIndex!0 (select (store (arr!16703 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552692 (= lt!251281 (toIndex!0 (select (arr!16703 a!3118) j!142) mask!3119))))

(declare-fun b!552693 () Bool)

(declare-fun res!345260 () Bool)

(assert (=> b!552693 (=> (not res!345260) (not e!318900))))

(declare-datatypes ((List!10836 0))(
  ( (Nil!10833) (Cons!10832 (h!11817 (_ BitVec 64)) (t!17072 List!10836)) )
))
(declare-fun arrayNoDuplicates!0 (array!34795 (_ BitVec 32) List!10836) Bool)

(assert (=> b!552693 (= res!345260 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10833))))

(declare-fun b!552694 () Bool)

(assert (=> b!552694 (= e!318901 (not (or (not (is-Intermediate!5159 lt!251283)) (not (undefined!5971 lt!251283)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!552694 e!318904))

(declare-fun res!345254 () Bool)

(assert (=> b!552694 (=> (not res!345254) (not e!318904))))

(assert (=> b!552694 (= res!345254 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17092 0))(
  ( (Unit!17093) )
))
(declare-fun lt!251282 () Unit!17092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17092)

(assert (=> b!552694 (= lt!251282 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!345251 () Bool)

(assert (=> start!50616 (=> (not res!345251) (not e!318902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50616 (= res!345251 (validMask!0 mask!3119))))

(assert (=> start!50616 e!318902))

(assert (=> start!50616 true))

(declare-fun array_inv!12477 (array!34795) Bool)

(assert (=> start!50616 (array_inv!12477 a!3118)))

(declare-fun b!552695 () Bool)

(declare-fun res!345257 () Bool)

(assert (=> b!552695 (=> (not res!345257) (not e!318902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552695 (= res!345257 (validKeyInArray!0 (select (arr!16703 a!3118) j!142)))))

(declare-fun b!552696 () Bool)

(assert (=> b!552696 (= e!318902 e!318900)))

(declare-fun res!345253 () Bool)

(assert (=> b!552696 (=> (not res!345253) (not e!318900))))

(declare-fun lt!251285 () SeekEntryResult!5159)

(assert (=> b!552696 (= res!345253 (or (= lt!251285 (MissingZero!5159 i!1132)) (= lt!251285 (MissingVacant!5159 i!1132))))))

(assert (=> b!552696 (= lt!251285 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552697 () Bool)

(declare-fun res!345256 () Bool)

(assert (=> b!552697 (=> (not res!345256) (not e!318902))))

(assert (=> b!552697 (= res!345256 (validKeyInArray!0 k!1914))))

(declare-fun b!552698 () Bool)

(declare-fun res!345258 () Bool)

(assert (=> b!552698 (=> (not res!345258) (not e!318902))))

(declare-fun arrayContainsKey!0 (array!34795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552698 (= res!345258 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50616 res!345251) b!552689))

(assert (= (and b!552689 res!345252) b!552695))

(assert (= (and b!552695 res!345257) b!552697))

(assert (= (and b!552697 res!345256) b!552698))

(assert (= (and b!552698 res!345258) b!552696))

(assert (= (and b!552696 res!345253) b!552690))

(assert (= (and b!552690 res!345255) b!552693))

(assert (= (and b!552693 res!345260) b!552692))

(assert (= (and b!552692 res!345259) b!552694))

(assert (= (and b!552694 res!345254) b!552691))

(declare-fun m!529699 () Bool)

(assert (=> start!50616 m!529699))

(declare-fun m!529701 () Bool)

(assert (=> start!50616 m!529701))

(declare-fun m!529703 () Bool)

(assert (=> b!552691 m!529703))

(assert (=> b!552691 m!529703))

(declare-fun m!529705 () Bool)

(assert (=> b!552691 m!529705))

(assert (=> b!552695 m!529703))

(assert (=> b!552695 m!529703))

(declare-fun m!529707 () Bool)

(assert (=> b!552695 m!529707))

(declare-fun m!529709 () Bool)

(assert (=> b!552694 m!529709))

(declare-fun m!529711 () Bool)

(assert (=> b!552694 m!529711))

(declare-fun m!529713 () Bool)

(assert (=> b!552690 m!529713))

(declare-fun m!529715 () Bool)

(assert (=> b!552698 m!529715))

(assert (=> b!552692 m!529703))

(declare-fun m!529717 () Bool)

(assert (=> b!552692 m!529717))

(assert (=> b!552692 m!529703))

(declare-fun m!529719 () Bool)

(assert (=> b!552692 m!529719))

(assert (=> b!552692 m!529703))

(declare-fun m!529721 () Bool)

(assert (=> b!552692 m!529721))

(assert (=> b!552692 m!529719))

(declare-fun m!529723 () Bool)

(assert (=> b!552692 m!529723))

(declare-fun m!529725 () Bool)

(assert (=> b!552692 m!529725))

(assert (=> b!552692 m!529719))

(declare-fun m!529727 () Bool)

(assert (=> b!552692 m!529727))

(declare-fun m!529729 () Bool)

(assert (=> b!552697 m!529729))

(declare-fun m!529731 () Bool)

(assert (=> b!552696 m!529731))

(declare-fun m!529733 () Bool)

(assert (=> b!552693 m!529733))

(push 1)

(assert (not b!552696))

