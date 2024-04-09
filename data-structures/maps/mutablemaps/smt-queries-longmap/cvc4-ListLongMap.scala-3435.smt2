; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47744 () Bool)

(assert start!47744)

(declare-fun b!525019 () Bool)

(declare-fun e!306145 () Bool)

(declare-fun e!306141 () Bool)

(assert (=> b!525019 (= e!306145 (not e!306141))))

(declare-fun res!321975 () Bool)

(assert (=> b!525019 (=> res!321975 e!306141)))

(declare-datatypes ((array!33341 0))(
  ( (array!33342 (arr!16019 (Array (_ BitVec 32) (_ BitVec 64))) (size!16383 (_ BitVec 32))) )
))
(declare-fun lt!241203 () array!33341)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!241205 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4493 0))(
  ( (MissingZero!4493 (index!20184 (_ BitVec 32))) (Found!4493 (index!20185 (_ BitVec 32))) (Intermediate!4493 (undefined!5305 Bool) (index!20186 (_ BitVec 32)) (x!49189 (_ BitVec 32))) (Undefined!4493) (MissingVacant!4493 (index!20187 (_ BitVec 32))) )
))
(declare-fun lt!241200 () SeekEntryResult!4493)

(declare-fun lt!241204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33341 (_ BitVec 32)) SeekEntryResult!4493)

(assert (=> b!525019 (= res!321975 (= lt!241200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241204 lt!241205 lt!241203 mask!3524)))))

(declare-fun a!3235 () array!33341)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241202 () (_ BitVec 32))

