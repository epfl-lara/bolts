; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45882 () Bool)

(assert start!45882)

(declare-fun b!507889 () Bool)

(declare-fun res!309003 () Bool)

(declare-fun e!297187 () Bool)

(assert (=> b!507889 (=> (not res!309003) (not e!297187))))

(declare-datatypes ((array!32598 0))(
  ( (array!32599 (arr!15676 (Array (_ BitVec 32) (_ BitVec 64))) (size!16040 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32598)

(declare-datatypes ((List!9887 0))(
  ( (Nil!9884) (Cons!9883 (h!10760 (_ BitVec 64)) (t!16123 List!9887)) )
))
(declare-fun arrayNoDuplicates!0 (array!32598 (_ BitVec 32) List!9887) Bool)

(assert (=> b!507889 (= res!309003 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9884))))

(declare-fun b!507890 () Bool)

(declare-fun e!297186 () Bool)

(assert (=> b!507890 (= e!297186 e!297187)))

(declare-fun res!309005 () Bool)

(assert (=> b!507890 (=> (not res!309005) (not e!297187))))

(declare-datatypes ((SeekEntryResult!4150 0))(
  ( (MissingZero!4150 (index!18788 (_ BitVec 32))) (Found!4150 (index!18789 (_ BitVec 32))) (Intermediate!4150 (undefined!4962 Bool) (index!18790 (_ BitVec 32)) (x!47802 (_ BitVec 32))) (Undefined!4150) (MissingVacant!4150 (index!18791 (_ BitVec 32))) )
))
(declare-fun lt!232118 () SeekEntryResult!4150)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507890 (= res!309005 (or (= lt!232118 (MissingZero!4150 i!1204)) (= lt!232118 (MissingVacant!4150 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32598 (_ BitVec 32)) SeekEntryResult!4150)

(assert (=> b!507890 (= lt!232118 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507891 () Bool)

(declare-fun res!308999 () Bool)

(assert (=> b!507891 (=> (not res!308999) (not e!297187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32598 (_ BitVec 32)) Bool)

(assert (=> b!507891 (= res!308999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!309000 () Bool)

(assert (=> start!45882 (=> (not res!309000) (not e!297186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45882 (= res!309000 (validMask!0 mask!3524))))

(assert (=> start!45882 e!297186))

(assert (=> start!45882 true))

(declare-fun array_inv!11450 (array!32598) Bool)

(assert (=> start!45882 (array_inv!11450 a!3235)))

(declare-fun b!507892 () Bool)

(declare-fun res!309004 () Bool)

(assert (=> b!507892 (=> (not res!309004) (not e!297186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507892 (= res!309004 (validKeyInArray!0 k0!2280))))

(declare-fun b!507893 () Bool)

(declare-fun res!308998 () Bool)

(assert (=> b!507893 (=> (not res!308998) (not e!297186))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507893 (= res!308998 (and (= (size!16040 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16040 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16040 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507894 () Bool)

(declare-fun res!309001 () Bool)

(assert (=> b!507894 (=> (not res!309001) (not e!297186))))

(declare-fun arrayContainsKey!0 (array!32598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507894 (= res!309001 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507895 () Bool)

(declare-fun res!309002 () Bool)

(assert (=> b!507895 (=> (not res!309002) (not e!297186))))

(assert (=> b!507895 (= res!309002 (validKeyInArray!0 (select (arr!15676 a!3235) j!176)))))

(declare-fun b!507896 () Bool)

(assert (=> b!507896 (= e!297187 (bvsgt #b00000000000000000000000000000000 (size!16040 a!3235)))))

(assert (= (and start!45882 res!309000) b!507893))

(assert (= (and b!507893 res!308998) b!507895))

(assert (= (and b!507895 res!309002) b!507892))

(assert (= (and b!507892 res!309004) b!507894))

(assert (= (and b!507894 res!309001) b!507890))

(assert (= (and b!507890 res!309005) b!507891))

(assert (= (and b!507891 res!308999) b!507889))

(assert (= (and b!507889 res!309003) b!507896))

(declare-fun m!488755 () Bool)

(assert (=> b!507890 m!488755))

(declare-fun m!488757 () Bool)

(assert (=> b!507892 m!488757))

(declare-fun m!488759 () Bool)

(assert (=> b!507891 m!488759))

(declare-fun m!488761 () Bool)

(assert (=> b!507894 m!488761))

(declare-fun m!488763 () Bool)

(assert (=> start!45882 m!488763))

(declare-fun m!488765 () Bool)

(assert (=> start!45882 m!488765))

(declare-fun m!488767 () Bool)

(assert (=> b!507895 m!488767))

(assert (=> b!507895 m!488767))

(declare-fun m!488769 () Bool)

(assert (=> b!507895 m!488769))

(declare-fun m!488771 () Bool)

(assert (=> b!507889 m!488771))

(check-sat (not start!45882) (not b!507894) (not b!507891) (not b!507890) (not b!507895) (not b!507889) (not b!507892))
(check-sat)
