; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52448 () Bool)

(assert start!52448)

(declare-fun res!361821 () Bool)

(declare-fun e!329112 () Bool)

(assert (=> start!52448 (=> (not res!361821) (not e!329112))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52448 (= res!361821 (validMask!0 mask!3119))))

(assert (=> start!52448 e!329112))

(assert (=> start!52448 true))

(declare-datatypes ((array!35799 0))(
  ( (array!35800 (arr!17184 (Array (_ BitVec 32) (_ BitVec 64))) (size!17548 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35799)

(declare-fun array_inv!12958 (array!35799) Bool)

(assert (=> start!52448 (array_inv!12958 a!3118)))

(declare-fun b!572153 () Bool)

(declare-fun e!329119 () Bool)

(declare-fun e!329115 () Bool)

(assert (=> b!572153 (= e!329119 e!329115)))

(declare-fun res!361818 () Bool)

(assert (=> b!572153 (=> res!361818 e!329115)))

(declare-datatypes ((SeekEntryResult!5640 0))(
  ( (MissingZero!5640 (index!24787 (_ BitVec 32))) (Found!5640 (index!24788 (_ BitVec 32))) (Intermediate!5640 (undefined!6452 Bool) (index!24789 (_ BitVec 32)) (x!53688 (_ BitVec 32))) (Undefined!5640) (MissingVacant!5640 (index!24790 (_ BitVec 32))) )
))
(declare-fun lt!261136 () SeekEntryResult!5640)

(assert (=> b!572153 (= res!361818 (or (undefined!6452 lt!261136) (not (is-Intermediate!5640 lt!261136))))))

(declare-fun b!572154 () Bool)

(declare-fun e!329113 () Bool)

(assert (=> b!572154 (= e!329112 e!329113)))

(declare-fun res!361823 () Bool)

(assert (=> b!572154 (=> (not res!361823) (not e!329113))))

(declare-fun lt!261143 () SeekEntryResult!5640)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572154 (= res!361823 (or (= lt!261143 (MissingZero!5640 i!1132)) (= lt!261143 (MissingVacant!5640 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35799 (_ BitVec 32)) SeekEntryResult!5640)

(assert (=> b!572154 (= lt!261143 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572155 () Bool)

(declare-fun res!361820 () Bool)

(assert (=> b!572155 (=> (not res!361820) (not e!329113))))

(declare-datatypes ((List!11317 0))(
  ( (Nil!11314) (Cons!11313 (h!12340 (_ BitVec 64)) (t!17553 List!11317)) )
))
(declare-fun arrayNoDuplicates!0 (array!35799 (_ BitVec 32) List!11317) Bool)

(assert (=> b!572155 (= res!361820 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11314))))

(declare-fun b!572156 () Bool)

(declare-fun e!329116 () Bool)

(assert (=> b!572156 (= e!329115 e!329116)))

(declare-fun res!361817 () Bool)

(assert (=> b!572156 (=> res!361817 e!329116)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261138 () (_ BitVec 64))

(assert (=> b!572156 (= res!361817 (or (= lt!261138 (select (arr!17184 a!3118) j!142)) (= lt!261138 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572156 (= lt!261138 (select (arr!17184 a!3118) (index!24789 lt!261136)))))

(declare-fun b!572157 () Bool)

(declare-fun res!361812 () Bool)

(assert (=> b!572157 (=> (not res!361812) (not e!329112))))

(assert (=> b!572157 (= res!361812 (and (= (size!17548 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17548 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17548 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572158 () Bool)

(declare-fun e!329117 () Bool)

(assert (=> b!572158 (= e!329117 (not true))))

(assert (=> b!572158 e!329119))

(declare-fun res!361811 () Bool)

(assert (=> b!572158 (=> (not res!361811) (not e!329119))))

(declare-fun lt!261135 () SeekEntryResult!5640)

(assert (=> b!572158 (= res!361811 (= lt!261135 (Found!5640 j!142)))))

(assert (=> b!572158 (= lt!261135 (seekEntryOrOpen!0 (select (arr!17184 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35799 (_ BitVec 32)) Bool)

(assert (=> b!572158 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17982 0))(
  ( (Unit!17983) )
))
(declare-fun lt!261141 () Unit!17982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17982)

(assert (=> b!572158 (= lt!261141 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572159 () Bool)

(declare-fun res!361814 () Bool)

(assert (=> b!572159 (=> (not res!361814) (not e!329112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572159 (= res!361814 (validKeyInArray!0 k!1914))))

(declare-fun b!572160 () Bool)

(assert (=> b!572160 (= e!329113 e!329117)))

(declare-fun res!361819 () Bool)

(assert (=> b!572160 (=> (not res!361819) (not e!329117))))

(declare-fun lt!261137 () (_ BitVec 32))

(declare-fun lt!261140 () array!35799)

(declare-fun lt!261139 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35799 (_ BitVec 32)) SeekEntryResult!5640)

(assert (=> b!572160 (= res!361819 (= lt!261136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261137 lt!261139 lt!261140 mask!3119)))))

(declare-fun lt!261142 () (_ BitVec 32))

(assert (=> b!572160 (= lt!261136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261142 (select (arr!17184 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572160 (= lt!261137 (toIndex!0 lt!261139 mask!3119))))

(assert (=> b!572160 (= lt!261139 (select (store (arr!17184 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572160 (= lt!261142 (toIndex!0 (select (arr!17184 a!3118) j!142) mask!3119))))

(assert (=> b!572160 (= lt!261140 (array!35800 (store (arr!17184 a!3118) i!1132 k!1914) (size!17548 a!3118)))))

(declare-fun b!572161 () Bool)

(declare-fun res!361822 () Bool)

(assert (=> b!572161 (=> (not res!361822) (not e!329112))))

(assert (=> b!572161 (= res!361822 (validKeyInArray!0 (select (arr!17184 a!3118) j!142)))))

(declare-fun b!572162 () Bool)

(declare-fun res!361815 () Bool)

(assert (=> b!572162 (=> (not res!361815) (not e!329112))))

(declare-fun arrayContainsKey!0 (array!35799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572162 (= res!361815 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572163 () Bool)

(declare-fun res!361816 () Bool)

(assert (=> b!572163 (=> (not res!361816) (not e!329113))))

(assert (=> b!572163 (= res!361816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!329118 () Bool)

(declare-fun b!572164 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35799 (_ BitVec 32)) SeekEntryResult!5640)

(assert (=> b!572164 (= e!329118 (= (seekEntryOrOpen!0 lt!261139 lt!261140 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53688 lt!261136) (index!24789 lt!261136) (index!24789 lt!261136) lt!261139 lt!261140 mask!3119)))))

(declare-fun b!572165 () Bool)

(assert (=> b!572165 (= e!329116 e!329118)))

(declare-fun res!361813 () Bool)

(assert (=> b!572165 (=> (not res!361813) (not e!329118))))

(assert (=> b!572165 (= res!361813 (= lt!261135 (seekKeyOrZeroReturnVacant!0 (x!53688 lt!261136) (index!24789 lt!261136) (index!24789 lt!261136) (select (arr!17184 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52448 res!361821) b!572157))

(assert (= (and b!572157 res!361812) b!572161))

(assert (= (and b!572161 res!361822) b!572159))

(assert (= (and b!572159 res!361814) b!572162))

(assert (= (and b!572162 res!361815) b!572154))

(assert (= (and b!572154 res!361823) b!572163))

(assert (= (and b!572163 res!361816) b!572155))

(assert (= (and b!572155 res!361820) b!572160))

(assert (= (and b!572160 res!361819) b!572158))

(assert (= (and b!572158 res!361811) b!572153))

(assert (= (and b!572153 (not res!361818)) b!572156))

(assert (= (and b!572156 (not res!361817)) b!572165))

(assert (= (and b!572165 res!361813) b!572164))

(declare-fun m!551155 () Bool)

(assert (=> b!572158 m!551155))

(assert (=> b!572158 m!551155))

(declare-fun m!551157 () Bool)

(assert (=> b!572158 m!551157))

(declare-fun m!551159 () Bool)

(assert (=> b!572158 m!551159))

(declare-fun m!551161 () Bool)

(assert (=> b!572158 m!551161))

(declare-fun m!551163 () Bool)

(assert (=> b!572159 m!551163))

(declare-fun m!551165 () Bool)

(assert (=> start!52448 m!551165))

(declare-fun m!551167 () Bool)

(assert (=> start!52448 m!551167))

(assert (=> b!572165 m!551155))

(assert (=> b!572165 m!551155))

(declare-fun m!551169 () Bool)

(assert (=> b!572165 m!551169))

(declare-fun m!551171 () Bool)

(assert (=> b!572163 m!551171))

(assert (=> b!572161 m!551155))

(assert (=> b!572161 m!551155))

(declare-fun m!551173 () Bool)

(assert (=> b!572161 m!551173))

(assert (=> b!572156 m!551155))

(declare-fun m!551175 () Bool)

(assert (=> b!572156 m!551175))

(declare-fun m!551177 () Bool)

(assert (=> b!572154 m!551177))

(declare-fun m!551179 () Bool)

(assert (=> b!572164 m!551179))

(declare-fun m!551181 () Bool)

(assert (=> b!572164 m!551181))

(assert (=> b!572160 m!551155))

(declare-fun m!551183 () Bool)

(assert (=> b!572160 m!551183))

(declare-fun m!551185 () Bool)

(assert (=> b!572160 m!551185))

(assert (=> b!572160 m!551155))

(declare-fun m!551187 () Bool)

(assert (=> b!572160 m!551187))

(declare-fun m!551189 () Bool)

(assert (=> b!572160 m!551189))

(declare-fun m!551191 () Bool)

(assert (=> b!572160 m!551191))

(assert (=> b!572160 m!551155))

(declare-fun m!551193 () Bool)

(assert (=> b!572160 m!551193))

(declare-fun m!551195 () Bool)

(assert (=> b!572162 m!551195))

(declare-fun m!551197 () Bool)

(assert (=> b!572155 m!551197))

(push 1)

