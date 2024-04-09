; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45888 () Bool)

(assert start!45888)

(declare-fun b!507961 () Bool)

(declare-fun res!309073 () Bool)

(declare-fun e!297212 () Bool)

(assert (=> b!507961 (=> (not res!309073) (not e!297212))))

(declare-datatypes ((array!32604 0))(
  ( (array!32605 (arr!15679 (Array (_ BitVec 32) (_ BitVec 64))) (size!16043 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32604)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507961 (= res!309073 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!309072 () Bool)

(assert (=> start!45888 (=> (not res!309072) (not e!297212))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45888 (= res!309072 (validMask!0 mask!3524))))

(assert (=> start!45888 e!297212))

(assert (=> start!45888 true))

(declare-fun array_inv!11453 (array!32604) Bool)

(assert (=> start!45888 (array_inv!11453 a!3235)))

(declare-fun b!507962 () Bool)

(declare-fun res!309071 () Bool)

(assert (=> b!507962 (=> (not res!309071) (not e!297212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507962 (= res!309071 (validKeyInArray!0 k0!2280))))

(declare-fun b!507963 () Bool)

(declare-fun res!309075 () Bool)

(assert (=> b!507963 (=> (not res!309075) (not e!297212))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507963 (= res!309075 (and (= (size!16043 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16043 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16043 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507964 () Bool)

(declare-fun res!309077 () Bool)

(assert (=> b!507964 (=> (not res!309077) (not e!297212))))

(assert (=> b!507964 (= res!309077 (validKeyInArray!0 (select (arr!15679 a!3235) j!176)))))

(declare-fun b!507965 () Bool)

(declare-fun e!297214 () Bool)

(assert (=> b!507965 (= e!297214 (and (bvsle #b00000000000000000000000000000000 (size!16043 a!3235)) (bvsgt j!176 (size!16043 a!3235))))))

(declare-fun b!507966 () Bool)

(declare-fun res!309076 () Bool)

(assert (=> b!507966 (=> (not res!309076) (not e!297214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32604 (_ BitVec 32)) Bool)

(assert (=> b!507966 (= res!309076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507967 () Bool)

(declare-fun res!309074 () Bool)

(assert (=> b!507967 (=> (not res!309074) (not e!297214))))

(declare-datatypes ((List!9890 0))(
  ( (Nil!9887) (Cons!9886 (h!10763 (_ BitVec 64)) (t!16126 List!9890)) )
))
(declare-fun arrayNoDuplicates!0 (array!32604 (_ BitVec 32) List!9890) Bool)

(assert (=> b!507967 (= res!309074 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9887))))

(declare-fun b!507968 () Bool)

(assert (=> b!507968 (= e!297212 e!297214)))

(declare-fun res!309070 () Bool)

(assert (=> b!507968 (=> (not res!309070) (not e!297214))))

(declare-datatypes ((SeekEntryResult!4153 0))(
  ( (MissingZero!4153 (index!18800 (_ BitVec 32))) (Found!4153 (index!18801 (_ BitVec 32))) (Intermediate!4153 (undefined!4965 Bool) (index!18802 (_ BitVec 32)) (x!47813 (_ BitVec 32))) (Undefined!4153) (MissingVacant!4153 (index!18803 (_ BitVec 32))) )
))
(declare-fun lt!232127 () SeekEntryResult!4153)

(assert (=> b!507968 (= res!309070 (or (= lt!232127 (MissingZero!4153 i!1204)) (= lt!232127 (MissingVacant!4153 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32604 (_ BitVec 32)) SeekEntryResult!4153)

(assert (=> b!507968 (= lt!232127 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45888 res!309072) b!507963))

(assert (= (and b!507963 res!309075) b!507964))

(assert (= (and b!507964 res!309077) b!507962))

(assert (= (and b!507962 res!309071) b!507961))

(assert (= (and b!507961 res!309073) b!507968))

(assert (= (and b!507968 res!309070) b!507966))

(assert (= (and b!507966 res!309076) b!507967))

(assert (= (and b!507967 res!309074) b!507965))

(declare-fun m!488809 () Bool)

(assert (=> start!45888 m!488809))

(declare-fun m!488811 () Bool)

(assert (=> start!45888 m!488811))

(declare-fun m!488813 () Bool)

(assert (=> b!507967 m!488813))

(declare-fun m!488815 () Bool)

(assert (=> b!507961 m!488815))

(declare-fun m!488817 () Bool)

(assert (=> b!507968 m!488817))

(declare-fun m!488819 () Bool)

(assert (=> b!507964 m!488819))

(assert (=> b!507964 m!488819))

(declare-fun m!488821 () Bool)

(assert (=> b!507964 m!488821))

(declare-fun m!488823 () Bool)

(assert (=> b!507966 m!488823))

(declare-fun m!488825 () Bool)

(assert (=> b!507962 m!488825))

(check-sat (not b!507968) (not b!507966) (not start!45888) (not b!507962) (not b!507961) (not b!507967) (not b!507964))
(check-sat)
