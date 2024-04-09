; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52482 () Bool)

(assert start!52482)

(declare-fun b!572816 () Bool)

(declare-fun res!362484 () Bool)

(declare-fun e!329525 () Bool)

(assert (=> b!572816 (=> (not res!362484) (not e!329525))))

(declare-datatypes ((array!35833 0))(
  ( (array!35834 (arr!17201 (Array (_ BitVec 32) (_ BitVec 64))) (size!17565 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35833)

(declare-datatypes ((List!11334 0))(
  ( (Nil!11331) (Cons!11330 (h!12357 (_ BitVec 64)) (t!17570 List!11334)) )
))
(declare-fun arrayNoDuplicates!0 (array!35833 (_ BitVec 32) List!11334) Bool)

(assert (=> b!572816 (= res!362484 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11331))))

(declare-fun e!329527 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!261597 () array!35833)

(declare-fun lt!261594 () (_ BitVec 64))

(declare-fun b!572817 () Bool)

(declare-datatypes ((SeekEntryResult!5657 0))(
  ( (MissingZero!5657 (index!24855 (_ BitVec 32))) (Found!5657 (index!24856 (_ BitVec 32))) (Intermediate!5657 (undefined!6469 Bool) (index!24857 (_ BitVec 32)) (x!53745 (_ BitVec 32))) (Undefined!5657) (MissingVacant!5657 (index!24858 (_ BitVec 32))) )
))
(declare-fun lt!261598 () SeekEntryResult!5657)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35833 (_ BitVec 32)) SeekEntryResult!5657)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35833 (_ BitVec 32)) SeekEntryResult!5657)

(assert (=> b!572817 (= e!329527 (= (seekEntryOrOpen!0 lt!261594 lt!261597 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53745 lt!261598) (index!24857 lt!261598) (index!24857 lt!261598) lt!261594 lt!261597 mask!3119)))))

(declare-fun b!572818 () Bool)

(declare-fun e!329526 () Bool)

(assert (=> b!572818 (= e!329525 e!329526)))

(declare-fun res!362481 () Bool)

(assert (=> b!572818 (=> (not res!362481) (not e!329526))))

(declare-fun lt!261599 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35833 (_ BitVec 32)) SeekEntryResult!5657)

