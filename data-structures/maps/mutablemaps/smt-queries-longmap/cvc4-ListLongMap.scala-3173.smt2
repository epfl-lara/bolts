; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44678 () Bool)

(assert start!44678)

(declare-fun res!293008 () Bool)

(declare-fun e!288052 () Bool)

(assert (=> start!44678 (=> (not res!293008) (not e!288052))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44678 (= res!293008 (validMask!0 mask!3524))))

(assert (=> start!44678 e!288052))

(assert (=> start!44678 true))

(declare-datatypes ((array!31697 0))(
  ( (array!31698 (arr!15233 (Array (_ BitVec 32) (_ BitVec 64))) (size!15597 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31697)

(declare-fun array_inv!11007 (array!31697) Bool)

(assert (=> start!44678 (array_inv!11007 a!3235)))

(declare-fun b!489915 () Bool)

(declare-fun e!288055 () Bool)

(assert (=> b!489915 (= e!288055 (not true))))

(declare-datatypes ((SeekEntryResult!3707 0))(
  ( (MissingZero!3707 (index!17007 (_ BitVec 32))) (Found!3707 (index!17008 (_ BitVec 32))) (Intermediate!3707 (undefined!4519 Bool) (index!17009 (_ BitVec 32)) (x!46136 (_ BitVec 32))) (Undefined!3707) (MissingVacant!3707 (index!17010 (_ BitVec 32))) )
))
(declare-fun lt!221236 () SeekEntryResult!3707)

(declare-fun lt!221237 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31697 (_ BitVec 32)) SeekEntryResult!3707)

(assert (=> b!489915 (= lt!221236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221237 (select (store (arr!15233 a!3235) i!1204 k!2280) j!176) (array!31698 (store (arr!15233 a!3235) i!1204 k!2280) (size!15597 a!3235)) mask!3524))))

(declare-fun lt!221235 () (_ BitVec 32))

(declare-fun lt!221239 () SeekEntryResult!3707)

(assert (=> b!489915 (= lt!221239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221235 (select (arr!15233 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489915 (= lt!221237 (toIndex!0 (select (store (arr!15233 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489915 (= lt!221235 (toIndex!0 (select (arr!15233 a!3235) j!176) mask!3524))))

(declare-fun e!288053 () Bool)

(assert (=> b!489915 e!288053))

(declare-fun res!293002 () Bool)

(assert (=> b!489915 (=> (not res!293002) (not e!288053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31697 (_ BitVec 32)) Bool)

(assert (=> b!489915 (= res!293002 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14352 0))(
  ( (Unit!14353) )
))
(declare-fun lt!221240 () Unit!14352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14352)

(assert (=> b!489915 (= lt!221240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489916 () Bool)

(declare-fun res!293004 () Bool)

(assert (=> b!489916 (=> (not res!293004) (not e!288052))))

(assert (=> b!489916 (= res!293004 (and (= (size!15597 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15597 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15597 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489917 () Bool)

(declare-fun res!293005 () Bool)

(assert (=> b!489917 (=> (not res!293005) (not e!288055))))

(declare-datatypes ((List!9444 0))(
  ( (Nil!9441) (Cons!9440 (h!10302 (_ BitVec 64)) (t!15680 List!9444)) )
))
(declare-fun arrayNoDuplicates!0 (array!31697 (_ BitVec 32) List!9444) Bool)

(assert (=> b!489917 (= res!293005 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9441))))

(declare-fun b!489918 () Bool)

(declare-fun res!293009 () Bool)

(assert (=> b!489918 (=> (not res!293009) (not e!288052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489918 (= res!293009 (validKeyInArray!0 k!2280))))

(declare-fun b!489919 () Bool)

(assert (=> b!489919 (= e!288052 e!288055)))

(declare-fun res!293006 () Bool)

(assert (=> b!489919 (=> (not res!293006) (not e!288055))))

(declare-fun lt!221238 () SeekEntryResult!3707)

(assert (=> b!489919 (= res!293006 (or (= lt!221238 (MissingZero!3707 i!1204)) (= lt!221238 (MissingVacant!3707 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31697 (_ BitVec 32)) SeekEntryResult!3707)

(assert (=> b!489919 (= lt!221238 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489920 () Bool)

(declare-fun res!293007 () Bool)

(assert (=> b!489920 (=> (not res!293007) (not e!288055))))

(assert (=> b!489920 (= res!293007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489921 () Bool)

(assert (=> b!489921 (= e!288053 (= (seekEntryOrOpen!0 (select (arr!15233 a!3235) j!176) a!3235 mask!3524) (Found!3707 j!176)))))

(declare-fun b!489922 () Bool)

(declare-fun res!293001 () Bool)

(assert (=> b!489922 (=> (not res!293001) (not e!288052))))

(assert (=> b!489922 (= res!293001 (validKeyInArray!0 (select (arr!15233 a!3235) j!176)))))

(declare-fun b!489923 () Bool)

(declare-fun res!293003 () Bool)

(assert (=> b!489923 (=> (not res!293003) (not e!288052))))

(declare-fun arrayContainsKey!0 (array!31697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489923 (= res!293003 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44678 res!293008) b!489916))

(assert (= (and b!489916 res!293004) b!489922))

(assert (= (and b!489922 res!293001) b!489918))

(assert (= (and b!489918 res!293009) b!489923))

(assert (= (and b!489923 res!293003) b!489919))

(assert (= (and b!489919 res!293006) b!489920))

(assert (= (and b!489920 res!293007) b!489917))

(assert (= (and b!489917 res!293005) b!489915))

(assert (= (and b!489915 res!293002) b!489921))

(declare-fun m!469951 () Bool)

(assert (=> b!489923 m!469951))

(declare-fun m!469953 () Bool)

(assert (=> b!489919 m!469953))

(declare-fun m!469955 () Bool)

(assert (=> b!489920 m!469955))

(declare-fun m!469957 () Bool)

(assert (=> b!489918 m!469957))

(declare-fun m!469959 () Bool)

(assert (=> b!489917 m!469959))

(declare-fun m!469961 () Bool)

(assert (=> start!44678 m!469961))

(declare-fun m!469963 () Bool)

(assert (=> start!44678 m!469963))

(declare-fun m!469965 () Bool)

(assert (=> b!489922 m!469965))

(assert (=> b!489922 m!469965))

(declare-fun m!469967 () Bool)

(assert (=> b!489922 m!469967))

(assert (=> b!489921 m!469965))

(assert (=> b!489921 m!469965))

(declare-fun m!469969 () Bool)

(assert (=> b!489921 m!469969))

(declare-fun m!469971 () Bool)

(assert (=> b!489915 m!469971))

(declare-fun m!469973 () Bool)

(assert (=> b!489915 m!469973))

(declare-fun m!469975 () Bool)

(assert (=> b!489915 m!469975))

(assert (=> b!489915 m!469965))

(declare-fun m!469977 () Bool)

(assert (=> b!489915 m!469977))

(assert (=> b!489915 m!469965))

(declare-fun m!469979 () Bool)

(assert (=> b!489915 m!469979))

(assert (=> b!489915 m!469975))

(declare-fun m!469981 () Bool)

(assert (=> b!489915 m!469981))

(assert (=> b!489915 m!469965))

(declare-fun m!469983 () Bool)

(assert (=> b!489915 m!469983))

(assert (=> b!489915 m!469975))

(declare-fun m!469985 () Bool)

(assert (=> b!489915 m!469985))

(push 1)

