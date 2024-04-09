; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50802 () Bool)

(assert start!50802)

(declare-fun b!555381 () Bool)

(declare-fun res!347951 () Bool)

(declare-fun e!320092 () Bool)

(assert (=> b!555381 (=> (not res!347951) (not e!320092))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34981 0))(
  ( (array!34982 (arr!16796 (Array (_ BitVec 32) (_ BitVec 64))) (size!17160 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34981)

(assert (=> b!555381 (= res!347951 (and (= (size!17160 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17160 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17160 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555382 () Bool)

(declare-fun res!347946 () Bool)

(declare-fun e!320091 () Bool)

(assert (=> b!555382 (=> (not res!347946) (not e!320091))))

(declare-datatypes ((List!10929 0))(
  ( (Nil!10926) (Cons!10925 (h!11910 (_ BitVec 64)) (t!17165 List!10929)) )
))
(declare-fun arrayNoDuplicates!0 (array!34981 (_ BitVec 32) List!10929) Bool)

(assert (=> b!555382 (= res!347946 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10926))))

(declare-fun b!555383 () Bool)

(declare-fun e!320090 () Bool)

(assert (=> b!555383 (= e!320091 e!320090)))

(declare-fun res!347949 () Bool)

(assert (=> b!555383 (=> (not res!347949) (not e!320090))))

(declare-datatypes ((SeekEntryResult!5252 0))(
  ( (MissingZero!5252 (index!23235 (_ BitVec 32))) (Found!5252 (index!23236 (_ BitVec 32))) (Intermediate!5252 (undefined!6064 Bool) (index!23237 (_ BitVec 32)) (x!52161 (_ BitVec 32))) (Undefined!5252) (MissingVacant!5252 (index!23238 (_ BitVec 32))) )
))
(declare-fun lt!252472 () SeekEntryResult!5252)

(declare-fun lt!252473 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34981 (_ BitVec 32)) SeekEntryResult!5252)

(assert (=> b!555383 (= res!347949 (= lt!252472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252473 (select (store (arr!16796 a!3118) i!1132 k!1914) j!142) (array!34982 (store (arr!16796 a!3118) i!1132 k!1914) (size!17160 a!3118)) mask!3119)))))

(declare-fun lt!252468 () (_ BitVec 32))

(assert (=> b!555383 (= lt!252472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252468 (select (arr!16796 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555383 (= lt!252473 (toIndex!0 (select (store (arr!16796 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555383 (= lt!252468 (toIndex!0 (select (arr!16796 a!3118) j!142) mask!3119))))

(declare-fun b!555385 () Bool)

(declare-fun res!347950 () Bool)

(assert (=> b!555385 (=> (not res!347950) (not e!320092))))

(declare-fun arrayContainsKey!0 (array!34981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555385 (= res!347950 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555386 () Bool)

(declare-fun res!347944 () Bool)

(assert (=> b!555386 (=> (not res!347944) (not e!320092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555386 (= res!347944 (validKeyInArray!0 k!1914))))

(declare-fun b!555387 () Bool)

(assert (=> b!555387 (= e!320090 (not true))))

(declare-fun lt!252469 () SeekEntryResult!5252)

(assert (=> b!555387 (and (= lt!252469 (Found!5252 j!142)) (or (undefined!6064 lt!252472) (not (is-Intermediate!5252 lt!252472)) (= (select (arr!16796 a!3118) (index!23237 lt!252472)) (select (arr!16796 a!3118) j!142)) (not (= (select (arr!16796 a!3118) (index!23237 lt!252472)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252469 (MissingZero!5252 (index!23237 lt!252472)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34981 (_ BitVec 32)) SeekEntryResult!5252)

(assert (=> b!555387 (= lt!252469 (seekEntryOrOpen!0 (select (arr!16796 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34981 (_ BitVec 32)) Bool)

(assert (=> b!555387 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17278 0))(
  ( (Unit!17279) )
))
(declare-fun lt!252471 () Unit!17278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17278)

(assert (=> b!555387 (= lt!252471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555384 () Bool)

(assert (=> b!555384 (= e!320092 e!320091)))

(declare-fun res!347943 () Bool)

(assert (=> b!555384 (=> (not res!347943) (not e!320091))))

(declare-fun lt!252470 () SeekEntryResult!5252)

(assert (=> b!555384 (= res!347943 (or (= lt!252470 (MissingZero!5252 i!1132)) (= lt!252470 (MissingVacant!5252 i!1132))))))

(assert (=> b!555384 (= lt!252470 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!347947 () Bool)

(assert (=> start!50802 (=> (not res!347947) (not e!320092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50802 (= res!347947 (validMask!0 mask!3119))))

(assert (=> start!50802 e!320092))

(assert (=> start!50802 true))

(declare-fun array_inv!12570 (array!34981) Bool)

(assert (=> start!50802 (array_inv!12570 a!3118)))

(declare-fun b!555388 () Bool)

(declare-fun res!347945 () Bool)

(assert (=> b!555388 (=> (not res!347945) (not e!320091))))

(assert (=> b!555388 (= res!347945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555389 () Bool)

(declare-fun res!347948 () Bool)

(assert (=> b!555389 (=> (not res!347948) (not e!320092))))

(assert (=> b!555389 (= res!347948 (validKeyInArray!0 (select (arr!16796 a!3118) j!142)))))

(assert (= (and start!50802 res!347947) b!555381))

(assert (= (and b!555381 res!347951) b!555389))

(assert (= (and b!555389 res!347948) b!555386))

(assert (= (and b!555386 res!347944) b!555385))

(assert (= (and b!555385 res!347950) b!555384))

(assert (= (and b!555384 res!347943) b!555388))

(assert (= (and b!555388 res!347945) b!555382))

(assert (= (and b!555382 res!347946) b!555383))

(assert (= (and b!555383 res!347949) b!555387))

(declare-fun m!533159 () Bool)

(assert (=> b!555389 m!533159))

(assert (=> b!555389 m!533159))

(declare-fun m!533161 () Bool)

(assert (=> b!555389 m!533161))

(declare-fun m!533163 () Bool)

(assert (=> b!555382 m!533163))

(declare-fun m!533165 () Bool)

(assert (=> start!50802 m!533165))

(declare-fun m!533167 () Bool)

(assert (=> start!50802 m!533167))

(declare-fun m!533169 () Bool)

(assert (=> b!555385 m!533169))

(declare-fun m!533171 () Bool)

(assert (=> b!555384 m!533171))

(declare-fun m!533173 () Bool)

(assert (=> b!555386 m!533173))

(assert (=> b!555383 m!533159))

(declare-fun m!533175 () Bool)

(assert (=> b!555383 m!533175))

(assert (=> b!555383 m!533159))

(declare-fun m!533177 () Bool)

(assert (=> b!555383 m!533177))

(assert (=> b!555383 m!533159))

(declare-fun m!533179 () Bool)

(assert (=> b!555383 m!533179))

(assert (=> b!555383 m!533179))

(declare-fun m!533181 () Bool)

(assert (=> b!555383 m!533181))

(declare-fun m!533183 () Bool)

(assert (=> b!555383 m!533183))

(assert (=> b!555383 m!533179))

(declare-fun m!533185 () Bool)

(assert (=> b!555383 m!533185))

(declare-fun m!533187 () Bool)

(assert (=> b!555388 m!533187))

(assert (=> b!555387 m!533159))

(declare-fun m!533189 () Bool)

(assert (=> b!555387 m!533189))

(declare-fun m!533191 () Bool)

(assert (=> b!555387 m!533191))

(declare-fun m!533193 () Bool)

(assert (=> b!555387 m!533193))

(assert (=> b!555387 m!533159))

(declare-fun m!533195 () Bool)

(assert (=> b!555387 m!533195))

(push 1)

