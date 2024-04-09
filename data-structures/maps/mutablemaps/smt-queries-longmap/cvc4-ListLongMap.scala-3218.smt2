; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45068 () Bool)

(assert start!45068)

(declare-fun b!494321 () Bool)

(declare-fun res!297041 () Bool)

(declare-fun e!290110 () Bool)

(assert (=> b!494321 (=> (not res!297041) (not e!290110))))

(declare-datatypes ((array!31973 0))(
  ( (array!31974 (arr!15368 (Array (_ BitVec 32) (_ BitVec 64))) (size!15732 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31973)

(declare-datatypes ((List!9579 0))(
  ( (Nil!9576) (Cons!9575 (h!10443 (_ BitVec 64)) (t!15815 List!9579)) )
))
(declare-fun arrayNoDuplicates!0 (array!31973 (_ BitVec 32) List!9579) Bool)

(assert (=> b!494321 (= res!297041 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9576))))

(declare-fun b!494322 () Bool)

(declare-fun res!297048 () Bool)

(declare-fun e!290108 () Bool)

(assert (=> b!494322 (=> (not res!297048) (not e!290108))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494322 (= res!297048 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494323 () Bool)

(declare-fun res!297042 () Bool)

(assert (=> b!494323 (=> (not res!297042) (not e!290108))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494323 (= res!297042 (validKeyInArray!0 (select (arr!15368 a!3235) j!176)))))

(declare-fun b!494324 () Bool)

(declare-fun e!290109 () Bool)

(assert (=> b!494324 (= e!290109 true)))

(declare-datatypes ((SeekEntryResult!3842 0))(
  ( (MissingZero!3842 (index!17547 (_ BitVec 32))) (Found!3842 (index!17548 (_ BitVec 32))) (Intermediate!3842 (undefined!4654 Bool) (index!17549 (_ BitVec 32)) (x!46643 (_ BitVec 32))) (Undefined!3842) (MissingVacant!3842 (index!17550 (_ BitVec 32))) )
))
(declare-fun lt!223781 () SeekEntryResult!3842)

(assert (=> b!494324 (= lt!223781 Undefined!3842)))

(declare-fun b!494325 () Bool)

(declare-fun res!297046 () Bool)

(assert (=> b!494325 (=> (not res!297046) (not e!290110))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31973 (_ BitVec 32)) Bool)

(assert (=> b!494325 (= res!297046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494326 () Bool)

(assert (=> b!494326 (= e!290110 (not e!290109))))

(declare-fun res!297049 () Bool)

(assert (=> b!494326 (=> res!297049 e!290109)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223779 () (_ BitVec 32))

(declare-fun lt!223783 () SeekEntryResult!3842)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31973 (_ BitVec 32)) SeekEntryResult!3842)

(assert (=> b!494326 (= res!297049 (= lt!223783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223779 (select (store (arr!15368 a!3235) i!1204 k!2280) j!176) (array!31974 (store (arr!15368 a!3235) i!1204 k!2280) (size!15732 a!3235)) mask!3524)))))

(declare-fun lt!223780 () (_ BitVec 32))

(assert (=> b!494326 (= lt!223783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223780 (select (arr!15368 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494326 (= lt!223779 (toIndex!0 (select (store (arr!15368 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494326 (= lt!223780 (toIndex!0 (select (arr!15368 a!3235) j!176) mask!3524))))

(assert (=> b!494326 (= lt!223781 (Found!3842 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31973 (_ BitVec 32)) SeekEntryResult!3842)

(assert (=> b!494326 (= lt!223781 (seekEntryOrOpen!0 (select (arr!15368 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494326 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14622 0))(
  ( (Unit!14623) )
))
(declare-fun lt!223784 () Unit!14622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14622)

(assert (=> b!494326 (= lt!223784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494327 () Bool)

(assert (=> b!494327 (= e!290108 e!290110)))

(declare-fun res!297045 () Bool)

(assert (=> b!494327 (=> (not res!297045) (not e!290110))))

(declare-fun lt!223782 () SeekEntryResult!3842)

(assert (=> b!494327 (= res!297045 (or (= lt!223782 (MissingZero!3842 i!1204)) (= lt!223782 (MissingVacant!3842 i!1204))))))

(assert (=> b!494327 (= lt!223782 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!297043 () Bool)

(assert (=> start!45068 (=> (not res!297043) (not e!290108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45068 (= res!297043 (validMask!0 mask!3524))))

(assert (=> start!45068 e!290108))

(assert (=> start!45068 true))

(declare-fun array_inv!11142 (array!31973) Bool)

(assert (=> start!45068 (array_inv!11142 a!3235)))

(declare-fun b!494328 () Bool)

(declare-fun res!297047 () Bool)

(assert (=> b!494328 (=> res!297047 e!290109)))

(assert (=> b!494328 (= res!297047 (or (not (is-Intermediate!3842 lt!223783)) (not (undefined!4654 lt!223783))))))

(declare-fun b!494329 () Bool)

(declare-fun res!297044 () Bool)

(assert (=> b!494329 (=> (not res!297044) (not e!290108))))

(assert (=> b!494329 (= res!297044 (validKeyInArray!0 k!2280))))

(declare-fun b!494330 () Bool)

(declare-fun res!297050 () Bool)

(assert (=> b!494330 (=> (not res!297050) (not e!290108))))

(assert (=> b!494330 (= res!297050 (and (= (size!15732 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15732 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15732 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45068 res!297043) b!494330))

(assert (= (and b!494330 res!297050) b!494323))

(assert (= (and b!494323 res!297042) b!494329))

(assert (= (and b!494329 res!297044) b!494322))

(assert (= (and b!494322 res!297048) b!494327))

(assert (= (and b!494327 res!297045) b!494325))

(assert (= (and b!494325 res!297046) b!494321))

(assert (= (and b!494321 res!297041) b!494326))

(assert (= (and b!494326 (not res!297049)) b!494328))

(assert (= (and b!494328 (not res!297047)) b!494324))

(declare-fun m!475417 () Bool)

(assert (=> b!494326 m!475417))

(declare-fun m!475419 () Bool)

(assert (=> b!494326 m!475419))

(declare-fun m!475421 () Bool)

(assert (=> b!494326 m!475421))

(assert (=> b!494326 m!475421))

(declare-fun m!475423 () Bool)

(assert (=> b!494326 m!475423))

(declare-fun m!475425 () Bool)

(assert (=> b!494326 m!475425))

(declare-fun m!475427 () Bool)

(assert (=> b!494326 m!475427))

(assert (=> b!494326 m!475425))

(declare-fun m!475429 () Bool)

(assert (=> b!494326 m!475429))

(assert (=> b!494326 m!475421))

(declare-fun m!475431 () Bool)

(assert (=> b!494326 m!475431))

(assert (=> b!494326 m!475425))

(declare-fun m!475433 () Bool)

(assert (=> b!494326 m!475433))

(assert (=> b!494326 m!475425))

(declare-fun m!475435 () Bool)

(assert (=> b!494326 m!475435))

(declare-fun m!475437 () Bool)

(assert (=> b!494327 m!475437))

(declare-fun m!475439 () Bool)

(assert (=> b!494325 m!475439))

(assert (=> b!494323 m!475425))

(assert (=> b!494323 m!475425))

(declare-fun m!475441 () Bool)

(assert (=> b!494323 m!475441))

(declare-fun m!475443 () Bool)

(assert (=> b!494329 m!475443))

(declare-fun m!475445 () Bool)

(assert (=> b!494321 m!475445))

(declare-fun m!475447 () Bool)

(assert (=> start!45068 m!475447))

(declare-fun m!475449 () Bool)

(assert (=> start!45068 m!475449))

(declare-fun m!475451 () Bool)

(assert (=> b!494322 m!475451))

(push 1)

