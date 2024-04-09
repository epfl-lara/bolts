; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52224 () Bool)

(assert start!52224)

(declare-fun b!569762 () Bool)

(declare-fun res!359935 () Bool)

(declare-fun e!327696 () Bool)

(assert (=> b!569762 (=> (not res!359935) (not e!327696))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35701 0))(
  ( (array!35702 (arr!17138 (Array (_ BitVec 32) (_ BitVec 64))) (size!17502 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35701)

(declare-datatypes ((SeekEntryResult!5594 0))(
  ( (MissingZero!5594 (index!24603 (_ BitVec 32))) (Found!5594 (index!24604 (_ BitVec 32))) (Intermediate!5594 (undefined!6406 Bool) (index!24605 (_ BitVec 32)) (x!53496 (_ BitVec 32))) (Undefined!5594) (MissingVacant!5594 (index!24606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35701 (_ BitVec 32)) SeekEntryResult!5594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569762 (= res!359935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17138 a!3118) j!142) mask!3119) (select (arr!17138 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17138 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17138 a!3118) i!1132 k!1914) j!142) (array!35702 (store (arr!17138 a!3118) i!1132 k!1914) (size!17502 a!3118)) mask!3119)))))

(declare-fun b!569763 () Bool)

(declare-fun res!359932 () Bool)

(declare-fun e!327695 () Bool)

(assert (=> b!569763 (=> (not res!359932) (not e!327695))))

(declare-fun arrayContainsKey!0 (array!35701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569763 (= res!359932 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569764 () Bool)

(declare-fun e!327697 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35701 (_ BitVec 32)) SeekEntryResult!5594)

(assert (=> b!569764 (= e!327697 (= (seekEntryOrOpen!0 (select (arr!17138 a!3118) j!142) a!3118 mask!3119) (Found!5594 j!142)))))

(declare-fun b!569765 () Bool)

(declare-fun res!359931 () Bool)

(assert (=> b!569765 (=> (not res!359931) (not e!327695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569765 (= res!359931 (validKeyInArray!0 (select (arr!17138 a!3118) j!142)))))

(declare-fun b!569766 () Bool)

(declare-fun res!359933 () Bool)

(assert (=> b!569766 (=> (not res!359933) (not e!327696))))

(declare-datatypes ((List!11271 0))(
  ( (Nil!11268) (Cons!11267 (h!12288 (_ BitVec 64)) (t!17507 List!11271)) )
))
(declare-fun arrayNoDuplicates!0 (array!35701 (_ BitVec 32) List!11271) Bool)

(assert (=> b!569766 (= res!359933 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11268))))

(declare-fun b!569767 () Bool)

(declare-fun res!359937 () Bool)

(assert (=> b!569767 (=> (not res!359937) (not e!327696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35701 (_ BitVec 32)) Bool)

(assert (=> b!569767 (= res!359937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569768 () Bool)

(declare-fun res!359938 () Bool)

(assert (=> b!569768 (=> (not res!359938) (not e!327695))))

(assert (=> b!569768 (= res!359938 (and (= (size!17502 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17502 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17502 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569769 () Bool)

(assert (=> b!569769 (= e!327695 e!327696)))

(declare-fun res!359936 () Bool)

(assert (=> b!569769 (=> (not res!359936) (not e!327696))))

(declare-fun lt!259771 () SeekEntryResult!5594)

(assert (=> b!569769 (= res!359936 (or (= lt!259771 (MissingZero!5594 i!1132)) (= lt!259771 (MissingVacant!5594 i!1132))))))

(assert (=> b!569769 (= lt!259771 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359939 () Bool)

(assert (=> start!52224 (=> (not res!359939) (not e!327695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52224 (= res!359939 (validMask!0 mask!3119))))

(assert (=> start!52224 e!327695))

(assert (=> start!52224 true))

(declare-fun array_inv!12912 (array!35701) Bool)

(assert (=> start!52224 (array_inv!12912 a!3118)))

(declare-fun b!569770 () Bool)

(assert (=> b!569770 (= e!327696 (not true))))

(assert (=> b!569770 e!327697))

(declare-fun res!359934 () Bool)

(assert (=> b!569770 (=> (not res!359934) (not e!327697))))

(assert (=> b!569770 (= res!359934 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17890 0))(
  ( (Unit!17891) )
))
(declare-fun lt!259772 () Unit!17890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17890)

(assert (=> b!569770 (= lt!259772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569771 () Bool)

(declare-fun res!359930 () Bool)

(assert (=> b!569771 (=> (not res!359930) (not e!327695))))

(assert (=> b!569771 (= res!359930 (validKeyInArray!0 k!1914))))

(assert (= (and start!52224 res!359939) b!569768))

(assert (= (and b!569768 res!359938) b!569765))

(assert (= (and b!569765 res!359931) b!569771))

(assert (= (and b!569771 res!359930) b!569763))

(assert (= (and b!569763 res!359932) b!569769))

(assert (= (and b!569769 res!359936) b!569767))

(assert (= (and b!569767 res!359937) b!569766))

(assert (= (and b!569766 res!359933) b!569762))

(assert (= (and b!569762 res!359935) b!569770))

(assert (= (and b!569770 res!359934) b!569764))

(declare-fun m!548707 () Bool)

(assert (=> b!569767 m!548707))

(declare-fun m!548709 () Bool)

(assert (=> b!569763 m!548709))

(declare-fun m!548711 () Bool)

(assert (=> b!569769 m!548711))

(declare-fun m!548713 () Bool)

(assert (=> start!52224 m!548713))

(declare-fun m!548715 () Bool)

(assert (=> start!52224 m!548715))

(declare-fun m!548717 () Bool)

(assert (=> b!569771 m!548717))

(declare-fun m!548719 () Bool)

(assert (=> b!569764 m!548719))

(assert (=> b!569764 m!548719))

(declare-fun m!548721 () Bool)

(assert (=> b!569764 m!548721))

(assert (=> b!569765 m!548719))

(assert (=> b!569765 m!548719))

(declare-fun m!548723 () Bool)

(assert (=> b!569765 m!548723))

(declare-fun m!548725 () Bool)

(assert (=> b!569766 m!548725))

(assert (=> b!569762 m!548719))

(declare-fun m!548727 () Bool)

(assert (=> b!569762 m!548727))

(assert (=> b!569762 m!548719))

(declare-fun m!548729 () Bool)

(assert (=> b!569762 m!548729))

(declare-fun m!548731 () Bool)

(assert (=> b!569762 m!548731))

(assert (=> b!569762 m!548729))

(declare-fun m!548733 () Bool)

(assert (=> b!569762 m!548733))

(assert (=> b!569762 m!548727))

(assert (=> b!569762 m!548719))

(declare-fun m!548735 () Bool)

(assert (=> b!569762 m!548735))

(declare-fun m!548737 () Bool)

(assert (=> b!569762 m!548737))

(assert (=> b!569762 m!548729))

(assert (=> b!569762 m!548731))

(declare-fun m!548739 () Bool)

(assert (=> b!569770 m!548739))

(declare-fun m!548741 () Bool)

(assert (=> b!569770 m!548741))

(push 1)

