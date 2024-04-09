; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52300 () Bool)

(assert start!52300)

(declare-fun b!570262 () Bool)

(declare-fun e!327990 () Bool)

(assert (=> b!570262 (= e!327990 (not true))))

(declare-fun e!327991 () Bool)

(assert (=> b!570262 e!327991))

(declare-fun res!360196 () Bool)

(assert (=> b!570262 (=> (not res!360196) (not e!327991))))

(declare-datatypes ((SeekEntryResult!5599 0))(
  ( (MissingZero!5599 (index!24623 (_ BitVec 32))) (Found!5599 (index!24624 (_ BitVec 32))) (Intermediate!5599 (undefined!6411 Bool) (index!24625 (_ BitVec 32)) (x!53526 (_ BitVec 32))) (Undefined!5599) (MissingVacant!5599 (index!24626 (_ BitVec 32))) )
))
(declare-fun lt!260005 () SeekEntryResult!5599)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570262 (= res!360196 (= lt!260005 (Found!5599 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35714 0))(
  ( (array!35715 (arr!17143 (Array (_ BitVec 32) (_ BitVec 64))) (size!17507 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35714)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35714 (_ BitVec 32)) SeekEntryResult!5599)

(assert (=> b!570262 (= lt!260005 (seekEntryOrOpen!0 (select (arr!17143 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35714 (_ BitVec 32)) Bool)

(assert (=> b!570262 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17900 0))(
  ( (Unit!17901) )
))
(declare-fun lt!260009 () Unit!17900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17900)

(assert (=> b!570262 (= lt!260009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!360198 () Bool)

(declare-fun e!327988 () Bool)

(assert (=> start!52300 (=> (not res!360198) (not e!327988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52300 (= res!360198 (validMask!0 mask!3119))))

(assert (=> start!52300 e!327988))

(assert (=> start!52300 true))

(declare-fun array_inv!12917 (array!35714) Bool)

(assert (=> start!52300 (array_inv!12917 a!3118)))

(declare-fun b!570263 () Bool)

(declare-fun e!327989 () Bool)

(assert (=> b!570263 (= e!327991 e!327989)))

(declare-fun res!360199 () Bool)

(assert (=> b!570263 (=> res!360199 e!327989)))

(declare-fun lt!260008 () SeekEntryResult!5599)

(get-info :version)

(assert (=> b!570263 (= res!360199 (or (undefined!6411 lt!260008) (not ((_ is Intermediate!5599) lt!260008)) (= (select (arr!17143 a!3118) (index!24625 lt!260008)) (select (arr!17143 a!3118) j!142)) (= (select (arr!17143 a!3118) (index!24625 lt!260008)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570264 () Bool)

(declare-fun res!360200 () Bool)

(assert (=> b!570264 (=> (not res!360200) (not e!327988))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570264 (= res!360200 (validKeyInArray!0 k0!1914))))

(declare-fun b!570265 () Bool)

(declare-fun res!360197 () Bool)

(declare-fun e!327987 () Bool)

(assert (=> b!570265 (=> (not res!360197) (not e!327987))))

(declare-datatypes ((List!11276 0))(
  ( (Nil!11273) (Cons!11272 (h!12296 (_ BitVec 64)) (t!17512 List!11276)) )
))
(declare-fun arrayNoDuplicates!0 (array!35714 (_ BitVec 32) List!11276) Bool)

(assert (=> b!570265 (= res!360197 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11273))))

(declare-fun b!570266 () Bool)

(declare-fun res!360193 () Bool)

(assert (=> b!570266 (=> (not res!360193) (not e!327987))))

(assert (=> b!570266 (= res!360193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570267 () Bool)

(assert (=> b!570267 (= e!327988 e!327987)))

(declare-fun res!360202 () Bool)

(assert (=> b!570267 (=> (not res!360202) (not e!327987))))

(declare-fun lt!260006 () SeekEntryResult!5599)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570267 (= res!360202 (or (= lt!260006 (MissingZero!5599 i!1132)) (= lt!260006 (MissingVacant!5599 i!1132))))))

(assert (=> b!570267 (= lt!260006 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!570268 () Bool)

(declare-fun res!360201 () Bool)

(assert (=> b!570268 (=> (not res!360201) (not e!327988))))

(declare-fun arrayContainsKey!0 (array!35714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570268 (= res!360201 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570269 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35714 (_ BitVec 32)) SeekEntryResult!5599)

(assert (=> b!570269 (= e!327989 (= lt!260005 (seekKeyOrZeroReturnVacant!0 (x!53526 lt!260008) (index!24625 lt!260008) (index!24625 lt!260008) (select (arr!17143 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570270 () Bool)

(declare-fun res!360203 () Bool)

(assert (=> b!570270 (=> (not res!360203) (not e!327988))))

(assert (=> b!570270 (= res!360203 (and (= (size!17507 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17507 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17507 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570271 () Bool)

(declare-fun res!360195 () Bool)

(assert (=> b!570271 (=> (not res!360195) (not e!327988))))

(assert (=> b!570271 (= res!360195 (validKeyInArray!0 (select (arr!17143 a!3118) j!142)))))

(declare-fun b!570272 () Bool)

(assert (=> b!570272 (= e!327987 e!327990)))

(declare-fun res!360194 () Bool)

(assert (=> b!570272 (=> (not res!360194) (not e!327990))))

(declare-fun lt!260007 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35714 (_ BitVec 32)) SeekEntryResult!5599)

(assert (=> b!570272 (= res!360194 (= lt!260008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260007 (select (store (arr!17143 a!3118) i!1132 k0!1914) j!142) (array!35715 (store (arr!17143 a!3118) i!1132 k0!1914) (size!17507 a!3118)) mask!3119)))))

(declare-fun lt!260004 () (_ BitVec 32))

(assert (=> b!570272 (= lt!260008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260004 (select (arr!17143 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570272 (= lt!260007 (toIndex!0 (select (store (arr!17143 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570272 (= lt!260004 (toIndex!0 (select (arr!17143 a!3118) j!142) mask!3119))))

(assert (= (and start!52300 res!360198) b!570270))

(assert (= (and b!570270 res!360203) b!570271))

(assert (= (and b!570271 res!360195) b!570264))

(assert (= (and b!570264 res!360200) b!570268))

(assert (= (and b!570268 res!360201) b!570267))

(assert (= (and b!570267 res!360202) b!570266))

(assert (= (and b!570266 res!360193) b!570265))

(assert (= (and b!570265 res!360197) b!570272))

(assert (= (and b!570272 res!360194) b!570262))

(assert (= (and b!570262 res!360196) b!570263))

(assert (= (and b!570263 (not res!360199)) b!570269))

(declare-fun m!549131 () Bool)

(assert (=> b!570265 m!549131))

(declare-fun m!549133 () Bool)

(assert (=> b!570263 m!549133))

(declare-fun m!549135 () Bool)

(assert (=> b!570263 m!549135))

(declare-fun m!549137 () Bool)

(assert (=> b!570267 m!549137))

(assert (=> b!570269 m!549135))

(assert (=> b!570269 m!549135))

(declare-fun m!549139 () Bool)

(assert (=> b!570269 m!549139))

(declare-fun m!549141 () Bool)

(assert (=> b!570266 m!549141))

(assert (=> b!570262 m!549135))

(assert (=> b!570262 m!549135))

(declare-fun m!549143 () Bool)

(assert (=> b!570262 m!549143))

(declare-fun m!549145 () Bool)

(assert (=> b!570262 m!549145))

(declare-fun m!549147 () Bool)

(assert (=> b!570262 m!549147))

(declare-fun m!549149 () Bool)

(assert (=> b!570268 m!549149))

(assert (=> b!570271 m!549135))

(assert (=> b!570271 m!549135))

(declare-fun m!549151 () Bool)

(assert (=> b!570271 m!549151))

(declare-fun m!549153 () Bool)

(assert (=> start!52300 m!549153))

(declare-fun m!549155 () Bool)

(assert (=> start!52300 m!549155))

(declare-fun m!549157 () Bool)

(assert (=> b!570264 m!549157))

(assert (=> b!570272 m!549135))

(declare-fun m!549159 () Bool)

(assert (=> b!570272 m!549159))

(assert (=> b!570272 m!549135))

(declare-fun m!549161 () Bool)

(assert (=> b!570272 m!549161))

(assert (=> b!570272 m!549135))

(declare-fun m!549163 () Bool)

(assert (=> b!570272 m!549163))

(declare-fun m!549165 () Bool)

(assert (=> b!570272 m!549165))

(assert (=> b!570272 m!549161))

(declare-fun m!549167 () Bool)

(assert (=> b!570272 m!549167))

(assert (=> b!570272 m!549161))

(declare-fun m!549169 () Bool)

(assert (=> b!570272 m!549169))

(check-sat (not b!570268) (not b!570262) (not b!570265) (not b!570267) (not start!52300) (not b!570271) (not b!570266) (not b!570269) (not b!570272) (not b!570264))
(check-sat)
