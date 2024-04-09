; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52428 () Bool)

(assert start!52428)

(declare-fun b!571763 () Bool)

(declare-fun e!328876 () Bool)

(assert (=> b!571763 (= e!328876 (not true))))

(declare-fun e!328873 () Bool)

(assert (=> b!571763 e!328873))

(declare-fun res!361428 () Bool)

(assert (=> b!571763 (=> (not res!361428) (not e!328873))))

(declare-datatypes ((SeekEntryResult!5630 0))(
  ( (MissingZero!5630 (index!24747 (_ BitVec 32))) (Found!5630 (index!24748 (_ BitVec 32))) (Intermediate!5630 (undefined!6442 Bool) (index!24749 (_ BitVec 32)) (x!53646 (_ BitVec 32))) (Undefined!5630) (MissingVacant!5630 (index!24750 (_ BitVec 32))) )
))
(declare-fun lt!260867 () SeekEntryResult!5630)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!571763 (= res!361428 (= lt!260867 (Found!5630 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35779 0))(
  ( (array!35780 (arr!17174 (Array (_ BitVec 32) (_ BitVec 64))) (size!17538 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35779)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35779 (_ BitVec 32)) SeekEntryResult!5630)

(assert (=> b!571763 (= lt!260867 (seekEntryOrOpen!0 (select (arr!17174 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35779 (_ BitVec 32)) Bool)

(assert (=> b!571763 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17962 0))(
  ( (Unit!17963) )
))
(declare-fun lt!260871 () Unit!17962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17962)

(assert (=> b!571763 (= lt!260871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571764 () Bool)

(declare-fun res!361423 () Bool)

(declare-fun e!328879 () Bool)

(assert (=> b!571764 (=> (not res!361423) (not e!328879))))

(assert (=> b!571764 (= res!361423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571765 () Bool)

(declare-fun e!328877 () Bool)

(assert (=> b!571765 (= e!328877 e!328879)))

(declare-fun res!361425 () Bool)

(assert (=> b!571765 (=> (not res!361425) (not e!328879))))

(declare-fun lt!260868 () SeekEntryResult!5630)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571765 (= res!361425 (or (= lt!260868 (MissingZero!5630 i!1132)) (= lt!260868 (MissingVacant!5630 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!571765 (= lt!260868 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571767 () Bool)

(declare-fun e!328878 () Bool)

(assert (=> b!571767 (= e!328873 e!328878)))

(declare-fun res!361424 () Bool)

(assert (=> b!571767 (=> res!361424 e!328878)))

(declare-fun lt!260865 () SeekEntryResult!5630)

(assert (=> b!571767 (= res!361424 (or (undefined!6442 lt!260865) (not (is-Intermediate!5630 lt!260865))))))

(declare-fun b!571768 () Bool)

(declare-fun e!328875 () Bool)

(declare-fun lt!260872 () (_ BitVec 64))

(declare-fun lt!260866 () array!35779)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35779 (_ BitVec 32)) SeekEntryResult!5630)

(assert (=> b!571768 (= e!328875 (= (seekEntryOrOpen!0 lt!260872 lt!260866 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53646 lt!260865) (index!24749 lt!260865) (index!24749 lt!260865) lt!260872 lt!260866 mask!3119)))))

(declare-fun b!571769 () Bool)

(declare-fun res!361430 () Bool)

(assert (=> b!571769 (=> (not res!361430) (not e!328877))))

(declare-fun arrayContainsKey!0 (array!35779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571769 (= res!361430 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571770 () Bool)

(declare-fun e!328874 () Bool)

(assert (=> b!571770 (= e!328874 e!328875)))

(declare-fun res!361426 () Bool)

(assert (=> b!571770 (=> (not res!361426) (not e!328875))))

(assert (=> b!571770 (= res!361426 (= lt!260867 (seekKeyOrZeroReturnVacant!0 (x!53646 lt!260865) (index!24749 lt!260865) (index!24749 lt!260865) (select (arr!17174 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571771 () Bool)

(declare-fun res!361429 () Bool)

(assert (=> b!571771 (=> (not res!361429) (not e!328879))))

(declare-datatypes ((List!11307 0))(
  ( (Nil!11304) (Cons!11303 (h!12330 (_ BitVec 64)) (t!17543 List!11307)) )
))
(declare-fun arrayNoDuplicates!0 (array!35779 (_ BitVec 32) List!11307) Bool)

(assert (=> b!571771 (= res!361429 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11304))))

(declare-fun b!571772 () Bool)

(declare-fun res!361433 () Bool)

(assert (=> b!571772 (=> (not res!361433) (not e!328877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571772 (= res!361433 (validKeyInArray!0 k!1914))))

(declare-fun b!571773 () Bool)

(assert (=> b!571773 (= e!328879 e!328876)))

(declare-fun res!361427 () Bool)

(assert (=> b!571773 (=> (not res!361427) (not e!328876))))

(declare-fun lt!260873 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35779 (_ BitVec 32)) SeekEntryResult!5630)

(assert (=> b!571773 (= res!361427 (= lt!260865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260873 lt!260872 lt!260866 mask!3119)))))

(declare-fun lt!260870 () (_ BitVec 32))

(assert (=> b!571773 (= lt!260865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260870 (select (arr!17174 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571773 (= lt!260873 (toIndex!0 lt!260872 mask!3119))))

(assert (=> b!571773 (= lt!260872 (select (store (arr!17174 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571773 (= lt!260870 (toIndex!0 (select (arr!17174 a!3118) j!142) mask!3119))))

(assert (=> b!571773 (= lt!260866 (array!35780 (store (arr!17174 a!3118) i!1132 k!1914) (size!17538 a!3118)))))

(declare-fun b!571766 () Bool)

(assert (=> b!571766 (= e!328878 e!328874)))

(declare-fun res!361432 () Bool)

(assert (=> b!571766 (=> res!361432 e!328874)))

(declare-fun lt!260869 () (_ BitVec 64))

(assert (=> b!571766 (= res!361432 (or (= lt!260869 (select (arr!17174 a!3118) j!142)) (= lt!260869 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571766 (= lt!260869 (select (arr!17174 a!3118) (index!24749 lt!260865)))))

(declare-fun res!361422 () Bool)

(assert (=> start!52428 (=> (not res!361422) (not e!328877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52428 (= res!361422 (validMask!0 mask!3119))))

(assert (=> start!52428 e!328877))

(assert (=> start!52428 true))

(declare-fun array_inv!12948 (array!35779) Bool)

(assert (=> start!52428 (array_inv!12948 a!3118)))

(declare-fun b!571774 () Bool)

(declare-fun res!361431 () Bool)

(assert (=> b!571774 (=> (not res!361431) (not e!328877))))

(assert (=> b!571774 (= res!361431 (and (= (size!17538 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17538 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17538 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571775 () Bool)

(declare-fun res!361421 () Bool)

(assert (=> b!571775 (=> (not res!361421) (not e!328877))))

(assert (=> b!571775 (= res!361421 (validKeyInArray!0 (select (arr!17174 a!3118) j!142)))))

(assert (= (and start!52428 res!361422) b!571774))

(assert (= (and b!571774 res!361431) b!571775))

(assert (= (and b!571775 res!361421) b!571772))

(assert (= (and b!571772 res!361433) b!571769))

(assert (= (and b!571769 res!361430) b!571765))

(assert (= (and b!571765 res!361425) b!571764))

(assert (= (and b!571764 res!361423) b!571771))

(assert (= (and b!571771 res!361429) b!571773))

(assert (= (and b!571773 res!361427) b!571763))

(assert (= (and b!571763 res!361428) b!571767))

(assert (= (and b!571767 (not res!361424)) b!571766))

(assert (= (and b!571766 (not res!361432)) b!571770))

(assert (= (and b!571770 res!361426) b!571768))

(declare-fun m!550715 () Bool)

(assert (=> start!52428 m!550715))

(declare-fun m!550717 () Bool)

(assert (=> start!52428 m!550717))

(declare-fun m!550719 () Bool)

(assert (=> b!571769 m!550719))

(declare-fun m!550721 () Bool)

(assert (=> b!571765 m!550721))

(declare-fun m!550723 () Bool)

(assert (=> b!571764 m!550723))

(declare-fun m!550725 () Bool)

(assert (=> b!571771 m!550725))

(declare-fun m!550727 () Bool)

(assert (=> b!571763 m!550727))

(assert (=> b!571763 m!550727))

(declare-fun m!550729 () Bool)

(assert (=> b!571763 m!550729))

(declare-fun m!550731 () Bool)

(assert (=> b!571763 m!550731))

(declare-fun m!550733 () Bool)

(assert (=> b!571763 m!550733))

(assert (=> b!571766 m!550727))

(declare-fun m!550735 () Bool)

(assert (=> b!571766 m!550735))

(declare-fun m!550737 () Bool)

(assert (=> b!571768 m!550737))

(declare-fun m!550739 () Bool)

(assert (=> b!571768 m!550739))

(assert (=> b!571770 m!550727))

(assert (=> b!571770 m!550727))

(declare-fun m!550741 () Bool)

(assert (=> b!571770 m!550741))

(assert (=> b!571775 m!550727))

(assert (=> b!571775 m!550727))

(declare-fun m!550743 () Bool)

(assert (=> b!571775 m!550743))

(declare-fun m!550745 () Bool)

(assert (=> b!571772 m!550745))

(assert (=> b!571773 m!550727))

(declare-fun m!550747 () Bool)

(assert (=> b!571773 m!550747))

(assert (=> b!571773 m!550727))

(declare-fun m!550749 () Bool)

(assert (=> b!571773 m!550749))

(assert (=> b!571773 m!550727))

(declare-fun m!550751 () Bool)

(assert (=> b!571773 m!550751))

(declare-fun m!550753 () Bool)

(assert (=> b!571773 m!550753))

(declare-fun m!550755 () Bool)

(assert (=> b!571773 m!550755))

(declare-fun m!550757 () Bool)

(assert (=> b!571773 m!550757))

(push 1)

