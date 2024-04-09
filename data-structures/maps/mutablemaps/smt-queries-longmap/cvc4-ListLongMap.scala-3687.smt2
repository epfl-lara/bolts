; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50760 () Bool)

(assert start!50760)

(declare-fun b!554814 () Bool)

(declare-fun res!347379 () Bool)

(declare-fun e!319839 () Bool)

(assert (=> b!554814 (=> (not res!347379) (not e!319839))))

(declare-datatypes ((array!34939 0))(
  ( (array!34940 (arr!16775 (Array (_ BitVec 32) (_ BitVec 64))) (size!17139 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34939)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34939 (_ BitVec 32)) Bool)

(assert (=> b!554814 (= res!347379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554815 () Bool)

(declare-fun e!319838 () Bool)

(assert (=> b!554815 (= e!319838 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5231 0))(
  ( (MissingZero!5231 (index!23151 (_ BitVec 32))) (Found!5231 (index!23152 (_ BitVec 32))) (Intermediate!5231 (undefined!6043 Bool) (index!23153 (_ BitVec 32)) (x!52084 (_ BitVec 32))) (Undefined!5231) (MissingVacant!5231 (index!23154 (_ BitVec 32))) )
))
(declare-fun lt!252095 () SeekEntryResult!5231)

(declare-fun lt!252093 () SeekEntryResult!5231)

(assert (=> b!554815 (and (= lt!252095 (Found!5231 j!142)) (or (undefined!6043 lt!252093) (not (is-Intermediate!5231 lt!252093)) (= (select (arr!16775 a!3118) (index!23153 lt!252093)) (select (arr!16775 a!3118) j!142)) (not (= (select (arr!16775 a!3118) (index!23153 lt!252093)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252095 (MissingZero!5231 (index!23153 lt!252093)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34939 (_ BitVec 32)) SeekEntryResult!5231)

(assert (=> b!554815 (= lt!252095 (seekEntryOrOpen!0 (select (arr!16775 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554815 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17236 0))(
  ( (Unit!17237) )
))
(declare-fun lt!252094 () Unit!17236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17236)

(assert (=> b!554815 (= lt!252094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!347378 () Bool)

(declare-fun e!319837 () Bool)

(assert (=> start!50760 (=> (not res!347378) (not e!319837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50760 (= res!347378 (validMask!0 mask!3119))))

(assert (=> start!50760 e!319837))

(assert (=> start!50760 true))

(declare-fun array_inv!12549 (array!34939) Bool)

(assert (=> start!50760 (array_inv!12549 a!3118)))

(declare-fun b!554816 () Bool)

(declare-fun res!347376 () Bool)

(assert (=> b!554816 (=> (not res!347376) (not e!319839))))

(declare-datatypes ((List!10908 0))(
  ( (Nil!10905) (Cons!10904 (h!11889 (_ BitVec 64)) (t!17144 List!10908)) )
))
(declare-fun arrayNoDuplicates!0 (array!34939 (_ BitVec 32) List!10908) Bool)

(assert (=> b!554816 (= res!347376 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10905))))

(declare-fun b!554817 () Bool)

(declare-fun res!347380 () Bool)

(assert (=> b!554817 (=> (not res!347380) (not e!319837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554817 (= res!347380 (validKeyInArray!0 (select (arr!16775 a!3118) j!142)))))

(declare-fun b!554818 () Bool)

(assert (=> b!554818 (= e!319839 e!319838)))

(declare-fun res!347381 () Bool)

(assert (=> b!554818 (=> (not res!347381) (not e!319838))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!252091 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34939 (_ BitVec 32)) SeekEntryResult!5231)

(assert (=> b!554818 (= res!347381 (= lt!252093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252091 (select (store (arr!16775 a!3118) i!1132 k!1914) j!142) (array!34940 (store (arr!16775 a!3118) i!1132 k!1914) (size!17139 a!3118)) mask!3119)))))

(declare-fun lt!252092 () (_ BitVec 32))

(assert (=> b!554818 (= lt!252093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252092 (select (arr!16775 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554818 (= lt!252091 (toIndex!0 (select (store (arr!16775 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554818 (= lt!252092 (toIndex!0 (select (arr!16775 a!3118) j!142) mask!3119))))

(declare-fun b!554819 () Bool)

(declare-fun res!347383 () Bool)

(assert (=> b!554819 (=> (not res!347383) (not e!319837))))

(declare-fun arrayContainsKey!0 (array!34939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554819 (= res!347383 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554820 () Bool)

(assert (=> b!554820 (= e!319837 e!319839)))

(declare-fun res!347377 () Bool)

(assert (=> b!554820 (=> (not res!347377) (not e!319839))))

(declare-fun lt!252090 () SeekEntryResult!5231)

(assert (=> b!554820 (= res!347377 (or (= lt!252090 (MissingZero!5231 i!1132)) (= lt!252090 (MissingVacant!5231 i!1132))))))

(assert (=> b!554820 (= lt!252090 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554821 () Bool)

(declare-fun res!347384 () Bool)

(assert (=> b!554821 (=> (not res!347384) (not e!319837))))

(assert (=> b!554821 (= res!347384 (and (= (size!17139 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17139 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17139 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554822 () Bool)

(declare-fun res!347382 () Bool)

(assert (=> b!554822 (=> (not res!347382) (not e!319837))))

(assert (=> b!554822 (= res!347382 (validKeyInArray!0 k!1914))))

(assert (= (and start!50760 res!347378) b!554821))

(assert (= (and b!554821 res!347384) b!554817))

(assert (= (and b!554817 res!347380) b!554822))

(assert (= (and b!554822 res!347382) b!554819))

(assert (= (and b!554819 res!347383) b!554820))

(assert (= (and b!554820 res!347377) b!554814))

(assert (= (and b!554814 res!347379) b!554816))

(assert (= (and b!554816 res!347376) b!554818))

(assert (= (and b!554818 res!347381) b!554815))

(declare-fun m!532361 () Bool)

(assert (=> b!554822 m!532361))

(declare-fun m!532363 () Bool)

(assert (=> start!50760 m!532363))

(declare-fun m!532365 () Bool)

(assert (=> start!50760 m!532365))

(declare-fun m!532367 () Bool)

(assert (=> b!554818 m!532367))

(declare-fun m!532369 () Bool)

(assert (=> b!554818 m!532369))

(assert (=> b!554818 m!532367))

(declare-fun m!532371 () Bool)

(assert (=> b!554818 m!532371))

(assert (=> b!554818 m!532367))

(declare-fun m!532373 () Bool)

(assert (=> b!554818 m!532373))

(declare-fun m!532375 () Bool)

(assert (=> b!554818 m!532375))

(assert (=> b!554818 m!532371))

(declare-fun m!532377 () Bool)

(assert (=> b!554818 m!532377))

(assert (=> b!554818 m!532371))

(declare-fun m!532379 () Bool)

(assert (=> b!554818 m!532379))

(declare-fun m!532381 () Bool)

(assert (=> b!554819 m!532381))

(assert (=> b!554815 m!532367))

(declare-fun m!532383 () Bool)

(assert (=> b!554815 m!532383))

(declare-fun m!532385 () Bool)

(assert (=> b!554815 m!532385))

(declare-fun m!532387 () Bool)

(assert (=> b!554815 m!532387))

(assert (=> b!554815 m!532367))

(declare-fun m!532389 () Bool)

(assert (=> b!554815 m!532389))

(declare-fun m!532391 () Bool)

(assert (=> b!554820 m!532391))

(declare-fun m!532393 () Bool)

(assert (=> b!554814 m!532393))

(declare-fun m!532395 () Bool)

(assert (=> b!554816 m!532395))

(assert (=> b!554817 m!532367))

(assert (=> b!554817 m!532367))

(declare-fun m!532397 () Bool)

(assert (=> b!554817 m!532397))

(push 1)

(assert (not b!554820))

(assert (not b!554818))

(assert (not b!554822))

(assert (not b!554819))

(assert (not b!554815))

(assert (not start!50760))

(assert (not b!554814))

(assert (not b!554816))

(assert (not b!554817))

(check-sat)

