; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50664 () Bool)

(assert start!50664)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!319226 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!553418 () Bool)

(declare-datatypes ((SeekEntryResult!5183 0))(
  ( (MissingZero!5183 (index!22959 (_ BitVec 32))) (Found!5183 (index!22960 (_ BitVec 32))) (Intermediate!5183 (undefined!5995 Bool) (index!22961 (_ BitVec 32)) (x!51908 (_ BitVec 32))) (Undefined!5183) (MissingVacant!5183 (index!22962 (_ BitVec 32))) )
))
(declare-fun lt!251508 () SeekEntryResult!5183)

(declare-datatypes ((array!34843 0))(
  ( (array!34844 (arr!16727 (Array (_ BitVec 32) (_ BitVec 64))) (size!17091 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34843)

(assert (=> b!553418 (= e!319226 (not (or (not (is-Intermediate!5183 lt!251508)) (undefined!5995 lt!251508) (not (= (select (arr!16727 a!3118) (index!22961 lt!251508)) (select (arr!16727 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!319228 () Bool)

(assert (=> b!553418 e!319228))

(declare-fun res!345983 () Bool)

(assert (=> b!553418 (=> (not res!345983) (not e!319228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34843 (_ BitVec 32)) Bool)

(assert (=> b!553418 (= res!345983 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17140 0))(
  ( (Unit!17141) )
))
(declare-fun lt!251506 () Unit!17140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17140)

(assert (=> b!553418 (= lt!251506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553419 () Bool)

(declare-fun res!345980 () Bool)

(declare-fun e!319225 () Bool)

(assert (=> b!553419 (=> (not res!345980) (not e!319225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553419 (= res!345980 (validKeyInArray!0 (select (arr!16727 a!3118) j!142)))))

(declare-fun b!553420 () Bool)

(declare-fun e!319227 () Bool)

(assert (=> b!553420 (= e!319227 e!319226)))

(declare-fun res!345988 () Bool)

(assert (=> b!553420 (=> (not res!345988) (not e!319226))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!251509 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34843 (_ BitVec 32)) SeekEntryResult!5183)

(assert (=> b!553420 (= res!345988 (= lt!251508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251509 (select (store (arr!16727 a!3118) i!1132 k!1914) j!142) (array!34844 (store (arr!16727 a!3118) i!1132 k!1914) (size!17091 a!3118)) mask!3119)))))

(declare-fun lt!251510 () (_ BitVec 32))

(assert (=> b!553420 (= lt!251508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251510 (select (arr!16727 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553420 (= lt!251509 (toIndex!0 (select (store (arr!16727 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553420 (= lt!251510 (toIndex!0 (select (arr!16727 a!3118) j!142) mask!3119))))

(declare-fun b!553421 () Bool)

(declare-fun res!345982 () Bool)

(assert (=> b!553421 (=> (not res!345982) (not e!319225))))

(declare-fun arrayContainsKey!0 (array!34843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553421 (= res!345982 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553422 () Bool)

(declare-fun res!345981 () Bool)

(assert (=> b!553422 (=> (not res!345981) (not e!319225))))

(assert (=> b!553422 (= res!345981 (and (= (size!17091 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17091 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17091 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553423 () Bool)

(declare-fun res!345985 () Bool)

(assert (=> b!553423 (=> (not res!345985) (not e!319227))))

(assert (=> b!553423 (= res!345985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553424 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34843 (_ BitVec 32)) SeekEntryResult!5183)

(assert (=> b!553424 (= e!319228 (= (seekEntryOrOpen!0 (select (arr!16727 a!3118) j!142) a!3118 mask!3119) (Found!5183 j!142)))))

(declare-fun b!553425 () Bool)

(assert (=> b!553425 (= e!319225 e!319227)))

(declare-fun res!345984 () Bool)

(assert (=> b!553425 (=> (not res!345984) (not e!319227))))

(declare-fun lt!251507 () SeekEntryResult!5183)

(assert (=> b!553425 (= res!345984 (or (= lt!251507 (MissingZero!5183 i!1132)) (= lt!251507 (MissingVacant!5183 i!1132))))))

(assert (=> b!553425 (= lt!251507 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553426 () Bool)

(declare-fun res!345989 () Bool)

(assert (=> b!553426 (=> (not res!345989) (not e!319225))))

(assert (=> b!553426 (= res!345989 (validKeyInArray!0 k!1914))))

(declare-fun b!553427 () Bool)

(declare-fun res!345986 () Bool)

(assert (=> b!553427 (=> (not res!345986) (not e!319227))))

(declare-datatypes ((List!10860 0))(
  ( (Nil!10857) (Cons!10856 (h!11841 (_ BitVec 64)) (t!17096 List!10860)) )
))
(declare-fun arrayNoDuplicates!0 (array!34843 (_ BitVec 32) List!10860) Bool)

(assert (=> b!553427 (= res!345986 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10857))))

(declare-fun res!345987 () Bool)

(assert (=> start!50664 (=> (not res!345987) (not e!319225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50664 (= res!345987 (validMask!0 mask!3119))))

(assert (=> start!50664 e!319225))

(assert (=> start!50664 true))

(declare-fun array_inv!12501 (array!34843) Bool)

(assert (=> start!50664 (array_inv!12501 a!3118)))

(assert (= (and start!50664 res!345987) b!553422))

(assert (= (and b!553422 res!345981) b!553419))

(assert (= (and b!553419 res!345980) b!553426))

(assert (= (and b!553426 res!345989) b!553421))

(assert (= (and b!553421 res!345982) b!553425))

(assert (= (and b!553425 res!345984) b!553423))

(assert (= (and b!553423 res!345985) b!553427))

(assert (= (and b!553427 res!345986) b!553420))

(assert (= (and b!553420 res!345988) b!553418))

(assert (= (and b!553418 res!345983) b!553424))

(declare-fun m!530573 () Bool)

(assert (=> b!553418 m!530573))

(declare-fun m!530575 () Bool)

(assert (=> b!553418 m!530575))

(declare-fun m!530577 () Bool)

(assert (=> b!553418 m!530577))

(declare-fun m!530579 () Bool)

(assert (=> b!553418 m!530579))

(declare-fun m!530581 () Bool)

(assert (=> b!553421 m!530581))

(declare-fun m!530583 () Bool)

(assert (=> b!553427 m!530583))

(assert (=> b!553424 m!530575))

(assert (=> b!553424 m!530575))

(declare-fun m!530585 () Bool)

(assert (=> b!553424 m!530585))

(declare-fun m!530587 () Bool)

(assert (=> b!553425 m!530587))

(assert (=> b!553420 m!530575))

(declare-fun m!530589 () Bool)

(assert (=> b!553420 m!530589))

(assert (=> b!553420 m!530575))

(declare-fun m!530591 () Bool)

(assert (=> b!553420 m!530591))

(assert (=> b!553420 m!530575))

(declare-fun m!530593 () Bool)

(assert (=> b!553420 m!530593))

(assert (=> b!553420 m!530593))

(declare-fun m!530595 () Bool)

(assert (=> b!553420 m!530595))

(declare-fun m!530597 () Bool)

(assert (=> b!553420 m!530597))

(assert (=> b!553420 m!530593))

(declare-fun m!530599 () Bool)

(assert (=> b!553420 m!530599))

(declare-fun m!530601 () Bool)

(assert (=> b!553423 m!530601))

(declare-fun m!530603 () Bool)

(assert (=> start!50664 m!530603))

(declare-fun m!530605 () Bool)

(assert (=> start!50664 m!530605))

(declare-fun m!530607 () Bool)

(assert (=> b!553426 m!530607))

(assert (=> b!553419 m!530575))

(assert (=> b!553419 m!530575))

(declare-fun m!530609 () Bool)

(assert (=> b!553419 m!530609))

(push 1)

