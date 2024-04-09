; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44980 () Bool)

(assert start!44980)

(declare-fun res!295737 () Bool)

(declare-fun e!289581 () Bool)

(assert (=> start!44980 (=> (not res!295737) (not e!289581))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44980 (= res!295737 (validMask!0 mask!3524))))

(assert (=> start!44980 e!289581))

(assert (=> start!44980 true))

(declare-datatypes ((array!31885 0))(
  ( (array!31886 (arr!15324 (Array (_ BitVec 32) (_ BitVec 64))) (size!15688 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31885)

(declare-fun array_inv!11098 (array!31885) Bool)

(assert (=> start!44980 (array_inv!11098 a!3235)))

(declare-fun b!493017 () Bool)

(declare-fun res!295741 () Bool)

(assert (=> b!493017 (=> (not res!295741) (not e!289581))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493017 (= res!295741 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493018 () Bool)

(declare-fun res!295742 () Bool)

(assert (=> b!493018 (=> (not res!295742) (not e!289581))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493018 (= res!295742 (and (= (size!15688 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15688 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15688 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493019 () Bool)

(declare-fun e!289579 () Bool)

(declare-datatypes ((SeekEntryResult!3798 0))(
  ( (MissingZero!3798 (index!17371 (_ BitVec 32))) (Found!3798 (index!17372 (_ BitVec 32))) (Intermediate!3798 (undefined!4610 Bool) (index!17373 (_ BitVec 32)) (x!46487 (_ BitVec 32))) (Undefined!3798) (MissingVacant!3798 (index!17374 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31885 (_ BitVec 32)) SeekEntryResult!3798)

(assert (=> b!493019 (= e!289579 (= (seekEntryOrOpen!0 (select (arr!15324 a!3235) j!176) a!3235 mask!3524) (Found!3798 j!176)))))

(declare-fun b!493020 () Bool)

(declare-fun res!295739 () Bool)

(declare-fun e!289580 () Bool)

(assert (=> b!493020 (=> (not res!295739) (not e!289580))))

(declare-datatypes ((List!9535 0))(
  ( (Nil!9532) (Cons!9531 (h!10399 (_ BitVec 64)) (t!15771 List!9535)) )
))
(declare-fun arrayNoDuplicates!0 (array!31885 (_ BitVec 32) List!9535) Bool)

(assert (=> b!493020 (= res!295739 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9532))))

(declare-fun b!493021 () Bool)

(assert (=> b!493021 (= e!289581 e!289580)))

(declare-fun res!295744 () Bool)

(assert (=> b!493021 (=> (not res!295744) (not e!289580))))

(declare-fun lt!222988 () SeekEntryResult!3798)

(assert (=> b!493021 (= res!295744 (or (= lt!222988 (MissingZero!3798 i!1204)) (= lt!222988 (MissingVacant!3798 i!1204))))))

(assert (=> b!493021 (= lt!222988 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493022 () Bool)

(declare-fun res!295740 () Bool)

(assert (=> b!493022 (=> (not res!295740) (not e!289580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31885 (_ BitVec 32)) Bool)

(assert (=> b!493022 (= res!295740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493023 () Bool)

(declare-fun res!295745 () Bool)

(assert (=> b!493023 (=> (not res!295745) (not e!289581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493023 (= res!295745 (validKeyInArray!0 k!2280))))

(declare-fun b!493024 () Bool)

(assert (=> b!493024 (= e!289580 (not true))))

(declare-fun lt!222992 () (_ BitVec 32))

(declare-fun lt!222991 () SeekEntryResult!3798)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31885 (_ BitVec 32)) SeekEntryResult!3798)

(assert (=> b!493024 (= lt!222991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222992 (select (store (arr!15324 a!3235) i!1204 k!2280) j!176) (array!31886 (store (arr!15324 a!3235) i!1204 k!2280) (size!15688 a!3235)) mask!3524))))

(declare-fun lt!222990 () (_ BitVec 32))

(declare-fun lt!222987 () SeekEntryResult!3798)

(assert (=> b!493024 (= lt!222987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222990 (select (arr!15324 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493024 (= lt!222992 (toIndex!0 (select (store (arr!15324 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493024 (= lt!222990 (toIndex!0 (select (arr!15324 a!3235) j!176) mask!3524))))

(assert (=> b!493024 e!289579))

(declare-fun res!295743 () Bool)

(assert (=> b!493024 (=> (not res!295743) (not e!289579))))

(assert (=> b!493024 (= res!295743 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14534 0))(
  ( (Unit!14535) )
))
(declare-fun lt!222989 () Unit!14534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14534)

(assert (=> b!493024 (= lt!222989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493025 () Bool)

(declare-fun res!295738 () Bool)

(assert (=> b!493025 (=> (not res!295738) (not e!289581))))

(assert (=> b!493025 (= res!295738 (validKeyInArray!0 (select (arr!15324 a!3235) j!176)))))

(assert (= (and start!44980 res!295737) b!493018))

(assert (= (and b!493018 res!295742) b!493025))

(assert (= (and b!493025 res!295738) b!493023))

(assert (= (and b!493023 res!295745) b!493017))

(assert (= (and b!493017 res!295741) b!493021))

(assert (= (and b!493021 res!295744) b!493022))

(assert (= (and b!493022 res!295740) b!493020))

(assert (= (and b!493020 res!295739) b!493024))

(assert (= (and b!493024 res!295743) b!493019))

(declare-fun m!473833 () Bool)

(assert (=> b!493025 m!473833))

(assert (=> b!493025 m!473833))

(declare-fun m!473835 () Bool)

(assert (=> b!493025 m!473835))

(declare-fun m!473837 () Bool)

(assert (=> b!493017 m!473837))

(declare-fun m!473839 () Bool)

(assert (=> b!493023 m!473839))

(assert (=> b!493019 m!473833))

(assert (=> b!493019 m!473833))

(declare-fun m!473841 () Bool)

(assert (=> b!493019 m!473841))

(declare-fun m!473843 () Bool)

(assert (=> b!493022 m!473843))

(declare-fun m!473845 () Bool)

(assert (=> b!493021 m!473845))

(declare-fun m!473847 () Bool)

(assert (=> start!44980 m!473847))

(declare-fun m!473849 () Bool)

(assert (=> start!44980 m!473849))

(assert (=> b!493024 m!473833))

(declare-fun m!473851 () Bool)

(assert (=> b!493024 m!473851))

(declare-fun m!473853 () Bool)

(assert (=> b!493024 m!473853))

(declare-fun m!473855 () Bool)

(assert (=> b!493024 m!473855))

(declare-fun m!473857 () Bool)

(assert (=> b!493024 m!473857))

(assert (=> b!493024 m!473857))

(declare-fun m!473859 () Bool)

(assert (=> b!493024 m!473859))

(assert (=> b!493024 m!473833))

(declare-fun m!473861 () Bool)

(assert (=> b!493024 m!473861))

(assert (=> b!493024 m!473833))

(declare-fun m!473863 () Bool)

(assert (=> b!493024 m!473863))

(assert (=> b!493024 m!473857))

(declare-fun m!473865 () Bool)

(assert (=> b!493024 m!473865))

(declare-fun m!473867 () Bool)

(assert (=> b!493020 m!473867))

(push 1)

