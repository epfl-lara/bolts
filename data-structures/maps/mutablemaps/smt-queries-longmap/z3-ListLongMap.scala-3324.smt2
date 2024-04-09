; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45900 () Bool)

(assert start!45900)

(declare-fun b!508096 () Bool)

(declare-fun res!309205 () Bool)

(declare-fun e!297267 () Bool)

(assert (=> b!508096 (=> (not res!309205) (not e!297267))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32616 0))(
  ( (array!32617 (arr!15685 (Array (_ BitVec 32) (_ BitVec 64))) (size!16049 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32616)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508096 (= res!309205 (and (= (size!16049 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16049 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16049 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!309206 () Bool)

(assert (=> start!45900 (=> (not res!309206) (not e!297267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45900 (= res!309206 (validMask!0 mask!3524))))

(assert (=> start!45900 e!297267))

(assert (=> start!45900 true))

(declare-fun array_inv!11459 (array!32616) Bool)

(assert (=> start!45900 (array_inv!11459 a!3235)))

(declare-fun b!508097 () Bool)

(declare-fun res!309208 () Bool)

(assert (=> b!508097 (=> (not res!309208) (not e!297267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508097 (= res!309208 (validKeyInArray!0 (select (arr!15685 a!3235) j!176)))))

(declare-fun b!508098 () Bool)

(declare-fun e!297266 () Bool)

(assert (=> b!508098 (= e!297267 e!297266)))

(declare-fun res!309209 () Bool)

(assert (=> b!508098 (=> (not res!309209) (not e!297266))))

(declare-datatypes ((SeekEntryResult!4159 0))(
  ( (MissingZero!4159 (index!18824 (_ BitVec 32))) (Found!4159 (index!18825 (_ BitVec 32))) (Intermediate!4159 (undefined!4971 Bool) (index!18826 (_ BitVec 32)) (x!47835 (_ BitVec 32))) (Undefined!4159) (MissingVacant!4159 (index!18827 (_ BitVec 32))) )
))
(declare-fun lt!232159 () SeekEntryResult!4159)

(assert (=> b!508098 (= res!309209 (or (= lt!232159 (MissingZero!4159 i!1204)) (= lt!232159 (MissingVacant!4159 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32616 (_ BitVec 32)) SeekEntryResult!4159)

(assert (=> b!508098 (= lt!232159 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508099 () Bool)

(declare-fun res!309211 () Bool)

(assert (=> b!508099 (=> (not res!309211) (not e!297266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32616 (_ BitVec 32)) Bool)

(assert (=> b!508099 (= res!309211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508100 () Bool)

(declare-fun res!309212 () Bool)

(assert (=> b!508100 (=> (not res!309212) (not e!297267))))

(assert (=> b!508100 (= res!309212 (validKeyInArray!0 k0!2280))))

(declare-fun b!508101 () Bool)

(assert (=> b!508101 (= e!297266 (not true))))

(assert (=> b!508101 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15568 0))(
  ( (Unit!15569) )
))
(declare-fun lt!232160 () Unit!15568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15568)

(assert (=> b!508101 (= lt!232160 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508102 () Bool)

(declare-fun res!309207 () Bool)

(assert (=> b!508102 (=> (not res!309207) (not e!297267))))

(declare-fun arrayContainsKey!0 (array!32616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508102 (= res!309207 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508103 () Bool)

(declare-fun res!309210 () Bool)

(assert (=> b!508103 (=> (not res!309210) (not e!297266))))

(declare-datatypes ((List!9896 0))(
  ( (Nil!9893) (Cons!9892 (h!10769 (_ BitVec 64)) (t!16132 List!9896)) )
))
(declare-fun arrayNoDuplicates!0 (array!32616 (_ BitVec 32) List!9896) Bool)

(assert (=> b!508103 (= res!309210 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9893))))

(assert (= (and start!45900 res!309206) b!508096))

(assert (= (and b!508096 res!309205) b!508097))

(assert (= (and b!508097 res!309208) b!508100))

(assert (= (and b!508100 res!309212) b!508102))

(assert (= (and b!508102 res!309207) b!508098))

(assert (= (and b!508098 res!309209) b!508099))

(assert (= (and b!508099 res!309211) b!508103))

(assert (= (and b!508103 res!309210) b!508101))

(declare-fun m!488921 () Bool)

(assert (=> start!45900 m!488921))

(declare-fun m!488923 () Bool)

(assert (=> start!45900 m!488923))

(declare-fun m!488925 () Bool)

(assert (=> b!508101 m!488925))

(declare-fun m!488927 () Bool)

(assert (=> b!508101 m!488927))

(declare-fun m!488929 () Bool)

(assert (=> b!508097 m!488929))

(assert (=> b!508097 m!488929))

(declare-fun m!488931 () Bool)

(assert (=> b!508097 m!488931))

(declare-fun m!488933 () Bool)

(assert (=> b!508098 m!488933))

(declare-fun m!488935 () Bool)

(assert (=> b!508102 m!488935))

(declare-fun m!488937 () Bool)

(assert (=> b!508103 m!488937))

(declare-fun m!488939 () Bool)

(assert (=> b!508099 m!488939))

(declare-fun m!488941 () Bool)

(assert (=> b!508100 m!488941))

(check-sat (not b!508098) (not b!508103) (not b!508099) (not b!508100) (not b!508097) (not b!508102) (not start!45900) (not b!508101))
(check-sat)
