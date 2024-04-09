; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52454 () Bool)

(assert start!52454)

(declare-fun b!572270 () Bool)

(declare-fun e!329186 () Bool)

(declare-fun e!329191 () Bool)

(assert (=> b!572270 (= e!329186 e!329191)))

(declare-fun res!361935 () Bool)

(assert (=> b!572270 (=> (not res!361935) (not e!329191))))

(declare-datatypes ((SeekEntryResult!5643 0))(
  ( (MissingZero!5643 (index!24799 (_ BitVec 32))) (Found!5643 (index!24800 (_ BitVec 32))) (Intermediate!5643 (undefined!6455 Bool) (index!24801 (_ BitVec 32)) (x!53699 (_ BitVec 32))) (Undefined!5643) (MissingVacant!5643 (index!24802 (_ BitVec 32))) )
))
(declare-fun lt!261219 () SeekEntryResult!5643)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572270 (= res!361935 (or (= lt!261219 (MissingZero!5643 i!1132)) (= lt!261219 (MissingVacant!5643 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35805 0))(
  ( (array!35806 (arr!17187 (Array (_ BitVec 32) (_ BitVec 64))) (size!17551 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35805)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35805 (_ BitVec 32)) SeekEntryResult!5643)

(assert (=> b!572270 (= lt!261219 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572271 () Bool)

(declare-fun res!361932 () Bool)

(assert (=> b!572271 (=> (not res!361932) (not e!329191))))

(declare-datatypes ((List!11320 0))(
  ( (Nil!11317) (Cons!11316 (h!12343 (_ BitVec 64)) (t!17556 List!11320)) )
))
(declare-fun arrayNoDuplicates!0 (array!35805 (_ BitVec 32) List!11320) Bool)

(assert (=> b!572271 (= res!361932 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11317))))

(declare-fun res!361928 () Bool)

(assert (=> start!52454 (=> (not res!361928) (not e!329186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52454 (= res!361928 (validMask!0 mask!3119))))

(assert (=> start!52454 e!329186))

(assert (=> start!52454 true))

(declare-fun array_inv!12961 (array!35805) Bool)

(assert (=> start!52454 (array_inv!12961 a!3118)))

(declare-fun b!572272 () Bool)

(declare-fun lt!261220 () (_ BitVec 64))

(declare-fun e!329184 () Bool)

(declare-fun lt!261221 () array!35805)

(declare-fun lt!261222 () SeekEntryResult!5643)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35805 (_ BitVec 32)) SeekEntryResult!5643)

(assert (=> b!572272 (= e!329184 (= (seekEntryOrOpen!0 lt!261220 lt!261221 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53699 lt!261222) (index!24801 lt!261222) (index!24801 lt!261222) lt!261220 lt!261221 mask!3119)))))

(declare-fun b!572273 () Bool)

(declare-fun e!329188 () Bool)

(assert (=> b!572273 (= e!329188 e!329184)))

(declare-fun res!361930 () Bool)

(assert (=> b!572273 (=> (not res!361930) (not e!329184))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261223 () SeekEntryResult!5643)

(assert (=> b!572273 (= res!361930 (= lt!261223 (seekKeyOrZeroReturnVacant!0 (x!53699 lt!261222) (index!24801 lt!261222) (index!24801 lt!261222) (select (arr!17187 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572274 () Bool)

(declare-fun res!361929 () Bool)

(assert (=> b!572274 (=> (not res!361929) (not e!329186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572274 (= res!361929 (validKeyInArray!0 (select (arr!17187 a!3118) j!142)))))

(declare-fun b!572275 () Bool)

(declare-fun res!361934 () Bool)

(assert (=> b!572275 (=> (not res!361934) (not e!329186))))

(assert (=> b!572275 (= res!361934 (and (= (size!17551 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17551 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17551 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572276 () Bool)

(declare-fun e!329187 () Bool)

(declare-fun e!329185 () Bool)

(assert (=> b!572276 (= e!329187 e!329185)))

(declare-fun res!361933 () Bool)

(assert (=> b!572276 (=> res!361933 e!329185)))

(assert (=> b!572276 (= res!361933 (or (undefined!6455 lt!261222) (not (is-Intermediate!5643 lt!261222))))))

(declare-fun b!572277 () Bool)

(declare-fun res!361931 () Bool)

(assert (=> b!572277 (=> (not res!361931) (not e!329186))))

(assert (=> b!572277 (= res!361931 (validKeyInArray!0 k!1914))))

(declare-fun b!572278 () Bool)

(assert (=> b!572278 (= e!329185 e!329188)))

(declare-fun res!361936 () Bool)

(assert (=> b!572278 (=> res!361936 e!329188)))

(declare-fun lt!261224 () (_ BitVec 64))

(assert (=> b!572278 (= res!361936 (or (= lt!261224 (select (arr!17187 a!3118) j!142)) (= lt!261224 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572278 (= lt!261224 (select (arr!17187 a!3118) (index!24801 lt!261222)))))

(declare-fun b!572279 () Bool)

(declare-fun e!329190 () Bool)

(assert (=> b!572279 (= e!329190 (not true))))

(assert (=> b!572279 e!329187))

(declare-fun res!361938 () Bool)

(assert (=> b!572279 (=> (not res!361938) (not e!329187))))

(assert (=> b!572279 (= res!361938 (= lt!261223 (Found!5643 j!142)))))

(assert (=> b!572279 (= lt!261223 (seekEntryOrOpen!0 (select (arr!17187 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35805 (_ BitVec 32)) Bool)

(assert (=> b!572279 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17988 0))(
  ( (Unit!17989) )
))
(declare-fun lt!261218 () Unit!17988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17988)

(assert (=> b!572279 (= lt!261218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572280 () Bool)

(assert (=> b!572280 (= e!329191 e!329190)))

(declare-fun res!361939 () Bool)

(assert (=> b!572280 (=> (not res!361939) (not e!329190))))

(declare-fun lt!261217 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35805 (_ BitVec 32)) SeekEntryResult!5643)

(assert (=> b!572280 (= res!361939 (= lt!261222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261217 lt!261220 lt!261221 mask!3119)))))

(declare-fun lt!261216 () (_ BitVec 32))

(assert (=> b!572280 (= lt!261222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261216 (select (arr!17187 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572280 (= lt!261217 (toIndex!0 lt!261220 mask!3119))))

(assert (=> b!572280 (= lt!261220 (select (store (arr!17187 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572280 (= lt!261216 (toIndex!0 (select (arr!17187 a!3118) j!142) mask!3119))))

(assert (=> b!572280 (= lt!261221 (array!35806 (store (arr!17187 a!3118) i!1132 k!1914) (size!17551 a!3118)))))

(declare-fun b!572281 () Bool)

(declare-fun res!361937 () Bool)

(assert (=> b!572281 (=> (not res!361937) (not e!329191))))

(assert (=> b!572281 (= res!361937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572282 () Bool)

(declare-fun res!361940 () Bool)

(assert (=> b!572282 (=> (not res!361940) (not e!329186))))

(declare-fun arrayContainsKey!0 (array!35805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572282 (= res!361940 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52454 res!361928) b!572275))

(assert (= (and b!572275 res!361934) b!572274))

(assert (= (and b!572274 res!361929) b!572277))

(assert (= (and b!572277 res!361931) b!572282))

(assert (= (and b!572282 res!361940) b!572270))

(assert (= (and b!572270 res!361935) b!572281))

(assert (= (and b!572281 res!361937) b!572271))

(assert (= (and b!572271 res!361932) b!572280))

(assert (= (and b!572280 res!361939) b!572279))

(assert (= (and b!572279 res!361938) b!572276))

(assert (= (and b!572276 (not res!361933)) b!572278))

(assert (= (and b!572278 (not res!361936)) b!572273))

(assert (= (and b!572273 res!361930) b!572272))

(declare-fun m!551287 () Bool)

(assert (=> b!572271 m!551287))

(declare-fun m!551289 () Bool)

(assert (=> b!572280 m!551289))

(declare-fun m!551291 () Bool)

(assert (=> b!572280 m!551291))

(declare-fun m!551293 () Bool)

(assert (=> b!572280 m!551293))

(assert (=> b!572280 m!551289))

(declare-fun m!551295 () Bool)

(assert (=> b!572280 m!551295))

(declare-fun m!551297 () Bool)

(assert (=> b!572280 m!551297))

(declare-fun m!551299 () Bool)

(assert (=> b!572280 m!551299))

(declare-fun m!551301 () Bool)

(assert (=> b!572280 m!551301))

(assert (=> b!572280 m!551289))

(declare-fun m!551303 () Bool)

(assert (=> b!572277 m!551303))

(declare-fun m!551305 () Bool)

(assert (=> b!572272 m!551305))

(declare-fun m!551307 () Bool)

(assert (=> b!572272 m!551307))

(declare-fun m!551309 () Bool)

(assert (=> b!572281 m!551309))

(assert (=> b!572278 m!551289))

(declare-fun m!551311 () Bool)

(assert (=> b!572278 m!551311))

(declare-fun m!551313 () Bool)

(assert (=> b!572270 m!551313))

(assert (=> b!572279 m!551289))

(assert (=> b!572279 m!551289))

(declare-fun m!551315 () Bool)

(assert (=> b!572279 m!551315))

(declare-fun m!551317 () Bool)

(assert (=> b!572279 m!551317))

(declare-fun m!551319 () Bool)

(assert (=> b!572279 m!551319))

(assert (=> b!572273 m!551289))

(assert (=> b!572273 m!551289))

(declare-fun m!551321 () Bool)

(assert (=> b!572273 m!551321))

(assert (=> b!572274 m!551289))

(assert (=> b!572274 m!551289))

(declare-fun m!551323 () Bool)

(assert (=> b!572274 m!551323))

(declare-fun m!551325 () Bool)

(assert (=> start!52454 m!551325))

(declare-fun m!551327 () Bool)

(assert (=> start!52454 m!551327))

(declare-fun m!551329 () Bool)

(assert (=> b!572282 m!551329))

(push 1)

