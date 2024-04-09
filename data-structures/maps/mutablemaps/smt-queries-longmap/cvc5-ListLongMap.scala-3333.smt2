; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46000 () Bool)

(assert start!46000)

(declare-fun b!508968 () Bool)

(declare-fun res!309968 () Bool)

(declare-fun e!297692 () Bool)

(assert (=> b!508968 (=> (not res!309968) (not e!297692))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32671 0))(
  ( (array!32672 (arr!15711 (Array (_ BitVec 32) (_ BitVec 64))) (size!16075 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32671)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508968 (= res!309968 (and (= (size!16075 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16075 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16075 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508969 () Bool)

(declare-fun e!297693 () Bool)

(assert (=> b!508969 (= e!297693 (not true))))

(declare-fun lt!232499 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4185 0))(
  ( (MissingZero!4185 (index!18928 (_ BitVec 32))) (Found!4185 (index!18929 (_ BitVec 32))) (Intermediate!4185 (undefined!4997 Bool) (index!18930 (_ BitVec 32)) (x!47933 (_ BitVec 32))) (Undefined!4185) (MissingVacant!4185 (index!18931 (_ BitVec 32))) )
))
(declare-fun lt!232494 () SeekEntryResult!4185)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32671 (_ BitVec 32)) SeekEntryResult!4185)

(assert (=> b!508969 (= lt!232494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232499 (select (store (arr!15711 a!3235) i!1204 k!2280) j!176) (array!32672 (store (arr!15711 a!3235) i!1204 k!2280) (size!16075 a!3235)) mask!3524))))

(declare-fun lt!232497 () SeekEntryResult!4185)

(declare-fun lt!232498 () (_ BitVec 32))

(assert (=> b!508969 (= lt!232497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232498 (select (arr!15711 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508969 (= lt!232499 (toIndex!0 (select (store (arr!15711 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508969 (= lt!232498 (toIndex!0 (select (arr!15711 a!3235) j!176) mask!3524))))

(declare-fun e!297694 () Bool)

(assert (=> b!508969 e!297694))

(declare-fun res!309967 () Bool)

(assert (=> b!508969 (=> (not res!309967) (not e!297694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32671 (_ BitVec 32)) Bool)

(assert (=> b!508969 (= res!309967 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15620 0))(
  ( (Unit!15621) )
))
(declare-fun lt!232495 () Unit!15620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15620)

(assert (=> b!508969 (= lt!232495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508970 () Bool)

(assert (=> b!508970 (= e!297692 e!297693)))

(declare-fun res!309965 () Bool)

(assert (=> b!508970 (=> (not res!309965) (not e!297693))))

(declare-fun lt!232496 () SeekEntryResult!4185)

(assert (=> b!508970 (= res!309965 (or (= lt!232496 (MissingZero!4185 i!1204)) (= lt!232496 (MissingVacant!4185 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32671 (_ BitVec 32)) SeekEntryResult!4185)

(assert (=> b!508970 (= lt!232496 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508971 () Bool)

(declare-fun res!309966 () Bool)

(assert (=> b!508971 (=> (not res!309966) (not e!297693))))

(assert (=> b!508971 (= res!309966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508972 () Bool)

(declare-fun res!309969 () Bool)

(assert (=> b!508972 (=> (not res!309969) (not e!297692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508972 (= res!309969 (validKeyInArray!0 (select (arr!15711 a!3235) j!176)))))

(declare-fun res!309971 () Bool)

(assert (=> start!46000 (=> (not res!309971) (not e!297692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46000 (= res!309971 (validMask!0 mask!3524))))

(assert (=> start!46000 e!297692))

(assert (=> start!46000 true))

(declare-fun array_inv!11485 (array!32671) Bool)

(assert (=> start!46000 (array_inv!11485 a!3235)))

(declare-fun b!508973 () Bool)

(assert (=> b!508973 (= e!297694 (= (seekEntryOrOpen!0 (select (arr!15711 a!3235) j!176) a!3235 mask!3524) (Found!4185 j!176)))))

(declare-fun b!508974 () Bool)

(declare-fun res!309963 () Bool)

(assert (=> b!508974 (=> (not res!309963) (not e!297692))))

(declare-fun arrayContainsKey!0 (array!32671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508974 (= res!309963 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508975 () Bool)

(declare-fun res!309964 () Bool)

(assert (=> b!508975 (=> (not res!309964) (not e!297692))))

(assert (=> b!508975 (= res!309964 (validKeyInArray!0 k!2280))))

(declare-fun b!508976 () Bool)

(declare-fun res!309970 () Bool)

(assert (=> b!508976 (=> (not res!309970) (not e!297693))))

(declare-datatypes ((List!9922 0))(
  ( (Nil!9919) (Cons!9918 (h!10795 (_ BitVec 64)) (t!16158 List!9922)) )
))
(declare-fun arrayNoDuplicates!0 (array!32671 (_ BitVec 32) List!9922) Bool)

(assert (=> b!508976 (= res!309970 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9919))))

(assert (= (and start!46000 res!309971) b!508968))

(assert (= (and b!508968 res!309968) b!508972))

(assert (= (and b!508972 res!309969) b!508975))

(assert (= (and b!508975 res!309964) b!508974))

(assert (= (and b!508974 res!309963) b!508970))

(assert (= (and b!508970 res!309965) b!508971))

(assert (= (and b!508971 res!309966) b!508976))

(assert (= (and b!508976 res!309970) b!508969))

(assert (= (and b!508969 res!309967) b!508973))

(declare-fun m!489799 () Bool)

(assert (=> b!508969 m!489799))

(declare-fun m!489801 () Bool)

(assert (=> b!508969 m!489801))

(declare-fun m!489803 () Bool)

(assert (=> b!508969 m!489803))

(declare-fun m!489805 () Bool)

(assert (=> b!508969 m!489805))

(declare-fun m!489807 () Bool)

(assert (=> b!508969 m!489807))

(declare-fun m!489809 () Bool)

(assert (=> b!508969 m!489809))

(assert (=> b!508969 m!489803))

(declare-fun m!489811 () Bool)

(assert (=> b!508969 m!489811))

(assert (=> b!508969 m!489803))

(declare-fun m!489813 () Bool)

(assert (=> b!508969 m!489813))

(assert (=> b!508969 m!489805))

(declare-fun m!489815 () Bool)

(assert (=> b!508969 m!489815))

(assert (=> b!508969 m!489805))

(declare-fun m!489817 () Bool)

(assert (=> b!508971 m!489817))

(declare-fun m!489819 () Bool)

(assert (=> b!508974 m!489819))

(declare-fun m!489821 () Bool)

(assert (=> start!46000 m!489821))

(declare-fun m!489823 () Bool)

(assert (=> start!46000 m!489823))

(declare-fun m!489825 () Bool)

(assert (=> b!508970 m!489825))

(assert (=> b!508972 m!489805))

(assert (=> b!508972 m!489805))

(declare-fun m!489827 () Bool)

(assert (=> b!508972 m!489827))

(declare-fun m!489829 () Bool)

(assert (=> b!508975 m!489829))

(assert (=> b!508973 m!489805))

(assert (=> b!508973 m!489805))

(declare-fun m!489831 () Bool)

(assert (=> b!508973 m!489831))

(declare-fun m!489833 () Bool)

(assert (=> b!508976 m!489833))

(push 1)

