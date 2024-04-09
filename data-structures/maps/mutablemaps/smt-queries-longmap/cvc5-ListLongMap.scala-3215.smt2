; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45046 () Bool)

(assert start!45046)

(declare-fun b!493991 () Bool)

(declare-fun res!296713 () Bool)

(declare-fun e!289975 () Bool)

(assert (=> b!493991 (=> (not res!296713) (not e!289975))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31951 0))(
  ( (array!31952 (arr!15357 (Array (_ BitVec 32) (_ BitVec 64))) (size!15721 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31951)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493991 (= res!296713 (and (= (size!15721 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15721 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15721 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493992 () Bool)

(declare-fun e!289978 () Bool)

(assert (=> b!493992 (= e!289975 e!289978)))

(declare-fun res!296718 () Bool)

(assert (=> b!493992 (=> (not res!296718) (not e!289978))))

(declare-datatypes ((SeekEntryResult!3831 0))(
  ( (MissingZero!3831 (index!17503 (_ BitVec 32))) (Found!3831 (index!17504 (_ BitVec 32))) (Intermediate!3831 (undefined!4643 Bool) (index!17505 (_ BitVec 32)) (x!46608 (_ BitVec 32))) (Undefined!3831) (MissingVacant!3831 (index!17506 (_ BitVec 32))) )
))
(declare-fun lt!223586 () SeekEntryResult!3831)

(assert (=> b!493992 (= res!296718 (or (= lt!223586 (MissingZero!3831 i!1204)) (= lt!223586 (MissingVacant!3831 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31951 (_ BitVec 32)) SeekEntryResult!3831)

(assert (=> b!493992 (= lt!223586 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493993 () Bool)

(declare-fun res!296712 () Bool)

(declare-fun e!289976 () Bool)

(assert (=> b!493993 (=> res!296712 e!289976)))

(declare-fun lt!223585 () SeekEntryResult!3831)

(assert (=> b!493993 (= res!296712 (or (not (is-Intermediate!3831 lt!223585)) (not (undefined!4643 lt!223585))))))

(declare-fun b!493994 () Bool)

(declare-fun res!296717 () Bool)

(assert (=> b!493994 (=> (not res!296717) (not e!289975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493994 (= res!296717 (validKeyInArray!0 k!2280))))

(declare-fun b!493995 () Bool)

(declare-fun res!296719 () Bool)

(assert (=> b!493995 (=> (not res!296719) (not e!289975))))

(assert (=> b!493995 (= res!296719 (validKeyInArray!0 (select (arr!15357 a!3235) j!176)))))

(declare-fun b!493996 () Bool)

(declare-fun res!296715 () Bool)

(assert (=> b!493996 (=> (not res!296715) (not e!289975))))

(declare-fun arrayContainsKey!0 (array!31951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493996 (= res!296715 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493997 () Bool)

(declare-fun res!296711 () Bool)

(assert (=> b!493997 (=> (not res!296711) (not e!289978))))

(declare-datatypes ((List!9568 0))(
  ( (Nil!9565) (Cons!9564 (h!10432 (_ BitVec 64)) (t!15804 List!9568)) )
))
(declare-fun arrayNoDuplicates!0 (array!31951 (_ BitVec 32) List!9568) Bool)

(assert (=> b!493997 (= res!296711 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9565))))

(declare-fun res!296716 () Bool)

(assert (=> start!45046 (=> (not res!296716) (not e!289975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45046 (= res!296716 (validMask!0 mask!3524))))

(assert (=> start!45046 e!289975))

(assert (=> start!45046 true))

(declare-fun array_inv!11131 (array!31951) Bool)

(assert (=> start!45046 (array_inv!11131 a!3235)))

(declare-fun b!493998 () Bool)

(declare-fun res!296720 () Bool)

(assert (=> b!493998 (=> (not res!296720) (not e!289978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31951 (_ BitVec 32)) Bool)

(assert (=> b!493998 (= res!296720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493999 () Bool)

(assert (=> b!493999 (= e!289976 true)))

(declare-fun lt!223583 () SeekEntryResult!3831)

(assert (=> b!493999 (= lt!223583 Undefined!3831)))

(declare-fun b!494000 () Bool)

(assert (=> b!494000 (= e!289978 (not e!289976))))

(declare-fun res!296714 () Bool)

(assert (=> b!494000 (=> res!296714 e!289976)))

(declare-fun lt!223584 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31951 (_ BitVec 32)) SeekEntryResult!3831)

(assert (=> b!494000 (= res!296714 (= lt!223585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223584 (select (store (arr!15357 a!3235) i!1204 k!2280) j!176) (array!31952 (store (arr!15357 a!3235) i!1204 k!2280) (size!15721 a!3235)) mask!3524)))))

(declare-fun lt!223581 () (_ BitVec 32))

(assert (=> b!494000 (= lt!223585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223581 (select (arr!15357 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494000 (= lt!223584 (toIndex!0 (select (store (arr!15357 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494000 (= lt!223581 (toIndex!0 (select (arr!15357 a!3235) j!176) mask!3524))))

(assert (=> b!494000 (= lt!223583 (Found!3831 j!176))))

(assert (=> b!494000 (= lt!223583 (seekEntryOrOpen!0 (select (arr!15357 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494000 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14600 0))(
  ( (Unit!14601) )
))
(declare-fun lt!223582 () Unit!14600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14600)

(assert (=> b!494000 (= lt!223582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45046 res!296716) b!493991))

(assert (= (and b!493991 res!296713) b!493995))

(assert (= (and b!493995 res!296719) b!493994))

(assert (= (and b!493994 res!296717) b!493996))

(assert (= (and b!493996 res!296715) b!493992))

(assert (= (and b!493992 res!296718) b!493998))

(assert (= (and b!493998 res!296720) b!493997))

(assert (= (and b!493997 res!296711) b!494000))

(assert (= (and b!494000 (not res!296714)) b!493993))

(assert (= (and b!493993 (not res!296712)) b!493999))

(declare-fun m!475021 () Bool)

(assert (=> b!493992 m!475021))

(declare-fun m!475023 () Bool)

(assert (=> b!493998 m!475023))

(declare-fun m!475025 () Bool)

(assert (=> b!494000 m!475025))

(declare-fun m!475027 () Bool)

(assert (=> b!494000 m!475027))

(declare-fun m!475029 () Bool)

(assert (=> b!494000 m!475029))

(declare-fun m!475031 () Bool)

(assert (=> b!494000 m!475031))

(assert (=> b!494000 m!475025))

(declare-fun m!475033 () Bool)

(assert (=> b!494000 m!475033))

(declare-fun m!475035 () Bool)

(assert (=> b!494000 m!475035))

(assert (=> b!494000 m!475033))

(declare-fun m!475037 () Bool)

(assert (=> b!494000 m!475037))

(assert (=> b!494000 m!475033))

(declare-fun m!475039 () Bool)

(assert (=> b!494000 m!475039))

(assert (=> b!494000 m!475033))

(declare-fun m!475041 () Bool)

(assert (=> b!494000 m!475041))

(assert (=> b!494000 m!475025))

(declare-fun m!475043 () Bool)

(assert (=> b!494000 m!475043))

(declare-fun m!475045 () Bool)

(assert (=> start!45046 m!475045))

(declare-fun m!475047 () Bool)

(assert (=> start!45046 m!475047))

(declare-fun m!475049 () Bool)

(assert (=> b!493996 m!475049))

(assert (=> b!493995 m!475033))

(assert (=> b!493995 m!475033))

(declare-fun m!475051 () Bool)

(assert (=> b!493995 m!475051))

(declare-fun m!475053 () Bool)

(assert (=> b!493997 m!475053))

(declare-fun m!475055 () Bool)

(assert (=> b!493994 m!475055))

(push 1)

