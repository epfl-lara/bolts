; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50256 () Bool)

(assert start!50256)

(declare-fun b!549735 () Bool)

(declare-fun res!343037 () Bool)

(declare-fun e!317411 () Bool)

(assert (=> b!549735 (=> (not res!343037) (not e!317411))))

(declare-datatypes ((array!34663 0))(
  ( (array!34664 (arr!16643 (Array (_ BitVec 32) (_ BitVec 64))) (size!17007 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34663)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549735 (= res!343037 (validKeyInArray!0 (select (arr!16643 a!3118) j!142)))))

(declare-fun b!549736 () Bool)

(declare-fun res!343035 () Bool)

(assert (=> b!549736 (=> (not res!343035) (not e!317411))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!549736 (= res!343035 (and (= (size!17007 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17007 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17007 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549737 () Bool)

(declare-fun res!343031 () Bool)

(declare-fun e!317413 () Bool)

(assert (=> b!549737 (=> (not res!343031) (not e!317413))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5099 0))(
  ( (MissingZero!5099 (index!22623 (_ BitVec 32))) (Found!5099 (index!22624 (_ BitVec 32))) (Intermediate!5099 (undefined!5911 Bool) (index!22625 (_ BitVec 32)) (x!51576 (_ BitVec 32))) (Undefined!5099) (MissingVacant!5099 (index!22626 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34663 (_ BitVec 32)) SeekEntryResult!5099)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549737 (= res!343031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16643 a!3118) j!142) mask!3119) (select (arr!16643 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16643 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16643 a!3118) i!1132 k!1914) j!142) (array!34664 (store (arr!16643 a!3118) i!1132 k!1914) (size!17007 a!3118)) mask!3119)))))

(declare-fun res!343033 () Bool)

(assert (=> start!50256 (=> (not res!343033) (not e!317411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50256 (= res!343033 (validMask!0 mask!3119))))

(assert (=> start!50256 e!317411))

(assert (=> start!50256 true))

(declare-fun array_inv!12417 (array!34663) Bool)

(assert (=> start!50256 (array_inv!12417 a!3118)))

(declare-fun b!549738 () Bool)

(assert (=> b!549738 (= e!317411 e!317413)))

(declare-fun res!343034 () Bool)

(assert (=> b!549738 (=> (not res!343034) (not e!317413))))

(declare-fun lt!250336 () SeekEntryResult!5099)

(assert (=> b!549738 (= res!343034 (or (= lt!250336 (MissingZero!5099 i!1132)) (= lt!250336 (MissingVacant!5099 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34663 (_ BitVec 32)) SeekEntryResult!5099)

(assert (=> b!549738 (= lt!250336 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549739 () Bool)

(declare-fun res!343036 () Bool)

(assert (=> b!549739 (=> (not res!343036) (not e!317413))))

(declare-datatypes ((List!10776 0))(
  ( (Nil!10773) (Cons!10772 (h!11745 (_ BitVec 64)) (t!17012 List!10776)) )
))
(declare-fun arrayNoDuplicates!0 (array!34663 (_ BitVec 32) List!10776) Bool)

(assert (=> b!549739 (= res!343036 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10773))))

(declare-fun b!549740 () Bool)

(declare-fun res!343029 () Bool)

(assert (=> b!549740 (=> (not res!343029) (not e!317411))))

(declare-fun arrayContainsKey!0 (array!34663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549740 (= res!343029 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549741 () Bool)

(declare-fun res!343032 () Bool)

(assert (=> b!549741 (=> (not res!343032) (not e!317411))))

(assert (=> b!549741 (= res!343032 (validKeyInArray!0 k!1914))))

(declare-fun b!549742 () Bool)

(assert (=> b!549742 (= e!317413 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34663 (_ BitVec 32)) Bool)

(assert (=> b!549742 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16972 0))(
  ( (Unit!16973) )
))
(declare-fun lt!250337 () Unit!16972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16972)

(assert (=> b!549742 (= lt!250337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549743 () Bool)

(declare-fun res!343030 () Bool)

(assert (=> b!549743 (=> (not res!343030) (not e!317413))))

(assert (=> b!549743 (= res!343030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50256 res!343033) b!549736))

(assert (= (and b!549736 res!343035) b!549735))

(assert (= (and b!549735 res!343037) b!549741))

(assert (= (and b!549741 res!343032) b!549740))

(assert (= (and b!549740 res!343029) b!549738))

(assert (= (and b!549738 res!343034) b!549743))

(assert (= (and b!549743 res!343030) b!549739))

(assert (= (and b!549739 res!343036) b!549737))

(assert (= (and b!549737 res!343031) b!549742))

(declare-fun m!526743 () Bool)

(assert (=> b!549741 m!526743))

(declare-fun m!526745 () Bool)

(assert (=> b!549743 m!526745))

(declare-fun m!526747 () Bool)

(assert (=> b!549740 m!526747))

(declare-fun m!526749 () Bool)

(assert (=> b!549742 m!526749))

(declare-fun m!526751 () Bool)

(assert (=> b!549742 m!526751))

(declare-fun m!526753 () Bool)

(assert (=> b!549735 m!526753))

(assert (=> b!549735 m!526753))

(declare-fun m!526755 () Bool)

(assert (=> b!549735 m!526755))

(declare-fun m!526757 () Bool)

(assert (=> b!549738 m!526757))

(assert (=> b!549737 m!526753))

(declare-fun m!526759 () Bool)

(assert (=> b!549737 m!526759))

(assert (=> b!549737 m!526753))

(declare-fun m!526761 () Bool)

(assert (=> b!549737 m!526761))

(declare-fun m!526763 () Bool)

(assert (=> b!549737 m!526763))

(assert (=> b!549737 m!526761))

(declare-fun m!526765 () Bool)

(assert (=> b!549737 m!526765))

(assert (=> b!549737 m!526759))

(assert (=> b!549737 m!526753))

(declare-fun m!526767 () Bool)

(assert (=> b!549737 m!526767))

(declare-fun m!526769 () Bool)

(assert (=> b!549737 m!526769))

(assert (=> b!549737 m!526761))

(assert (=> b!549737 m!526763))

(declare-fun m!526771 () Bool)

(assert (=> b!549739 m!526771))

(declare-fun m!526773 () Bool)

(assert (=> start!50256 m!526773))

(declare-fun m!526775 () Bool)

(assert (=> start!50256 m!526775))

(push 1)

(assert (not b!549737))

(assert (not b!549742))

(assert (not b!549739))

(assert (not b!549743))

(assert (not b!549741))

(assert (not b!549735))

(assert (not b!549740))

(assert (not b!549738))

(assert (not start!50256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

