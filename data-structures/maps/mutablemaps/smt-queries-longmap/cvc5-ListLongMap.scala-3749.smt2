; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51506 () Bool)

(assert start!51506)

(declare-fun b!562949 () Bool)

(declare-fun res!354258 () Bool)

(declare-fun e!324443 () Bool)

(assert (=> b!562949 (=> (not res!354258) (not e!324443))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562949 (= res!354258 (validKeyInArray!0 k!1914))))

(declare-fun b!562950 () Bool)

(declare-fun res!354254 () Bool)

(assert (=> b!562950 (=> (not res!354254) (not e!324443))))

(declare-datatypes ((array!35325 0))(
  ( (array!35326 (arr!16959 (Array (_ BitVec 32) (_ BitVec 64))) (size!17323 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35325)

(declare-fun arrayContainsKey!0 (array!35325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562950 (= res!354254 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562951 () Bool)

(declare-fun e!324439 () Bool)

(declare-fun e!324445 () Bool)

(assert (=> b!562951 (= e!324439 e!324445)))

(declare-fun res!354251 () Bool)

(assert (=> b!562951 (=> (not res!354251) (not e!324445))))

(declare-fun lt!257021 () (_ BitVec 32))

(declare-fun lt!257029 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!257025 () array!35325)

(declare-datatypes ((SeekEntryResult!5415 0))(
  ( (MissingZero!5415 (index!23887 (_ BitVec 32))) (Found!5415 (index!23888 (_ BitVec 32))) (Intermediate!5415 (undefined!6227 Bool) (index!23889 (_ BitVec 32)) (x!52809 (_ BitVec 32))) (Undefined!5415) (MissingVacant!5415 (index!23890 (_ BitVec 32))) )
))
(declare-fun lt!257020 () SeekEntryResult!5415)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35325 (_ BitVec 32)) SeekEntryResult!5415)

(assert (=> b!562951 (= res!354251 (= lt!257020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257021 lt!257029 lt!257025 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!257024 () (_ BitVec 32))

(assert (=> b!562951 (= lt!257020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257024 (select (arr!16959 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562951 (= lt!257021 (toIndex!0 lt!257029 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562951 (= lt!257029 (select (store (arr!16959 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562951 (= lt!257024 (toIndex!0 (select (arr!16959 a!3118) j!142) mask!3119))))

(assert (=> b!562951 (= lt!257025 (array!35326 (store (arr!16959 a!3118) i!1132 k!1914) (size!17323 a!3118)))))

(declare-fun b!562952 () Bool)

(declare-fun e!324442 () Bool)

(declare-fun e!324441 () Bool)

(assert (=> b!562952 (= e!324442 e!324441)))

(declare-fun res!354260 () Bool)

(assert (=> b!562952 (=> res!354260 e!324441)))

(declare-fun lt!257033 () (_ BitVec 64))

(assert (=> b!562952 (= res!354260 (or (= lt!257033 (select (arr!16959 a!3118) j!142)) (= lt!257033 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562952 (= lt!257033 (select (arr!16959 a!3118) (index!23889 lt!257020)))))

(declare-fun b!562953 () Bool)

(declare-fun e!324440 () Bool)

(assert (=> b!562953 (= e!324440 (validKeyInArray!0 lt!257029))))

(declare-fun b!562954 () Bool)

(declare-fun res!354257 () Bool)

(assert (=> b!562954 (=> (not res!354257) (not e!324439))))

(declare-datatypes ((List!11092 0))(
  ( (Nil!11089) (Cons!11088 (h!12091 (_ BitVec 64)) (t!17328 List!11092)) )
))
(declare-fun arrayNoDuplicates!0 (array!35325 (_ BitVec 32) List!11092) Bool)

(assert (=> b!562954 (= res!354257 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11089))))

(declare-fun b!562955 () Bool)

(declare-fun res!354253 () Bool)

(assert (=> b!562955 (=> (not res!354253) (not e!324443))))

(assert (=> b!562955 (= res!354253 (validKeyInArray!0 (select (arr!16959 a!3118) j!142)))))

(declare-fun b!562956 () Bool)

(declare-fun e!324438 () Bool)

(assert (=> b!562956 (= e!324441 e!324438)))

(declare-fun res!354259 () Bool)

(assert (=> b!562956 (=> res!354259 e!324438)))

(declare-fun lt!257026 () SeekEntryResult!5415)

(declare-fun lt!257022 () SeekEntryResult!5415)

(assert (=> b!562956 (= res!354259 (or (bvslt (index!23889 lt!257020) #b00000000000000000000000000000000) (bvsge (index!23889 lt!257020) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52809 lt!257020) #b01111111111111111111111111111110) (bvslt (x!52809 lt!257020) #b00000000000000000000000000000000) (not (= lt!257033 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16959 a!3118) i!1132 k!1914) (index!23889 lt!257020)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!257022 lt!257026))))))

(declare-fun lt!257023 () SeekEntryResult!5415)

(declare-fun lt!257027 () SeekEntryResult!5415)

(assert (=> b!562956 (= lt!257023 lt!257027)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35325 (_ BitVec 32)) SeekEntryResult!5415)

(assert (=> b!562956 (= lt!257027 (seekKeyOrZeroReturnVacant!0 (x!52809 lt!257020) (index!23889 lt!257020) (index!23889 lt!257020) lt!257029 lt!257025 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35325 (_ BitVec 32)) SeekEntryResult!5415)

(assert (=> b!562956 (= lt!257023 (seekEntryOrOpen!0 lt!257029 lt!257025 mask!3119))))

(declare-fun lt!257032 () SeekEntryResult!5415)

(assert (=> b!562956 (= lt!257032 lt!257022)))

(assert (=> b!562956 (= lt!257022 (seekKeyOrZeroReturnVacant!0 (x!52809 lt!257020) (index!23889 lt!257020) (index!23889 lt!257020) (select (arr!16959 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562957 () Bool)

(assert (=> b!562957 (= e!324443 e!324439)))

(declare-fun res!354263 () Bool)

(assert (=> b!562957 (=> (not res!354263) (not e!324439))))

(declare-fun lt!257031 () SeekEntryResult!5415)

(assert (=> b!562957 (= res!354263 (or (= lt!257031 (MissingZero!5415 i!1132)) (= lt!257031 (MissingVacant!5415 i!1132))))))

(assert (=> b!562957 (= lt!257031 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562958 () Bool)

(assert (=> b!562958 (= e!324438 e!324440)))

(declare-fun res!354262 () Bool)

(assert (=> b!562958 (=> res!354262 e!324440)))

(assert (=> b!562958 (= res!354262 (bvslt mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562958 (= lt!257022 lt!257027)))

(declare-datatypes ((Unit!17604 0))(
  ( (Unit!17605) )
))
(declare-fun lt!257028 () Unit!17604)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17604)

(assert (=> b!562958 (= lt!257028 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52809 lt!257020) (index!23889 lt!257020) (index!23889 lt!257020) mask!3119))))

(declare-fun b!562959 () Bool)

(declare-fun res!354256 () Bool)

(assert (=> b!562959 (=> (not res!354256) (not e!324443))))

(assert (=> b!562959 (= res!354256 (and (= (size!17323 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17323 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17323 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562960 () Bool)

(declare-fun res!354261 () Bool)

(assert (=> b!562960 (=> (not res!354261) (not e!324439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35325 (_ BitVec 32)) Bool)

(assert (=> b!562960 (= res!354261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562961 () Bool)

(assert (=> b!562961 (= e!324445 (not e!324442))))

(declare-fun res!354255 () Bool)

(assert (=> b!562961 (=> res!354255 e!324442)))

(assert (=> b!562961 (= res!354255 (or (undefined!6227 lt!257020) (not (is-Intermediate!5415 lt!257020))))))

(assert (=> b!562961 (= lt!257032 lt!257026)))

(assert (=> b!562961 (= lt!257026 (Found!5415 j!142))))

(assert (=> b!562961 (= lt!257032 (seekEntryOrOpen!0 (select (arr!16959 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562961 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!257030 () Unit!17604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17604)

(assert (=> b!562961 (= lt!257030 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!354252 () Bool)

(assert (=> start!51506 (=> (not res!354252) (not e!324443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51506 (= res!354252 (validMask!0 mask!3119))))

(assert (=> start!51506 e!324443))

(assert (=> start!51506 true))

(declare-fun array_inv!12733 (array!35325) Bool)

(assert (=> start!51506 (array_inv!12733 a!3118)))

(assert (= (and start!51506 res!354252) b!562959))

(assert (= (and b!562959 res!354256) b!562955))

(assert (= (and b!562955 res!354253) b!562949))

(assert (= (and b!562949 res!354258) b!562950))

(assert (= (and b!562950 res!354254) b!562957))

(assert (= (and b!562957 res!354263) b!562960))

(assert (= (and b!562960 res!354261) b!562954))

(assert (= (and b!562954 res!354257) b!562951))

(assert (= (and b!562951 res!354251) b!562961))

(assert (= (and b!562961 (not res!354255)) b!562952))

(assert (= (and b!562952 (not res!354260)) b!562956))

(assert (= (and b!562956 (not res!354259)) b!562958))

(assert (= (and b!562958 (not res!354262)) b!562953))

(declare-fun m!541255 () Bool)

(assert (=> b!562951 m!541255))

(declare-fun m!541257 () Bool)

(assert (=> b!562951 m!541257))

(declare-fun m!541259 () Bool)

(assert (=> b!562951 m!541259))

(assert (=> b!562951 m!541255))

(declare-fun m!541261 () Bool)

(assert (=> b!562951 m!541261))

(assert (=> b!562951 m!541255))

(declare-fun m!541263 () Bool)

(assert (=> b!562951 m!541263))

(declare-fun m!541265 () Bool)

(assert (=> b!562951 m!541265))

(declare-fun m!541267 () Bool)

(assert (=> b!562951 m!541267))

(declare-fun m!541269 () Bool)

(assert (=> b!562954 m!541269))

(assert (=> b!562961 m!541255))

(assert (=> b!562961 m!541255))

(declare-fun m!541271 () Bool)

(assert (=> b!562961 m!541271))

(declare-fun m!541273 () Bool)

(assert (=> b!562961 m!541273))

(declare-fun m!541275 () Bool)

(assert (=> b!562961 m!541275))

(assert (=> b!562956 m!541255))

(declare-fun m!541277 () Bool)

(assert (=> b!562956 m!541277))

(assert (=> b!562956 m!541255))

(declare-fun m!541279 () Bool)

(assert (=> b!562956 m!541279))

(assert (=> b!562956 m!541265))

(declare-fun m!541281 () Bool)

(assert (=> b!562956 m!541281))

(declare-fun m!541283 () Bool)

(assert (=> b!562956 m!541283))

(assert (=> b!562955 m!541255))

(assert (=> b!562955 m!541255))

(declare-fun m!541285 () Bool)

(assert (=> b!562955 m!541285))

(declare-fun m!541287 () Bool)

(assert (=> b!562958 m!541287))

(declare-fun m!541289 () Bool)

(assert (=> b!562957 m!541289))

(declare-fun m!541291 () Bool)

(assert (=> b!562949 m!541291))

(assert (=> b!562952 m!541255))

(declare-fun m!541293 () Bool)

(assert (=> b!562952 m!541293))

(declare-fun m!541295 () Bool)

(assert (=> b!562950 m!541295))

(declare-fun m!541297 () Bool)

(assert (=> start!51506 m!541297))

(declare-fun m!541299 () Bool)

(assert (=> start!51506 m!541299))

(declare-fun m!541301 () Bool)

(assert (=> b!562953 m!541301))

(declare-fun m!541303 () Bool)

(assert (=> b!562960 m!541303))

(push 1)