(assert (=> b!572818 (= res!362481 (= lt!261598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261599 lt!261594 lt!261597 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261601 () (_ BitVec 32))

(assert (=> b!572818 (= lt!261598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261601 (select (arr!17201 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572818 (= lt!261599 (toIndex!0 lt!261594 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572818 (= lt!261594 (select (store (arr!17201 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572818 (= lt!261601 (toIndex!0 (select (arr!17201 a!3118) j!142) mask!3119))))

(assert (=> b!572818 (= lt!261597 (array!35834 (store (arr!17201 a!3118) i!1132 k!1914) (size!17565 a!3118)))))

(declare-fun b!572819 () Bool)

(declare-fun res!362480 () Bool)

(declare-fun e!329524 () Bool)

(assert (=> b!572819 (=> (not res!362480) (not e!329524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572819 (= res!362480 (validKeyInArray!0 k!1914))))

(declare-fun b!572820 () Bool)

(assert (=> b!572820 (= e!329526 (not true))))

(declare-fun e!329520 () Bool)

(assert (=> b!572820 e!329520))

(declare-fun res!362483 () Bool)

(assert (=> b!572820 (=> (not res!362483) (not e!329520))))

(declare-fun lt!261602 () SeekEntryResult!5657)

(assert (=> b!572820 (= res!362483 (= lt!261602 (Found!5657 j!142)))))

(assert (=> b!572820 (= lt!261602 (seekEntryOrOpen!0 (select (arr!17201 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35833 (_ BitVec 32)) Bool)

(assert (=> b!572820 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18016 0))(
  ( (Unit!18017) )
))
(declare-fun lt!261600 () Unit!18016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18016)

(assert (=> b!572820 (= lt!261600 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572821 () Bool)

(declare-fun res!362476 () Bool)

(assert (=> b!572821 (=> (not res!362476) (not e!329524))))

(assert (=> b!572821 (= res!362476 (validKeyInArray!0 (select (arr!17201 a!3118) j!142)))))

(declare-fun b!572822 () Bool)

(declare-fun e!329522 () Bool)

(assert (=> b!572822 (= e!329520 e!329522)))

(declare-fun res!362479 () Bool)

(assert (=> b!572822 (=> res!362479 e!329522)))

(assert (=> b!572822 (= res!362479 (or (undefined!6469 lt!261598) (not (is-Intermediate!5657 lt!261598))))))

(declare-fun b!572823 () Bool)

(declare-fun res!362477 () Bool)

(assert (=> b!572823 (=> (not res!362477) (not e!329525))))

(assert (=> b!572823 (= res!362477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572824 () Bool)

(declare-fun e!329523 () Bool)

(assert (=> b!572824 (= e!329522 e!329523)))

(declare-fun res!362474 () Bool)

(assert (=> b!572824 (=> res!362474 e!329523)))

(declare-fun lt!261595 () (_ BitVec 64))

(assert (=> b!572824 (= res!362474 (or (= lt!261595 (select (arr!17201 a!3118) j!142)) (= lt!261595 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572824 (= lt!261595 (select (arr!17201 a!3118) (index!24857 lt!261598)))))

(declare-fun b!572825 () Bool)

(assert (=> b!572825 (= e!329523 e!329527)))

(declare-fun res!362478 () Bool)

(assert (=> b!572825 (=> (not res!362478) (not e!329527))))

(assert (=> b!572825 (= res!362478 (= lt!261602 (seekKeyOrZeroReturnVacant!0 (x!53745 lt!261598) (index!24857 lt!261598) (index!24857 lt!261598) (select (arr!17201 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572826 () Bool)

(declare-fun res!362475 () Bool)

(assert (=> b!572826 (=> (not res!362475) (not e!329524))))

(declare-fun arrayContainsKey!0 (array!35833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572826 (= res!362475 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!362486 () Bool)

(assert (=> start!52482 (=> (not res!362486) (not e!329524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52482 (= res!362486 (validMask!0 mask!3119))))

(assert (=> start!52482 e!329524))

(assert (=> start!52482 true))

(declare-fun array_inv!12975 (array!35833) Bool)

(assert (=> start!52482 (array_inv!12975 a!3118)))

(declare-fun b!572827 () Bool)

(assert (=> b!572827 (= e!329524 e!329525)))

(declare-fun res!362485 () Bool)

(assert (=> b!572827 (=> (not res!362485) (not e!329525))))

(declare-fun lt!261596 () SeekEntryResult!5657)

(assert (=> b!572827 (= res!362485 (or (= lt!261596 (MissingZero!5657 i!1132)) (= lt!261596 (MissingVacant!5657 i!1132))))))

(assert (=> b!572827 (= lt!261596 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572828 () Bool)

(declare-fun res!362482 () Bool)

(assert (=> b!572828 (=> (not res!362482) (not e!329524))))

(assert (=> b!572828 (= res!362482 (and (= (size!17565 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17565 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17565 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52482 res!362486) b!572828))

(assert (= (and b!572828 res!362482) b!572821))

(assert (= (and b!572821 res!362476) b!572819))

(assert (= (and b!572819 res!362480) b!572826))

(assert (= (and b!572826 res!362475) b!572827))

(assert (= (and b!572827 res!362485) b!572823))

(assert (= (and b!572823 res!362477) b!572816))

(assert (= (and b!572816 res!362484) b!572818))

(assert (= (and b!572818 res!362481) b!572820))

(assert (= (and b!572820 res!362483) b!572822))

(assert (= (and b!572822 (not res!362479)) b!572824))

(assert (= (and b!572824 (not res!362474)) b!572825))

(assert (= (and b!572825 res!362478) b!572817))

(declare-fun m!551903 () Bool)

(assert (=> b!572820 m!551903))

(assert (=> b!572820 m!551903))

(declare-fun m!551905 () Bool)

(assert (=> b!572820 m!551905))

(declare-fun m!551907 () Bool)

(assert (=> b!572820 m!551907))

(declare-fun m!551909 () Bool)

(assert (=> b!572820 m!551909))

(declare-fun m!551911 () Bool)

(assert (=> b!572819 m!551911))

(assert (=> b!572825 m!551903))

(assert (=> b!572825 m!551903))

(declare-fun m!551913 () Bool)

(assert (=> b!572825 m!551913))

(declare-fun m!551915 () Bool)

(assert (=> b!572827 m!551915))

(declare-fun m!551917 () Bool)

(assert (=> b!572826 m!551917))

(assert (=> b!572824 m!551903))

(declare-fun m!551919 () Bool)

(assert (=> b!572824 m!551919))

(assert (=> b!572821 m!551903))

(assert (=> b!572821 m!551903))

(declare-fun m!551921 () Bool)

(assert (=> b!572821 m!551921))

(declare-fun m!551923 () Bool)

(assert (=> start!52482 m!551923))

(declare-fun m!551925 () Bool)

(assert (=> start!52482 m!551925))

(declare-fun m!551927 () Bool)

(assert (=> b!572823 m!551927))

(declare-fun m!551929 () Bool)

(assert (=> b!572817 m!551929))

(declare-fun m!551931 () Bool)

(assert (=> b!572817 m!551931))

(assert (=> b!572818 m!551903))

(declare-fun m!551933 () Bool)

(assert (=> b!572818 m!551933))

(declare-fun m!551935 () Bool)

(assert (=> b!572818 m!551935))

(assert (=> b!572818 m!551903))

(declare-fun m!551937 () Bool)

(assert (=> b!572818 m!551937))

(declare-fun m!551939 () Bool)

(assert (=> b!572818 m!551939))

(declare-fun m!551941 () Bool)

(assert (=> b!572818 m!551941))

(assert (=> b!572818 m!551903))

(declare-fun m!551943 () Bool)

(assert (=> b!572818 m!551943))

(declare-fun m!551945 () Bool)

(assert (=> b!572816 m!551945))

(push 1)

