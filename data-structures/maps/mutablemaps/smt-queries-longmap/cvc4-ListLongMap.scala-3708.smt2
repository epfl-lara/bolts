; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51006 () Bool)

(assert start!51006)

(declare-fun b!557186 () Bool)

(declare-fun e!321001 () Bool)

(assert (=> b!557186 (= e!321001 (not true))))

(declare-fun e!321004 () Bool)

(assert (=> b!557186 e!321004))

(declare-fun res!349385 () Bool)

(assert (=> b!557186 (=> (not res!349385) (not e!321004))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35071 0))(
  ( (array!35072 (arr!16838 (Array (_ BitVec 32) (_ BitVec 64))) (size!17202 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35071)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35071 (_ BitVec 32)) Bool)

(assert (=> b!557186 (= res!349385 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17362 0))(
  ( (Unit!17363) )
))
(declare-fun lt!253235 () Unit!17362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17362)

(assert (=> b!557186 (= lt!253235 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!349382 () Bool)

(declare-fun e!321002 () Bool)

(assert (=> start!51006 (=> (not res!349382) (not e!321002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51006 (= res!349382 (validMask!0 mask!3119))))

(assert (=> start!51006 e!321002))

(assert (=> start!51006 true))

(declare-fun array_inv!12612 (array!35071) Bool)

(assert (=> start!51006 (array_inv!12612 a!3118)))

(declare-fun b!557187 () Bool)

(assert (=> b!557187 (= e!321002 e!321001)))

(declare-fun res!349389 () Bool)

(assert (=> b!557187 (=> (not res!349389) (not e!321001))))

(declare-datatypes ((SeekEntryResult!5294 0))(
  ( (MissingZero!5294 (index!23403 (_ BitVec 32))) (Found!5294 (index!23404 (_ BitVec 32))) (Intermediate!5294 (undefined!6106 Bool) (index!23405 (_ BitVec 32)) (x!52327 (_ BitVec 32))) (Undefined!5294) (MissingVacant!5294 (index!23406 (_ BitVec 32))) )
))
(declare-fun lt!253234 () SeekEntryResult!5294)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557187 (= res!349389 (or (= lt!253234 (MissingZero!5294 i!1132)) (= lt!253234 (MissingVacant!5294 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35071 (_ BitVec 32)) SeekEntryResult!5294)

(assert (=> b!557187 (= lt!253234 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557188 () Bool)

(declare-fun res!349387 () Bool)

(assert (=> b!557188 (=> (not res!349387) (not e!321001))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35071 (_ BitVec 32)) SeekEntryResult!5294)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557188 (= res!349387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16838 a!3118) j!142) mask!3119) (select (arr!16838 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16838 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16838 a!3118) i!1132 k!1914) j!142) (array!35072 (store (arr!16838 a!3118) i!1132 k!1914) (size!17202 a!3118)) mask!3119)))))

(declare-fun b!557189 () Bool)

(declare-fun res!349391 () Bool)

(assert (=> b!557189 (=> (not res!349391) (not e!321001))))

(declare-datatypes ((List!10971 0))(
  ( (Nil!10968) (Cons!10967 (h!11958 (_ BitVec 64)) (t!17207 List!10971)) )
))
(declare-fun arrayNoDuplicates!0 (array!35071 (_ BitVec 32) List!10971) Bool)

(assert (=> b!557189 (= res!349391 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10968))))

(declare-fun b!557190 () Bool)

(declare-fun res!349388 () Bool)

(assert (=> b!557190 (=> (not res!349388) (not e!321001))))

(assert (=> b!557190 (= res!349388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557191 () Bool)

(declare-fun res!349386 () Bool)

(assert (=> b!557191 (=> (not res!349386) (not e!321002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557191 (= res!349386 (validKeyInArray!0 (select (arr!16838 a!3118) j!142)))))

(declare-fun b!557192 () Bool)

(declare-fun res!349390 () Bool)

(assert (=> b!557192 (=> (not res!349390) (not e!321002))))

(assert (=> b!557192 (= res!349390 (validKeyInArray!0 k!1914))))

(declare-fun b!557193 () Bool)

(assert (=> b!557193 (= e!321004 (= (seekEntryOrOpen!0 (select (arr!16838 a!3118) j!142) a!3118 mask!3119) (Found!5294 j!142)))))

(declare-fun b!557194 () Bool)

(declare-fun res!349384 () Bool)

(assert (=> b!557194 (=> (not res!349384) (not e!321002))))

(assert (=> b!557194 (= res!349384 (and (= (size!17202 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17202 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17202 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557195 () Bool)

(declare-fun res!349383 () Bool)

(assert (=> b!557195 (=> (not res!349383) (not e!321002))))

(declare-fun arrayContainsKey!0 (array!35071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557195 (= res!349383 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51006 res!349382) b!557194))

(assert (= (and b!557194 res!349384) b!557191))

(assert (= (and b!557191 res!349386) b!557192))

(assert (= (and b!557192 res!349390) b!557195))

(assert (= (and b!557195 res!349383) b!557187))

(assert (= (and b!557187 res!349389) b!557190))

(assert (= (and b!557190 res!349388) b!557189))

(assert (= (and b!557189 res!349391) b!557188))

(assert (= (and b!557188 res!349387) b!557186))

(assert (= (and b!557186 res!349385) b!557193))

(declare-fun m!535129 () Bool)

(assert (=> b!557188 m!535129))

(declare-fun m!535131 () Bool)

(assert (=> b!557188 m!535131))

(assert (=> b!557188 m!535129))

(declare-fun m!535133 () Bool)

(assert (=> b!557188 m!535133))

(declare-fun m!535135 () Bool)

(assert (=> b!557188 m!535135))

(assert (=> b!557188 m!535133))

(declare-fun m!535137 () Bool)

(assert (=> b!557188 m!535137))

(assert (=> b!557188 m!535131))

(assert (=> b!557188 m!535129))

(declare-fun m!535139 () Bool)

(assert (=> b!557188 m!535139))

(declare-fun m!535141 () Bool)

(assert (=> b!557188 m!535141))

(assert (=> b!557188 m!535133))

(assert (=> b!557188 m!535135))

(declare-fun m!535143 () Bool)

(assert (=> start!51006 m!535143))

(declare-fun m!535145 () Bool)

(assert (=> start!51006 m!535145))

(assert (=> b!557193 m!535129))

(assert (=> b!557193 m!535129))

(declare-fun m!535147 () Bool)

(assert (=> b!557193 m!535147))

(assert (=> b!557191 m!535129))

(assert (=> b!557191 m!535129))

(declare-fun m!535149 () Bool)

(assert (=> b!557191 m!535149))

(declare-fun m!535151 () Bool)

(assert (=> b!557195 m!535151))

(declare-fun m!535153 () Bool)

(assert (=> b!557189 m!535153))

(declare-fun m!535155 () Bool)

(assert (=> b!557190 m!535155))

(declare-fun m!535157 () Bool)

(assert (=> b!557192 m!535157))

(declare-fun m!535159 () Bool)

(assert (=> b!557187 m!535159))

(declare-fun m!535161 () Bool)

(assert (=> b!557186 m!535161))

(declare-fun m!535163 () Bool)

(assert (=> b!557186 m!535163))

(push 1)

(assert (not b!557190))

