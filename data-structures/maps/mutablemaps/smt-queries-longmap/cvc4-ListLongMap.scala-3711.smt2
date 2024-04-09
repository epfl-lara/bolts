; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51084 () Bool)

(assert start!51084)

(declare-fun b!557755 () Bool)

(declare-fun res!349776 () Bool)

(declare-fun e!321320 () Bool)

(assert (=> b!557755 (=> (not res!349776) (not e!321320))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35092 0))(
  ( (array!35093 (arr!16847 (Array (_ BitVec 32) (_ BitVec 64))) (size!17211 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35092)

(assert (=> b!557755 (= res!349776 (and (= (size!17211 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17211 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17211 a!3118)) (not (= i!1132 j!142))))))

(declare-datatypes ((SeekEntryResult!5303 0))(
  ( (MissingZero!5303 (index!23439 (_ BitVec 32))) (Found!5303 (index!23440 (_ BitVec 32))) (Intermediate!5303 (undefined!6115 Bool) (index!23441 (_ BitVec 32)) (x!52366 (_ BitVec 32))) (Undefined!5303) (MissingVacant!5303 (index!23442 (_ BitVec 32))) )
))
(declare-fun lt!253477 () SeekEntryResult!5303)

(declare-fun lt!253476 () SeekEntryResult!5303)

(declare-fun b!557757 () Bool)

(declare-fun e!321322 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35092 (_ BitVec 32)) SeekEntryResult!5303)

(assert (=> b!557757 (= e!321322 (= lt!253476 (seekKeyOrZeroReturnVacant!0 (x!52366 lt!253477) (index!23441 lt!253477) (index!23441 lt!253477) (select (arr!16847 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557758 () Bool)

(declare-fun res!349772 () Bool)

(declare-fun e!321323 () Bool)

(assert (=> b!557758 (=> (not res!349772) (not e!321323))))

(declare-datatypes ((List!10980 0))(
  ( (Nil!10977) (Cons!10976 (h!11970 (_ BitVec 64)) (t!17216 List!10980)) )
))
(declare-fun arrayNoDuplicates!0 (array!35092 (_ BitVec 32) List!10980) Bool)

(assert (=> b!557758 (= res!349772 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10977))))

(declare-fun b!557759 () Bool)

(declare-fun res!349768 () Bool)

(assert (=> b!557759 (=> (not res!349768) (not e!321320))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557759 (= res!349768 (validKeyInArray!0 k!1914))))

(declare-fun b!557760 () Bool)

(declare-fun res!349774 () Bool)

(assert (=> b!557760 (=> (not res!349774) (not e!321323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35092 (_ BitVec 32)) Bool)

(assert (=> b!557760 (= res!349774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557756 () Bool)

(declare-fun e!321325 () Bool)

(assert (=> b!557756 (= e!321325 e!321322)))

(declare-fun res!349771 () Bool)

(assert (=> b!557756 (=> res!349771 e!321322)))

(assert (=> b!557756 (= res!349771 (or (undefined!6115 lt!253477) (not (is-Intermediate!5303 lt!253477)) (= (select (arr!16847 a!3118) (index!23441 lt!253477)) (select (arr!16847 a!3118) j!142)) (= (select (arr!16847 a!3118) (index!23441 lt!253477)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!349778 () Bool)

(assert (=> start!51084 (=> (not res!349778) (not e!321320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51084 (= res!349778 (validMask!0 mask!3119))))

(assert (=> start!51084 e!321320))

(assert (=> start!51084 true))

(declare-fun array_inv!12621 (array!35092) Bool)

(assert (=> start!51084 (array_inv!12621 a!3118)))

(declare-fun b!557761 () Bool)

(declare-fun res!349775 () Bool)

(assert (=> b!557761 (=> (not res!349775) (not e!321320))))

(declare-fun arrayContainsKey!0 (array!35092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557761 (= res!349775 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557762 () Bool)

(declare-fun res!349773 () Bool)

(assert (=> b!557762 (=> (not res!349773) (not e!321320))))

(assert (=> b!557762 (= res!349773 (validKeyInArray!0 (select (arr!16847 a!3118) j!142)))))

(declare-fun b!557763 () Bool)

(assert (=> b!557763 (= e!321320 e!321323)))

(declare-fun res!349769 () Bool)

(assert (=> b!557763 (=> (not res!349769) (not e!321323))))

(declare-fun lt!253481 () SeekEntryResult!5303)

(assert (=> b!557763 (= res!349769 (or (= lt!253481 (MissingZero!5303 i!1132)) (= lt!253481 (MissingVacant!5303 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35092 (_ BitVec 32)) SeekEntryResult!5303)

(assert (=> b!557763 (= lt!253481 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557764 () Bool)

(declare-fun e!321324 () Bool)

(assert (=> b!557764 (= e!321323 e!321324)))

(declare-fun res!349777 () Bool)

(assert (=> b!557764 (=> (not res!349777) (not e!321324))))

(declare-fun lt!253480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35092 (_ BitVec 32)) SeekEntryResult!5303)

(assert (=> b!557764 (= res!349777 (= lt!253477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253480 (select (store (arr!16847 a!3118) i!1132 k!1914) j!142) (array!35093 (store (arr!16847 a!3118) i!1132 k!1914) (size!17211 a!3118)) mask!3119)))))

(declare-fun lt!253478 () (_ BitVec 32))

(assert (=> b!557764 (= lt!253477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253478 (select (arr!16847 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557764 (= lt!253480 (toIndex!0 (select (store (arr!16847 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557764 (= lt!253478 (toIndex!0 (select (arr!16847 a!3118) j!142) mask!3119))))

(declare-fun b!557765 () Bool)

(assert (=> b!557765 (= e!321324 (not true))))

(assert (=> b!557765 e!321325))

(declare-fun res!349770 () Bool)

(assert (=> b!557765 (=> (not res!349770) (not e!321325))))

(assert (=> b!557765 (= res!349770 (= lt!253476 (Found!5303 j!142)))))

(assert (=> b!557765 (= lt!253476 (seekEntryOrOpen!0 (select (arr!16847 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557765 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17380 0))(
  ( (Unit!17381) )
))
(declare-fun lt!253479 () Unit!17380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17380)

(assert (=> b!557765 (= lt!253479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51084 res!349778) b!557755))

(assert (= (and b!557755 res!349776) b!557762))

(assert (= (and b!557762 res!349773) b!557759))

(assert (= (and b!557759 res!349768) b!557761))

(assert (= (and b!557761 res!349775) b!557763))

(assert (= (and b!557763 res!349769) b!557760))

(assert (= (and b!557760 res!349774) b!557758))

(assert (= (and b!557758 res!349772) b!557764))

(assert (= (and b!557764 res!349777) b!557765))

(assert (= (and b!557765 res!349770) b!557756))

(assert (= (and b!557756 (not res!349771)) b!557757))

(declare-fun m!535671 () Bool)

(assert (=> b!557764 m!535671))

(declare-fun m!535673 () Bool)

(assert (=> b!557764 m!535673))

(assert (=> b!557764 m!535671))

(declare-fun m!535675 () Bool)

(assert (=> b!557764 m!535675))

(assert (=> b!557764 m!535671))

(declare-fun m!535677 () Bool)

(assert (=> b!557764 m!535677))

(declare-fun m!535679 () Bool)

(assert (=> b!557764 m!535679))

(assert (=> b!557764 m!535677))

(declare-fun m!535681 () Bool)

(assert (=> b!557764 m!535681))

(assert (=> b!557764 m!535677))

(declare-fun m!535683 () Bool)

(assert (=> b!557764 m!535683))

(assert (=> b!557757 m!535671))

(assert (=> b!557757 m!535671))

(declare-fun m!535685 () Bool)

(assert (=> b!557757 m!535685))

(declare-fun m!535687 () Bool)

(assert (=> start!51084 m!535687))

(declare-fun m!535689 () Bool)

(assert (=> start!51084 m!535689))

(declare-fun m!535691 () Bool)

(assert (=> b!557759 m!535691))

(declare-fun m!535693 () Bool)

(assert (=> b!557758 m!535693))

(declare-fun m!535695 () Bool)

(assert (=> b!557760 m!535695))

(assert (=> b!557762 m!535671))

(assert (=> b!557762 m!535671))

(declare-fun m!535697 () Bool)

(assert (=> b!557762 m!535697))

(declare-fun m!535699 () Bool)

(assert (=> b!557761 m!535699))

(assert (=> b!557765 m!535671))

(assert (=> b!557765 m!535671))

(declare-fun m!535701 () Bool)

(assert (=> b!557765 m!535701))

(declare-fun m!535703 () Bool)

(assert (=> b!557765 m!535703))

(declare-fun m!535705 () Bool)

(assert (=> b!557765 m!535705))

(declare-fun m!535707 () Bool)

(assert (=> b!557756 m!535707))

(assert (=> b!557756 m!535671))

(declare-fun m!535709 () Bool)

(assert (=> b!557763 m!535709))

(push 1)

