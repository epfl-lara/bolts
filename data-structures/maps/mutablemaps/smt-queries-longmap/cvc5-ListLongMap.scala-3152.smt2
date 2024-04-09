; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44392 () Bool)

(assert start!44392)

(declare-fun b!487602 () Bool)

(declare-fun res!291026 () Bool)

(declare-fun e!286887 () Bool)

(assert (=> b!487602 (=> (not res!291026) (not e!286887))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487602 (= res!291026 (validKeyInArray!0 k!2280))))

(declare-fun b!487603 () Bool)

(declare-fun res!291025 () Bool)

(assert (=> b!487603 (=> (not res!291025) (not e!286887))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31558 0))(
  ( (array!31559 (arr!15168 (Array (_ BitVec 32) (_ BitVec 64))) (size!15532 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31558)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487603 (= res!291025 (and (= (size!15532 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15532 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15532 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!291032 () Bool)

(assert (=> start!44392 (=> (not res!291032) (not e!286887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44392 (= res!291032 (validMask!0 mask!3524))))

(assert (=> start!44392 e!286887))

(assert (=> start!44392 true))

(declare-fun array_inv!10942 (array!31558) Bool)

(assert (=> start!44392 (array_inv!10942 a!3235)))

(declare-fun b!487604 () Bool)

(declare-fun res!291024 () Bool)

(declare-fun e!286886 () Bool)

(assert (=> b!487604 (=> (not res!291024) (not e!286886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31558 (_ BitVec 32)) Bool)

(assert (=> b!487604 (= res!291024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487605 () Bool)

(assert (=> b!487605 (= e!286886 (not true))))

(declare-fun lt!220124 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487605 (= lt!220124 (toIndex!0 (select (arr!15168 a!3235) j!176) mask!3524))))

(declare-fun e!286885 () Bool)

(assert (=> b!487605 e!286885))

(declare-fun res!291027 () Bool)

(assert (=> b!487605 (=> (not res!291027) (not e!286885))))

(assert (=> b!487605 (= res!291027 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14222 0))(
  ( (Unit!14223) )
))
(declare-fun lt!220122 () Unit!14222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14222)

(assert (=> b!487605 (= lt!220122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487606 () Bool)

(declare-fun res!291030 () Bool)

(assert (=> b!487606 (=> (not res!291030) (not e!286887))))

(assert (=> b!487606 (= res!291030 (validKeyInArray!0 (select (arr!15168 a!3235) j!176)))))

(declare-fun b!487607 () Bool)

(assert (=> b!487607 (= e!286887 e!286886)))

(declare-fun res!291028 () Bool)

(assert (=> b!487607 (=> (not res!291028) (not e!286886))))

(declare-datatypes ((SeekEntryResult!3642 0))(
  ( (MissingZero!3642 (index!16747 (_ BitVec 32))) (Found!3642 (index!16748 (_ BitVec 32))) (Intermediate!3642 (undefined!4454 Bool) (index!16749 (_ BitVec 32)) (x!45897 (_ BitVec 32))) (Undefined!3642) (MissingVacant!3642 (index!16750 (_ BitVec 32))) )
))
(declare-fun lt!220123 () SeekEntryResult!3642)

(assert (=> b!487607 (= res!291028 (or (= lt!220123 (MissingZero!3642 i!1204)) (= lt!220123 (MissingVacant!3642 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31558 (_ BitVec 32)) SeekEntryResult!3642)

(assert (=> b!487607 (= lt!220123 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487608 () Bool)

(declare-fun res!291031 () Bool)

(assert (=> b!487608 (=> (not res!291031) (not e!286886))))

(declare-datatypes ((List!9379 0))(
  ( (Nil!9376) (Cons!9375 (h!10231 (_ BitVec 64)) (t!15615 List!9379)) )
))
(declare-fun arrayNoDuplicates!0 (array!31558 (_ BitVec 32) List!9379) Bool)

(assert (=> b!487608 (= res!291031 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9376))))

(declare-fun b!487609 () Bool)

(declare-fun res!291029 () Bool)

(assert (=> b!487609 (=> (not res!291029) (not e!286887))))

(declare-fun arrayContainsKey!0 (array!31558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487609 (= res!291029 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487610 () Bool)

(assert (=> b!487610 (= e!286885 (= (seekEntryOrOpen!0 (select (arr!15168 a!3235) j!176) a!3235 mask!3524) (Found!3642 j!176)))))

(assert (= (and start!44392 res!291032) b!487603))

(assert (= (and b!487603 res!291025) b!487606))

(assert (= (and b!487606 res!291030) b!487602))

(assert (= (and b!487602 res!291026) b!487609))

(assert (= (and b!487609 res!291029) b!487607))

(assert (= (and b!487607 res!291028) b!487604))

(assert (= (and b!487604 res!291024) b!487608))

(assert (= (and b!487608 res!291031) b!487605))

(assert (= (and b!487605 res!291027) b!487610))

(declare-fun m!467425 () Bool)

(assert (=> b!487604 m!467425))

(declare-fun m!467427 () Bool)

(assert (=> b!487605 m!467427))

(assert (=> b!487605 m!467427))

(declare-fun m!467429 () Bool)

(assert (=> b!487605 m!467429))

(declare-fun m!467431 () Bool)

(assert (=> b!487605 m!467431))

(declare-fun m!467433 () Bool)

(assert (=> b!487605 m!467433))

(declare-fun m!467435 () Bool)

(assert (=> b!487602 m!467435))

(assert (=> b!487610 m!467427))

(assert (=> b!487610 m!467427))

(declare-fun m!467437 () Bool)

(assert (=> b!487610 m!467437))

(declare-fun m!467439 () Bool)

(assert (=> b!487607 m!467439))

(declare-fun m!467441 () Bool)

(assert (=> start!44392 m!467441))

(declare-fun m!467443 () Bool)

(assert (=> start!44392 m!467443))

(assert (=> b!487606 m!467427))

(assert (=> b!487606 m!467427))

(declare-fun m!467445 () Bool)

(assert (=> b!487606 m!467445))

(declare-fun m!467447 () Bool)

(assert (=> b!487609 m!467447))

(declare-fun m!467449 () Bool)

(assert (=> b!487608 m!467449))

(push 1)

