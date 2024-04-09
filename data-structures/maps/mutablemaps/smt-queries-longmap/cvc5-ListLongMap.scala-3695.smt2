; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50804 () Bool)

(assert start!50804)

(declare-fun b!555408 () Bool)

(declare-fun res!347971 () Bool)

(declare-fun e!320104 () Bool)

(assert (=> b!555408 (=> (not res!347971) (not e!320104))))

(declare-datatypes ((array!34983 0))(
  ( (array!34984 (arr!16797 (Array (_ BitVec 32) (_ BitVec 64))) (size!17161 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34983)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555408 (= res!347971 (validKeyInArray!0 (select (arr!16797 a!3118) j!142)))))

(declare-fun b!555409 () Bool)

(declare-fun res!347978 () Bool)

(assert (=> b!555409 (=> (not res!347978) (not e!320104))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555409 (= res!347978 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555410 () Bool)

(declare-fun res!347970 () Bool)

(declare-fun e!320102 () Bool)

(assert (=> b!555410 (=> (not res!347970) (not e!320102))))

(declare-datatypes ((List!10930 0))(
  ( (Nil!10927) (Cons!10926 (h!11911 (_ BitVec 64)) (t!17166 List!10930)) )
))
(declare-fun arrayNoDuplicates!0 (array!34983 (_ BitVec 32) List!10930) Bool)

(assert (=> b!555410 (= res!347970 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10927))))

(declare-fun b!555411 () Bool)

(declare-fun res!347973 () Bool)

(assert (=> b!555411 (=> (not res!347973) (not e!320104))))

(assert (=> b!555411 (= res!347973 (validKeyInArray!0 k!1914))))

(declare-fun b!555412 () Bool)

(declare-fun res!347977 () Bool)

(assert (=> b!555412 (=> (not res!347977) (not e!320104))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555412 (= res!347977 (and (= (size!17161 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17161 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17161 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555413 () Bool)

(declare-fun e!320103 () Bool)

(assert (=> b!555413 (= e!320103 (not true))))

(declare-datatypes ((SeekEntryResult!5253 0))(
  ( (MissingZero!5253 (index!23239 (_ BitVec 32))) (Found!5253 (index!23240 (_ BitVec 32))) (Intermediate!5253 (undefined!6065 Bool) (index!23241 (_ BitVec 32)) (x!52170 (_ BitVec 32))) (Undefined!5253) (MissingVacant!5253 (index!23242 (_ BitVec 32))) )
))
(declare-fun lt!252490 () SeekEntryResult!5253)

(declare-fun lt!252487 () SeekEntryResult!5253)

(assert (=> b!555413 (and (= lt!252490 (Found!5253 j!142)) (or (undefined!6065 lt!252487) (not (is-Intermediate!5253 lt!252487)) (= (select (arr!16797 a!3118) (index!23241 lt!252487)) (select (arr!16797 a!3118) j!142)) (not (= (select (arr!16797 a!3118) (index!23241 lt!252487)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252490 (MissingZero!5253 (index!23241 lt!252487)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34983 (_ BitVec 32)) SeekEntryResult!5253)

(assert (=> b!555413 (= lt!252490 (seekEntryOrOpen!0 (select (arr!16797 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34983 (_ BitVec 32)) Bool)

(assert (=> b!555413 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17280 0))(
  ( (Unit!17281) )
))
(declare-fun lt!252486 () Unit!17280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17280)

(assert (=> b!555413 (= lt!252486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555415 () Bool)

(assert (=> b!555415 (= e!320104 e!320102)))

(declare-fun res!347974 () Bool)

(assert (=> b!555415 (=> (not res!347974) (not e!320102))))

(declare-fun lt!252489 () SeekEntryResult!5253)

(assert (=> b!555415 (= res!347974 (or (= lt!252489 (MissingZero!5253 i!1132)) (= lt!252489 (MissingVacant!5253 i!1132))))))

(assert (=> b!555415 (= lt!252489 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555416 () Bool)

(declare-fun res!347972 () Bool)

(assert (=> b!555416 (=> (not res!347972) (not e!320102))))

(assert (=> b!555416 (= res!347972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555414 () Bool)

(assert (=> b!555414 (= e!320102 e!320103)))

(declare-fun res!347976 () Bool)

(assert (=> b!555414 (=> (not res!347976) (not e!320103))))

(declare-fun lt!252488 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34983 (_ BitVec 32)) SeekEntryResult!5253)

(assert (=> b!555414 (= res!347976 (= lt!252487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252488 (select (store (arr!16797 a!3118) i!1132 k!1914) j!142) (array!34984 (store (arr!16797 a!3118) i!1132 k!1914) (size!17161 a!3118)) mask!3119)))))

(declare-fun lt!252491 () (_ BitVec 32))

(assert (=> b!555414 (= lt!252487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252491 (select (arr!16797 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555414 (= lt!252488 (toIndex!0 (select (store (arr!16797 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!555414 (= lt!252491 (toIndex!0 (select (arr!16797 a!3118) j!142) mask!3119))))

(declare-fun res!347975 () Bool)

(assert (=> start!50804 (=> (not res!347975) (not e!320104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50804 (= res!347975 (validMask!0 mask!3119))))

(assert (=> start!50804 e!320104))

(assert (=> start!50804 true))

(declare-fun array_inv!12571 (array!34983) Bool)

(assert (=> start!50804 (array_inv!12571 a!3118)))

(assert (= (and start!50804 res!347975) b!555412))

(assert (= (and b!555412 res!347977) b!555408))

(assert (= (and b!555408 res!347971) b!555411))

(assert (= (and b!555411 res!347973) b!555409))

(assert (= (and b!555409 res!347978) b!555415))

(assert (= (and b!555415 res!347974) b!555416))

(assert (= (and b!555416 res!347972) b!555410))

(assert (= (and b!555410 res!347970) b!555414))

(assert (= (and b!555414 res!347976) b!555413))

(declare-fun m!533197 () Bool)

(assert (=> start!50804 m!533197))

(declare-fun m!533199 () Bool)

(assert (=> start!50804 m!533199))

(declare-fun m!533201 () Bool)

(assert (=> b!555416 m!533201))

(declare-fun m!533203 () Bool)

(assert (=> b!555409 m!533203))

(declare-fun m!533205 () Bool)

(assert (=> b!555413 m!533205))

(declare-fun m!533207 () Bool)

(assert (=> b!555413 m!533207))

(declare-fun m!533209 () Bool)

(assert (=> b!555413 m!533209))

(declare-fun m!533211 () Bool)

(assert (=> b!555413 m!533211))

(assert (=> b!555413 m!533207))

(declare-fun m!533213 () Bool)

(assert (=> b!555413 m!533213))

(declare-fun m!533215 () Bool)

(assert (=> b!555410 m!533215))

(declare-fun m!533217 () Bool)

(assert (=> b!555415 m!533217))

(assert (=> b!555408 m!533207))

(assert (=> b!555408 m!533207))

(declare-fun m!533219 () Bool)

(assert (=> b!555408 m!533219))

(declare-fun m!533221 () Bool)

(assert (=> b!555411 m!533221))

(assert (=> b!555414 m!533207))

(declare-fun m!533223 () Bool)

(assert (=> b!555414 m!533223))

(assert (=> b!555414 m!533207))

(declare-fun m!533225 () Bool)

(assert (=> b!555414 m!533225))

(assert (=> b!555414 m!533225))

(declare-fun m!533227 () Bool)

(assert (=> b!555414 m!533227))

(assert (=> b!555414 m!533207))

(declare-fun m!533229 () Bool)

(assert (=> b!555414 m!533229))

(declare-fun m!533231 () Bool)

(assert (=> b!555414 m!533231))

(assert (=> b!555414 m!533225))

(declare-fun m!533233 () Bool)

(assert (=> b!555414 m!533233))

(push 1)

