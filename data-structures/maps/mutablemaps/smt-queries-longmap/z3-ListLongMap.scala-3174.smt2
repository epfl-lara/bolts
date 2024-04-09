; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44682 () Bool)

(assert start!44682)

(declare-fun b!489969 () Bool)

(declare-fun res!293055 () Bool)

(declare-fun e!288077 () Bool)

(assert (=> b!489969 (=> (not res!293055) (not e!288077))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489969 (= res!293055 (validKeyInArray!0 k0!2280))))

(declare-fun b!489970 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!31701 0))(
  ( (array!31702 (arr!15235 (Array (_ BitVec 32) (_ BitVec 64))) (size!15599 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31701)

(declare-fun e!288076 () Bool)

(declare-datatypes ((SeekEntryResult!3709 0))(
  ( (MissingZero!3709 (index!17015 (_ BitVec 32))) (Found!3709 (index!17016 (_ BitVec 32))) (Intermediate!3709 (undefined!4521 Bool) (index!17017 (_ BitVec 32)) (x!46146 (_ BitVec 32))) (Undefined!3709) (MissingVacant!3709 (index!17018 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31701 (_ BitVec 32)) SeekEntryResult!3709)

(assert (=> b!489970 (= e!288076 (= (seekEntryOrOpen!0 (select (arr!15235 a!3235) j!176) a!3235 mask!3524) (Found!3709 j!176)))))

(declare-fun b!489971 () Bool)

(declare-fun res!293058 () Bool)

(assert (=> b!489971 (=> (not res!293058) (not e!288077))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489971 (= res!293058 (and (= (size!15599 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15599 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15599 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489972 () Bool)

(declare-fun e!288079 () Bool)

(assert (=> b!489972 (= e!288079 (not true))))

(declare-fun lt!221276 () (_ BitVec 32))

(declare-fun lt!221275 () SeekEntryResult!3709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31701 (_ BitVec 32)) SeekEntryResult!3709)

(assert (=> b!489972 (= lt!221275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221276 (select (store (arr!15235 a!3235) i!1204 k0!2280) j!176) (array!31702 (store (arr!15235 a!3235) i!1204 k0!2280) (size!15599 a!3235)) mask!3524))))

(declare-fun lt!221273 () (_ BitVec 32))

(declare-fun lt!221272 () SeekEntryResult!3709)

(assert (=> b!489972 (= lt!221272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221273 (select (arr!15235 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489972 (= lt!221276 (toIndex!0 (select (store (arr!15235 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489972 (= lt!221273 (toIndex!0 (select (arr!15235 a!3235) j!176) mask!3524))))

(assert (=> b!489972 e!288076))

(declare-fun res!293056 () Bool)

(assert (=> b!489972 (=> (not res!293056) (not e!288076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31701 (_ BitVec 32)) Bool)

(assert (=> b!489972 (= res!293056 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14356 0))(
  ( (Unit!14357) )
))
(declare-fun lt!221271 () Unit!14356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14356)

(assert (=> b!489972 (= lt!221271 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!293057 () Bool)

(assert (=> start!44682 (=> (not res!293057) (not e!288077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44682 (= res!293057 (validMask!0 mask!3524))))

(assert (=> start!44682 e!288077))

(assert (=> start!44682 true))

(declare-fun array_inv!11009 (array!31701) Bool)

(assert (=> start!44682 (array_inv!11009 a!3235)))

(declare-fun b!489973 () Bool)

(declare-fun res!293062 () Bool)

(assert (=> b!489973 (=> (not res!293062) (not e!288079))))

(declare-datatypes ((List!9446 0))(
  ( (Nil!9443) (Cons!9442 (h!10304 (_ BitVec 64)) (t!15682 List!9446)) )
))
(declare-fun arrayNoDuplicates!0 (array!31701 (_ BitVec 32) List!9446) Bool)

(assert (=> b!489973 (= res!293062 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9443))))

(declare-fun b!489974 () Bool)

(declare-fun res!293061 () Bool)

(assert (=> b!489974 (=> (not res!293061) (not e!288077))))

(declare-fun arrayContainsKey!0 (array!31701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489974 (= res!293061 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489975 () Bool)

(assert (=> b!489975 (= e!288077 e!288079)))

(declare-fun res!293059 () Bool)

(assert (=> b!489975 (=> (not res!293059) (not e!288079))))

(declare-fun lt!221274 () SeekEntryResult!3709)

(assert (=> b!489975 (= res!293059 (or (= lt!221274 (MissingZero!3709 i!1204)) (= lt!221274 (MissingVacant!3709 i!1204))))))

(assert (=> b!489975 (= lt!221274 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489976 () Bool)

(declare-fun res!293060 () Bool)

(assert (=> b!489976 (=> (not res!293060) (not e!288079))))

(assert (=> b!489976 (= res!293060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489977 () Bool)

(declare-fun res!293063 () Bool)

(assert (=> b!489977 (=> (not res!293063) (not e!288077))))

(assert (=> b!489977 (= res!293063 (validKeyInArray!0 (select (arr!15235 a!3235) j!176)))))

(assert (= (and start!44682 res!293057) b!489971))

(assert (= (and b!489971 res!293058) b!489977))

(assert (= (and b!489977 res!293063) b!489969))

(assert (= (and b!489969 res!293055) b!489974))

(assert (= (and b!489974 res!293061) b!489975))

(assert (= (and b!489975 res!293059) b!489976))

(assert (= (and b!489976 res!293060) b!489973))

(assert (= (and b!489973 res!293062) b!489972))

(assert (= (and b!489972 res!293056) b!489970))

(declare-fun m!470023 () Bool)

(assert (=> b!489970 m!470023))

(assert (=> b!489970 m!470023))

(declare-fun m!470025 () Bool)

(assert (=> b!489970 m!470025))

(declare-fun m!470027 () Bool)

(assert (=> b!489975 m!470027))

(declare-fun m!470029 () Bool)

(assert (=> b!489972 m!470029))

(declare-fun m!470031 () Bool)

(assert (=> b!489972 m!470031))

(declare-fun m!470033 () Bool)

(assert (=> b!489972 m!470033))

(assert (=> b!489972 m!470023))

(declare-fun m!470035 () Bool)

(assert (=> b!489972 m!470035))

(assert (=> b!489972 m!470023))

(declare-fun m!470037 () Bool)

(assert (=> b!489972 m!470037))

(assert (=> b!489972 m!470033))

(declare-fun m!470039 () Bool)

(assert (=> b!489972 m!470039))

(assert (=> b!489972 m!470033))

(declare-fun m!470041 () Bool)

(assert (=> b!489972 m!470041))

(assert (=> b!489972 m!470023))

(declare-fun m!470043 () Bool)

(assert (=> b!489972 m!470043))

(declare-fun m!470045 () Bool)

(assert (=> b!489976 m!470045))

(declare-fun m!470047 () Bool)

(assert (=> b!489974 m!470047))

(declare-fun m!470049 () Bool)

(assert (=> start!44682 m!470049))

(declare-fun m!470051 () Bool)

(assert (=> start!44682 m!470051))

(declare-fun m!470053 () Bool)

(assert (=> b!489973 m!470053))

(assert (=> b!489977 m!470023))

(assert (=> b!489977 m!470023))

(declare-fun m!470055 () Bool)

(assert (=> b!489977 m!470055))

(declare-fun m!470057 () Bool)

(assert (=> b!489969 m!470057))

(check-sat (not b!489973) (not b!489972) (not b!489970) (not b!489974) (not b!489976) (not b!489975) (not b!489977) (not b!489969) (not start!44682))
(check-sat)
