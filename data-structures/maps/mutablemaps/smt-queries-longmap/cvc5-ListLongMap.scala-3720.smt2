; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51266 () Bool)

(assert start!51266)

(declare-fun b!559288 () Bool)

(declare-fun res!350837 () Bool)

(declare-fun e!322215 () Bool)

(assert (=> b!559288 (=> (not res!350837) (not e!322215))))

(declare-datatypes ((array!35148 0))(
  ( (array!35149 (arr!16872 (Array (_ BitVec 32) (_ BitVec 64))) (size!17236 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35148)

(declare-datatypes ((List!11005 0))(
  ( (Nil!11002) (Cons!11001 (h!12001 (_ BitVec 64)) (t!17241 List!11005)) )
))
(declare-fun arrayNoDuplicates!0 (array!35148 (_ BitVec 32) List!11005) Bool)

(assert (=> b!559288 (= res!350837 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11002))))

(declare-fun b!559289 () Bool)

(declare-fun e!322216 () Bool)

(declare-fun e!322217 () Bool)

(assert (=> b!559289 (= e!322216 e!322217)))

(declare-fun res!350834 () Bool)

(assert (=> b!559289 (=> res!350834 e!322217)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5328 0))(
  ( (MissingZero!5328 (index!23539 (_ BitVec 32))) (Found!5328 (index!23540 (_ BitVec 32))) (Intermediate!5328 (undefined!6140 Bool) (index!23541 (_ BitVec 32)) (x!52481 (_ BitVec 32))) (Undefined!5328) (MissingVacant!5328 (index!23542 (_ BitVec 32))) )
))
(declare-fun lt!254231 () SeekEntryResult!5328)

(assert (=> b!559289 (= res!350834 (or (undefined!6140 lt!254231) (not (is-Intermediate!5328 lt!254231)) (= (select (arr!16872 a!3118) (index!23541 lt!254231)) (select (arr!16872 a!3118) j!142)) (= (select (arr!16872 a!3118) (index!23541 lt!254231)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559290 () Bool)

(declare-fun res!350832 () Bool)

(assert (=> b!559290 (=> (not res!350832) (not e!322215))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35148 (_ BitVec 32)) Bool)

(assert (=> b!559290 (= res!350832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559291 () Bool)

(declare-fun res!350830 () Bool)

(declare-fun e!322218 () Bool)

(assert (=> b!559291 (=> (not res!350830) (not e!322218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559291 (= res!350830 (validKeyInArray!0 (select (arr!16872 a!3118) j!142)))))

(declare-fun b!559293 () Bool)

(declare-fun res!350827 () Bool)

(assert (=> b!559293 (=> (not res!350827) (not e!322218))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!559293 (= res!350827 (and (= (size!17236 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17236 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17236 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559294 () Bool)

(assert (=> b!559294 (= e!322218 e!322215)))

(declare-fun res!350835 () Bool)

(assert (=> b!559294 (=> (not res!350835) (not e!322215))))

(declare-fun lt!254233 () SeekEntryResult!5328)

(assert (=> b!559294 (= res!350835 (or (= lt!254233 (MissingZero!5328 i!1132)) (= lt!254233 (MissingVacant!5328 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35148 (_ BitVec 32)) SeekEntryResult!5328)

(assert (=> b!559294 (= lt!254233 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!559295 () Bool)

(declare-fun lt!254232 () SeekEntryResult!5328)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35148 (_ BitVec 32)) SeekEntryResult!5328)

(assert (=> b!559295 (= e!322217 (= lt!254232 (seekKeyOrZeroReturnVacant!0 (x!52481 lt!254231) (index!23541 lt!254231) (index!23541 lt!254231) (select (arr!16872 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559296 () Bool)

(declare-fun e!322219 () Bool)

(assert (=> b!559296 (= e!322219 (not true))))

(assert (=> b!559296 e!322216))

(declare-fun res!350829 () Bool)

(assert (=> b!559296 (=> (not res!350829) (not e!322216))))

(assert (=> b!559296 (= res!350829 (= lt!254232 (Found!5328 j!142)))))

(assert (=> b!559296 (= lt!254232 (seekEntryOrOpen!0 (select (arr!16872 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559296 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17430 0))(
  ( (Unit!17431) )
))
(declare-fun lt!254229 () Unit!17430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17430)

(assert (=> b!559296 (= lt!254229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559297 () Bool)

(declare-fun res!350833 () Bool)

(assert (=> b!559297 (=> (not res!350833) (not e!322218))))

(declare-fun arrayContainsKey!0 (array!35148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559297 (= res!350833 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559298 () Bool)

(assert (=> b!559298 (= e!322215 e!322219)))

(declare-fun res!350836 () Bool)

(assert (=> b!559298 (=> (not res!350836) (not e!322219))))

(declare-fun lt!254234 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35148 (_ BitVec 32)) SeekEntryResult!5328)

(assert (=> b!559298 (= res!350836 (= lt!254231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254234 (select (store (arr!16872 a!3118) i!1132 k!1914) j!142) (array!35149 (store (arr!16872 a!3118) i!1132 k!1914) (size!17236 a!3118)) mask!3119)))))

(declare-fun lt!254230 () (_ BitVec 32))

(assert (=> b!559298 (= lt!254231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254230 (select (arr!16872 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559298 (= lt!254234 (toIndex!0 (select (store (arr!16872 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!559298 (= lt!254230 (toIndex!0 (select (arr!16872 a!3118) j!142) mask!3119))))

(declare-fun res!350831 () Bool)

(assert (=> start!51266 (=> (not res!350831) (not e!322218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51266 (= res!350831 (validMask!0 mask!3119))))

(assert (=> start!51266 e!322218))

(assert (=> start!51266 true))

(declare-fun array_inv!12646 (array!35148) Bool)

(assert (=> start!51266 (array_inv!12646 a!3118)))

(declare-fun b!559292 () Bool)

(declare-fun res!350828 () Bool)

(assert (=> b!559292 (=> (not res!350828) (not e!322218))))

(assert (=> b!559292 (= res!350828 (validKeyInArray!0 k!1914))))

(assert (= (and start!51266 res!350831) b!559293))

(assert (= (and b!559293 res!350827) b!559291))

(assert (= (and b!559291 res!350830) b!559292))

(assert (= (and b!559292 res!350828) b!559297))

(assert (= (and b!559297 res!350833) b!559294))

(assert (= (and b!559294 res!350835) b!559290))

(assert (= (and b!559290 res!350832) b!559288))

(assert (= (and b!559288 res!350837) b!559298))

(assert (= (and b!559298 res!350836) b!559296))

(assert (= (and b!559296 res!350829) b!559289))

(assert (= (and b!559289 (not res!350834)) b!559295))

(declare-fun m!537133 () Bool)

(assert (=> b!559296 m!537133))

(assert (=> b!559296 m!537133))

(declare-fun m!537135 () Bool)

(assert (=> b!559296 m!537135))

(declare-fun m!537137 () Bool)

(assert (=> b!559296 m!537137))

(declare-fun m!537139 () Bool)

(assert (=> b!559296 m!537139))

(assert (=> b!559291 m!537133))

(assert (=> b!559291 m!537133))

(declare-fun m!537141 () Bool)

(assert (=> b!559291 m!537141))

(declare-fun m!537143 () Bool)

(assert (=> b!559294 m!537143))

(declare-fun m!537145 () Bool)

(assert (=> b!559297 m!537145))

(declare-fun m!537147 () Bool)

(assert (=> start!51266 m!537147))

(declare-fun m!537149 () Bool)

(assert (=> start!51266 m!537149))

(declare-fun m!537151 () Bool)

(assert (=> b!559288 m!537151))

(declare-fun m!537153 () Bool)

(assert (=> b!559290 m!537153))

(assert (=> b!559298 m!537133))

(declare-fun m!537155 () Bool)

(assert (=> b!559298 m!537155))

(assert (=> b!559298 m!537133))

(declare-fun m!537157 () Bool)

(assert (=> b!559298 m!537157))

(assert (=> b!559298 m!537133))

(declare-fun m!537159 () Bool)

(assert (=> b!559298 m!537159))

(declare-fun m!537161 () Bool)

(assert (=> b!559298 m!537161))

(assert (=> b!559298 m!537159))

(declare-fun m!537163 () Bool)

(assert (=> b!559298 m!537163))

(assert (=> b!559298 m!537159))

(declare-fun m!537165 () Bool)

(assert (=> b!559298 m!537165))

(assert (=> b!559295 m!537133))

(assert (=> b!559295 m!537133))

(declare-fun m!537167 () Bool)

(assert (=> b!559295 m!537167))

(declare-fun m!537169 () Bool)

(assert (=> b!559292 m!537169))

(declare-fun m!537171 () Bool)

(assert (=> b!559289 m!537171))

(assert (=> b!559289 m!537133))

(push 1)

