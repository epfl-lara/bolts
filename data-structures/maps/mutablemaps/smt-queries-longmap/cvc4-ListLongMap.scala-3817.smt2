; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52410 () Bool)

(assert start!52410)

(declare-fun b!571412 () Bool)

(declare-fun e!328663 () Bool)

(declare-fun e!328659 () Bool)

(assert (=> b!571412 (= e!328663 e!328659)))

(declare-fun res!361072 () Bool)

(assert (=> b!571412 (=> res!361072 e!328659)))

(declare-datatypes ((SeekEntryResult!5621 0))(
  ( (MissingZero!5621 (index!24711 (_ BitVec 32))) (Found!5621 (index!24712 (_ BitVec 32))) (Intermediate!5621 (undefined!6433 Bool) (index!24713 (_ BitVec 32)) (x!53613 (_ BitVec 32))) (Undefined!5621) (MissingVacant!5621 (index!24714 (_ BitVec 32))) )
))
(declare-fun lt!260627 () SeekEntryResult!5621)

(assert (=> b!571412 (= res!361072 (or (undefined!6433 lt!260627) (not (is-Intermediate!5621 lt!260627))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!260623 () (_ BitVec 64))

(declare-fun b!571413 () Bool)

(declare-datatypes ((array!35761 0))(
  ( (array!35762 (arr!17165 (Array (_ BitVec 32) (_ BitVec 64))) (size!17529 (_ BitVec 32))) )
))
(declare-fun lt!260622 () array!35761)

(declare-fun e!328658 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35761 (_ BitVec 32)) SeekEntryResult!5621)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35761 (_ BitVec 32)) SeekEntryResult!5621)

(assert (=> b!571413 (= e!328658 (= (seekEntryOrOpen!0 lt!260623 lt!260622 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53613 lt!260627) (index!24713 lt!260627) (index!24713 lt!260627) lt!260623 lt!260622 mask!3119)))))

(declare-fun b!571414 () Bool)

(declare-fun res!361073 () Bool)

(declare-fun e!328662 () Bool)

(assert (=> b!571414 (=> (not res!361073) (not e!328662))))

(declare-fun a!3118 () array!35761)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35761 (_ BitVec 32)) Bool)

