; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52890 () Bool)

(assert start!52890)

(declare-fun b!576137 () Bool)

(declare-fun e!331490 () Bool)

(assert (=> b!576137 (= e!331490 (not true))))

(declare-fun e!331492 () Bool)

(assert (=> b!576137 e!331492))

(declare-fun res!364524 () Bool)

(assert (=> b!576137 (=> (not res!364524) (not e!331492))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35932 0))(
  ( (array!35933 (arr!17243 (Array (_ BitVec 32) (_ BitVec 64))) (size!17607 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35932)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35932 (_ BitVec 32)) Bool)

(assert (=> b!576137 (= res!364524 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18100 0))(
  ( (Unit!18101) )
))
(declare-fun lt!263602 () Unit!18100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35932 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18100)

(assert (=> b!576137 (= lt!263602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!364525 () Bool)

(declare-fun e!331489 () Bool)

(assert (=> start!52890 (=> (not res!364525) (not e!331489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52890 (= res!364525 (validMask!0 mask!3119))))

(assert (=> start!52890 e!331489))

(assert (=> start!52890 true))

(declare-fun array_inv!13017 (array!35932) Bool)

(assert (=> start!52890 (array_inv!13017 a!3118)))

(declare-fun b!576138 () Bool)

(assert (=> b!576138 (= e!331489 e!331490)))

(declare-fun res!364521 () Bool)

(assert (=> b!576138 (=> (not res!364521) (not e!331490))))

(declare-datatypes ((SeekEntryResult!5699 0))(
  ( (MissingZero!5699 (index!25023 (_ BitVec 32))) (Found!5699 (index!25024 (_ BitVec 32))) (Intermediate!5699 (undefined!6511 Bool) (index!25025 (_ BitVec 32)) (x!53941 (_ BitVec 32))) (Undefined!5699) (MissingVacant!5699 (index!25026 (_ BitVec 32))) )
))
(declare-fun lt!263603 () SeekEntryResult!5699)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576138 (= res!364521 (or (= lt!263603 (MissingZero!5699 i!1132)) (= lt!263603 (MissingVacant!5699 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35932 (_ BitVec 32)) SeekEntryResult!5699)

(assert (=> b!576138 (= lt!263603 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576139 () Bool)

(declare-fun res!364528 () Bool)

(assert (=> b!576139 (=> (not res!364528) (not e!331489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576139 (= res!364528 (validKeyInArray!0 k!1914))))

(declare-fun b!576140 () Bool)

(declare-fun res!364520 () Bool)

(assert (=> b!576140 (=> (not res!364520) (not e!331490))))

(assert (=> b!576140 (= res!364520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576141 () Bool)

(declare-fun res!364523 () Bool)

(assert (=> b!576141 (=> (not res!364523) (not e!331489))))

(assert (=> b!576141 (= res!364523 (and (= (size!17607 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17607 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17607 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576142 () Bool)

(declare-fun res!364529 () Bool)

(assert (=> b!576142 (=> (not res!364529) (not e!331490))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35932 (_ BitVec 32)) SeekEntryResult!5699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576142 (= res!364529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17243 a!3118) j!142) mask!3119) (select (arr!17243 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17243 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17243 a!3118) i!1132 k!1914) j!142) (array!35933 (store (arr!17243 a!3118) i!1132 k!1914) (size!17607 a!3118)) mask!3119)))))

(declare-fun b!576143 () Bool)

(declare-fun res!364526 () Bool)

(assert (=> b!576143 (=> (not res!364526) (not e!331490))))

(declare-datatypes ((List!11376 0))(
  ( (Nil!11373) (Cons!11372 (h!12414 (_ BitVec 64)) (t!17612 List!11376)) )
))
(declare-fun arrayNoDuplicates!0 (array!35932 (_ BitVec 32) List!11376) Bool)

(assert (=> b!576143 (= res!364526 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11373))))

(declare-fun b!576144 () Bool)

(declare-fun res!364527 () Bool)

(assert (=> b!576144 (=> (not res!364527) (not e!331489))))

(assert (=> b!576144 (= res!364527 (validKeyInArray!0 (select (arr!17243 a!3118) j!142)))))

(declare-fun b!576145 () Bool)

(assert (=> b!576145 (= e!331492 (= (seekEntryOrOpen!0 (select (arr!17243 a!3118) j!142) a!3118 mask!3119) (Found!5699 j!142)))))

(declare-fun b!576146 () Bool)

(declare-fun res!364522 () Bool)

(assert (=> b!576146 (=> (not res!364522) (not e!331489))))

(declare-fun arrayContainsKey!0 (array!35932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576146 (= res!364522 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52890 res!364525) b!576141))

(assert (= (and b!576141 res!364523) b!576144))

(assert (= (and b!576144 res!364527) b!576139))

(assert (= (and b!576139 res!364528) b!576146))

(assert (= (and b!576146 res!364522) b!576138))

(assert (= (and b!576138 res!364521) b!576140))

(assert (= (and b!576140 res!364520) b!576143))

(assert (= (and b!576143 res!364526) b!576142))

(assert (= (and b!576142 res!364529) b!576137))

(assert (= (and b!576137 res!364524) b!576145))

(declare-fun m!555115 () Bool)

(assert (=> b!576137 m!555115))

(declare-fun m!555117 () Bool)

(assert (=> b!576137 m!555117))

(declare-fun m!555119 () Bool)

(assert (=> b!576146 m!555119))

(declare-fun m!555121 () Bool)

(assert (=> b!576140 m!555121))

(declare-fun m!555123 () Bool)

(assert (=> start!52890 m!555123))

(declare-fun m!555125 () Bool)

(assert (=> start!52890 m!555125))

(declare-fun m!555127 () Bool)

(assert (=> b!576143 m!555127))

(declare-fun m!555129 () Bool)

(assert (=> b!576144 m!555129))

(assert (=> b!576144 m!555129))

(declare-fun m!555131 () Bool)

(assert (=> b!576144 m!555131))

(declare-fun m!555133 () Bool)

(assert (=> b!576139 m!555133))

(declare-fun m!555135 () Bool)

(assert (=> b!576138 m!555135))

(assert (=> b!576145 m!555129))

(assert (=> b!576145 m!555129))

(declare-fun m!555137 () Bool)

(assert (=> b!576145 m!555137))

(assert (=> b!576142 m!555129))

(declare-fun m!555139 () Bool)

(assert (=> b!576142 m!555139))

(assert (=> b!576142 m!555129))

(declare-fun m!555141 () Bool)

(assert (=> b!576142 m!555141))

(declare-fun m!555143 () Bool)

(assert (=> b!576142 m!555143))

(assert (=> b!576142 m!555141))

(declare-fun m!555145 () Bool)

(assert (=> b!576142 m!555145))

(assert (=> b!576142 m!555139))

(assert (=> b!576142 m!555129))

(declare-fun m!555147 () Bool)

(assert (=> b!576142 m!555147))

(declare-fun m!555149 () Bool)

(assert (=> b!576142 m!555149))

(assert (=> b!576142 m!555141))

(assert (=> b!576142 m!555143))

(push 1)

