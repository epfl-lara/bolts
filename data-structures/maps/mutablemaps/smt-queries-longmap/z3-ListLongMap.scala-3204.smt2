; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44982 () Bool)

(assert start!44982)

(declare-fun b!493044 () Bool)

(declare-fun e!289594 () Bool)

(assert (=> b!493044 (= e!289594 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31887 0))(
  ( (array!31888 (arr!15325 (Array (_ BitVec 32) (_ BitVec 64))) (size!15689 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31887)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3799 0))(
  ( (MissingZero!3799 (index!17375 (_ BitVec 32))) (Found!3799 (index!17376 (_ BitVec 32))) (Intermediate!3799 (undefined!4611 Bool) (index!17377 (_ BitVec 32)) (x!46488 (_ BitVec 32))) (Undefined!3799) (MissingVacant!3799 (index!17378 (_ BitVec 32))) )
))
(declare-fun lt!223010 () SeekEntryResult!3799)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223005 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31887 (_ BitVec 32)) SeekEntryResult!3799)

(assert (=> b!493044 (= lt!223010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223005 (select (store (arr!15325 a!3235) i!1204 k0!2280) j!176) (array!31888 (store (arr!15325 a!3235) i!1204 k0!2280) (size!15689 a!3235)) mask!3524))))

(declare-fun lt!223009 () SeekEntryResult!3799)

(declare-fun lt!223007 () (_ BitVec 32))

(assert (=> b!493044 (= lt!223009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223007 (select (arr!15325 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493044 (= lt!223005 (toIndex!0 (select (store (arr!15325 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493044 (= lt!223007 (toIndex!0 (select (arr!15325 a!3235) j!176) mask!3524))))

(declare-fun e!289593 () Bool)

(assert (=> b!493044 e!289593))

(declare-fun res!295771 () Bool)

(assert (=> b!493044 (=> (not res!295771) (not e!289593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31887 (_ BitVec 32)) Bool)

(assert (=> b!493044 (= res!295771 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14536 0))(
  ( (Unit!14537) )
))
(declare-fun lt!223006 () Unit!14536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14536)

(assert (=> b!493044 (= lt!223006 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493045 () Bool)

(declare-fun res!295769 () Bool)

(declare-fun e!289592 () Bool)

(assert (=> b!493045 (=> (not res!295769) (not e!289592))))

(assert (=> b!493045 (= res!295769 (and (= (size!15689 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15689 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15689 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493046 () Bool)

(assert (=> b!493046 (= e!289592 e!289594)))

(declare-fun res!295766 () Bool)

(assert (=> b!493046 (=> (not res!295766) (not e!289594))))

(declare-fun lt!223008 () SeekEntryResult!3799)

(assert (=> b!493046 (= res!295766 (or (= lt!223008 (MissingZero!3799 i!1204)) (= lt!223008 (MissingVacant!3799 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31887 (_ BitVec 32)) SeekEntryResult!3799)

(assert (=> b!493046 (= lt!223008 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493047 () Bool)

(declare-fun res!295767 () Bool)

(assert (=> b!493047 (=> (not res!295767) (not e!289592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493047 (= res!295767 (validKeyInArray!0 (select (arr!15325 a!3235) j!176)))))

(declare-fun b!493049 () Bool)

(declare-fun res!295772 () Bool)

(assert (=> b!493049 (=> (not res!295772) (not e!289594))))

(declare-datatypes ((List!9536 0))(
  ( (Nil!9533) (Cons!9532 (h!10400 (_ BitVec 64)) (t!15772 List!9536)) )
))
(declare-fun arrayNoDuplicates!0 (array!31887 (_ BitVec 32) List!9536) Bool)

(assert (=> b!493049 (= res!295772 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9533))))

(declare-fun b!493050 () Bool)

(assert (=> b!493050 (= e!289593 (= (seekEntryOrOpen!0 (select (arr!15325 a!3235) j!176) a!3235 mask!3524) (Found!3799 j!176)))))

(declare-fun b!493051 () Bool)

(declare-fun res!295764 () Bool)

(assert (=> b!493051 (=> (not res!295764) (not e!289592))))

(assert (=> b!493051 (= res!295764 (validKeyInArray!0 k0!2280))))

(declare-fun b!493052 () Bool)

(declare-fun res!295765 () Bool)

(assert (=> b!493052 (=> (not res!295765) (not e!289592))))

(declare-fun arrayContainsKey!0 (array!31887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493052 (= res!295765 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!295770 () Bool)

(assert (=> start!44982 (=> (not res!295770) (not e!289592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44982 (= res!295770 (validMask!0 mask!3524))))

(assert (=> start!44982 e!289592))

(assert (=> start!44982 true))

(declare-fun array_inv!11099 (array!31887) Bool)

(assert (=> start!44982 (array_inv!11099 a!3235)))

(declare-fun b!493048 () Bool)

(declare-fun res!295768 () Bool)

(assert (=> b!493048 (=> (not res!295768) (not e!289594))))

(assert (=> b!493048 (= res!295768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44982 res!295770) b!493045))

(assert (= (and b!493045 res!295769) b!493047))

(assert (= (and b!493047 res!295767) b!493051))

(assert (= (and b!493051 res!295764) b!493052))

(assert (= (and b!493052 res!295765) b!493046))

(assert (= (and b!493046 res!295766) b!493048))

(assert (= (and b!493048 res!295768) b!493049))

(assert (= (and b!493049 res!295772) b!493044))

(assert (= (and b!493044 res!295771) b!493050))

(declare-fun m!473869 () Bool)

(assert (=> b!493050 m!473869))

(assert (=> b!493050 m!473869))

(declare-fun m!473871 () Bool)

(assert (=> b!493050 m!473871))

(assert (=> b!493047 m!473869))

(assert (=> b!493047 m!473869))

(declare-fun m!473873 () Bool)

(assert (=> b!493047 m!473873))

(declare-fun m!473875 () Bool)

(assert (=> b!493049 m!473875))

(declare-fun m!473877 () Bool)

(assert (=> b!493046 m!473877))

(declare-fun m!473879 () Bool)

(assert (=> b!493044 m!473879))

(declare-fun m!473881 () Bool)

(assert (=> b!493044 m!473881))

(declare-fun m!473883 () Bool)

(assert (=> b!493044 m!473883))

(declare-fun m!473885 () Bool)

(assert (=> b!493044 m!473885))

(assert (=> b!493044 m!473881))

(assert (=> b!493044 m!473869))

(declare-fun m!473887 () Bool)

(assert (=> b!493044 m!473887))

(assert (=> b!493044 m!473869))

(declare-fun m!473889 () Bool)

(assert (=> b!493044 m!473889))

(assert (=> b!493044 m!473869))

(declare-fun m!473891 () Bool)

(assert (=> b!493044 m!473891))

(assert (=> b!493044 m!473881))

(declare-fun m!473893 () Bool)

(assert (=> b!493044 m!473893))

(declare-fun m!473895 () Bool)

(assert (=> b!493048 m!473895))

(declare-fun m!473897 () Bool)

(assert (=> b!493052 m!473897))

(declare-fun m!473899 () Bool)

(assert (=> start!44982 m!473899))

(declare-fun m!473901 () Bool)

(assert (=> start!44982 m!473901))

(declare-fun m!473903 () Bool)

(assert (=> b!493051 m!473903))

(check-sat (not b!493051) (not b!493047) (not b!493048) (not b!493044) (not b!493046) (not b!493049) (not start!44982) (not b!493052) (not b!493050))
(check-sat)
