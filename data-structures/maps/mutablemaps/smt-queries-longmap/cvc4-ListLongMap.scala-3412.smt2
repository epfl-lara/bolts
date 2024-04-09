; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47408 () Bool)

(assert start!47408)

(declare-fun b!521131 () Bool)

(declare-fun res!319095 () Bool)

(declare-fun e!304054 () Bool)

(assert (=> b!521131 (=> (not res!319095) (not e!304054))))

(declare-datatypes ((array!33194 0))(
  ( (array!33195 (arr!15950 (Array (_ BitVec 32) (_ BitVec 64))) (size!16314 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33194)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521131 (= res!319095 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521132 () Bool)

(declare-fun res!319104 () Bool)

(assert (=> b!521132 (=> (not res!319104) (not e!304054))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521132 (= res!319104 (validKeyInArray!0 (select (arr!15950 a!3235) j!176)))))

(declare-fun b!521133 () Bool)

(declare-fun e!304055 () Bool)

(declare-fun e!304057 () Bool)

(assert (=> b!521133 (= e!304055 (not e!304057))))

(declare-fun res!319106 () Bool)

(assert (=> b!521133 (=> res!319106 e!304057)))

(declare-datatypes ((SeekEntryResult!4424 0))(
  ( (MissingZero!4424 (index!19899 (_ BitVec 32))) (Found!4424 (index!19900 (_ BitVec 32))) (Intermediate!4424 (undefined!5236 Bool) (index!19901 (_ BitVec 32)) (x!48909 (_ BitVec 32))) (Undefined!4424) (MissingVacant!4424 (index!19902 (_ BitVec 32))) )
))
(declare-fun lt!238851 () SeekEntryResult!4424)

(declare-fun lt!238856 () (_ BitVec 32))

(declare-fun lt!238853 () array!33194)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!238849 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33194 (_ BitVec 32)) SeekEntryResult!4424)

(assert (=> b!521133 (= res!319106 (= lt!238851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238856 lt!238849 lt!238853 mask!3524)))))

(declare-fun lt!238854 () (_ BitVec 32))

(assert (=> b!521133 (= lt!238851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238854 (select (arr!15950 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521133 (= lt!238856 (toIndex!0 lt!238849 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521133 (= lt!238849 (select (store (arr!15950 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521133 (= lt!238854 (toIndex!0 (select (arr!15950 a!3235) j!176) mask!3524))))

(assert (=> b!521133 (= lt!238853 (array!33195 (store (arr!15950 a!3235) i!1204 k!2280) (size!16314 a!3235)))))

(declare-fun e!304051 () Bool)

(assert (=> b!521133 e!304051))

(declare-fun res!319101 () Bool)

(assert (=> b!521133 (=> (not res!319101) (not e!304051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33194 (_ BitVec 32)) Bool)

(assert (=> b!521133 (= res!319101 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16162 0))(
  ( (Unit!16163) )
))
(declare-fun lt!238852 () Unit!16162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33194 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16162)

(assert (=> b!521133 (= lt!238852 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521134 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33194 (_ BitVec 32)) SeekEntryResult!4424)

(assert (=> b!521134 (= e!304051 (= (seekEntryOrOpen!0 (select (arr!15950 a!3235) j!176) a!3235 mask!3524) (Found!4424 j!176)))))

(declare-fun b!521135 () Bool)

(assert (=> b!521135 (= e!304057 true)))

(assert (=> b!521135 (and (or (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238850 () Unit!16162)

(declare-fun e!304056 () Unit!16162)

(assert (=> b!521135 (= lt!238850 e!304056)))

(declare-fun c!61319 () Bool)

(assert (=> b!521135 (= c!61319 (= (select (arr!15950 a!3235) (index!19901 lt!238851)) (select (arr!15950 a!3235) j!176)))))

(assert (=> b!521135 (and (bvslt (x!48909 lt!238851) #b01111111111111111111111111111110) (or (= (select (arr!15950 a!3235) (index!19901 lt!238851)) (select (arr!15950 a!3235) j!176)) (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15950 a!3235) (index!19901 lt!238851)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521136 () Bool)

(declare-fun res!319105 () Bool)

(assert (=> b!521136 (=> (not res!319105) (not e!304054))))

(assert (=> b!521136 (= res!319105 (validKeyInArray!0 k!2280))))

(declare-fun b!521137 () Bool)

(assert (=> b!521137 (= e!304054 e!304055)))

(declare-fun res!319097 () Bool)

(assert (=> b!521137 (=> (not res!319097) (not e!304055))))

(declare-fun lt!238848 () SeekEntryResult!4424)

(assert (=> b!521137 (= res!319097 (or (= lt!238848 (MissingZero!4424 i!1204)) (= lt!238848 (MissingVacant!4424 i!1204))))))

(assert (=> b!521137 (= lt!238848 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521138 () Bool)

(declare-fun Unit!16164 () Unit!16162)

(assert (=> b!521138 (= e!304056 Unit!16164)))

(declare-fun lt!238855 () Unit!16162)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33194 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16162)

(assert (=> b!521138 (= lt!238855 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238854 #b00000000000000000000000000000000 (index!19901 lt!238851) (x!48909 lt!238851) mask!3524))))

(declare-fun res!319103 () Bool)

(assert (=> b!521138 (= res!319103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238854 lt!238849 lt!238853 mask!3524) (Intermediate!4424 false (index!19901 lt!238851) (x!48909 lt!238851))))))

(declare-fun e!304052 () Bool)

(assert (=> b!521138 (=> (not res!319103) (not e!304052))))

(assert (=> b!521138 e!304052))

(declare-fun b!521139 () Bool)

(declare-fun Unit!16165 () Unit!16162)

(assert (=> b!521139 (= e!304056 Unit!16165)))

(declare-fun b!521140 () Bool)

(declare-fun res!319096 () Bool)

(assert (=> b!521140 (=> (not res!319096) (not e!304055))))

(assert (=> b!521140 (= res!319096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521142 () Bool)

(assert (=> b!521142 (= e!304052 false)))

(declare-fun b!521141 () Bool)

(declare-fun res!319100 () Bool)

(assert (=> b!521141 (=> (not res!319100) (not e!304055))))

(declare-datatypes ((List!10161 0))(
  ( (Nil!10158) (Cons!10157 (h!11079 (_ BitVec 64)) (t!16397 List!10161)) )
))
(declare-fun arrayNoDuplicates!0 (array!33194 (_ BitVec 32) List!10161) Bool)

(assert (=> b!521141 (= res!319100 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10158))))

(declare-fun res!319102 () Bool)

(assert (=> start!47408 (=> (not res!319102) (not e!304054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47408 (= res!319102 (validMask!0 mask!3524))))

(assert (=> start!47408 e!304054))

(assert (=> start!47408 true))

(declare-fun array_inv!11724 (array!33194) Bool)

(assert (=> start!47408 (array_inv!11724 a!3235)))

(declare-fun b!521143 () Bool)

(declare-fun res!319098 () Bool)

(assert (=> b!521143 (=> (not res!319098) (not e!304054))))

(assert (=> b!521143 (= res!319098 (and (= (size!16314 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16314 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16314 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521144 () Bool)

(declare-fun res!319099 () Bool)

(assert (=> b!521144 (=> res!319099 e!304057)))

(assert (=> b!521144 (= res!319099 (or (undefined!5236 lt!238851) (not (is-Intermediate!4424 lt!238851))))))

(assert (= (and start!47408 res!319102) b!521143))

(assert (= (and b!521143 res!319098) b!521132))

(assert (= (and b!521132 res!319104) b!521136))

(assert (= (and b!521136 res!319105) b!521131))

(assert (= (and b!521131 res!319095) b!521137))

(assert (= (and b!521137 res!319097) b!521140))

(assert (= (and b!521140 res!319096) b!521141))

(assert (= (and b!521141 res!319100) b!521133))

(assert (= (and b!521133 res!319101) b!521134))

(assert (= (and b!521133 (not res!319106)) b!521144))

(assert (= (and b!521144 (not res!319099)) b!521135))

(assert (= (and b!521135 c!61319) b!521138))

(assert (= (and b!521135 (not c!61319)) b!521139))

(assert (= (and b!521138 res!319103) b!521142))

(declare-fun m!502081 () Bool)

(assert (=> b!521140 m!502081))

(declare-fun m!502083 () Bool)

(assert (=> b!521138 m!502083))

(declare-fun m!502085 () Bool)

(assert (=> b!521138 m!502085))

(declare-fun m!502087 () Bool)

(assert (=> b!521137 m!502087))

(declare-fun m!502089 () Bool)

(assert (=> b!521132 m!502089))

(assert (=> b!521132 m!502089))

(declare-fun m!502091 () Bool)

(assert (=> b!521132 m!502091))

(declare-fun m!502093 () Bool)

(assert (=> b!521133 m!502093))

(declare-fun m!502095 () Bool)

(assert (=> b!521133 m!502095))

(declare-fun m!502097 () Bool)

(assert (=> b!521133 m!502097))

(declare-fun m!502099 () Bool)

(assert (=> b!521133 m!502099))

(assert (=> b!521133 m!502089))

(declare-fun m!502101 () Bool)

(assert (=> b!521133 m!502101))

(assert (=> b!521133 m!502089))

(declare-fun m!502103 () Bool)

(assert (=> b!521133 m!502103))

(assert (=> b!521133 m!502089))

(declare-fun m!502105 () Bool)

(assert (=> b!521133 m!502105))

(declare-fun m!502107 () Bool)

(assert (=> b!521133 m!502107))

(assert (=> b!521134 m!502089))

(assert (=> b!521134 m!502089))

(declare-fun m!502109 () Bool)

(assert (=> b!521134 m!502109))

(declare-fun m!502111 () Bool)

(assert (=> b!521135 m!502111))

(assert (=> b!521135 m!502089))

(declare-fun m!502113 () Bool)

(assert (=> start!47408 m!502113))

(declare-fun m!502115 () Bool)

(assert (=> start!47408 m!502115))

(declare-fun m!502117 () Bool)

(assert (=> b!521141 m!502117))

(declare-fun m!502119 () Bool)

(assert (=> b!521131 m!502119))

(declare-fun m!502121 () Bool)

(assert (=> b!521136 m!502121))

(push 1)

