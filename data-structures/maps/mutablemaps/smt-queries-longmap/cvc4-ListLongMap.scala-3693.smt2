; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50796 () Bool)

(assert start!50796)

(declare-fun b!555300 () Bool)

(declare-fun res!347869 () Bool)

(declare-fun e!320054 () Bool)

(assert (=> b!555300 (=> (not res!347869) (not e!320054))))

(declare-datatypes ((array!34975 0))(
  ( (array!34976 (arr!16793 (Array (_ BitVec 32) (_ BitVec 64))) (size!17157 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34975)

(declare-datatypes ((List!10926 0))(
  ( (Nil!10923) (Cons!10922 (h!11907 (_ BitVec 64)) (t!17162 List!10926)) )
))
(declare-fun arrayNoDuplicates!0 (array!34975 (_ BitVec 32) List!10926) Bool)

(assert (=> b!555300 (= res!347869 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10923))))

(declare-fun b!555301 () Bool)

(declare-fun e!320053 () Bool)

(assert (=> b!555301 (= e!320053 e!320054)))

(declare-fun res!347868 () Bool)

(assert (=> b!555301 (=> (not res!347868) (not e!320054))))

(declare-datatypes ((SeekEntryResult!5249 0))(
  ( (MissingZero!5249 (index!23223 (_ BitVec 32))) (Found!5249 (index!23224 (_ BitVec 32))) (Intermediate!5249 (undefined!6061 Bool) (index!23225 (_ BitVec 32)) (x!52150 (_ BitVec 32))) (Undefined!5249) (MissingVacant!5249 (index!23226 (_ BitVec 32))) )
))
(declare-fun lt!252416 () SeekEntryResult!5249)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555301 (= res!347868 (or (= lt!252416 (MissingZero!5249 i!1132)) (= lt!252416 (MissingVacant!5249 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34975 (_ BitVec 32)) SeekEntryResult!5249)

(assert (=> b!555301 (= lt!252416 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555302 () Bool)

(declare-fun res!347865 () Bool)

(assert (=> b!555302 (=> (not res!347865) (not e!320054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34975 (_ BitVec 32)) Bool)

(assert (=> b!555302 (= res!347865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555303 () Bool)

(declare-fun res!347866 () Bool)

(assert (=> b!555303 (=> (not res!347866) (not e!320053))))

(declare-fun arrayContainsKey!0 (array!34975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555303 (= res!347866 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!347867 () Bool)

(assert (=> start!50796 (=> (not res!347867) (not e!320053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50796 (= res!347867 (validMask!0 mask!3119))))

(assert (=> start!50796 e!320053))

(assert (=> start!50796 true))

(declare-fun array_inv!12567 (array!34975) Bool)

(assert (=> start!50796 (array_inv!12567 a!3118)))

(declare-fun b!555304 () Bool)

(declare-fun res!347864 () Bool)

(assert (=> b!555304 (=> (not res!347864) (not e!320053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555304 (= res!347864 (validKeyInArray!0 k!1914))))

(declare-fun b!555305 () Bool)

(declare-fun e!320055 () Bool)

(assert (=> b!555305 (= e!320055 (not true))))

(declare-fun lt!252417 () SeekEntryResult!5249)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!252414 () SeekEntryResult!5249)

(assert (=> b!555305 (and (= lt!252417 (Found!5249 j!142)) (or (undefined!6061 lt!252414) (not (is-Intermediate!5249 lt!252414)) (= (select (arr!16793 a!3118) (index!23225 lt!252414)) (select (arr!16793 a!3118) j!142)) (not (= (select (arr!16793 a!3118) (index!23225 lt!252414)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252417 (MissingZero!5249 (index!23225 lt!252414)))))))

(assert (=> b!555305 (= lt!252417 (seekEntryOrOpen!0 (select (arr!16793 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555305 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17272 0))(
  ( (Unit!17273) )
))
(declare-fun lt!252418 () Unit!17272)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17272)

(assert (=> b!555305 (= lt!252418 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555306 () Bool)

(declare-fun res!347862 () Bool)

(assert (=> b!555306 (=> (not res!347862) (not e!320053))))

(assert (=> b!555306 (= res!347862 (and (= (size!17157 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17157 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17157 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555307 () Bool)

(declare-fun res!347870 () Bool)

(assert (=> b!555307 (=> (not res!347870) (not e!320053))))

(assert (=> b!555307 (= res!347870 (validKeyInArray!0 (select (arr!16793 a!3118) j!142)))))

(declare-fun b!555308 () Bool)

(assert (=> b!555308 (= e!320054 e!320055)))

(declare-fun res!347863 () Bool)

(assert (=> b!555308 (=> (not res!347863) (not e!320055))))

(declare-fun lt!252419 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34975 (_ BitVec 32)) SeekEntryResult!5249)

(assert (=> b!555308 (= res!347863 (= lt!252414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252419 (select (store (arr!16793 a!3118) i!1132 k!1914) j!142) (array!34976 (store (arr!16793 a!3118) i!1132 k!1914) (size!17157 a!3118)) mask!3119)))))

(declare-fun lt!252415 () (_ BitVec 32))

(assert (=> b!555308 (= lt!252414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252415 (select (arr!16793 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555308 (= lt!252419 (toIndex!0 (select (store (arr!16793 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555308 (= lt!252415 (toIndex!0 (select (arr!16793 a!3118) j!142) mask!3119))))

(assert (= (and start!50796 res!347867) b!555306))

(assert (= (and b!555306 res!347862) b!555307))

(assert (= (and b!555307 res!347870) b!555304))

(assert (= (and b!555304 res!347864) b!555303))

(assert (= (and b!555303 res!347866) b!555301))

(assert (= (and b!555301 res!347868) b!555302))

(assert (= (and b!555302 res!347865) b!555300))

(assert (= (and b!555300 res!347869) b!555308))

(assert (= (and b!555308 res!347863) b!555305))

(declare-fun m!533045 () Bool)

(assert (=> start!50796 m!533045))

(declare-fun m!533047 () Bool)

(assert (=> start!50796 m!533047))

(declare-fun m!533049 () Bool)

(assert (=> b!555307 m!533049))

(assert (=> b!555307 m!533049))

(declare-fun m!533051 () Bool)

(assert (=> b!555307 m!533051))

(assert (=> b!555305 m!533049))

(declare-fun m!533053 () Bool)

(assert (=> b!555305 m!533053))

(declare-fun m!533055 () Bool)

(assert (=> b!555305 m!533055))

(declare-fun m!533057 () Bool)

(assert (=> b!555305 m!533057))

(assert (=> b!555305 m!533049))

(declare-fun m!533059 () Bool)

(assert (=> b!555305 m!533059))

(declare-fun m!533061 () Bool)

(assert (=> b!555304 m!533061))

(declare-fun m!533063 () Bool)

(assert (=> b!555303 m!533063))

(assert (=> b!555308 m!533049))

(declare-fun m!533065 () Bool)

(assert (=> b!555308 m!533065))

(assert (=> b!555308 m!533049))

(declare-fun m!533067 () Bool)

(assert (=> b!555308 m!533067))

(assert (=> b!555308 m!533067))

(declare-fun m!533069 () Bool)

(assert (=> b!555308 m!533069))

(declare-fun m!533071 () Bool)

(assert (=> b!555308 m!533071))

(assert (=> b!555308 m!533049))

(declare-fun m!533073 () Bool)

(assert (=> b!555308 m!533073))

(assert (=> b!555308 m!533067))

(declare-fun m!533075 () Bool)

(assert (=> b!555308 m!533075))

(declare-fun m!533077 () Bool)

(assert (=> b!555301 m!533077))

(declare-fun m!533079 () Bool)

(assert (=> b!555300 m!533079))

(declare-fun m!533081 () Bool)

(assert (=> b!555302 m!533081))

(push 1)

