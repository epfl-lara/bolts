; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45884 () Bool)

(assert start!45884)

(declare-fun res!309026 () Bool)

(declare-fun e!297194 () Bool)

(assert (=> start!45884 (=> (not res!309026) (not e!297194))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45884 (= res!309026 (validMask!0 mask!3524))))

(assert (=> start!45884 e!297194))

(assert (=> start!45884 true))

(declare-datatypes ((array!32600 0))(
  ( (array!32601 (arr!15677 (Array (_ BitVec 32) (_ BitVec 64))) (size!16041 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32600)

(declare-fun array_inv!11451 (array!32600) Bool)

(assert (=> start!45884 (array_inv!11451 a!3235)))

(declare-fun b!507913 () Bool)

(declare-fun e!297195 () Bool)

(assert (=> b!507913 (= e!297194 e!297195)))

(declare-fun res!309027 () Bool)

(assert (=> b!507913 (=> (not res!309027) (not e!297195))))

(declare-datatypes ((SeekEntryResult!4151 0))(
  ( (MissingZero!4151 (index!18792 (_ BitVec 32))) (Found!4151 (index!18793 (_ BitVec 32))) (Intermediate!4151 (undefined!4963 Bool) (index!18794 (_ BitVec 32)) (x!47803 (_ BitVec 32))) (Undefined!4151) (MissingVacant!4151 (index!18795 (_ BitVec 32))) )
))
(declare-fun lt!232121 () SeekEntryResult!4151)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507913 (= res!309027 (or (= lt!232121 (MissingZero!4151 i!1204)) (= lt!232121 (MissingVacant!4151 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32600 (_ BitVec 32)) SeekEntryResult!4151)

(assert (=> b!507913 (= lt!232121 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507914 () Bool)

(declare-fun res!309023 () Bool)

(assert (=> b!507914 (=> (not res!309023) (not e!297194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507914 (= res!309023 (validKeyInArray!0 k!2280))))

(declare-fun b!507915 () Bool)

(declare-fun res!309022 () Bool)

(assert (=> b!507915 (=> (not res!309022) (not e!297195))))

(declare-datatypes ((List!9888 0))(
  ( (Nil!9885) (Cons!9884 (h!10761 (_ BitVec 64)) (t!16124 List!9888)) )
))
(declare-fun arrayNoDuplicates!0 (array!32600 (_ BitVec 32) List!9888) Bool)

(assert (=> b!507915 (= res!309022 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9885))))

(declare-fun b!507916 () Bool)

(declare-fun res!309028 () Bool)

(assert (=> b!507916 (=> (not res!309028) (not e!297195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32600 (_ BitVec 32)) Bool)

(assert (=> b!507916 (= res!309028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507917 () Bool)

(declare-fun res!309024 () Bool)

(assert (=> b!507917 (=> (not res!309024) (not e!297194))))

(declare-fun arrayContainsKey!0 (array!32600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507917 (= res!309024 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507918 () Bool)

(declare-fun res!309029 () Bool)

(assert (=> b!507918 (=> (not res!309029) (not e!297194))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507918 (= res!309029 (and (= (size!16041 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16041 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16041 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507919 () Bool)

(declare-fun res!309025 () Bool)

(assert (=> b!507919 (=> (not res!309025) (not e!297194))))

(assert (=> b!507919 (= res!309025 (validKeyInArray!0 (select (arr!15677 a!3235) j!176)))))

(declare-fun b!507920 () Bool)

(assert (=> b!507920 (= e!297195 (bvsgt #b00000000000000000000000000000000 (size!16041 a!3235)))))

(assert (= (and start!45884 res!309026) b!507918))

(assert (= (and b!507918 res!309029) b!507919))

(assert (= (and b!507919 res!309025) b!507914))

(assert (= (and b!507914 res!309023) b!507917))

(assert (= (and b!507917 res!309024) b!507913))

(assert (= (and b!507913 res!309027) b!507916))

(assert (= (and b!507916 res!309028) b!507915))

(assert (= (and b!507915 res!309022) b!507920))

(declare-fun m!488773 () Bool)

(assert (=> b!507914 m!488773))

(declare-fun m!488775 () Bool)

(assert (=> b!507919 m!488775))

(assert (=> b!507919 m!488775))

(declare-fun m!488777 () Bool)

(assert (=> b!507919 m!488777))

(declare-fun m!488779 () Bool)

(assert (=> b!507916 m!488779))

(declare-fun m!488781 () Bool)

(assert (=> b!507913 m!488781))

(declare-fun m!488783 () Bool)

(assert (=> b!507917 m!488783))

(declare-fun m!488785 () Bool)

(assert (=> b!507915 m!488785))

(declare-fun m!488787 () Bool)

(assert (=> start!45884 m!488787))

(declare-fun m!488789 () Bool)

(assert (=> start!45884 m!488789))

(push 1)

(assert (not b!507914))

(assert (not b!507917))

(assert (not b!507915))