(assert (=> b!525019 (= lt!241200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241202 (select (arr!16019 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525019 (= lt!241204 (toIndex!0 lt!241205 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525019 (= lt!241205 (select (store (arr!16019 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525019 (= lt!241202 (toIndex!0 (select (arr!16019 a!3235) j!176) mask!3524))))

(assert (=> b!525019 (= lt!241203 (array!33342 (store (arr!16019 a!3235) i!1204 k!2280) (size!16383 a!3235)))))

(declare-fun e!306139 () Bool)

(assert (=> b!525019 e!306139))

(declare-fun res!321968 () Bool)

(assert (=> b!525019 (=> (not res!321968) (not e!306139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33341 (_ BitVec 32)) Bool)

(assert (=> b!525019 (= res!321968 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16438 0))(
  ( (Unit!16439) )
))
(declare-fun lt!241198 () Unit!16438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16438)

(assert (=> b!525019 (= lt!241198 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525020 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33341 (_ BitVec 32)) SeekEntryResult!4493)

(assert (=> b!525020 (= e!306139 (= (seekEntryOrOpen!0 (select (arr!16019 a!3235) j!176) a!3235 mask!3524) (Found!4493 j!176)))))

(declare-fun b!525021 () Bool)

(declare-fun e!306144 () Unit!16438)

(declare-fun Unit!16440 () Unit!16438)

(assert (=> b!525021 (= e!306144 Unit!16440)))

(declare-fun b!525023 () Bool)

(declare-fun res!321976 () Bool)

(assert (=> b!525023 (=> (not res!321976) (not e!306145))))

(assert (=> b!525023 (= res!321976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525024 () Bool)

(assert (=> b!525024 (= e!306141 true)))

(assert (=> b!525024 (= (index!20186 lt!241200) i!1204)))

(declare-fun lt!241199 () Unit!16438)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16438)

(assert (=> b!525024 (= lt!241199 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241202 #b00000000000000000000000000000000 (index!20186 lt!241200) (x!49189 lt!241200) mask!3524))))

(assert (=> b!525024 (and (or (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241196 () Unit!16438)

(assert (=> b!525024 (= lt!241196 e!306144)))

(declare-fun c!61832 () Bool)

(assert (=> b!525024 (= c!61832 (= (select (arr!16019 a!3235) (index!20186 lt!241200)) (select (arr!16019 a!3235) j!176)))))

(assert (=> b!525024 (and (bvslt (x!49189 lt!241200) #b01111111111111111111111111111110) (or (= (select (arr!16019 a!3235) (index!20186 lt!241200)) (select (arr!16019 a!3235) j!176)) (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16019 a!3235) (index!20186 lt!241200)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525025 () Bool)

(declare-fun res!321974 () Bool)

(declare-fun e!306143 () Bool)

(assert (=> b!525025 (=> (not res!321974) (not e!306143))))

(assert (=> b!525025 (= res!321974 (and (= (size!16383 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16383 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16383 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525026 () Bool)

(declare-fun res!321977 () Bool)

(assert (=> b!525026 (=> (not res!321977) (not e!306145))))

(declare-datatypes ((List!10230 0))(
  ( (Nil!10227) (Cons!10226 (h!11157 (_ BitVec 64)) (t!16466 List!10230)) )
))
(declare-fun arrayNoDuplicates!0 (array!33341 (_ BitVec 32) List!10230) Bool)

(assert (=> b!525026 (= res!321977 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10227))))

(declare-fun b!525027 () Bool)

(declare-fun res!321966 () Bool)

(assert (=> b!525027 (=> res!321966 e!306141)))

(assert (=> b!525027 (= res!321966 (or (undefined!5305 lt!241200) (not (is-Intermediate!4493 lt!241200))))))

(declare-fun b!525028 () Bool)

(declare-fun Unit!16441 () Unit!16438)

(assert (=> b!525028 (= e!306144 Unit!16441)))

(declare-fun lt!241197 () Unit!16438)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16438)

(assert (=> b!525028 (= lt!241197 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241202 #b00000000000000000000000000000000 (index!20186 lt!241200) (x!49189 lt!241200) mask!3524))))

(declare-fun res!321972 () Bool)

(assert (=> b!525028 (= res!321972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241202 lt!241205 lt!241203 mask!3524) (Intermediate!4493 false (index!20186 lt!241200) (x!49189 lt!241200))))))

(declare-fun e!306140 () Bool)

(assert (=> b!525028 (=> (not res!321972) (not e!306140))))

(assert (=> b!525028 e!306140))

(declare-fun res!321967 () Bool)

(assert (=> start!47744 (=> (not res!321967) (not e!306143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47744 (= res!321967 (validMask!0 mask!3524))))

(assert (=> start!47744 e!306143))

(assert (=> start!47744 true))

(declare-fun array_inv!11793 (array!33341) Bool)

(assert (=> start!47744 (array_inv!11793 a!3235)))

(declare-fun b!525022 () Bool)

(declare-fun res!321969 () Bool)

(assert (=> b!525022 (=> (not res!321969) (not e!306143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525022 (= res!321969 (validKeyInArray!0 k!2280))))

(declare-fun b!525029 () Bool)

(assert (=> b!525029 (= e!306143 e!306145)))

(declare-fun res!321970 () Bool)

(assert (=> b!525029 (=> (not res!321970) (not e!306145))))

(declare-fun lt!241201 () SeekEntryResult!4493)

(assert (=> b!525029 (= res!321970 (or (= lt!241201 (MissingZero!4493 i!1204)) (= lt!241201 (MissingVacant!4493 i!1204))))))

(assert (=> b!525029 (= lt!241201 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525030 () Bool)

(declare-fun res!321973 () Bool)

(assert (=> b!525030 (=> (not res!321973) (not e!306143))))

(declare-fun arrayContainsKey!0 (array!33341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525030 (= res!321973 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525031 () Bool)

(assert (=> b!525031 (= e!306140 false)))

(declare-fun b!525032 () Bool)

(declare-fun res!321971 () Bool)

(assert (=> b!525032 (=> (not res!321971) (not e!306143))))

(assert (=> b!525032 (= res!321971 (validKeyInArray!0 (select (arr!16019 a!3235) j!176)))))

(assert (= (and start!47744 res!321967) b!525025))

(assert (= (and b!525025 res!321974) b!525032))

(assert (= (and b!525032 res!321971) b!525022))

(assert (= (and b!525022 res!321969) b!525030))

(assert (= (and b!525030 res!321973) b!525029))

(assert (= (and b!525029 res!321970) b!525023))

(assert (= (and b!525023 res!321976) b!525026))

(assert (= (and b!525026 res!321977) b!525019))

(assert (= (and b!525019 res!321968) b!525020))

(assert (= (and b!525019 (not res!321975)) b!525027))

(assert (= (and b!525027 (not res!321966)) b!525024))

(assert (= (and b!525024 c!61832) b!525028))

(assert (= (and b!525024 (not c!61832)) b!525021))

(assert (= (and b!525028 res!321972) b!525031))

(declare-fun m!505703 () Bool)

(assert (=> start!47744 m!505703))

(declare-fun m!505705 () Bool)

(assert (=> start!47744 m!505705))

(declare-fun m!505707 () Bool)

(assert (=> b!525020 m!505707))

(assert (=> b!525020 m!505707))

(declare-fun m!505709 () Bool)

(assert (=> b!525020 m!505709))

(declare-fun m!505711 () Bool)

(assert (=> b!525029 m!505711))

(assert (=> b!525032 m!505707))

(assert (=> b!525032 m!505707))

(declare-fun m!505713 () Bool)

(assert (=> b!525032 m!505713))

(declare-fun m!505715 () Bool)

(assert (=> b!525030 m!505715))

(declare-fun m!505717 () Bool)

(assert (=> b!525022 m!505717))

(declare-fun m!505719 () Bool)

(assert (=> b!525028 m!505719))

(declare-fun m!505721 () Bool)

(assert (=> b!525028 m!505721))

(declare-fun m!505723 () Bool)

(assert (=> b!525026 m!505723))

(assert (=> b!525019 m!505707))

(declare-fun m!505725 () Bool)

(assert (=> b!525019 m!505725))

(declare-fun m!505727 () Bool)

(assert (=> b!525019 m!505727))

(declare-fun m!505729 () Bool)

(assert (=> b!525019 m!505729))

(declare-fun m!505731 () Bool)

(assert (=> b!525019 m!505731))

(declare-fun m!505733 () Bool)

(assert (=> b!525019 m!505733))

(declare-fun m!505735 () Bool)

(assert (=> b!525019 m!505735))

(assert (=> b!525019 m!505707))

(declare-fun m!505737 () Bool)

(assert (=> b!525019 m!505737))

(assert (=> b!525019 m!505707))

(declare-fun m!505739 () Bool)

(assert (=> b!525019 m!505739))

(declare-fun m!505741 () Bool)

(assert (=> b!525023 m!505741))

(declare-fun m!505743 () Bool)

(assert (=> b!525024 m!505743))

(declare-fun m!505745 () Bool)

(assert (=> b!525024 m!505745))

(assert (=> b!525024 m!505707))

(push 1)

(assert (not b!525020))

(assert (not b!525030))

(assert (not b!525026))

(assert (not b!525019))

(assert (not start!47744))

(assert (not b!525024))

(assert (not b!525028))

(assert (not b!525023))

(assert (not b!525032))

