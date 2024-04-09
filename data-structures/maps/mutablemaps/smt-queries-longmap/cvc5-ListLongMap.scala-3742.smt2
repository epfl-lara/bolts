; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51464 () Bool)

(assert start!51464)

(declare-fun b!562191 () Bool)

(declare-fun e!323998 () Bool)

(assert (=> b!562191 (= e!323998 true)))

(declare-datatypes ((SeekEntryResult!5394 0))(
  ( (MissingZero!5394 (index!23803 (_ BitVec 32))) (Found!5394 (index!23804 (_ BitVec 32))) (Intermediate!5394 (undefined!6206 Bool) (index!23805 (_ BitVec 32)) (x!52732 (_ BitVec 32))) (Undefined!5394) (MissingVacant!5394 (index!23806 (_ BitVec 32))) )
))
(declare-fun lt!256143 () SeekEntryResult!5394)

(declare-fun lt!256148 () SeekEntryResult!5394)

(assert (=> b!562191 (= lt!256143 lt!256148)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!256145 () SeekEntryResult!5394)

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((Unit!17562 0))(
  ( (Unit!17563) )
))
(declare-fun lt!256142 () Unit!17562)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35283 0))(
  ( (array!35284 (arr!16938 (Array (_ BitVec 32) (_ BitVec 64))) (size!17302 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35283)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17562)

(assert (=> b!562191 (= lt!256142 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52732 lt!256145) (index!23805 lt!256145) (index!23805 lt!256145) mask!3119))))

(declare-fun b!562192 () Bool)

(declare-fun e!324000 () Bool)

(declare-fun e!323995 () Bool)

(assert (=> b!562192 (= e!324000 e!323995)))

(declare-fun res!353500 () Bool)

(assert (=> b!562192 (=> res!353500 e!323995)))

(declare-fun lt!256141 () (_ BitVec 64))

