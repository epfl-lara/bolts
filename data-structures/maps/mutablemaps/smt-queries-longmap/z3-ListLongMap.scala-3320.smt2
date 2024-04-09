; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45876 () Bool)

(assert start!45876)

(declare-fun b!507821 () Bool)

(declare-fun e!297160 () Bool)

(assert (=> b!507821 (= e!297160 false)))

(declare-fun lt!232106 () Bool)

(declare-datatypes ((array!32592 0))(
  ( (array!32593 (arr!15673 (Array (_ BitVec 32) (_ BitVec 64))) (size!16037 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32592)

(declare-datatypes ((List!9884 0))(
  ( (Nil!9881) (Cons!9880 (h!10757 (_ BitVec 64)) (t!16120 List!9884)) )
))
(declare-fun arrayNoDuplicates!0 (array!32592 (_ BitVec 32) List!9884) Bool)

(assert (=> b!507821 (= lt!232106 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9881))))

(declare-fun b!507822 () Bool)

(declare-fun e!297158 () Bool)

(assert (=> b!507822 (= e!297158 e!297160)))

(declare-fun res!308933 () Bool)

(assert (=> b!507822 (=> (not res!308933) (not e!297160))))

(declare-datatypes ((SeekEntryResult!4147 0))(
  ( (MissingZero!4147 (index!18776 (_ BitVec 32))) (Found!4147 (index!18777 (_ BitVec 32))) (Intermediate!4147 (undefined!4959 Bool) (index!18778 (_ BitVec 32)) (x!47791 (_ BitVec 32))) (Undefined!4147) (MissingVacant!4147 (index!18779 (_ BitVec 32))) )
))
(declare-fun lt!232105 () SeekEntryResult!4147)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507822 (= res!308933 (or (= lt!232105 (MissingZero!4147 i!1204)) (= lt!232105 (MissingVacant!4147 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32592 (_ BitVec 32)) SeekEntryResult!4147)

(assert (=> b!507822 (= lt!232105 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507823 () Bool)

(declare-fun res!308934 () Bool)

(assert (=> b!507823 (=> (not res!308934) (not e!297160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32592 (_ BitVec 32)) Bool)

(assert (=> b!507823 (= res!308934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507825 () Bool)

(declare-fun res!308936 () Bool)

(assert (=> b!507825 (=> (not res!308936) (not e!297158))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507825 (= res!308936 (validKeyInArray!0 (select (arr!15673 a!3235) j!176)))))

(declare-fun b!507826 () Bool)

(declare-fun res!308931 () Bool)

(assert (=> b!507826 (=> (not res!308931) (not e!297158))))

(assert (=> b!507826 (= res!308931 (and (= (size!16037 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16037 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16037 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507827 () Bool)

(declare-fun res!308930 () Bool)

(assert (=> b!507827 (=> (not res!308930) (not e!297158))))

(assert (=> b!507827 (= res!308930 (validKeyInArray!0 k0!2280))))

(declare-fun b!507824 () Bool)

(declare-fun res!308932 () Bool)

(assert (=> b!507824 (=> (not res!308932) (not e!297158))))

(declare-fun arrayContainsKey!0 (array!32592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507824 (= res!308932 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!308935 () Bool)

(assert (=> start!45876 (=> (not res!308935) (not e!297158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45876 (= res!308935 (validMask!0 mask!3524))))

(assert (=> start!45876 e!297158))

(assert (=> start!45876 true))

(declare-fun array_inv!11447 (array!32592) Bool)

(assert (=> start!45876 (array_inv!11447 a!3235)))

(assert (= (and start!45876 res!308935) b!507826))

(assert (= (and b!507826 res!308931) b!507825))

(assert (= (and b!507825 res!308936) b!507827))

(assert (= (and b!507827 res!308930) b!507824))

(assert (= (and b!507824 res!308932) b!507822))

(assert (= (and b!507822 res!308933) b!507823))

(assert (= (and b!507823 res!308934) b!507821))

(declare-fun m!488701 () Bool)

(assert (=> b!507824 m!488701))

(declare-fun m!488703 () Bool)

(assert (=> b!507821 m!488703))

(declare-fun m!488705 () Bool)

(assert (=> b!507825 m!488705))

(assert (=> b!507825 m!488705))

(declare-fun m!488707 () Bool)

(assert (=> b!507825 m!488707))

(declare-fun m!488709 () Bool)

(assert (=> b!507823 m!488709))

(declare-fun m!488711 () Bool)

(assert (=> b!507822 m!488711))

(declare-fun m!488713 () Bool)

(assert (=> b!507827 m!488713))

(declare-fun m!488715 () Bool)

(assert (=> start!45876 m!488715))

(declare-fun m!488717 () Bool)

(assert (=> start!45876 m!488717))

(check-sat (not b!507825) (not b!507823) (not b!507824) (not b!507821) (not start!45876) (not b!507822) (not b!507827))
(check-sat)
