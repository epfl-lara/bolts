; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51368 () Bool)

(assert start!51368)

(declare-fun res!351631 () Bool)

(declare-fun e!322850 () Bool)

(assert (=> start!51368 (=> (not res!351631) (not e!322850))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51368 (= res!351631 (validMask!0 mask!3119))))

(assert (=> start!51368 e!322850))

(assert (=> start!51368 true))

(declare-datatypes ((array!35187 0))(
  ( (array!35188 (arr!16890 (Array (_ BitVec 32) (_ BitVec 64))) (size!17254 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35187)

(declare-fun array_inv!12664 (array!35187) Bool)

(assert (=> start!51368 (array_inv!12664 a!3118)))

(declare-fun b!560321 () Bool)

(declare-fun res!351627 () Bool)

(assert (=> b!560321 (=> (not res!351627) (not e!322850))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560321 (= res!351627 (and (= (size!17254 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17254 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17254 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560322 () Bool)

(declare-fun res!351633 () Bool)

(declare-fun e!322848 () Bool)

(assert (=> b!560322 (=> (not res!351633) (not e!322848))))

(declare-datatypes ((List!11023 0))(
  ( (Nil!11020) (Cons!11019 (h!12022 (_ BitVec 64)) (t!17259 List!11023)) )
))
(declare-fun arrayNoDuplicates!0 (array!35187 (_ BitVec 32) List!11023) Bool)

(assert (=> b!560322 (= res!351633 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11020))))

(declare-fun b!560323 () Bool)

(declare-fun res!351634 () Bool)

(assert (=> b!560323 (=> (not res!351634) (not e!322848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35187 (_ BitVec 32)) Bool)

(assert (=> b!560323 (= res!351634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560324 () Bool)

(declare-fun e!322845 () Bool)

(assert (=> b!560324 (= e!322848 e!322845)))

(declare-fun res!351630 () Bool)

(assert (=> b!560324 (=> (not res!351630) (not e!322845))))

(declare-fun lt!254833 () array!35187)

(declare-fun lt!254840 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5346 0))(
  ( (MissingZero!5346 (index!23611 (_ BitVec 32))) (Found!5346 (index!23612 (_ BitVec 32))) (Intermediate!5346 (undefined!6158 Bool) (index!23613 (_ BitVec 32)) (x!52556 (_ BitVec 32))) (Undefined!5346) (MissingVacant!5346 (index!23614 (_ BitVec 32))) )
))
(declare-fun lt!254834 () SeekEntryResult!5346)

(declare-fun lt!254838 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35187 (_ BitVec 32)) SeekEntryResult!5346)

(assert (=> b!560324 (= res!351630 (= lt!254834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254838 lt!254840 lt!254833 mask!3119)))))

(declare-fun lt!254837 () (_ BitVec 32))

(assert (=> b!560324 (= lt!254834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254837 (select (arr!16890 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560324 (= lt!254838 (toIndex!0 lt!254840 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!560324 (= lt!254840 (select (store (arr!16890 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560324 (= lt!254837 (toIndex!0 (select (arr!16890 a!3118) j!142) mask!3119))))

(assert (=> b!560324 (= lt!254833 (array!35188 (store (arr!16890 a!3118) i!1132 k!1914) (size!17254 a!3118)))))

(declare-fun b!560325 () Bool)

(declare-fun res!351629 () Bool)

(assert (=> b!560325 (=> (not res!351629) (not e!322850))))

(declare-fun arrayContainsKey!0 (array!35187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560325 (= res!351629 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560326 () Bool)

(assert (=> b!560326 (= e!322850 e!322848)))

(declare-fun res!351625 () Bool)

(assert (=> b!560326 (=> (not res!351625) (not e!322848))))

(declare-fun lt!254832 () SeekEntryResult!5346)

(assert (=> b!560326 (= res!351625 (or (= lt!254832 (MissingZero!5346 i!1132)) (= lt!254832 (MissingVacant!5346 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35187 (_ BitVec 32)) SeekEntryResult!5346)

(assert (=> b!560326 (= lt!254832 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560327 () Bool)

(declare-fun e!322852 () Bool)

(declare-fun e!322851 () Bool)

(assert (=> b!560327 (= e!322852 e!322851)))

(declare-fun res!351635 () Bool)

(assert (=> b!560327 (=> (not res!351635) (not e!322851))))

(declare-fun lt!254836 () SeekEntryResult!5346)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35187 (_ BitVec 32)) SeekEntryResult!5346)

(assert (=> b!560327 (= res!351635 (= lt!254836 (seekKeyOrZeroReturnVacant!0 (x!52556 lt!254834) (index!23613 lt!254834) (index!23613 lt!254834) (select (arr!16890 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560328 () Bool)

(declare-fun e!322846 () Bool)

(declare-fun e!322847 () Bool)

(assert (=> b!560328 (= e!322846 e!322847)))

(declare-fun res!351624 () Bool)

(assert (=> b!560328 (=> res!351624 e!322847)))

(assert (=> b!560328 (= res!351624 (or (undefined!6158 lt!254834) (not (is-Intermediate!5346 lt!254834))))))

(declare-fun b!560329 () Bool)

(assert (=> b!560329 (= e!322845 (not true))))

(assert (=> b!560329 e!322846))

(declare-fun res!351623 () Bool)

(assert (=> b!560329 (=> (not res!351623) (not e!322846))))

(assert (=> b!560329 (= res!351623 (= lt!254836 (Found!5346 j!142)))))

(assert (=> b!560329 (= lt!254836 (seekEntryOrOpen!0 (select (arr!16890 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560329 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17466 0))(
  ( (Unit!17467) )
))
(declare-fun lt!254839 () Unit!17466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17466)

(assert (=> b!560329 (= lt!254839 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560330 () Bool)

(assert (=> b!560330 (= e!322851 (= (seekEntryOrOpen!0 lt!254840 lt!254833 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52556 lt!254834) (index!23613 lt!254834) (index!23613 lt!254834) lt!254840 lt!254833 mask!3119)))))

(declare-fun b!560331 () Bool)

(declare-fun res!351632 () Bool)

(assert (=> b!560331 (=> (not res!351632) (not e!322850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560331 (= res!351632 (validKeyInArray!0 (select (arr!16890 a!3118) j!142)))))

(declare-fun b!560332 () Bool)

(assert (=> b!560332 (= e!322847 e!322852)))

(declare-fun res!351628 () Bool)

(assert (=> b!560332 (=> res!351628 e!322852)))

(declare-fun lt!254835 () (_ BitVec 64))

(assert (=> b!560332 (= res!351628 (or (= lt!254835 (select (arr!16890 a!3118) j!142)) (= lt!254835 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560332 (= lt!254835 (select (arr!16890 a!3118) (index!23613 lt!254834)))))

(declare-fun b!560333 () Bool)

(declare-fun res!351626 () Bool)

(assert (=> b!560333 (=> (not res!351626) (not e!322850))))

(assert (=> b!560333 (= res!351626 (validKeyInArray!0 k!1914))))

(assert (= (and start!51368 res!351631) b!560321))

(assert (= (and b!560321 res!351627) b!560331))

(assert (= (and b!560331 res!351632) b!560333))

(assert (= (and b!560333 res!351626) b!560325))

(assert (= (and b!560325 res!351629) b!560326))

(assert (= (and b!560326 res!351625) b!560323))

(assert (= (and b!560323 res!351634) b!560322))

(assert (= (and b!560322 res!351633) b!560324))

(assert (= (and b!560324 res!351630) b!560329))

(assert (= (and b!560329 res!351623) b!560328))

(assert (= (and b!560328 (not res!351624)) b!560332))

(assert (= (and b!560332 (not res!351628)) b!560327))

(assert (= (and b!560327 res!351635) b!560330))

(declare-fun m!538135 () Bool)

(assert (=> b!560333 m!538135))

(declare-fun m!538137 () Bool)

(assert (=> b!560330 m!538137))

(declare-fun m!538139 () Bool)

(assert (=> b!560330 m!538139))

(declare-fun m!538141 () Bool)

(assert (=> b!560322 m!538141))

(declare-fun m!538143 () Bool)

(assert (=> b!560332 m!538143))

(declare-fun m!538145 () Bool)

(assert (=> b!560332 m!538145))

(declare-fun m!538147 () Bool)

(assert (=> b!560325 m!538147))

(assert (=> b!560327 m!538143))

(assert (=> b!560327 m!538143))

(declare-fun m!538149 () Bool)

(assert (=> b!560327 m!538149))

(declare-fun m!538151 () Bool)

(assert (=> b!560326 m!538151))

(assert (=> b!560331 m!538143))

(assert (=> b!560331 m!538143))

(declare-fun m!538153 () Bool)

(assert (=> b!560331 m!538153))

(declare-fun m!538155 () Bool)

(assert (=> b!560323 m!538155))

(declare-fun m!538157 () Bool)

(assert (=> b!560324 m!538157))

(assert (=> b!560324 m!538143))

(declare-fun m!538159 () Bool)

(assert (=> b!560324 m!538159))

(assert (=> b!560324 m!538143))

(declare-fun m!538161 () Bool)

(assert (=> b!560324 m!538161))

(assert (=> b!560324 m!538143))

(declare-fun m!538163 () Bool)

(assert (=> b!560324 m!538163))

(declare-fun m!538165 () Bool)

(assert (=> b!560324 m!538165))

(declare-fun m!538167 () Bool)

(assert (=> b!560324 m!538167))

(assert (=> b!560329 m!538143))

(assert (=> b!560329 m!538143))

(declare-fun m!538169 () Bool)

(assert (=> b!560329 m!538169))

(declare-fun m!538171 () Bool)

(assert (=> b!560329 m!538171))

(declare-fun m!538173 () Bool)

(assert (=> b!560329 m!538173))

(declare-fun m!538175 () Bool)

(assert (=> start!51368 m!538175))

(declare-fun m!538177 () Bool)

(assert (=> start!51368 m!538177))

(push 1)

