; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51914 () Bool)

(assert start!51914)

(declare-fun b!567038 () Bool)

(declare-fun res!357782 () Bool)

(declare-fun e!326329 () Bool)

(assert (=> b!567038 (=> (not res!357782) (not e!326329))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35562 0))(
  ( (array!35563 (arr!17073 (Array (_ BitVec 32) (_ BitVec 64))) (size!17437 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35562)

(declare-datatypes ((SeekEntryResult!5529 0))(
  ( (MissingZero!5529 (index!24343 (_ BitVec 32))) (Found!5529 (index!24344 (_ BitVec 32))) (Intermediate!5529 (undefined!6341 Bool) (index!24345 (_ BitVec 32)) (x!53245 (_ BitVec 32))) (Undefined!5529) (MissingVacant!5529 (index!24346 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35562 (_ BitVec 32)) SeekEntryResult!5529)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567038 (= res!357782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17073 a!3118) j!142) mask!3119) (select (arr!17073 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17073 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17073 a!3118) i!1132 k!1914) j!142) (array!35563 (store (arr!17073 a!3118) i!1132 k!1914) (size!17437 a!3118)) mask!3119)))))

(declare-fun b!567039 () Bool)

(declare-fun res!357775 () Bool)

(assert (=> b!567039 (=> (not res!357775) (not e!326329))))

(declare-datatypes ((List!11206 0))(
  ( (Nil!11203) (Cons!11202 (h!12214 (_ BitVec 64)) (t!17442 List!11206)) )
))
(declare-fun arrayNoDuplicates!0 (array!35562 (_ BitVec 32) List!11206) Bool)

(assert (=> b!567039 (= res!357775 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11203))))

(declare-fun b!567040 () Bool)

(declare-fun res!357779 () Bool)

(declare-fun e!326332 () Bool)

(assert (=> b!567040 (=> (not res!357779) (not e!326332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567040 (= res!357779 (validKeyInArray!0 (select (arr!17073 a!3118) j!142)))))

(declare-fun res!357776 () Bool)

(assert (=> start!51914 (=> (not res!357776) (not e!326332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51914 (= res!357776 (validMask!0 mask!3119))))

(assert (=> start!51914 e!326332))

(assert (=> start!51914 true))

(declare-fun array_inv!12847 (array!35562) Bool)

(assert (=> start!51914 (array_inv!12847 a!3118)))

(declare-fun b!567041 () Bool)

(declare-fun res!357777 () Bool)

(assert (=> b!567041 (=> (not res!357777) (not e!326332))))

(assert (=> b!567041 (= res!357777 (validKeyInArray!0 k!1914))))

(declare-fun b!567042 () Bool)

(declare-fun res!357780 () Bool)

(assert (=> b!567042 (=> (not res!357780) (not e!326329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35562 (_ BitVec 32)) Bool)

(assert (=> b!567042 (= res!357780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!326331 () Bool)

(declare-fun b!567043 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35562 (_ BitVec 32)) SeekEntryResult!5529)

(assert (=> b!567043 (= e!326331 (= (seekEntryOrOpen!0 (select (arr!17073 a!3118) j!142) a!3118 mask!3119) (Found!5529 j!142)))))

(declare-fun b!567044 () Bool)

(assert (=> b!567044 (= e!326332 e!326329)))

(declare-fun res!357773 () Bool)

(assert (=> b!567044 (=> (not res!357773) (not e!326329))))

(declare-fun lt!258436 () SeekEntryResult!5529)

(assert (=> b!567044 (= res!357773 (or (= lt!258436 (MissingZero!5529 i!1132)) (= lt!258436 (MissingVacant!5529 i!1132))))))

(assert (=> b!567044 (= lt!258436 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567045 () Bool)

(assert (=> b!567045 (= e!326329 (not true))))

(assert (=> b!567045 e!326331))

(declare-fun res!357774 () Bool)

(assert (=> b!567045 (=> (not res!357774) (not e!326331))))

(assert (=> b!567045 (= res!357774 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17760 0))(
  ( (Unit!17761) )
))
(declare-fun lt!258437 () Unit!17760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17760)

(assert (=> b!567045 (= lt!258437 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567046 () Bool)

(declare-fun res!357778 () Bool)

(assert (=> b!567046 (=> (not res!357778) (not e!326332))))

(declare-fun arrayContainsKey!0 (array!35562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567046 (= res!357778 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567047 () Bool)

(declare-fun res!357781 () Bool)

(assert (=> b!567047 (=> (not res!357781) (not e!326332))))

(assert (=> b!567047 (= res!357781 (and (= (size!17437 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17437 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17437 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51914 res!357776) b!567047))

(assert (= (and b!567047 res!357781) b!567040))

(assert (= (and b!567040 res!357779) b!567041))

(assert (= (and b!567041 res!357777) b!567046))

(assert (= (and b!567046 res!357778) b!567044))

(assert (= (and b!567044 res!357773) b!567042))

(assert (= (and b!567042 res!357780) b!567039))

(assert (= (and b!567039 res!357775) b!567038))

(assert (= (and b!567038 res!357782) b!567045))

(assert (= (and b!567045 res!357774) b!567043))

(declare-fun m!545623 () Bool)

(assert (=> b!567043 m!545623))

(assert (=> b!567043 m!545623))

(declare-fun m!545625 () Bool)

(assert (=> b!567043 m!545625))

(declare-fun m!545627 () Bool)

(assert (=> b!567042 m!545627))

(declare-fun m!545629 () Bool)

(assert (=> b!567046 m!545629))

(declare-fun m!545631 () Bool)

(assert (=> b!567041 m!545631))

(declare-fun m!545633 () Bool)

(assert (=> start!51914 m!545633))

(declare-fun m!545635 () Bool)

(assert (=> start!51914 m!545635))

(declare-fun m!545637 () Bool)

(assert (=> b!567044 m!545637))

(assert (=> b!567040 m!545623))

(assert (=> b!567040 m!545623))

(declare-fun m!545639 () Bool)

(assert (=> b!567040 m!545639))

(assert (=> b!567038 m!545623))

(declare-fun m!545641 () Bool)

(assert (=> b!567038 m!545641))

(assert (=> b!567038 m!545623))

(declare-fun m!545643 () Bool)

(assert (=> b!567038 m!545643))

(declare-fun m!545645 () Bool)

(assert (=> b!567038 m!545645))

(assert (=> b!567038 m!545643))

(declare-fun m!545647 () Bool)

(assert (=> b!567038 m!545647))

(assert (=> b!567038 m!545641))

(assert (=> b!567038 m!545623))

(declare-fun m!545649 () Bool)

(assert (=> b!567038 m!545649))

(declare-fun m!545651 () Bool)

(assert (=> b!567038 m!545651))

(assert (=> b!567038 m!545643))

(assert (=> b!567038 m!545645))

(declare-fun m!545653 () Bool)

(assert (=> b!567045 m!545653))

(declare-fun m!545655 () Bool)

(assert (=> b!567045 m!545655))

(declare-fun m!545657 () Bool)

(assert (=> b!567039 m!545657))

(push 1)

