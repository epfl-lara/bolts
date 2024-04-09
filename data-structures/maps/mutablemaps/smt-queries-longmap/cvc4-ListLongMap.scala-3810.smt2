; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52302 () Bool)

(assert start!52302)

(declare-fun b!570295 () Bool)

(declare-fun res!360226 () Bool)

(declare-fun e!328006 () Bool)

(assert (=> b!570295 (=> (not res!360226) (not e!328006))))

(declare-datatypes ((array!35716 0))(
  ( (array!35717 (arr!17144 (Array (_ BitVec 32) (_ BitVec 64))) (size!17508 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35716)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35716 (_ BitVec 32)) Bool)

(assert (=> b!570295 (= res!360226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!328008 () Bool)

(declare-fun b!570296 () Bool)

(declare-datatypes ((SeekEntryResult!5600 0))(
  ( (MissingZero!5600 (index!24627 (_ BitVec 32))) (Found!5600 (index!24628 (_ BitVec 32))) (Intermediate!5600 (undefined!6412 Bool) (index!24629 (_ BitVec 32)) (x!53527 (_ BitVec 32))) (Undefined!5600) (MissingVacant!5600 (index!24630 (_ BitVec 32))) )
))
(declare-fun lt!260023 () SeekEntryResult!5600)

(declare-fun lt!260027 () SeekEntryResult!5600)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35716 (_ BitVec 32)) SeekEntryResult!5600)

(assert (=> b!570296 (= e!328008 (= lt!260027 (seekKeyOrZeroReturnVacant!0 (x!53527 lt!260023) (index!24629 lt!260023) (index!24629 lt!260023) (select (arr!17144 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570297 () Bool)

(declare-fun e!328004 () Bool)

(assert (=> b!570297 (= e!328006 e!328004)))

(declare-fun res!360230 () Bool)

(assert (=> b!570297 (=> (not res!360230) (not e!328004))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!260024 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35716 (_ BitVec 32)) SeekEntryResult!5600)

(assert (=> b!570297 (= res!360230 (= lt!260023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260024 (select (store (arr!17144 a!3118) i!1132 k!1914) j!142) (array!35717 (store (arr!17144 a!3118) i!1132 k!1914) (size!17508 a!3118)) mask!3119)))))

(declare-fun lt!260025 () (_ BitVec 32))

(assert (=> b!570297 (= lt!260023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260025 (select (arr!17144 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570297 (= lt!260024 (toIndex!0 (select (store (arr!17144 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570297 (= lt!260025 (toIndex!0 (select (arr!17144 a!3118) j!142) mask!3119))))

(declare-fun res!360236 () Bool)

(declare-fun e!328007 () Bool)

(assert (=> start!52302 (=> (not res!360236) (not e!328007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52302 (= res!360236 (validMask!0 mask!3119))))

(assert (=> start!52302 e!328007))

(assert (=> start!52302 true))

(declare-fun array_inv!12918 (array!35716) Bool)

(assert (=> start!52302 (array_inv!12918 a!3118)))

(declare-fun b!570298 () Bool)

(declare-fun res!360227 () Bool)

(assert (=> b!570298 (=> (not res!360227) (not e!328007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570298 (= res!360227 (validKeyInArray!0 (select (arr!17144 a!3118) j!142)))))

(declare-fun b!570299 () Bool)

(declare-fun res!360231 () Bool)

(assert (=> b!570299 (=> (not res!360231) (not e!328007))))

(declare-fun arrayContainsKey!0 (array!35716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570299 (= res!360231 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570300 () Bool)

(assert (=> b!570300 (= e!328004 (not true))))

(declare-fun e!328009 () Bool)

(assert (=> b!570300 e!328009))

(declare-fun res!360235 () Bool)

(assert (=> b!570300 (=> (not res!360235) (not e!328009))))

(assert (=> b!570300 (= res!360235 (= lt!260027 (Found!5600 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35716 (_ BitVec 32)) SeekEntryResult!5600)

(assert (=> b!570300 (= lt!260027 (seekEntryOrOpen!0 (select (arr!17144 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570300 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17902 0))(
  ( (Unit!17903) )
))
(declare-fun lt!260026 () Unit!17902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35716 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17902)

(assert (=> b!570300 (= lt!260026 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570301 () Bool)

(assert (=> b!570301 (= e!328007 e!328006)))

(declare-fun res!360228 () Bool)

(assert (=> b!570301 (=> (not res!360228) (not e!328006))))

(declare-fun lt!260022 () SeekEntryResult!5600)

(assert (=> b!570301 (= res!360228 (or (= lt!260022 (MissingZero!5600 i!1132)) (= lt!260022 (MissingVacant!5600 i!1132))))))

(assert (=> b!570301 (= lt!260022 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570302 () Bool)

(declare-fun res!360234 () Bool)

(assert (=> b!570302 (=> (not res!360234) (not e!328006))))

(declare-datatypes ((List!11277 0))(
  ( (Nil!11274) (Cons!11273 (h!12297 (_ BitVec 64)) (t!17513 List!11277)) )
))
(declare-fun arrayNoDuplicates!0 (array!35716 (_ BitVec 32) List!11277) Bool)

(assert (=> b!570302 (= res!360234 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11274))))

(declare-fun b!570303 () Bool)

(declare-fun res!360233 () Bool)

(assert (=> b!570303 (=> (not res!360233) (not e!328007))))

(assert (=> b!570303 (= res!360233 (and (= (size!17508 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17508 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17508 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570304 () Bool)

(declare-fun res!360229 () Bool)

(assert (=> b!570304 (=> (not res!360229) (not e!328007))))

(assert (=> b!570304 (= res!360229 (validKeyInArray!0 k!1914))))

(declare-fun b!570305 () Bool)

(assert (=> b!570305 (= e!328009 e!328008)))

(declare-fun res!360232 () Bool)

(assert (=> b!570305 (=> res!360232 e!328008)))

(assert (=> b!570305 (= res!360232 (or (undefined!6412 lt!260023) (not (is-Intermediate!5600 lt!260023)) (= (select (arr!17144 a!3118) (index!24629 lt!260023)) (select (arr!17144 a!3118) j!142)) (= (select (arr!17144 a!3118) (index!24629 lt!260023)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!52302 res!360236) b!570303))

(assert (= (and b!570303 res!360233) b!570298))

(assert (= (and b!570298 res!360227) b!570304))

(assert (= (and b!570304 res!360229) b!570299))

(assert (= (and b!570299 res!360231) b!570301))

(assert (= (and b!570301 res!360228) b!570295))

(assert (= (and b!570295 res!360226) b!570302))

(assert (= (and b!570302 res!360234) b!570297))

(assert (= (and b!570297 res!360230) b!570300))

(assert (= (and b!570300 res!360235) b!570305))

(assert (= (and b!570305 (not res!360232)) b!570296))

(declare-fun m!549171 () Bool)

(assert (=> b!570296 m!549171))

(assert (=> b!570296 m!549171))

(declare-fun m!549173 () Bool)

(assert (=> b!570296 m!549173))

(declare-fun m!549175 () Bool)

(assert (=> b!570302 m!549175))

(declare-fun m!549177 () Bool)

(assert (=> b!570304 m!549177))

(assert (=> b!570298 m!549171))

(assert (=> b!570298 m!549171))

(declare-fun m!549179 () Bool)

(assert (=> b!570298 m!549179))

(declare-fun m!549181 () Bool)

(assert (=> b!570299 m!549181))

(declare-fun m!549183 () Bool)

(assert (=> b!570295 m!549183))

(declare-fun m!549185 () Bool)

(assert (=> start!52302 m!549185))

(declare-fun m!549187 () Bool)

(assert (=> start!52302 m!549187))

(assert (=> b!570300 m!549171))

(assert (=> b!570300 m!549171))

(declare-fun m!549189 () Bool)

(assert (=> b!570300 m!549189))

(declare-fun m!549191 () Bool)

(assert (=> b!570300 m!549191))

(declare-fun m!549193 () Bool)

(assert (=> b!570300 m!549193))

(declare-fun m!549195 () Bool)

(assert (=> b!570305 m!549195))

(assert (=> b!570305 m!549171))

(assert (=> b!570297 m!549171))

(declare-fun m!549197 () Bool)

(assert (=> b!570297 m!549197))

(declare-fun m!549199 () Bool)

(assert (=> b!570297 m!549199))

(declare-fun m!549201 () Bool)

(assert (=> b!570297 m!549201))

(assert (=> b!570297 m!549171))

(assert (=> b!570297 m!549171))

(declare-fun m!549203 () Bool)

(assert (=> b!570297 m!549203))

(assert (=> b!570297 m!549199))

(declare-fun m!549205 () Bool)

(assert (=> b!570297 m!549205))

(assert (=> b!570297 m!549199))

(declare-fun m!549207 () Bool)

(assert (=> b!570297 m!549207))

(declare-fun m!549209 () Bool)

(assert (=> b!570301 m!549209))

(push 1)

