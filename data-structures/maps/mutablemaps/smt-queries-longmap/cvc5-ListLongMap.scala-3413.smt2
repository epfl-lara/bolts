; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47410 () Bool)

(assert start!47410)

(declare-fun b!521173 () Bool)

(declare-fun res!319138 () Bool)

(declare-fun e!304077 () Bool)

(assert (=> b!521173 (=> (not res!319138) (not e!304077))))

(declare-datatypes ((array!33196 0))(
  ( (array!33197 (arr!15951 (Array (_ BitVec 32) (_ BitVec 64))) (size!16315 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33196)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33196 (_ BitVec 32)) Bool)

(assert (=> b!521173 (= res!319138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521174 () Bool)

(declare-fun res!319134 () Bool)

(declare-fun e!304074 () Bool)

(assert (=> b!521174 (=> res!319134 e!304074)))

(declare-datatypes ((SeekEntryResult!4425 0))(
  ( (MissingZero!4425 (index!19903 (_ BitVec 32))) (Found!4425 (index!19904 (_ BitVec 32))) (Intermediate!4425 (undefined!5237 Bool) (index!19905 (_ BitVec 32)) (x!48918 (_ BitVec 32))) (Undefined!4425) (MissingVacant!4425 (index!19906 (_ BitVec 32))) )
))
(declare-fun lt!238881 () SeekEntryResult!4425)

(assert (=> b!521174 (= res!319134 (or (undefined!5237 lt!238881) (not (is-Intermediate!4425 lt!238881))))))

(declare-fun b!521175 () Bool)

(declare-fun res!319137 () Bool)

(declare-fun e!304075 () Bool)

(assert (=> b!521175 (=> (not res!319137) (not e!304075))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521175 (= res!319137 (validKeyInArray!0 k!2280))))

(declare-fun b!521176 () Bool)

(assert (=> b!521176 (= e!304075 e!304077)))

(declare-fun res!319140 () Bool)

(assert (=> b!521176 (=> (not res!319140) (not e!304077))))

(declare-fun lt!238876 () SeekEntryResult!4425)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521176 (= res!319140 (or (= lt!238876 (MissingZero!4425 i!1204)) (= lt!238876 (MissingVacant!4425 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33196 (_ BitVec 32)) SeekEntryResult!4425)

(assert (=> b!521176 (= lt!238876 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!319133 () Bool)

(assert (=> start!47410 (=> (not res!319133) (not e!304075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47410 (= res!319133 (validMask!0 mask!3524))))

(assert (=> start!47410 e!304075))

(assert (=> start!47410 true))

(declare-fun array_inv!11725 (array!33196) Bool)

(assert (=> start!47410 (array_inv!11725 a!3235)))

(declare-fun b!521177 () Bool)

(assert (=> b!521177 (= e!304077 (not e!304074))))

(declare-fun res!319135 () Bool)

(assert (=> b!521177 (=> res!319135 e!304074)))

(declare-fun lt!238877 () array!33196)

(declare-fun lt!238875 () (_ BitVec 64))

(declare-fun lt!238880 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33196 (_ BitVec 32)) SeekEntryResult!4425)

(assert (=> b!521177 (= res!319135 (= lt!238881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238880 lt!238875 lt!238877 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238879 () (_ BitVec 32))

(assert (=> b!521177 (= lt!238881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238879 (select (arr!15951 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521177 (= lt!238880 (toIndex!0 lt!238875 mask!3524))))

(assert (=> b!521177 (= lt!238875 (select (store (arr!15951 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521177 (= lt!238879 (toIndex!0 (select (arr!15951 a!3235) j!176) mask!3524))))

(assert (=> b!521177 (= lt!238877 (array!33197 (store (arr!15951 a!3235) i!1204 k!2280) (size!16315 a!3235)))))

(declare-fun e!304076 () Bool)

(assert (=> b!521177 e!304076))

(declare-fun res!319139 () Bool)

(assert (=> b!521177 (=> (not res!319139) (not e!304076))))

(assert (=> b!521177 (= res!319139 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16166 0))(
  ( (Unit!16167) )
))
(declare-fun lt!238883 () Unit!16166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16166)

(assert (=> b!521177 (= lt!238883 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521178 () Bool)

(assert (=> b!521178 (= e!304074 true)))

(assert (=> b!521178 (and (or (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238878 () Unit!16166)

(declare-fun e!304073 () Unit!16166)

(assert (=> b!521178 (= lt!238878 e!304073)))

(declare-fun c!61322 () Bool)

(assert (=> b!521178 (= c!61322 (= (select (arr!15951 a!3235) (index!19905 lt!238881)) (select (arr!15951 a!3235) j!176)))))

(assert (=> b!521178 (and (bvslt (x!48918 lt!238881) #b01111111111111111111111111111110) (or (= (select (arr!15951 a!3235) (index!19905 lt!238881)) (select (arr!15951 a!3235) j!176)) (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15951 a!3235) (index!19905 lt!238881)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521179 () Bool)

(declare-fun res!319136 () Bool)

(assert (=> b!521179 (=> (not res!319136) (not e!304077))))

(declare-datatypes ((List!10162 0))(
  ( (Nil!10159) (Cons!10158 (h!11080 (_ BitVec 64)) (t!16398 List!10162)) )
))
(declare-fun arrayNoDuplicates!0 (array!33196 (_ BitVec 32) List!10162) Bool)

(assert (=> b!521179 (= res!319136 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10159))))

(declare-fun b!521180 () Bool)

(declare-fun res!319141 () Bool)

(assert (=> b!521180 (=> (not res!319141) (not e!304075))))

(assert (=> b!521180 (= res!319141 (and (= (size!16315 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16315 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16315 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521181 () Bool)

(assert (=> b!521181 (= e!304076 (= (seekEntryOrOpen!0 (select (arr!15951 a!3235) j!176) a!3235 mask!3524) (Found!4425 j!176)))))

(declare-fun b!521182 () Bool)

(declare-fun res!319132 () Bool)

(assert (=> b!521182 (=> (not res!319132) (not e!304075))))

(declare-fun arrayContainsKey!0 (array!33196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521182 (= res!319132 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521183 () Bool)

(declare-fun e!304072 () Bool)

(assert (=> b!521183 (= e!304072 false)))

(declare-fun b!521184 () Bool)

(declare-fun Unit!16168 () Unit!16166)

(assert (=> b!521184 (= e!304073 Unit!16168)))

(declare-fun b!521185 () Bool)

(declare-fun res!319131 () Bool)

(assert (=> b!521185 (=> (not res!319131) (not e!304075))))

(assert (=> b!521185 (= res!319131 (validKeyInArray!0 (select (arr!15951 a!3235) j!176)))))

(declare-fun b!521186 () Bool)

(declare-fun Unit!16169 () Unit!16166)

(assert (=> b!521186 (= e!304073 Unit!16169)))

(declare-fun lt!238882 () Unit!16166)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33196 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16166)

(assert (=> b!521186 (= lt!238882 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238879 #b00000000000000000000000000000000 (index!19905 lt!238881) (x!48918 lt!238881) mask!3524))))

(declare-fun res!319142 () Bool)

(assert (=> b!521186 (= res!319142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238879 lt!238875 lt!238877 mask!3524) (Intermediate!4425 false (index!19905 lt!238881) (x!48918 lt!238881))))))

(assert (=> b!521186 (=> (not res!319142) (not e!304072))))

(assert (=> b!521186 e!304072))

(assert (= (and start!47410 res!319133) b!521180))

(assert (= (and b!521180 res!319141) b!521185))

(assert (= (and b!521185 res!319131) b!521175))

(assert (= (and b!521175 res!319137) b!521182))

(assert (= (and b!521182 res!319132) b!521176))

(assert (= (and b!521176 res!319140) b!521173))

(assert (= (and b!521173 res!319138) b!521179))

(assert (= (and b!521179 res!319136) b!521177))

(assert (= (and b!521177 res!319139) b!521181))

(assert (= (and b!521177 (not res!319135)) b!521174))

(assert (= (and b!521174 (not res!319134)) b!521178))

(assert (= (and b!521178 c!61322) b!521186))

(assert (= (and b!521178 (not c!61322)) b!521184))

(assert (= (and b!521186 res!319142) b!521183))

(declare-fun m!502123 () Bool)

(assert (=> b!521173 m!502123))

(declare-fun m!502125 () Bool)

(assert (=> b!521177 m!502125))

(declare-fun m!502127 () Bool)

(assert (=> b!521177 m!502127))

(declare-fun m!502129 () Bool)

(assert (=> b!521177 m!502129))

(declare-fun m!502131 () Bool)

(assert (=> b!521177 m!502131))

(declare-fun m!502133 () Bool)

(assert (=> b!521177 m!502133))

(declare-fun m!502135 () Bool)

(assert (=> b!521177 m!502135))

(assert (=> b!521177 m!502131))

(declare-fun m!502137 () Bool)

(assert (=> b!521177 m!502137))

(assert (=> b!521177 m!502131))

(declare-fun m!502139 () Bool)

(assert (=> b!521177 m!502139))

(declare-fun m!502141 () Bool)

(assert (=> b!521177 m!502141))

(declare-fun m!502143 () Bool)

(assert (=> b!521178 m!502143))

(assert (=> b!521178 m!502131))

(declare-fun m!502145 () Bool)

(assert (=> b!521179 m!502145))

(declare-fun m!502147 () Bool)

(assert (=> b!521182 m!502147))

(declare-fun m!502149 () Bool)

(assert (=> b!521186 m!502149))

(declare-fun m!502151 () Bool)

(assert (=> b!521186 m!502151))

(declare-fun m!502153 () Bool)

(assert (=> b!521175 m!502153))

(assert (=> b!521185 m!502131))

(assert (=> b!521185 m!502131))

(declare-fun m!502155 () Bool)

(assert (=> b!521185 m!502155))

(assert (=> b!521181 m!502131))

(assert (=> b!521181 m!502131))

(declare-fun m!502157 () Bool)

(assert (=> b!521181 m!502157))

(declare-fun m!502159 () Bool)

(assert (=> b!521176 m!502159))

(declare-fun m!502161 () Bool)

(assert (=> start!47410 m!502161))

(declare-fun m!502163 () Bool)

(assert (=> start!47410 m!502163))

(push 1)

