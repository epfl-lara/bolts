; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50754 () Bool)

(assert start!50754)

(declare-fun b!554733 () Bool)

(declare-fun res!347301 () Bool)

(declare-fun e!319804 () Bool)

(assert (=> b!554733 (=> (not res!347301) (not e!319804))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34933 0))(
  ( (array!34934 (arr!16772 (Array (_ BitVec 32) (_ BitVec 64))) (size!17136 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34933)

(assert (=> b!554733 (= res!347301 (and (= (size!17136 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17136 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17136 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554734 () Bool)

(declare-fun res!347296 () Bool)

(assert (=> b!554734 (=> (not res!347296) (not e!319804))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554734 (= res!347296 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554735 () Bool)

(declare-fun e!319803 () Bool)

(assert (=> b!554735 (= e!319804 e!319803)))

(declare-fun res!347300 () Bool)

(assert (=> b!554735 (=> (not res!347300) (not e!319803))))

(declare-datatypes ((SeekEntryResult!5228 0))(
  ( (MissingZero!5228 (index!23139 (_ BitVec 32))) (Found!5228 (index!23140 (_ BitVec 32))) (Intermediate!5228 (undefined!6040 Bool) (index!23141 (_ BitVec 32)) (x!52073 (_ BitVec 32))) (Undefined!5228) (MissingVacant!5228 (index!23142 (_ BitVec 32))) )
))
(declare-fun lt!252040 () SeekEntryResult!5228)

(assert (=> b!554735 (= res!347300 (or (= lt!252040 (MissingZero!5228 i!1132)) (= lt!252040 (MissingVacant!5228 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34933 (_ BitVec 32)) SeekEntryResult!5228)

(assert (=> b!554735 (= lt!252040 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554736 () Bool)

(declare-fun res!347295 () Bool)

(assert (=> b!554736 (=> (not res!347295) (not e!319803))))

(declare-datatypes ((List!10905 0))(
  ( (Nil!10902) (Cons!10901 (h!11886 (_ BitVec 64)) (t!17141 List!10905)) )
))
(declare-fun arrayNoDuplicates!0 (array!34933 (_ BitVec 32) List!10905) Bool)

(assert (=> b!554736 (= res!347295 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10902))))

(declare-fun b!554737 () Bool)

(declare-fun res!347303 () Bool)

(assert (=> b!554737 (=> (not res!347303) (not e!319804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554737 (= res!347303 (validKeyInArray!0 (select (arr!16772 a!3118) j!142)))))

(declare-fun b!554738 () Bool)

(declare-fun e!319801 () Bool)

(assert (=> b!554738 (= e!319803 e!319801)))

(declare-fun res!347302 () Bool)

(assert (=> b!554738 (=> (not res!347302) (not e!319801))))

(declare-fun lt!252038 () (_ BitVec 32))

(declare-fun lt!252041 () SeekEntryResult!5228)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34933 (_ BitVec 32)) SeekEntryResult!5228)

(assert (=> b!554738 (= res!347302 (= lt!252041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252038 (select (store (arr!16772 a!3118) i!1132 k!1914) j!142) (array!34934 (store (arr!16772 a!3118) i!1132 k!1914) (size!17136 a!3118)) mask!3119)))))

(declare-fun lt!252036 () (_ BitVec 32))

(assert (=> b!554738 (= lt!252041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252036 (select (arr!16772 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554738 (= lt!252038 (toIndex!0 (select (store (arr!16772 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554738 (= lt!252036 (toIndex!0 (select (arr!16772 a!3118) j!142) mask!3119))))

(declare-fun b!554740 () Bool)

(declare-fun res!347298 () Bool)

(assert (=> b!554740 (=> (not res!347298) (not e!319803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34933 (_ BitVec 32)) Bool)

(assert (=> b!554740 (= res!347298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554741 () Bool)

(assert (=> b!554741 (= e!319801 (not true))))

(declare-fun lt!252039 () SeekEntryResult!5228)

(assert (=> b!554741 (and (= lt!252039 (Found!5228 j!142)) (or (undefined!6040 lt!252041) (not (is-Intermediate!5228 lt!252041)) (= (select (arr!16772 a!3118) (index!23141 lt!252041)) (select (arr!16772 a!3118) j!142)) (not (= (select (arr!16772 a!3118) (index!23141 lt!252041)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252039 (MissingZero!5228 (index!23141 lt!252041)))))))

(assert (=> b!554741 (= lt!252039 (seekEntryOrOpen!0 (select (arr!16772 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554741 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17230 0))(
  ( (Unit!17231) )
))
(declare-fun lt!252037 () Unit!17230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17230)

(assert (=> b!554741 (= lt!252037 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554739 () Bool)

(declare-fun res!347299 () Bool)

(assert (=> b!554739 (=> (not res!347299) (not e!319804))))

(assert (=> b!554739 (= res!347299 (validKeyInArray!0 k!1914))))

(declare-fun res!347297 () Bool)

(assert (=> start!50754 (=> (not res!347297) (not e!319804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50754 (= res!347297 (validMask!0 mask!3119))))

(assert (=> start!50754 e!319804))

(assert (=> start!50754 true))

(declare-fun array_inv!12546 (array!34933) Bool)

(assert (=> start!50754 (array_inv!12546 a!3118)))

(assert (= (and start!50754 res!347297) b!554733))

(assert (= (and b!554733 res!347301) b!554737))

(assert (= (and b!554737 res!347303) b!554739))

(assert (= (and b!554739 res!347299) b!554734))

(assert (= (and b!554734 res!347296) b!554735))

(assert (= (and b!554735 res!347300) b!554740))

(assert (= (and b!554740 res!347298) b!554736))

(assert (= (and b!554736 res!347295) b!554738))

(assert (= (and b!554738 res!347302) b!554741))

(declare-fun m!532247 () Bool)

(assert (=> b!554736 m!532247))

(declare-fun m!532249 () Bool)

(assert (=> start!50754 m!532249))

(declare-fun m!532251 () Bool)

(assert (=> start!50754 m!532251))

(declare-fun m!532253 () Bool)

(assert (=> b!554740 m!532253))

(declare-fun m!532255 () Bool)

(assert (=> b!554734 m!532255))

(declare-fun m!532257 () Bool)

(assert (=> b!554738 m!532257))

(declare-fun m!532259 () Bool)

(assert (=> b!554738 m!532259))

(assert (=> b!554738 m!532257))

(declare-fun m!532261 () Bool)

(assert (=> b!554738 m!532261))

(assert (=> b!554738 m!532261))

(declare-fun m!532263 () Bool)

(assert (=> b!554738 m!532263))

(declare-fun m!532265 () Bool)

(assert (=> b!554738 m!532265))

(assert (=> b!554738 m!532257))

(declare-fun m!532267 () Bool)

(assert (=> b!554738 m!532267))

(assert (=> b!554738 m!532261))

(declare-fun m!532269 () Bool)

(assert (=> b!554738 m!532269))

(declare-fun m!532271 () Bool)

(assert (=> b!554735 m!532271))

(declare-fun m!532273 () Bool)

(assert (=> b!554741 m!532273))

(assert (=> b!554741 m!532257))

(declare-fun m!532275 () Bool)

(assert (=> b!554741 m!532275))

(declare-fun m!532277 () Bool)

(assert (=> b!554741 m!532277))

(assert (=> b!554741 m!532257))

(declare-fun m!532279 () Bool)

(assert (=> b!554741 m!532279))

(declare-fun m!532281 () Bool)

(assert (=> b!554739 m!532281))

(assert (=> b!554737 m!532257))

(assert (=> b!554737 m!532257))

(declare-fun m!532283 () Bool)

(assert (=> b!554737 m!532283))

(push 1)