(assert (=> b!571414 (= res!361073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571415 () Bool)

(declare-fun e!328656 () Bool)

(assert (=> b!571415 (= e!328656 e!328658)))

(declare-fun res!361070 () Bool)

(assert (=> b!571415 (=> (not res!361070) (not e!328658))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260625 () SeekEntryResult!5621)

(assert (=> b!571415 (= res!361070 (= lt!260625 (seekKeyOrZeroReturnVacant!0 (x!53613 lt!260627) (index!24713 lt!260627) (index!24713 lt!260627) (select (arr!17165 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571416 () Bool)

(declare-fun e!328657 () Bool)

(assert (=> b!571416 (= e!328657 e!328662)))

(declare-fun res!361078 () Bool)

(assert (=> b!571416 (=> (not res!361078) (not e!328662))))

(declare-fun lt!260626 () SeekEntryResult!5621)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571416 (= res!361078 (or (= lt!260626 (MissingZero!5621 i!1132)) (= lt!260626 (MissingVacant!5621 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!571416 (= lt!260626 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571417 () Bool)

(declare-fun e!328661 () Bool)

(assert (=> b!571417 (= e!328661 (not true))))

(assert (=> b!571417 e!328663))

(declare-fun res!361071 () Bool)

(assert (=> b!571417 (=> (not res!361071) (not e!328663))))

(assert (=> b!571417 (= res!361071 (= lt!260625 (Found!5621 j!142)))))

(assert (=> b!571417 (= lt!260625 (seekEntryOrOpen!0 (select (arr!17165 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571417 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17944 0))(
  ( (Unit!17945) )
))
(declare-fun lt!260630 () Unit!17944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17944)

(assert (=> b!571417 (= lt!260630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!361074 () Bool)

(assert (=> start!52410 (=> (not res!361074) (not e!328657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52410 (= res!361074 (validMask!0 mask!3119))))

(assert (=> start!52410 e!328657))

(assert (=> start!52410 true))

(declare-fun array_inv!12939 (array!35761) Bool)

(assert (=> start!52410 (array_inv!12939 a!3118)))

(declare-fun b!571418 () Bool)

(declare-fun res!361079 () Bool)

(assert (=> b!571418 (=> (not res!361079) (not e!328657))))

(assert (=> b!571418 (= res!361079 (and (= (size!17529 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17529 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17529 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571419 () Bool)

(declare-fun res!361077 () Bool)

(assert (=> b!571419 (=> (not res!361077) (not e!328657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571419 (= res!361077 (validKeyInArray!0 (select (arr!17165 a!3118) j!142)))))

(declare-fun b!571420 () Bool)

(declare-fun res!361080 () Bool)

(assert (=> b!571420 (=> (not res!361080) (not e!328662))))

(declare-datatypes ((List!11298 0))(
  ( (Nil!11295) (Cons!11294 (h!12321 (_ BitVec 64)) (t!17534 List!11298)) )
))
(declare-fun arrayNoDuplicates!0 (array!35761 (_ BitVec 32) List!11298) Bool)

(assert (=> b!571420 (= res!361080 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11295))))

(declare-fun b!571421 () Bool)

(assert (=> b!571421 (= e!328659 e!328656)))

(declare-fun res!361081 () Bool)

(assert (=> b!571421 (=> res!361081 e!328656)))

(declare-fun lt!260628 () (_ BitVec 64))

(assert (=> b!571421 (= res!361081 (or (= lt!260628 (select (arr!17165 a!3118) j!142)) (= lt!260628 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571421 (= lt!260628 (select (arr!17165 a!3118) (index!24713 lt!260627)))))

(declare-fun b!571422 () Bool)

(declare-fun res!361076 () Bool)

(assert (=> b!571422 (=> (not res!361076) (not e!328657))))

(assert (=> b!571422 (= res!361076 (validKeyInArray!0 k!1914))))

(declare-fun b!571423 () Bool)

(assert (=> b!571423 (= e!328662 e!328661)))

(declare-fun res!361075 () Bool)

(assert (=> b!571423 (=> (not res!361075) (not e!328661))))

(declare-fun lt!260629 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35761 (_ BitVec 32)) SeekEntryResult!5621)

(assert (=> b!571423 (= res!361075 (= lt!260627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260629 lt!260623 lt!260622 mask!3119)))))

(declare-fun lt!260624 () (_ BitVec 32))

(assert (=> b!571423 (= lt!260627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260624 (select (arr!17165 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571423 (= lt!260629 (toIndex!0 lt!260623 mask!3119))))

(assert (=> b!571423 (= lt!260623 (select (store (arr!17165 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571423 (= lt!260624 (toIndex!0 (select (arr!17165 a!3118) j!142) mask!3119))))

(assert (=> b!571423 (= lt!260622 (array!35762 (store (arr!17165 a!3118) i!1132 k!1914) (size!17529 a!3118)))))

(declare-fun b!571424 () Bool)

(declare-fun res!361082 () Bool)

(assert (=> b!571424 (=> (not res!361082) (not e!328657))))

(declare-fun arrayContainsKey!0 (array!35761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571424 (= res!361082 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52410 res!361074) b!571418))

(assert (= (and b!571418 res!361079) b!571419))

(assert (= (and b!571419 res!361077) b!571422))

(assert (= (and b!571422 res!361076) b!571424))

(assert (= (and b!571424 res!361082) b!571416))

(assert (= (and b!571416 res!361078) b!571414))

(assert (= (and b!571414 res!361073) b!571420))

(assert (= (and b!571420 res!361080) b!571423))

(assert (= (and b!571423 res!361075) b!571417))

(assert (= (and b!571417 res!361071) b!571412))

(assert (= (and b!571412 (not res!361072)) b!571421))

(assert (= (and b!571421 (not res!361081)) b!571415))

(assert (= (and b!571415 res!361070) b!571413))

(declare-fun m!550319 () Bool)

(assert (=> b!571413 m!550319))

(declare-fun m!550321 () Bool)

(assert (=> b!571413 m!550321))

(declare-fun m!550323 () Bool)

(assert (=> b!571417 m!550323))

(assert (=> b!571417 m!550323))

(declare-fun m!550325 () Bool)

(assert (=> b!571417 m!550325))

(declare-fun m!550327 () Bool)

(assert (=> b!571417 m!550327))

(declare-fun m!550329 () Bool)

(assert (=> b!571417 m!550329))

(assert (=> b!571423 m!550323))

(declare-fun m!550331 () Bool)

(assert (=> b!571423 m!550331))

(declare-fun m!550333 () Bool)

(assert (=> b!571423 m!550333))

(assert (=> b!571423 m!550323))

(declare-fun m!550335 () Bool)

(assert (=> b!571423 m!550335))

(declare-fun m!550337 () Bool)

(assert (=> b!571423 m!550337))

(declare-fun m!550339 () Bool)

(assert (=> b!571423 m!550339))

(assert (=> b!571423 m!550323))

(declare-fun m!550341 () Bool)

(assert (=> b!571423 m!550341))

(assert (=> b!571421 m!550323))

(declare-fun m!550343 () Bool)

(assert (=> b!571421 m!550343))

(assert (=> b!571419 m!550323))

(assert (=> b!571419 m!550323))

(declare-fun m!550345 () Bool)

(assert (=> b!571419 m!550345))

(declare-fun m!550347 () Bool)

(assert (=> b!571422 m!550347))

(declare-fun m!550349 () Bool)

(assert (=> b!571420 m!550349))

(assert (=> b!571415 m!550323))

(assert (=> b!571415 m!550323))

(declare-fun m!550351 () Bool)

(assert (=> b!571415 m!550351))

(declare-fun m!550353 () Bool)

(assert (=> start!52410 m!550353))

(declare-fun m!550355 () Bool)

(assert (=> start!52410 m!550355))

(declare-fun m!550357 () Bool)

(assert (=> b!571424 m!550357))

(declare-fun m!550359 () Bool)

(assert (=> b!571416 m!550359))

(declare-fun m!550361 () Bool)

(assert (=> b!571414 m!550361))

(push 1)

