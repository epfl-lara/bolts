; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51432 () Bool)

(assert start!51432)

(declare-fun b!561569 () Bool)

(declare-fun res!352873 () Bool)

(declare-fun e!323617 () Bool)

(assert (=> b!561569 (=> (not res!352873) (not e!323617))))

(declare-datatypes ((array!35251 0))(
  ( (array!35252 (arr!16922 (Array (_ BitVec 32) (_ BitVec 64))) (size!17286 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35251)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561569 (= res!352873 (validKeyInArray!0 (select (arr!16922 a!3118) j!142)))))

(declare-fun b!561570 () Bool)

(declare-fun e!323614 () Bool)

(declare-fun e!323619 () Bool)

(assert (=> b!561570 (= e!323614 e!323619)))

(declare-fun res!352881 () Bool)

(assert (=> b!561570 (=> (not res!352881) (not e!323619))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5378 0))(
  ( (MissingZero!5378 (index!23739 (_ BitVec 32))) (Found!5378 (index!23740 (_ BitVec 32))) (Intermediate!5378 (undefined!6190 Bool) (index!23741 (_ BitVec 32)) (x!52668 (_ BitVec 32))) (Undefined!5378) (MissingVacant!5378 (index!23742 (_ BitVec 32))) )
))
(declare-fun lt!255699 () SeekEntryResult!5378)

(declare-fun lt!255696 () (_ BitVec 64))

(declare-fun lt!255698 () (_ BitVec 32))

(declare-fun lt!255704 () array!35251)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35251 (_ BitVec 32)) SeekEntryResult!5378)

(assert (=> b!561570 (= res!352881 (= lt!255699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255698 lt!255696 lt!255704 mask!3119)))))

(declare-fun lt!255700 () (_ BitVec 32))

