; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45892 () Bool)

(assert start!45892)

(declare-fun b!508007 () Bool)

(declare-fun res!309118 () Bool)

(declare-fun e!297231 () Bool)

(assert (=> b!508007 (=> (not res!309118) (not e!297231))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508007 (= res!309118 (validKeyInArray!0 k!2280))))

(declare-fun b!508008 () Bool)

(declare-fun res!309117 () Bool)

(assert (=> b!508008 (=> (not res!309117) (not e!297231))))

(declare-datatypes ((array!32608 0))(
  ( (array!32609 (arr!15681 (Array (_ BitVec 32) (_ BitVec 64))) (size!16045 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32608)

(declare-fun arrayContainsKey!0 (array!32608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508008 (= res!309117 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508009 () Bool)

(declare-fun res!309119 () Bool)

(assert (=> b!508009 (=> (not res!309119) (not e!297231))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508009 (= res!309119 (validKeyInArray!0 (select (arr!15681 a!3235) j!176)))))

(declare-fun res!309120 () Bool)

(assert (=> start!45892 (=> (not res!309120) (not e!297231))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45892 (= res!309120 (validMask!0 mask!3524))))

(assert (=> start!45892 e!297231))

(assert (=> start!45892 true))

(declare-fun array_inv!11455 (array!32608) Bool)

(assert (=> start!45892 (array_inv!11455 a!3235)))

(declare-fun b!508010 () Bool)

(declare-fun e!297232 () Bool)

(assert (=> b!508010 (= e!297231 e!297232)))

(declare-fun res!309122 () Bool)

(assert (=> b!508010 (=> (not res!309122) (not e!297232))))

(declare-datatypes ((SeekEntryResult!4155 0))(
  ( (MissingZero!4155 (index!18808 (_ BitVec 32))) (Found!4155 (index!18809 (_ BitVec 32))) (Intermediate!4155 (undefined!4967 Bool) (index!18810 (_ BitVec 32)) (x!47823 (_ BitVec 32))) (Undefined!4155) (MissingVacant!4155 (index!18811 (_ BitVec 32))) )
))
(declare-fun lt!232135 () SeekEntryResult!4155)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508010 (= res!309122 (or (= lt!232135 (MissingZero!4155 i!1204)) (= lt!232135 (MissingVacant!4155 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32608 (_ BitVec 32)) SeekEntryResult!4155)

(assert (=> b!508010 (= lt!232135 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508011 () Bool)

(assert (=> b!508011 (= e!297232 false)))

(declare-fun lt!232136 () Bool)

(declare-datatypes ((List!9892 0))(
  ( (Nil!9889) (Cons!9888 (h!10765 (_ BitVec 64)) (t!16128 List!9892)) )
))
(declare-fun arrayNoDuplicates!0 (array!32608 (_ BitVec 32) List!9892) Bool)

(assert (=> b!508011 (= lt!232136 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9889))))

(declare-fun b!508012 () Bool)

(declare-fun res!309121 () Bool)

(assert (=> b!508012 (=> (not res!309121) (not e!297232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32608 (_ BitVec 32)) Bool)

(assert (=> b!508012 (= res!309121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508013 () Bool)

(declare-fun res!309116 () Bool)

(assert (=> b!508013 (=> (not res!309116) (not e!297231))))

(assert (=> b!508013 (= res!309116 (and (= (size!16045 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16045 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16045 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45892 res!309120) b!508013))

(assert (= (and b!508013 res!309116) b!508009))

(assert (= (and b!508009 res!309119) b!508007))

(assert (= (and b!508007 res!309118) b!508008))

(assert (= (and b!508008 res!309117) b!508010))

(assert (= (and b!508010 res!309122) b!508012))

(assert (= (and b!508012 res!309121) b!508011))

(declare-fun m!488845 () Bool)

(assert (=> start!45892 m!488845))

(declare-fun m!488847 () Bool)

(assert (=> start!45892 m!488847))

(declare-fun m!488849 () Bool)

(assert (=> b!508010 m!488849))

(declare-fun m!488851 () Bool)

(assert (=> b!508007 m!488851))

(declare-fun m!488853 () Bool)

(assert (=> b!508012 m!488853))

(declare-fun m!488855 () Bool)

(assert (=> b!508009 m!488855))

(assert (=> b!508009 m!488855))

(declare-fun m!488857 () Bool)

(assert (=> b!508009 m!488857))

(declare-fun m!488859 () Bool)

(assert (=> b!508011 m!488859))

(declare-fun m!488861 () Bool)

(assert (=> b!508008 m!488861))

(push 1)

