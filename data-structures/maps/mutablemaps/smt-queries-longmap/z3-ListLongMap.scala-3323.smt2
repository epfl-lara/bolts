; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45894 () Bool)

(assert start!45894)

(declare-fun b!508028 () Bool)

(declare-fun e!297241 () Bool)

(assert (=> b!508028 (= e!297241 false)))

(declare-fun lt!232142 () Bool)

(declare-datatypes ((array!32610 0))(
  ( (array!32611 (arr!15682 (Array (_ BitVec 32) (_ BitVec 64))) (size!16046 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32610)

(declare-datatypes ((List!9893 0))(
  ( (Nil!9890) (Cons!9889 (h!10766 (_ BitVec 64)) (t!16129 List!9893)) )
))
(declare-fun arrayNoDuplicates!0 (array!32610 (_ BitVec 32) List!9893) Bool)

(assert (=> b!508028 (= lt!232142 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9890))))

(declare-fun res!309139 () Bool)

(declare-fun e!297240 () Bool)

(assert (=> start!45894 (=> (not res!309139) (not e!297240))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45894 (= res!309139 (validMask!0 mask!3524))))

(assert (=> start!45894 e!297240))

(assert (=> start!45894 true))

(declare-fun array_inv!11456 (array!32610) Bool)

(assert (=> start!45894 (array_inv!11456 a!3235)))

(declare-fun b!508029 () Bool)

(declare-fun res!309138 () Bool)

(assert (=> b!508029 (=> (not res!309138) (not e!297241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32610 (_ BitVec 32)) Bool)

(assert (=> b!508029 (= res!309138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508030 () Bool)

(declare-fun res!309142 () Bool)

(assert (=> b!508030 (=> (not res!309142) (not e!297240))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508030 (= res!309142 (validKeyInArray!0 k0!2280))))

(declare-fun b!508031 () Bool)

(assert (=> b!508031 (= e!297240 e!297241)))

(declare-fun res!309140 () Bool)

(assert (=> b!508031 (=> (not res!309140) (not e!297241))))

(declare-datatypes ((SeekEntryResult!4156 0))(
  ( (MissingZero!4156 (index!18812 (_ BitVec 32))) (Found!4156 (index!18813 (_ BitVec 32))) (Intermediate!4156 (undefined!4968 Bool) (index!18814 (_ BitVec 32)) (x!47824 (_ BitVec 32))) (Undefined!4156) (MissingVacant!4156 (index!18815 (_ BitVec 32))) )
))
(declare-fun lt!232141 () SeekEntryResult!4156)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508031 (= res!309140 (or (= lt!232141 (MissingZero!4156 i!1204)) (= lt!232141 (MissingVacant!4156 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32610 (_ BitVec 32)) SeekEntryResult!4156)

(assert (=> b!508031 (= lt!232141 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508032 () Bool)

(declare-fun res!309137 () Bool)

(assert (=> b!508032 (=> (not res!309137) (not e!297240))))

(declare-fun arrayContainsKey!0 (array!32610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508032 (= res!309137 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508033 () Bool)

(declare-fun res!309143 () Bool)

(assert (=> b!508033 (=> (not res!309143) (not e!297240))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508033 (= res!309143 (validKeyInArray!0 (select (arr!15682 a!3235) j!176)))))

(declare-fun b!508034 () Bool)

(declare-fun res!309141 () Bool)

(assert (=> b!508034 (=> (not res!309141) (not e!297240))))

(assert (=> b!508034 (= res!309141 (and (= (size!16046 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16046 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16046 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45894 res!309139) b!508034))

(assert (= (and b!508034 res!309141) b!508033))

(assert (= (and b!508033 res!309143) b!508030))

(assert (= (and b!508030 res!309142) b!508032))

(assert (= (and b!508032 res!309137) b!508031))

(assert (= (and b!508031 res!309140) b!508029))

(assert (= (and b!508029 res!309138) b!508028))

(declare-fun m!488863 () Bool)

(assert (=> b!508033 m!488863))

(assert (=> b!508033 m!488863))

(declare-fun m!488865 () Bool)

(assert (=> b!508033 m!488865))

(declare-fun m!488867 () Bool)

(assert (=> start!45894 m!488867))

(declare-fun m!488869 () Bool)

(assert (=> start!45894 m!488869))

(declare-fun m!488871 () Bool)

(assert (=> b!508031 m!488871))

(declare-fun m!488873 () Bool)

(assert (=> b!508030 m!488873))

(declare-fun m!488875 () Bool)

(assert (=> b!508029 m!488875))

(declare-fun m!488877 () Bool)

(assert (=> b!508028 m!488877))

(declare-fun m!488879 () Bool)

(assert (=> b!508032 m!488879))

(check-sat (not b!508028) (not b!508030) (not b!508033) (not b!508032) (not b!508031) (not b!508029) (not start!45894))
(check-sat)
