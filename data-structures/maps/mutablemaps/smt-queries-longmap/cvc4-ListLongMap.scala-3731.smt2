; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51402 () Bool)

(assert start!51402)

(declare-fun b!560984 () Bool)

(declare-fun res!352297 () Bool)

(declare-fun e!323255 () Bool)

(assert (=> b!560984 (=> (not res!352297) (not e!323255))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35221 0))(
  ( (array!35222 (arr!16907 (Array (_ BitVec 32) (_ BitVec 64))) (size!17271 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35221)

(assert (=> b!560984 (= res!352297 (and (= (size!17271 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17271 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17271 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560985 () Bool)

(declare-fun e!323260 () Bool)

(declare-fun e!323253 () Bool)

(assert (=> b!560985 (= e!323260 e!323253)))

(declare-fun res!352286 () Bool)

(assert (=> b!560985 (=> res!352286 e!323253)))

(declare-fun lt!255292 () (_ BitVec 64))

(assert (=> b!560985 (= res!352286 (or (= lt!255292 (select (arr!16907 a!3118) j!142)) (= lt!255292 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5363 0))(
  ( (MissingZero!5363 (index!23679 (_ BitVec 32))) (Found!5363 (index!23680 (_ BitVec 32))) (Intermediate!5363 (undefined!6175 Bool) (index!23681 (_ BitVec 32)) (x!52613 (_ BitVec 32))) (Undefined!5363) (MissingVacant!5363 (index!23682 (_ BitVec 32))) )
))
(declare-fun lt!255293 () SeekEntryResult!5363)

(assert (=> b!560985 (= lt!255292 (select (arr!16907 a!3118) (index!23681 lt!255293)))))

(declare-fun b!560986 () Bool)

(declare-fun res!352295 () Bool)

(assert (=> b!560986 (=> (not res!352295) (not e!323255))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560986 (= res!352295 (validKeyInArray!0 k!1914))))

(declare-fun res!352290 () Bool)

(assert (=> start!51402 (=> (not res!352290) (not e!323255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51402 (= res!352290 (validMask!0 mask!3119))))

(assert (=> start!51402 e!323255))

(assert (=> start!51402 true))

(declare-fun array_inv!12681 (array!35221) Bool)

(assert (=> start!51402 (array_inv!12681 a!3118)))

(declare-fun b!560987 () Bool)

(declare-fun res!352293 () Bool)

(assert (=> b!560987 (=> (not res!352293) (not e!323255))))

(assert (=> b!560987 (= res!352293 (validKeyInArray!0 (select (arr!16907 a!3118) j!142)))))

(declare-fun b!560988 () Bool)

(declare-fun res!352294 () Bool)

(declare-fun e!323254 () Bool)

(assert (=> b!560988 (=> (not res!352294) (not e!323254))))

(declare-datatypes ((List!11040 0))(
  ( (Nil!11037) (Cons!11036 (h!12039 (_ BitVec 64)) (t!17276 List!11040)) )
))
(declare-fun arrayNoDuplicates!0 (array!35221 (_ BitVec 32) List!11040) Bool)

(assert (=> b!560988 (= res!352294 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11037))))

(declare-fun b!560989 () Bool)

(declare-fun res!352292 () Bool)

(assert (=> b!560989 (=> (not res!352292) (not e!323255))))

(declare-fun arrayContainsKey!0 (array!35221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560989 (= res!352292 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun lt!255291 () (_ BitVec 64))

(declare-fun lt!255299 () array!35221)

(declare-fun b!560990 () Bool)

(declare-fun e!323256 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35221 (_ BitVec 32)) SeekEntryResult!5363)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35221 (_ BitVec 32)) SeekEntryResult!5363)

(assert (=> b!560990 (= e!323256 (= (seekEntryOrOpen!0 lt!255291 lt!255299 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52613 lt!255293) (index!23681 lt!255293) (index!23681 lt!255293) lt!255291 lt!255299 mask!3119)))))

(declare-fun b!560991 () Bool)

(declare-fun e!323258 () Bool)

(assert (=> b!560991 (= e!323258 e!323260)))

(declare-fun res!352289 () Bool)

(assert (=> b!560991 (=> res!352289 e!323260)))

(assert (=> b!560991 (= res!352289 (or (undefined!6175 lt!255293) (not (is-Intermediate!5363 lt!255293))))))

(declare-fun b!560992 () Bool)

(declare-fun e!323259 () Bool)

(assert (=> b!560992 (= e!323259 (not true))))

(assert (=> b!560992 e!323258))

(declare-fun res!352288 () Bool)

(assert (=> b!560992 (=> (not res!352288) (not e!323258))))

(declare-fun lt!255298 () SeekEntryResult!5363)

(assert (=> b!560992 (= res!352288 (= lt!255298 (Found!5363 j!142)))))

(assert (=> b!560992 (= lt!255298 (seekEntryOrOpen!0 (select (arr!16907 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35221 (_ BitVec 32)) Bool)

(assert (=> b!560992 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17500 0))(
  ( (Unit!17501) )
))
(declare-fun lt!255295 () Unit!17500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17500)

(assert (=> b!560992 (= lt!255295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560993 () Bool)

(assert (=> b!560993 (= e!323254 e!323259)))

(declare-fun res!352287 () Bool)

(assert (=> b!560993 (=> (not res!352287) (not e!323259))))

(declare-fun lt!255297 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35221 (_ BitVec 32)) SeekEntryResult!5363)

(assert (=> b!560993 (= res!352287 (= lt!255293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255297 lt!255291 lt!255299 mask!3119)))))

(declare-fun lt!255296 () (_ BitVec 32))

(assert (=> b!560993 (= lt!255293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255296 (select (arr!16907 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560993 (= lt!255297 (toIndex!0 lt!255291 mask!3119))))

(assert (=> b!560993 (= lt!255291 (select (store (arr!16907 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560993 (= lt!255296 (toIndex!0 (select (arr!16907 a!3118) j!142) mask!3119))))

(assert (=> b!560993 (= lt!255299 (array!35222 (store (arr!16907 a!3118) i!1132 k!1914) (size!17271 a!3118)))))

(declare-fun b!560994 () Bool)

(assert (=> b!560994 (= e!323255 e!323254)))

(declare-fun res!352296 () Bool)

(assert (=> b!560994 (=> (not res!352296) (not e!323254))))

(declare-fun lt!255294 () SeekEntryResult!5363)

(assert (=> b!560994 (= res!352296 (or (= lt!255294 (MissingZero!5363 i!1132)) (= lt!255294 (MissingVacant!5363 i!1132))))))

(assert (=> b!560994 (= lt!255294 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560995 () Bool)

(declare-fun res!352291 () Bool)

(assert (=> b!560995 (=> (not res!352291) (not e!323254))))

(assert (=> b!560995 (= res!352291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560996 () Bool)

(assert (=> b!560996 (= e!323253 e!323256)))

(declare-fun res!352298 () Bool)

(assert (=> b!560996 (=> (not res!352298) (not e!323256))))

(assert (=> b!560996 (= res!352298 (= lt!255298 (seekKeyOrZeroReturnVacant!0 (x!52613 lt!255293) (index!23681 lt!255293) (index!23681 lt!255293) (select (arr!16907 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51402 res!352290) b!560984))

(assert (= (and b!560984 res!352297) b!560987))

(assert (= (and b!560987 res!352293) b!560986))

(assert (= (and b!560986 res!352295) b!560989))

(assert (= (and b!560989 res!352292) b!560994))

(assert (= (and b!560994 res!352296) b!560995))

(assert (= (and b!560995 res!352291) b!560988))

(assert (= (and b!560988 res!352294) b!560993))

(assert (= (and b!560993 res!352287) b!560992))

(assert (= (and b!560992 res!352288) b!560991))

(assert (= (and b!560991 (not res!352289)) b!560985))

(assert (= (and b!560985 (not res!352286)) b!560996))

(assert (= (and b!560996 res!352298) b!560990))

(declare-fun m!538883 () Bool)

(assert (=> b!560993 m!538883))

(declare-fun m!538885 () Bool)

(assert (=> b!560993 m!538885))

(assert (=> b!560993 m!538883))

(declare-fun m!538887 () Bool)

(assert (=> b!560993 m!538887))

(declare-fun m!538889 () Bool)

(assert (=> b!560993 m!538889))

(assert (=> b!560993 m!538883))

(declare-fun m!538891 () Bool)

(assert (=> b!560993 m!538891))

(declare-fun m!538893 () Bool)

(assert (=> b!560993 m!538893))

(declare-fun m!538895 () Bool)

(assert (=> b!560993 m!538895))

(declare-fun m!538897 () Bool)

(assert (=> b!560995 m!538897))

(assert (=> b!560987 m!538883))

(assert (=> b!560987 m!538883))

(declare-fun m!538899 () Bool)

(assert (=> b!560987 m!538899))

(declare-fun m!538901 () Bool)

(assert (=> b!560986 m!538901))

(declare-fun m!538903 () Bool)

(assert (=> b!560990 m!538903))

(declare-fun m!538905 () Bool)

(assert (=> b!560990 m!538905))

(declare-fun m!538907 () Bool)

(assert (=> start!51402 m!538907))

(declare-fun m!538909 () Bool)

(assert (=> start!51402 m!538909))

(assert (=> b!560996 m!538883))

(assert (=> b!560996 m!538883))

(declare-fun m!538911 () Bool)

(assert (=> b!560996 m!538911))

(assert (=> b!560992 m!538883))

(assert (=> b!560992 m!538883))

(declare-fun m!538913 () Bool)

(assert (=> b!560992 m!538913))

(declare-fun m!538915 () Bool)

(assert (=> b!560992 m!538915))

(declare-fun m!538917 () Bool)

(assert (=> b!560992 m!538917))

(assert (=> b!560985 m!538883))

(declare-fun m!538919 () Bool)

(assert (=> b!560985 m!538919))

(declare-fun m!538921 () Bool)

(assert (=> b!560988 m!538921))

(declare-fun m!538923 () Bool)

(assert (=> b!560989 m!538923))

(declare-fun m!538925 () Bool)

(assert (=> b!560994 m!538925))

(push 1)

