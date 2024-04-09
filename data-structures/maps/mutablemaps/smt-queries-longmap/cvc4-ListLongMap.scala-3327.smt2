; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45968 () Bool)

(assert start!45968)

(declare-fun e!297500 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!508536 () Bool)

(declare-datatypes ((array!32639 0))(
  ( (array!32640 (arr!15695 (Array (_ BitVec 32) (_ BitVec 64))) (size!16059 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32639)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4169 0))(
  ( (MissingZero!4169 (index!18864 (_ BitVec 32))) (Found!4169 (index!18865 (_ BitVec 32))) (Intermediate!4169 (undefined!4981 Bool) (index!18866 (_ BitVec 32)) (x!47869 (_ BitVec 32))) (Undefined!4169) (MissingVacant!4169 (index!18867 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32639 (_ BitVec 32)) SeekEntryResult!4169)

(assert (=> b!508536 (= e!297500 (= (seekEntryOrOpen!0 (select (arr!15695 a!3235) j!176) a!3235 mask!3524) (Found!4169 j!176)))))

(declare-fun b!508537 () Bool)

(declare-fun e!297499 () Bool)

(assert (=> b!508537 (= e!297499 (not true))))

(assert (=> b!508537 e!297500))

(declare-fun res!309532 () Bool)

(assert (=> b!508537 (=> (not res!309532) (not e!297500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32639 (_ BitVec 32)) Bool)

(assert (=> b!508537 (= res!309532 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15588 0))(
  ( (Unit!15589) )
))
(declare-fun lt!232301 () Unit!15588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15588)

(assert (=> b!508537 (= lt!232301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508538 () Bool)

(declare-fun e!297502 () Bool)

(assert (=> b!508538 (= e!297502 e!297499)))

(declare-fun res!309531 () Bool)

(assert (=> b!508538 (=> (not res!309531) (not e!297499))))

(declare-fun lt!232300 () SeekEntryResult!4169)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508538 (= res!309531 (or (= lt!232300 (MissingZero!4169 i!1204)) (= lt!232300 (MissingVacant!4169 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!508538 (= lt!232300 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508539 () Bool)

(declare-fun res!309534 () Bool)

(assert (=> b!508539 (=> (not res!309534) (not e!297502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508539 (= res!309534 (validKeyInArray!0 (select (arr!15695 a!3235) j!176)))))

(declare-fun b!508540 () Bool)

(declare-fun res!309533 () Bool)

(assert (=> b!508540 (=> (not res!309533) (not e!297502))))

(assert (=> b!508540 (= res!309533 (validKeyInArray!0 k!2280))))

(declare-fun b!508541 () Bool)

(declare-fun res!309538 () Bool)

(assert (=> b!508541 (=> (not res!309538) (not e!297502))))

(declare-fun arrayContainsKey!0 (array!32639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508541 (= res!309538 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508542 () Bool)

(declare-fun res!309539 () Bool)

(assert (=> b!508542 (=> (not res!309539) (not e!297499))))

(assert (=> b!508542 (= res!309539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!309537 () Bool)

(assert (=> start!45968 (=> (not res!309537) (not e!297502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45968 (= res!309537 (validMask!0 mask!3524))))

(assert (=> start!45968 e!297502))

(assert (=> start!45968 true))

(declare-fun array_inv!11469 (array!32639) Bool)

(assert (=> start!45968 (array_inv!11469 a!3235)))

(declare-fun b!508543 () Bool)

(declare-fun res!309536 () Bool)

(assert (=> b!508543 (=> (not res!309536) (not e!297502))))

(assert (=> b!508543 (= res!309536 (and (= (size!16059 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16059 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16059 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508544 () Bool)

(declare-fun res!309535 () Bool)

(assert (=> b!508544 (=> (not res!309535) (not e!297499))))

(declare-datatypes ((List!9906 0))(
  ( (Nil!9903) (Cons!9902 (h!10779 (_ BitVec 64)) (t!16142 List!9906)) )
))
(declare-fun arrayNoDuplicates!0 (array!32639 (_ BitVec 32) List!9906) Bool)

(assert (=> b!508544 (= res!309535 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9903))))

(assert (= (and start!45968 res!309537) b!508543))

(assert (= (and b!508543 res!309536) b!508539))

(assert (= (and b!508539 res!309534) b!508540))

(assert (= (and b!508540 res!309533) b!508541))

(assert (= (and b!508541 res!309538) b!508538))

(assert (= (and b!508538 res!309531) b!508542))

(assert (= (and b!508542 res!309539) b!508544))

(assert (= (and b!508544 res!309535) b!508537))

(assert (= (and b!508537 res!309532) b!508536))

(declare-fun m!489319 () Bool)

(assert (=> b!508539 m!489319))

(assert (=> b!508539 m!489319))

(declare-fun m!489321 () Bool)

(assert (=> b!508539 m!489321))

(declare-fun m!489323 () Bool)

(assert (=> b!508537 m!489323))

(declare-fun m!489325 () Bool)

(assert (=> b!508537 m!489325))

(declare-fun m!489327 () Bool)

(assert (=> b!508541 m!489327))

(declare-fun m!489329 () Bool)

(assert (=> b!508540 m!489329))

(declare-fun m!489331 () Bool)

(assert (=> b!508544 m!489331))

(declare-fun m!489333 () Bool)

(assert (=> start!45968 m!489333))

(declare-fun m!489335 () Bool)

(assert (=> start!45968 m!489335))

(declare-fun m!489337 () Bool)

(assert (=> b!508538 m!489337))

(assert (=> b!508536 m!489319))

(assert (=> b!508536 m!489319))

(declare-fun m!489339 () Bool)

(assert (=> b!508536 m!489339))

(declare-fun m!489341 () Bool)

(assert (=> b!508542 m!489341))

(push 1)

(assert (not start!45968))

(assert (not b!508542))

(assert (not b!508539))