(assert (=> b!562192 (= res!353500 (or (= lt!256141 (select (arr!16938 a!3118) j!142)) (= lt!256141 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562192 (= lt!256141 (select (arr!16938 a!3118) (index!23805 lt!256145)))))

(declare-fun b!562194 () Bool)

(declare-fun res!353495 () Bool)

(declare-fun e!323999 () Bool)

(assert (=> b!562194 (=> (not res!353495) (not e!323999))))

(declare-datatypes ((List!11071 0))(
  ( (Nil!11068) (Cons!11067 (h!12070 (_ BitVec 64)) (t!17307 List!11071)) )
))
(declare-fun arrayNoDuplicates!0 (array!35283 (_ BitVec 32) List!11071) Bool)

(assert (=> b!562194 (= res!353495 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11068))))

(declare-fun b!562195 () Bool)

(declare-fun e!323996 () Bool)

(assert (=> b!562195 (= e!323996 (not e!324000))))

(declare-fun res!353496 () Bool)

(assert (=> b!562195 (=> res!353496 e!324000)))

(assert (=> b!562195 (= res!353496 (or (undefined!6206 lt!256145) (not (is-Intermediate!5394 lt!256145))))))

(declare-fun lt!256138 () SeekEntryResult!5394)

(declare-fun lt!256149 () SeekEntryResult!5394)

(assert (=> b!562195 (= lt!256138 lt!256149)))

(assert (=> b!562195 (= lt!256149 (Found!5394 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35283 (_ BitVec 32)) SeekEntryResult!5394)

(assert (=> b!562195 (= lt!256138 (seekEntryOrOpen!0 (select (arr!16938 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35283 (_ BitVec 32)) Bool)

(assert (=> b!562195 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256150 () Unit!17562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17562)

(assert (=> b!562195 (= lt!256150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562196 () Bool)

(declare-fun res!353501 () Bool)

(assert (=> b!562196 (=> (not res!353501) (not e!323999))))

(assert (=> b!562196 (= res!353501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562197 () Bool)

(declare-fun e!324001 () Bool)

(assert (=> b!562197 (= e!324001 e!323999)))

(declare-fun res!353503 () Bool)

(assert (=> b!562197 (=> (not res!353503) (not e!323999))))

(declare-fun lt!256140 () SeekEntryResult!5394)

(assert (=> b!562197 (= res!353503 (or (= lt!256140 (MissingZero!5394 i!1132)) (= lt!256140 (MissingVacant!5394 i!1132))))))

(assert (=> b!562197 (= lt!256140 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562198 () Bool)

(assert (=> b!562198 (= e!323995 e!323998)))

(declare-fun res!353497 () Bool)

(assert (=> b!562198 (=> res!353497 e!323998)))

(assert (=> b!562198 (= res!353497 (or (bvslt (index!23805 lt!256145) #b00000000000000000000000000000000) (bvsge (index!23805 lt!256145) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52732 lt!256145) #b01111111111111111111111111111110) (bvslt (x!52732 lt!256145) #b00000000000000000000000000000000) (not (= lt!256141 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16938 a!3118) i!1132 k!1914) (index!23805 lt!256145)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256143 lt!256149))))))

(declare-fun lt!256151 () SeekEntryResult!5394)

(assert (=> b!562198 (= lt!256151 lt!256148)))

(declare-fun lt!256144 () (_ BitVec 64))

(declare-fun lt!256146 () array!35283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35283 (_ BitVec 32)) SeekEntryResult!5394)

(assert (=> b!562198 (= lt!256148 (seekKeyOrZeroReturnVacant!0 (x!52732 lt!256145) (index!23805 lt!256145) (index!23805 lt!256145) lt!256144 lt!256146 mask!3119))))

(assert (=> b!562198 (= lt!256151 (seekEntryOrOpen!0 lt!256144 lt!256146 mask!3119))))

(assert (=> b!562198 (= lt!256138 lt!256143)))

(assert (=> b!562198 (= lt!256143 (seekKeyOrZeroReturnVacant!0 (x!52732 lt!256145) (index!23805 lt!256145) (index!23805 lt!256145) (select (arr!16938 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562193 () Bool)

(declare-fun res!353494 () Bool)

(assert (=> b!562193 (=> (not res!353494) (not e!324001))))

(declare-fun arrayContainsKey!0 (array!35283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562193 (= res!353494 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!353502 () Bool)

(assert (=> start!51464 (=> (not res!353502) (not e!324001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51464 (= res!353502 (validMask!0 mask!3119))))

(assert (=> start!51464 e!324001))

(assert (=> start!51464 true))

(declare-fun array_inv!12712 (array!35283) Bool)

(assert (=> start!51464 (array_inv!12712 a!3118)))

(declare-fun b!562199 () Bool)

(declare-fun res!353504 () Bool)

(assert (=> b!562199 (=> (not res!353504) (not e!324001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562199 (= res!353504 (validKeyInArray!0 (select (arr!16938 a!3118) j!142)))))

(declare-fun b!562200 () Bool)

(assert (=> b!562200 (= e!323999 e!323996)))

(declare-fun res!353499 () Bool)

(assert (=> b!562200 (=> (not res!353499) (not e!323996))))

(declare-fun lt!256147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35283 (_ BitVec 32)) SeekEntryResult!5394)

(assert (=> b!562200 (= res!353499 (= lt!256145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256147 lt!256144 lt!256146 mask!3119)))))

(declare-fun lt!256139 () (_ BitVec 32))

(assert (=> b!562200 (= lt!256145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256139 (select (arr!16938 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562200 (= lt!256147 (toIndex!0 lt!256144 mask!3119))))

(assert (=> b!562200 (= lt!256144 (select (store (arr!16938 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562200 (= lt!256139 (toIndex!0 (select (arr!16938 a!3118) j!142) mask!3119))))

(assert (=> b!562200 (= lt!256146 (array!35284 (store (arr!16938 a!3118) i!1132 k!1914) (size!17302 a!3118)))))

(declare-fun b!562201 () Bool)

(declare-fun res!353493 () Bool)

(assert (=> b!562201 (=> (not res!353493) (not e!324001))))

(assert (=> b!562201 (= res!353493 (validKeyInArray!0 k!1914))))

(declare-fun b!562202 () Bool)

(declare-fun res!353498 () Bool)

(assert (=> b!562202 (=> (not res!353498) (not e!324001))))

(assert (=> b!562202 (= res!353498 (and (= (size!17302 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17302 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17302 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51464 res!353502) b!562202))

(assert (= (and b!562202 res!353498) b!562199))

(assert (= (and b!562199 res!353504) b!562201))

(assert (= (and b!562201 res!353493) b!562193))

(assert (= (and b!562193 res!353494) b!562197))

(assert (= (and b!562197 res!353503) b!562196))

(assert (= (and b!562196 res!353501) b!562194))

(assert (= (and b!562194 res!353495) b!562200))

(assert (= (and b!562200 res!353499) b!562195))

(assert (= (and b!562195 (not res!353496)) b!562192))

(assert (= (and b!562192 (not res!353500)) b!562198))

(assert (= (and b!562198 (not res!353497)) b!562191))

(declare-fun m!540247 () Bool)

(assert (=> b!562199 m!540247))

(assert (=> b!562199 m!540247))

(declare-fun m!540249 () Bool)

(assert (=> b!562199 m!540249))

(declare-fun m!540251 () Bool)

(assert (=> b!562194 m!540251))

(declare-fun m!540253 () Bool)

(assert (=> b!562196 m!540253))

(declare-fun m!540255 () Bool)

(assert (=> b!562191 m!540255))

(assert (=> b!562195 m!540247))

(assert (=> b!562195 m!540247))

(declare-fun m!540257 () Bool)

(assert (=> b!562195 m!540257))

(declare-fun m!540259 () Bool)

(assert (=> b!562195 m!540259))

(declare-fun m!540261 () Bool)

(assert (=> b!562195 m!540261))

(declare-fun m!540263 () Bool)

(assert (=> b!562197 m!540263))

(assert (=> b!562192 m!540247))

(declare-fun m!540265 () Bool)

(assert (=> b!562192 m!540265))

(declare-fun m!540267 () Bool)

(assert (=> start!51464 m!540267))

(declare-fun m!540269 () Bool)

(assert (=> start!51464 m!540269))

(declare-fun m!540271 () Bool)

(assert (=> b!562201 m!540271))

(declare-fun m!540273 () Bool)

(assert (=> b!562193 m!540273))

(assert (=> b!562200 m!540247))

(declare-fun m!540275 () Bool)

(assert (=> b!562200 m!540275))

(declare-fun m!540277 () Bool)

(assert (=> b!562200 m!540277))

(assert (=> b!562200 m!540247))

(declare-fun m!540279 () Bool)

(assert (=> b!562200 m!540279))

(assert (=> b!562200 m!540247))

(declare-fun m!540281 () Bool)

(assert (=> b!562200 m!540281))

(declare-fun m!540283 () Bool)

(assert (=> b!562200 m!540283))

(declare-fun m!540285 () Bool)

(assert (=> b!562200 m!540285))

(assert (=> b!562198 m!540247))

(declare-fun m!540287 () Bool)

(assert (=> b!562198 m!540287))

(declare-fun m!540289 () Bool)

(assert (=> b!562198 m!540289))

(assert (=> b!562198 m!540247))

(declare-fun m!540291 () Bool)

(assert (=> b!562198 m!540291))

(assert (=> b!562198 m!540283))

(declare-fun m!540293 () Bool)

(assert (=> b!562198 m!540293))

(push 1)

