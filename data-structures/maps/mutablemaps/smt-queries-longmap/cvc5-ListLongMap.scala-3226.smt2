; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45172 () Bool)

(assert start!45172)

(declare-fun b!495301 () Bool)

(declare-fun res!297840 () Bool)

(declare-fun e!290590 () Bool)

(assert (=> b!495301 (=> (not res!297840) (not e!290590))))

(declare-datatypes ((array!32020 0))(
  ( (array!32021 (arr!15390 (Array (_ BitVec 32) (_ BitVec 64))) (size!15754 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32020)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32020 (_ BitVec 32)) Bool)

(assert (=> b!495301 (= res!297840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495302 () Bool)

(declare-fun e!290588 () Bool)

(assert (=> b!495302 (= e!290590 (not e!290588))))

(declare-fun res!297843 () Bool)

(assert (=> b!495302 (=> res!297843 e!290588)))

(declare-datatypes ((SeekEntryResult!3864 0))(
  ( (MissingZero!3864 (index!17635 (_ BitVec 32))) (Found!3864 (index!17636 (_ BitVec 32))) (Intermediate!3864 (undefined!4676 Bool) (index!17637 (_ BitVec 32)) (x!46735 (_ BitVec 32))) (Undefined!3864) (MissingVacant!3864 (index!17638 (_ BitVec 32))) )
))
(declare-fun lt!224279 () SeekEntryResult!3864)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224275 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32020 (_ BitVec 32)) SeekEntryResult!3864)

(assert (=> b!495302 (= res!297843 (= lt!224279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224275 (select (store (arr!15390 a!3235) i!1204 k!2280) j!176) (array!32021 (store (arr!15390 a!3235) i!1204 k!2280) (size!15754 a!3235)) mask!3524)))))

(declare-fun lt!224276 () (_ BitVec 32))

(assert (=> b!495302 (= lt!224279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224276 (select (arr!15390 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495302 (= lt!224275 (toIndex!0 (select (store (arr!15390 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495302 (= lt!224276 (toIndex!0 (select (arr!15390 a!3235) j!176) mask!3524))))

(declare-fun e!290586 () Bool)

(assert (=> b!495302 e!290586))

(declare-fun res!297845 () Bool)

(assert (=> b!495302 (=> (not res!297845) (not e!290586))))

(assert (=> b!495302 (= res!297845 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14666 0))(
  ( (Unit!14667) )
))
(declare-fun lt!224277 () Unit!14666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32020 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14666)

(assert (=> b!495302 (= lt!224277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495303 () Bool)

(declare-fun res!297848 () Bool)

(declare-fun e!290589 () Bool)

(assert (=> b!495303 (=> (not res!297848) (not e!290589))))

(assert (=> b!495303 (= res!297848 (and (= (size!15754 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15754 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15754 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495304 () Bool)

(declare-fun res!297842 () Bool)

(assert (=> b!495304 (=> (not res!297842) (not e!290590))))

(declare-datatypes ((List!9601 0))(
  ( (Nil!9598) (Cons!9597 (h!10468 (_ BitVec 64)) (t!15837 List!9601)) )
))
(declare-fun arrayNoDuplicates!0 (array!32020 (_ BitVec 32) List!9601) Bool)

(assert (=> b!495304 (= res!297842 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9598))))

(declare-fun b!495306 () Bool)

(assert (=> b!495306 (= e!290588 true)))

(assert (=> b!495306 (and (bvslt (x!46735 lt!224279) #b01111111111111111111111111111110) (or (= (select (arr!15390 a!3235) (index!17637 lt!224279)) (select (arr!15390 a!3235) j!176)) (= (select (arr!15390 a!3235) (index!17637 lt!224279)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15390 a!3235) (index!17637 lt!224279)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495307 () Bool)

(declare-fun res!297839 () Bool)

(assert (=> b!495307 (=> res!297839 e!290588)))

(assert (=> b!495307 (= res!297839 (or (undefined!4676 lt!224279) (not (is-Intermediate!3864 lt!224279))))))

(declare-fun b!495308 () Bool)

(declare-fun res!297844 () Bool)

(assert (=> b!495308 (=> (not res!297844) (not e!290589))))

(declare-fun arrayContainsKey!0 (array!32020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495308 (= res!297844 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495309 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32020 (_ BitVec 32)) SeekEntryResult!3864)

(assert (=> b!495309 (= e!290586 (= (seekEntryOrOpen!0 (select (arr!15390 a!3235) j!176) a!3235 mask!3524) (Found!3864 j!176)))))

(declare-fun b!495305 () Bool)

(declare-fun res!297846 () Bool)

(assert (=> b!495305 (=> (not res!297846) (not e!290589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495305 (= res!297846 (validKeyInArray!0 k!2280))))

(declare-fun res!297847 () Bool)

(assert (=> start!45172 (=> (not res!297847) (not e!290589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45172 (= res!297847 (validMask!0 mask!3524))))

(assert (=> start!45172 e!290589))

(assert (=> start!45172 true))

(declare-fun array_inv!11164 (array!32020) Bool)

(assert (=> start!45172 (array_inv!11164 a!3235)))

(declare-fun b!495310 () Bool)

(assert (=> b!495310 (= e!290589 e!290590)))

(declare-fun res!297841 () Bool)

(assert (=> b!495310 (=> (not res!297841) (not e!290590))))

(declare-fun lt!224278 () SeekEntryResult!3864)

(assert (=> b!495310 (= res!297841 (or (= lt!224278 (MissingZero!3864 i!1204)) (= lt!224278 (MissingVacant!3864 i!1204))))))

(assert (=> b!495310 (= lt!224278 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495311 () Bool)

(declare-fun res!297838 () Bool)

(assert (=> b!495311 (=> (not res!297838) (not e!290589))))

(assert (=> b!495311 (= res!297838 (validKeyInArray!0 (select (arr!15390 a!3235) j!176)))))

(assert (= (and start!45172 res!297847) b!495303))

(assert (= (and b!495303 res!297848) b!495311))

(assert (= (and b!495311 res!297838) b!495305))

(assert (= (and b!495305 res!297846) b!495308))

(assert (= (and b!495308 res!297844) b!495310))

(assert (= (and b!495310 res!297841) b!495301))

(assert (= (and b!495301 res!297840) b!495304))

(assert (= (and b!495304 res!297842) b!495302))

(assert (= (and b!495302 res!297845) b!495309))

(assert (= (and b!495302 (not res!297843)) b!495307))

(assert (= (and b!495307 (not res!297839)) b!495306))

(declare-fun m!476431 () Bool)

(assert (=> b!495308 m!476431))

(declare-fun m!476433 () Bool)

(assert (=> b!495302 m!476433))

(declare-fun m!476435 () Bool)

(assert (=> b!495302 m!476435))

(declare-fun m!476437 () Bool)

(assert (=> b!495302 m!476437))

(declare-fun m!476439 () Bool)

(assert (=> b!495302 m!476439))

(assert (=> b!495302 m!476433))

(declare-fun m!476441 () Bool)

(assert (=> b!495302 m!476441))

(declare-fun m!476443 () Bool)

(assert (=> b!495302 m!476443))

(assert (=> b!495302 m!476441))

(declare-fun m!476445 () Bool)

(assert (=> b!495302 m!476445))

(assert (=> b!495302 m!476441))

(declare-fun m!476447 () Bool)

(assert (=> b!495302 m!476447))

(assert (=> b!495302 m!476433))

(declare-fun m!476449 () Bool)

(assert (=> b!495302 m!476449))

(declare-fun m!476451 () Bool)

(assert (=> b!495305 m!476451))

(declare-fun m!476453 () Bool)

(assert (=> b!495310 m!476453))

(declare-fun m!476455 () Bool)

(assert (=> b!495304 m!476455))

(assert (=> b!495309 m!476441))

(assert (=> b!495309 m!476441))

(declare-fun m!476457 () Bool)

(assert (=> b!495309 m!476457))

(declare-fun m!476459 () Bool)

(assert (=> start!45172 m!476459))

(declare-fun m!476461 () Bool)

(assert (=> start!45172 m!476461))

(declare-fun m!476463 () Bool)

(assert (=> b!495301 m!476463))

(declare-fun m!476465 () Bool)

(assert (=> b!495306 m!476465))

(assert (=> b!495306 m!476441))

(assert (=> b!495311 m!476441))

(assert (=> b!495311 m!476441))

(declare-fun m!476467 () Bool)

(assert (=> b!495311 m!476467))

(push 1)

