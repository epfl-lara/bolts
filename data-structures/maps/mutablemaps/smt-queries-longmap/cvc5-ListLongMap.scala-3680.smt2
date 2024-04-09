; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50714 () Bool)

(assert start!50714)

(declare-fun b!554177 () Bool)

(declare-fun res!346748 () Bool)

(declare-fun e!319561 () Bool)

(assert (=> b!554177 (=> (not res!346748) (not e!319561))))

(declare-datatypes ((array!34893 0))(
  ( (array!34894 (arr!16752 (Array (_ BitVec 32) (_ BitVec 64))) (size!17116 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34893)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34893 (_ BitVec 32)) Bool)

(assert (=> b!554177 (= res!346748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554178 () Bool)

(declare-fun res!346741 () Bool)

(declare-fun e!319564 () Bool)

(assert (=> b!554178 (=> (not res!346741) (not e!319564))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554178 (= res!346741 (and (= (size!17116 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17116 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17116 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554179 () Bool)

(assert (=> b!554179 (= e!319564 e!319561)))

(declare-fun res!346740 () Bool)

(assert (=> b!554179 (=> (not res!346740) (not e!319561))))

(declare-datatypes ((SeekEntryResult!5208 0))(
  ( (MissingZero!5208 (index!23059 (_ BitVec 32))) (Found!5208 (index!23060 (_ BitVec 32))) (Intermediate!5208 (undefined!6020 Bool) (index!23061 (_ BitVec 32)) (x!52005 (_ BitVec 32))) (Undefined!5208) (MissingVacant!5208 (index!23062 (_ BitVec 32))) )
))
(declare-fun lt!251740 () SeekEntryResult!5208)

(assert (=> b!554179 (= res!346740 (or (= lt!251740 (MissingZero!5208 i!1132)) (= lt!251740 (MissingVacant!5208 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34893 (_ BitVec 32)) SeekEntryResult!5208)

(assert (=> b!554179 (= lt!251740 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554180 () Bool)

(declare-fun e!319562 () Bool)

(assert (=> b!554180 (= e!319562 (= (seekEntryOrOpen!0 (select (arr!16752 a!3118) j!142) a!3118 mask!3119) (Found!5208 j!142)))))

(declare-fun b!554181 () Bool)

(declare-fun res!346747 () Bool)

(assert (=> b!554181 (=> (not res!346747) (not e!319564))))

(declare-fun arrayContainsKey!0 (array!34893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554181 (= res!346747 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554182 () Bool)

(assert (=> b!554182 (= e!319561 (not true))))

(assert (=> b!554182 e!319562))

(declare-fun res!346743 () Bool)

(assert (=> b!554182 (=> (not res!346743) (not e!319562))))

(assert (=> b!554182 (= res!346743 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17190 0))(
  ( (Unit!17191) )
))
(declare-fun lt!251741 () Unit!17190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17190)

(assert (=> b!554182 (= lt!251741 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554183 () Bool)

(declare-fun res!346744 () Bool)

(assert (=> b!554183 (=> (not res!346744) (not e!319561))))

(declare-datatypes ((List!10885 0))(
  ( (Nil!10882) (Cons!10881 (h!11866 (_ BitVec 64)) (t!17121 List!10885)) )
))
(declare-fun arrayNoDuplicates!0 (array!34893 (_ BitVec 32) List!10885) Bool)

(assert (=> b!554183 (= res!346744 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10882))))

(declare-fun res!346746 () Bool)

(assert (=> start!50714 (=> (not res!346746) (not e!319564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50714 (= res!346746 (validMask!0 mask!3119))))

(assert (=> start!50714 e!319564))

(assert (=> start!50714 true))

(declare-fun array_inv!12526 (array!34893) Bool)

(assert (=> start!50714 (array_inv!12526 a!3118)))

(declare-fun b!554184 () Bool)

(declare-fun res!346739 () Bool)

(assert (=> b!554184 (=> (not res!346739) (not e!319564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554184 (= res!346739 (validKeyInArray!0 (select (arr!16752 a!3118) j!142)))))

(declare-fun b!554185 () Bool)

(declare-fun res!346742 () Bool)

(assert (=> b!554185 (=> (not res!346742) (not e!319564))))

(assert (=> b!554185 (= res!346742 (validKeyInArray!0 k!1914))))

(declare-fun b!554186 () Bool)

(declare-fun res!346745 () Bool)

(assert (=> b!554186 (=> (not res!346745) (not e!319561))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34893 (_ BitVec 32)) SeekEntryResult!5208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554186 (= res!346745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16752 a!3118) j!142) mask!3119) (select (arr!16752 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16752 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16752 a!3118) i!1132 k!1914) j!142) (array!34894 (store (arr!16752 a!3118) i!1132 k!1914) (size!17116 a!3118)) mask!3119)))))

(assert (= (and start!50714 res!346746) b!554178))

(assert (= (and b!554178 res!346741) b!554184))

(assert (= (and b!554184 res!346739) b!554185))

(assert (= (and b!554185 res!346742) b!554181))

(assert (= (and b!554181 res!346747) b!554179))

(assert (= (and b!554179 res!346740) b!554177))

(assert (= (and b!554177 res!346748) b!554183))

(assert (= (and b!554183 res!346744) b!554186))

(assert (= (and b!554186 res!346745) b!554182))

(assert (= (and b!554182 res!346743) b!554180))

(declare-fun m!531499 () Bool)

(assert (=> b!554186 m!531499))

(declare-fun m!531501 () Bool)

(assert (=> b!554186 m!531501))

(assert (=> b!554186 m!531499))

(declare-fun m!531503 () Bool)

(assert (=> b!554186 m!531503))

(declare-fun m!531505 () Bool)

(assert (=> b!554186 m!531505))

(assert (=> b!554186 m!531503))

(declare-fun m!531507 () Bool)

(assert (=> b!554186 m!531507))

(assert (=> b!554186 m!531501))

(assert (=> b!554186 m!531499))

(declare-fun m!531509 () Bool)

(assert (=> b!554186 m!531509))

(declare-fun m!531511 () Bool)

(assert (=> b!554186 m!531511))

(assert (=> b!554186 m!531503))

(assert (=> b!554186 m!531505))

(declare-fun m!531513 () Bool)

(assert (=> b!554183 m!531513))

(declare-fun m!531515 () Bool)

(assert (=> b!554182 m!531515))

(declare-fun m!531517 () Bool)

(assert (=> b!554182 m!531517))

(declare-fun m!531519 () Bool)

(assert (=> start!50714 m!531519))

(declare-fun m!531521 () Bool)

(assert (=> start!50714 m!531521))

(assert (=> b!554184 m!531499))

(assert (=> b!554184 m!531499))

(declare-fun m!531523 () Bool)

(assert (=> b!554184 m!531523))

(declare-fun m!531525 () Bool)

(assert (=> b!554179 m!531525))

(declare-fun m!531527 () Bool)

(assert (=> b!554181 m!531527))

(declare-fun m!531529 () Bool)

(assert (=> b!554185 m!531529))

(assert (=> b!554180 m!531499))

(assert (=> b!554180 m!531499))

(declare-fun m!531531 () Bool)

(assert (=> b!554180 m!531531))

(declare-fun m!531533 () Bool)

(assert (=> b!554177 m!531533))

(push 1)

