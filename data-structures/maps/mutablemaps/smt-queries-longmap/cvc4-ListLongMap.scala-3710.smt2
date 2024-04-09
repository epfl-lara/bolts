; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51078 () Bool)

(assert start!51078)

(declare-fun b!557657 () Bool)

(declare-fun res!349679 () Bool)

(declare-fun e!321270 () Bool)

(assert (=> b!557657 (=> (not res!349679) (not e!321270))))

(declare-datatypes ((array!35086 0))(
  ( (array!35087 (arr!16844 (Array (_ BitVec 32) (_ BitVec 64))) (size!17208 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35086)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35086 (_ BitVec 32)) Bool)

(assert (=> b!557657 (= res!349679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557658 () Bool)

(assert (=> b!557658 (= e!321270 (not true))))

(declare-fun e!321268 () Bool)

(assert (=> b!557658 e!321268))

(declare-fun res!349674 () Bool)

(assert (=> b!557658 (=> (not res!349674) (not e!321268))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!557658 (= res!349674 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17374 0))(
  ( (Unit!17375) )
))
(declare-fun lt!253427 () Unit!17374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17374)

(assert (=> b!557658 (= lt!253427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557659 () Bool)

(declare-fun res!349673 () Bool)

(declare-fun e!321269 () Bool)

(assert (=> b!557659 (=> (not res!349673) (not e!321269))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557659 (= res!349673 (validKeyInArray!0 k!1914))))

(declare-fun b!557660 () Bool)

(declare-fun res!349671 () Bool)

(assert (=> b!557660 (=> (not res!349671) (not e!321270))))

(declare-datatypes ((List!10977 0))(
  ( (Nil!10974) (Cons!10973 (h!11967 (_ BitVec 64)) (t!17213 List!10977)) )
))
(declare-fun arrayNoDuplicates!0 (array!35086 (_ BitVec 32) List!10977) Bool)

(assert (=> b!557660 (= res!349671 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10974))))

(declare-fun b!557661 () Bool)

(declare-fun res!349675 () Bool)

(assert (=> b!557661 (=> (not res!349675) (not e!321269))))

(declare-fun arrayContainsKey!0 (array!35086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557661 (= res!349675 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!349678 () Bool)

(assert (=> start!51078 (=> (not res!349678) (not e!321269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51078 (= res!349678 (validMask!0 mask!3119))))

(assert (=> start!51078 e!321269))

(assert (=> start!51078 true))

(declare-fun array_inv!12618 (array!35086) Bool)

(assert (=> start!51078 (array_inv!12618 a!3118)))

(declare-fun b!557662 () Bool)

(declare-fun res!349677 () Bool)

(assert (=> b!557662 (=> (not res!349677) (not e!321270))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5300 0))(
  ( (MissingZero!5300 (index!23427 (_ BitVec 32))) (Found!5300 (index!23428 (_ BitVec 32))) (Intermediate!5300 (undefined!6112 Bool) (index!23429 (_ BitVec 32)) (x!52355 (_ BitVec 32))) (Undefined!5300) (MissingVacant!5300 (index!23430 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35086 (_ BitVec 32)) SeekEntryResult!5300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557662 (= res!349677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16844 a!3118) j!142) mask!3119) (select (arr!16844 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16844 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16844 a!3118) i!1132 k!1914) j!142) (array!35087 (store (arr!16844 a!3118) i!1132 k!1914) (size!17208 a!3118)) mask!3119)))))

(declare-fun b!557663 () Bool)

(declare-fun res!349670 () Bool)

(assert (=> b!557663 (=> (not res!349670) (not e!321269))))

(assert (=> b!557663 (= res!349670 (validKeyInArray!0 (select (arr!16844 a!3118) j!142)))))

(declare-fun b!557664 () Bool)

(declare-fun res!349676 () Bool)

(assert (=> b!557664 (=> (not res!349676) (not e!321269))))

(assert (=> b!557664 (= res!349676 (and (= (size!17208 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17208 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17208 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557665 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35086 (_ BitVec 32)) SeekEntryResult!5300)

(assert (=> b!557665 (= e!321268 (= (seekEntryOrOpen!0 (select (arr!16844 a!3118) j!142) a!3118 mask!3119) (Found!5300 j!142)))))

(declare-fun b!557666 () Bool)

(assert (=> b!557666 (= e!321269 e!321270)))

(declare-fun res!349672 () Bool)

(assert (=> b!557666 (=> (not res!349672) (not e!321270))))

(declare-fun lt!253426 () SeekEntryResult!5300)

(assert (=> b!557666 (= res!349672 (or (= lt!253426 (MissingZero!5300 i!1132)) (= lt!253426 (MissingVacant!5300 i!1132))))))

(assert (=> b!557666 (= lt!253426 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51078 res!349678) b!557664))

(assert (= (and b!557664 res!349676) b!557663))

(assert (= (and b!557663 res!349670) b!557659))

(assert (= (and b!557659 res!349673) b!557661))

(assert (= (and b!557661 res!349675) b!557666))

(assert (= (and b!557666 res!349672) b!557657))

(assert (= (and b!557657 res!349679) b!557660))

(assert (= (and b!557660 res!349671) b!557662))

(assert (= (and b!557662 res!349677) b!557658))

(assert (= (and b!557658 res!349674) b!557665))

(declare-fun m!535555 () Bool)

(assert (=> b!557659 m!535555))

(declare-fun m!535557 () Bool)

(assert (=> b!557666 m!535557))

(declare-fun m!535559 () Bool)

(assert (=> b!557663 m!535559))

(assert (=> b!557663 m!535559))

(declare-fun m!535561 () Bool)

(assert (=> b!557663 m!535561))

(declare-fun m!535563 () Bool)

(assert (=> b!557660 m!535563))

(assert (=> b!557665 m!535559))

(assert (=> b!557665 m!535559))

(declare-fun m!535565 () Bool)

(assert (=> b!557665 m!535565))

(declare-fun m!535567 () Bool)

(assert (=> start!51078 m!535567))

(declare-fun m!535569 () Bool)

(assert (=> start!51078 m!535569))

(declare-fun m!535571 () Bool)

(assert (=> b!557658 m!535571))

(declare-fun m!535573 () Bool)

(assert (=> b!557658 m!535573))

(assert (=> b!557662 m!535559))

(declare-fun m!535575 () Bool)

(assert (=> b!557662 m!535575))

(assert (=> b!557662 m!535559))

(declare-fun m!535577 () Bool)

(assert (=> b!557662 m!535577))

(declare-fun m!535579 () Bool)

(assert (=> b!557662 m!535579))

(assert (=> b!557662 m!535577))

(declare-fun m!535581 () Bool)

(assert (=> b!557662 m!535581))

(assert (=> b!557662 m!535575))

(assert (=> b!557662 m!535559))

(declare-fun m!535583 () Bool)

(assert (=> b!557662 m!535583))

(declare-fun m!535585 () Bool)

(assert (=> b!557662 m!535585))

(assert (=> b!557662 m!535577))

(assert (=> b!557662 m!535579))

(declare-fun m!535587 () Bool)

(assert (=> b!557657 m!535587))

(declare-fun m!535589 () Bool)

(assert (=> b!557661 m!535589))

(push 1)

(assert (not b!557658))

(assert (not b!557660))

(assert (not b!557663))

(assert (not b!557657))

(assert (not b!557662))

(assert (not start!51078))

(assert (not b!557659))

(assert (not b!557661))

(assert (not b!557665))

(assert (not b!557666))

(check-sat)

(pop 1)

(push 1)