(assert (=> b!561570 (= lt!255699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255700 (select (arr!16922 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561570 (= lt!255698 (toIndex!0 lt!255696 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561570 (= lt!255696 (select (store (arr!16922 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561570 (= lt!255700 (toIndex!0 (select (arr!16922 a!3118) j!142) mask!3119))))

(assert (=> b!561570 (= lt!255704 (array!35252 (store (arr!16922 a!3118) i!1132 k!1914) (size!17286 a!3118)))))

(declare-fun b!561571 () Bool)

(declare-fun res!352882 () Bool)

(assert (=> b!561571 (=> (not res!352882) (not e!323614))))

(declare-datatypes ((List!11055 0))(
  ( (Nil!11052) (Cons!11051 (h!12054 (_ BitVec 64)) (t!17291 List!11055)) )
))
(declare-fun arrayNoDuplicates!0 (array!35251 (_ BitVec 32) List!11055) Bool)

(assert (=> b!561571 (= res!352882 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11052))))

(declare-fun b!561572 () Bool)

(declare-fun e!323615 () Bool)

(declare-fun e!323616 () Bool)

(assert (=> b!561572 (= e!323615 e!323616)))

(declare-fun res!352875 () Bool)

(assert (=> b!561572 (=> (not res!352875) (not e!323616))))

(declare-fun lt!255702 () SeekEntryResult!5378)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35251 (_ BitVec 32)) SeekEntryResult!5378)

(assert (=> b!561572 (= res!352875 (= lt!255702 (seekKeyOrZeroReturnVacant!0 (x!52668 lt!255699) (index!23741 lt!255699) (index!23741 lt!255699) (select (arr!16922 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561573 () Bool)

(declare-fun e!323613 () Bool)

(assert (=> b!561573 (= e!323613 e!323615)))

(declare-fun res!352879 () Bool)

(assert (=> b!561573 (=> res!352879 e!323615)))

(declare-fun lt!255697 () (_ BitVec 64))

(assert (=> b!561573 (= res!352879 (or (= lt!255697 (select (arr!16922 a!3118) j!142)) (= lt!255697 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561573 (= lt!255697 (select (arr!16922 a!3118) (index!23741 lt!255699)))))

(declare-fun b!561575 () Bool)

(declare-fun res!352872 () Bool)

(assert (=> b!561575 (=> (not res!352872) (not e!323617))))

(declare-fun arrayContainsKey!0 (array!35251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561575 (= res!352872 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561576 () Bool)

(declare-fun res!352880 () Bool)

(assert (=> b!561576 (=> (not res!352880) (not e!323617))))

(assert (=> b!561576 (= res!352880 (validKeyInArray!0 k!1914))))

(declare-fun b!561577 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35251 (_ BitVec 32)) SeekEntryResult!5378)

(assert (=> b!561577 (= e!323616 (= (seekEntryOrOpen!0 lt!255696 lt!255704 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52668 lt!255699) (index!23741 lt!255699) (index!23741 lt!255699) lt!255696 lt!255704 mask!3119)))))

(declare-fun b!561578 () Bool)

(assert (=> b!561578 (= e!323619 (not true))))

(declare-fun e!323620 () Bool)

(assert (=> b!561578 e!323620))

(declare-fun res!352883 () Bool)

(assert (=> b!561578 (=> (not res!352883) (not e!323620))))

(assert (=> b!561578 (= res!352883 (= lt!255702 (Found!5378 j!142)))))

(assert (=> b!561578 (= lt!255702 (seekEntryOrOpen!0 (select (arr!16922 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35251 (_ BitVec 32)) Bool)

(assert (=> b!561578 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17530 0))(
  ( (Unit!17531) )
))
(declare-fun lt!255701 () Unit!17530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35251 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17530)

(assert (=> b!561578 (= lt!255701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561579 () Bool)

(assert (=> b!561579 (= e!323617 e!323614)))

(declare-fun res!352878 () Bool)

(assert (=> b!561579 (=> (not res!352878) (not e!323614))))

(declare-fun lt!255703 () SeekEntryResult!5378)

(assert (=> b!561579 (= res!352878 (or (= lt!255703 (MissingZero!5378 i!1132)) (= lt!255703 (MissingVacant!5378 i!1132))))))

(assert (=> b!561579 (= lt!255703 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561580 () Bool)

(declare-fun res!352871 () Bool)

(assert (=> b!561580 (=> (not res!352871) (not e!323617))))

(assert (=> b!561580 (= res!352871 (and (= (size!17286 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17286 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17286 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561581 () Bool)

(assert (=> b!561581 (= e!323620 e!323613)))

(declare-fun res!352877 () Bool)

(assert (=> b!561581 (=> res!352877 e!323613)))

(assert (=> b!561581 (= res!352877 (or (undefined!6190 lt!255699) (not (is-Intermediate!5378 lt!255699))))))

(declare-fun res!352874 () Bool)

(assert (=> start!51432 (=> (not res!352874) (not e!323617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51432 (= res!352874 (validMask!0 mask!3119))))

(assert (=> start!51432 e!323617))

(assert (=> start!51432 true))

(declare-fun array_inv!12696 (array!35251) Bool)

(assert (=> start!51432 (array_inv!12696 a!3118)))

(declare-fun b!561574 () Bool)

(declare-fun res!352876 () Bool)

(assert (=> b!561574 (=> (not res!352876) (not e!323614))))

(assert (=> b!561574 (= res!352876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51432 res!352874) b!561580))

(assert (= (and b!561580 res!352871) b!561569))

(assert (= (and b!561569 res!352873) b!561576))

(assert (= (and b!561576 res!352880) b!561575))

(assert (= (and b!561575 res!352872) b!561579))

(assert (= (and b!561579 res!352878) b!561574))

(assert (= (and b!561574 res!352876) b!561571))

(assert (= (and b!561571 res!352882) b!561570))

(assert (= (and b!561570 res!352881) b!561578))

(assert (= (and b!561578 res!352883) b!561581))

(assert (= (and b!561581 (not res!352877)) b!561573))

(assert (= (and b!561573 (not res!352879)) b!561572))

(assert (= (and b!561572 res!352875) b!561577))

(declare-fun m!539543 () Bool)

(assert (=> b!561572 m!539543))

(assert (=> b!561572 m!539543))

(declare-fun m!539545 () Bool)

(assert (=> b!561572 m!539545))

(declare-fun m!539547 () Bool)

(assert (=> b!561574 m!539547))

(assert (=> b!561569 m!539543))

(assert (=> b!561569 m!539543))

(declare-fun m!539549 () Bool)

(assert (=> b!561569 m!539549))

(declare-fun m!539551 () Bool)

(assert (=> b!561571 m!539551))

(declare-fun m!539553 () Bool)

(assert (=> b!561577 m!539553))

(declare-fun m!539555 () Bool)

(assert (=> b!561577 m!539555))

(declare-fun m!539557 () Bool)

(assert (=> b!561575 m!539557))

(assert (=> b!561573 m!539543))

(declare-fun m!539559 () Bool)

(assert (=> b!561573 m!539559))

(assert (=> b!561578 m!539543))

(assert (=> b!561578 m!539543))

(declare-fun m!539561 () Bool)

(assert (=> b!561578 m!539561))

(declare-fun m!539563 () Bool)

(assert (=> b!561578 m!539563))

(declare-fun m!539565 () Bool)

(assert (=> b!561578 m!539565))

(declare-fun m!539567 () Bool)

(assert (=> start!51432 m!539567))

(declare-fun m!539569 () Bool)

(assert (=> start!51432 m!539569))

(declare-fun m!539571 () Bool)

(assert (=> b!561576 m!539571))

(declare-fun m!539573 () Bool)

(assert (=> b!561579 m!539573))

(assert (=> b!561570 m!539543))

(declare-fun m!539575 () Bool)

(assert (=> b!561570 m!539575))

(assert (=> b!561570 m!539543))

(assert (=> b!561570 m!539543))

(declare-fun m!539577 () Bool)

(assert (=> b!561570 m!539577))

(declare-fun m!539579 () Bool)

(assert (=> b!561570 m!539579))

(declare-fun m!539581 () Bool)

(assert (=> b!561570 m!539581))

(declare-fun m!539583 () Bool)

(assert (=> b!561570 m!539583))

(declare-fun m!539585 () Bool)

(assert (=> b!561570 m!539585))

(push 1)

