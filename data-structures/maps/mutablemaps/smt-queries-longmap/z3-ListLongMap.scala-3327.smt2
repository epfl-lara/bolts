; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45966 () Bool)

(assert start!45966)

(declare-fun b!508509 () Bool)

(declare-fun res!309512 () Bool)

(declare-fun e!297489 () Bool)

(assert (=> b!508509 (=> (not res!309512) (not e!297489))))

(declare-datatypes ((array!32637 0))(
  ( (array!32638 (arr!15694 (Array (_ BitVec 32) (_ BitVec 64))) (size!16058 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32637)

(declare-datatypes ((List!9905 0))(
  ( (Nil!9902) (Cons!9901 (h!10778 (_ BitVec 64)) (t!16141 List!9905)) )
))
(declare-fun arrayNoDuplicates!0 (array!32637 (_ BitVec 32) List!9905) Bool)

(assert (=> b!508509 (= res!309512 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9902))))

(declare-fun b!508510 () Bool)

(declare-fun res!309504 () Bool)

(declare-fun e!297487 () Bool)

(assert (=> b!508510 (=> (not res!309504) (not e!297487))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508510 (= res!309504 (validKeyInArray!0 k0!2280))))

(declare-fun res!309511 () Bool)

(assert (=> start!45966 (=> (not res!309511) (not e!297487))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45966 (= res!309511 (validMask!0 mask!3524))))

(assert (=> start!45966 e!297487))

(assert (=> start!45966 true))

(declare-fun array_inv!11468 (array!32637) Bool)

(assert (=> start!45966 (array_inv!11468 a!3235)))

(declare-fun b!508511 () Bool)

(declare-fun res!309505 () Bool)

(assert (=> b!508511 (=> (not res!309505) (not e!297487))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508511 (= res!309505 (validKeyInArray!0 (select (arr!15694 a!3235) j!176)))))

(declare-fun b!508512 () Bool)

(declare-fun res!309510 () Bool)

(assert (=> b!508512 (=> (not res!309510) (not e!297489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32637 (_ BitVec 32)) Bool)

(assert (=> b!508512 (= res!309510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508513 () Bool)

(declare-fun res!309509 () Bool)

(assert (=> b!508513 (=> (not res!309509) (not e!297487))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508513 (= res!309509 (and (= (size!16058 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16058 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16058 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508514 () Bool)

(assert (=> b!508514 (= e!297489 (not true))))

(declare-fun e!297488 () Bool)

(assert (=> b!508514 e!297488))

(declare-fun res!309507 () Bool)

(assert (=> b!508514 (=> (not res!309507) (not e!297488))))

(assert (=> b!508514 (= res!309507 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15586 0))(
  ( (Unit!15587) )
))
(declare-fun lt!232295 () Unit!15586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15586)

(assert (=> b!508514 (= lt!232295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508515 () Bool)

(assert (=> b!508515 (= e!297487 e!297489)))

(declare-fun res!309506 () Bool)

(assert (=> b!508515 (=> (not res!309506) (not e!297489))))

(declare-datatypes ((SeekEntryResult!4168 0))(
  ( (MissingZero!4168 (index!18860 (_ BitVec 32))) (Found!4168 (index!18861 (_ BitVec 32))) (Intermediate!4168 (undefined!4980 Bool) (index!18862 (_ BitVec 32)) (x!47868 (_ BitVec 32))) (Undefined!4168) (MissingVacant!4168 (index!18863 (_ BitVec 32))) )
))
(declare-fun lt!232294 () SeekEntryResult!4168)

(assert (=> b!508515 (= res!309506 (or (= lt!232294 (MissingZero!4168 i!1204)) (= lt!232294 (MissingVacant!4168 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32637 (_ BitVec 32)) SeekEntryResult!4168)

(assert (=> b!508515 (= lt!232294 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508516 () Bool)

(assert (=> b!508516 (= e!297488 (= (seekEntryOrOpen!0 (select (arr!15694 a!3235) j!176) a!3235 mask!3524) (Found!4168 j!176)))))

(declare-fun b!508517 () Bool)

(declare-fun res!309508 () Bool)

(assert (=> b!508517 (=> (not res!309508) (not e!297487))))

(declare-fun arrayContainsKey!0 (array!32637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508517 (= res!309508 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45966 res!309511) b!508513))

(assert (= (and b!508513 res!309509) b!508511))

(assert (= (and b!508511 res!309505) b!508510))

(assert (= (and b!508510 res!309504) b!508517))

(assert (= (and b!508517 res!309508) b!508515))

(assert (= (and b!508515 res!309506) b!508512))

(assert (= (and b!508512 res!309510) b!508509))

(assert (= (and b!508509 res!309512) b!508514))

(assert (= (and b!508514 res!309507) b!508516))

(declare-fun m!489295 () Bool)

(assert (=> start!45966 m!489295))

(declare-fun m!489297 () Bool)

(assert (=> start!45966 m!489297))

(declare-fun m!489299 () Bool)

(assert (=> b!508512 m!489299))

(declare-fun m!489301 () Bool)

(assert (=> b!508510 m!489301))

(declare-fun m!489303 () Bool)

(assert (=> b!508509 m!489303))

(declare-fun m!489305 () Bool)

(assert (=> b!508516 m!489305))

(assert (=> b!508516 m!489305))

(declare-fun m!489307 () Bool)

(assert (=> b!508516 m!489307))

(declare-fun m!489309 () Bool)

(assert (=> b!508515 m!489309))

(declare-fun m!489311 () Bool)

(assert (=> b!508517 m!489311))

(assert (=> b!508511 m!489305))

(assert (=> b!508511 m!489305))

(declare-fun m!489313 () Bool)

(assert (=> b!508511 m!489313))

(declare-fun m!489315 () Bool)

(assert (=> b!508514 m!489315))

(declare-fun m!489317 () Bool)

(assert (=> b!508514 m!489317))

(check-sat (not b!508514) (not b!508517) (not b!508515) (not b!508511) (not b!508510) (not b!508509) (not start!45966) (not b!508512) (not b!508516))
(check-sat)
