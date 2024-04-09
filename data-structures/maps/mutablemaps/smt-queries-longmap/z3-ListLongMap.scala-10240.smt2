; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120534 () Bool)

(assert start!120534)

(declare-fun b!1402968 () Bool)

(declare-fun res!941588 () Bool)

(declare-fun e!794433 () Bool)

(assert (=> b!1402968 (=> (not res!941588) (not e!794433))))

(declare-datatypes ((array!95861 0))(
  ( (array!95862 (arr!46277 (Array (_ BitVec 32) (_ BitVec 64))) (size!46828 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95861)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402968 (= res!941588 (validKeyInArray!0 (select (arr!46277 a!2901) i!1037)))))

(declare-fun res!941589 () Bool)

(assert (=> start!120534 (=> (not res!941589) (not e!794433))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120534 (= res!941589 (validMask!0 mask!2840))))

(assert (=> start!120534 e!794433))

(assert (=> start!120534 true))

(declare-fun array_inv!35222 (array!95861) Bool)

(assert (=> start!120534 (array_inv!35222 a!2901)))

(declare-fun b!1402969 () Bool)

(declare-fun res!941591 () Bool)

(assert (=> b!1402969 (=> (not res!941591) (not e!794433))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402969 (= res!941591 (validKeyInArray!0 (select (arr!46277 a!2901) j!112)))))

(declare-fun b!1402970 () Bool)

(declare-fun res!941594 () Bool)

(assert (=> b!1402970 (=> (not res!941594) (not e!794433))))

(declare-datatypes ((List!32976 0))(
  ( (Nil!32973) (Cons!32972 (h!34220 (_ BitVec 64)) (t!47677 List!32976)) )
))
(declare-fun arrayNoDuplicates!0 (array!95861 (_ BitVec 32) List!32976) Bool)

(assert (=> b!1402970 (= res!941594 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32973))))

(declare-fun b!1402971 () Bool)

(declare-fun e!794435 () Bool)

(declare-datatypes ((SeekEntryResult!10616 0))(
  ( (MissingZero!10616 (index!44840 (_ BitVec 32))) (Found!10616 (index!44841 (_ BitVec 32))) (Intermediate!10616 (undefined!11428 Bool) (index!44842 (_ BitVec 32)) (x!126462 (_ BitVec 32))) (Undefined!10616) (MissingVacant!10616 (index!44843 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95861 (_ BitVec 32)) SeekEntryResult!10616)

(assert (=> b!1402971 (= e!794435 (= (seekEntryOrOpen!0 (select (arr!46277 a!2901) j!112) a!2901 mask!2840) (Found!10616 j!112)))))

(declare-fun b!1402972 () Bool)

(declare-fun res!941593 () Bool)

(assert (=> b!1402972 (=> (not res!941593) (not e!794433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95861 (_ BitVec 32)) Bool)

(assert (=> b!1402972 (= res!941593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402973 () Bool)

(declare-fun e!794432 () Bool)

(assert (=> b!1402973 (= e!794432 true)))

(declare-fun lt!618196 () SeekEntryResult!10616)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95861 (_ BitVec 32)) SeekEntryResult!10616)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402973 (= lt!618196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46277 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46277 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95862 (store (arr!46277 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46828 a!2901)) mask!2840))))

(declare-fun b!1402974 () Bool)

(declare-fun res!941592 () Bool)

(assert (=> b!1402974 (=> (not res!941592) (not e!794433))))

(assert (=> b!1402974 (= res!941592 (and (= (size!46828 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46828 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46828 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402975 () Bool)

(assert (=> b!1402975 (= e!794433 (not e!794432))))

(declare-fun res!941595 () Bool)

(assert (=> b!1402975 (=> res!941595 e!794432)))

(declare-fun lt!618195 () SeekEntryResult!10616)

(get-info :version)

(assert (=> b!1402975 (= res!941595 (or (not ((_ is Intermediate!10616) lt!618195)) (undefined!11428 lt!618195)))))

(assert (=> b!1402975 e!794435))

(declare-fun res!941590 () Bool)

(assert (=> b!1402975 (=> (not res!941590) (not e!794435))))

(assert (=> b!1402975 (= res!941590 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47186 0))(
  ( (Unit!47187) )
))
(declare-fun lt!618194 () Unit!47186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47186)

(assert (=> b!1402975 (= lt!618194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402975 (= lt!618195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46277 a!2901) j!112) mask!2840) (select (arr!46277 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120534 res!941589) b!1402974))

(assert (= (and b!1402974 res!941592) b!1402968))

(assert (= (and b!1402968 res!941588) b!1402969))

(assert (= (and b!1402969 res!941591) b!1402972))

(assert (= (and b!1402972 res!941593) b!1402970))

(assert (= (and b!1402970 res!941594) b!1402975))

(assert (= (and b!1402975 res!941590) b!1402971))

(assert (= (and b!1402975 (not res!941595)) b!1402973))

(declare-fun m!1291503 () Bool)

(assert (=> b!1402970 m!1291503))

(declare-fun m!1291505 () Bool)

(assert (=> b!1402973 m!1291505))

(declare-fun m!1291507 () Bool)

(assert (=> b!1402973 m!1291507))

(assert (=> b!1402973 m!1291507))

(declare-fun m!1291509 () Bool)

(assert (=> b!1402973 m!1291509))

(assert (=> b!1402973 m!1291509))

(assert (=> b!1402973 m!1291507))

(declare-fun m!1291511 () Bool)

(assert (=> b!1402973 m!1291511))

(declare-fun m!1291513 () Bool)

(assert (=> b!1402975 m!1291513))

(declare-fun m!1291515 () Bool)

(assert (=> b!1402975 m!1291515))

(assert (=> b!1402975 m!1291513))

(declare-fun m!1291517 () Bool)

(assert (=> b!1402975 m!1291517))

(assert (=> b!1402975 m!1291515))

(assert (=> b!1402975 m!1291513))

(declare-fun m!1291519 () Bool)

(assert (=> b!1402975 m!1291519))

(declare-fun m!1291521 () Bool)

(assert (=> b!1402975 m!1291521))

(assert (=> b!1402971 m!1291513))

(assert (=> b!1402971 m!1291513))

(declare-fun m!1291523 () Bool)

(assert (=> b!1402971 m!1291523))

(declare-fun m!1291525 () Bool)

(assert (=> start!120534 m!1291525))

(declare-fun m!1291527 () Bool)

(assert (=> start!120534 m!1291527))

(assert (=> b!1402969 m!1291513))

(assert (=> b!1402969 m!1291513))

(declare-fun m!1291529 () Bool)

(assert (=> b!1402969 m!1291529))

(declare-fun m!1291531 () Bool)

(assert (=> b!1402972 m!1291531))

(declare-fun m!1291533 () Bool)

(assert (=> b!1402968 m!1291533))

(assert (=> b!1402968 m!1291533))

(declare-fun m!1291535 () Bool)

(assert (=> b!1402968 m!1291535))

(check-sat (not b!1402973) (not b!1402968) (not b!1402971) (not b!1402969) (not b!1402972) (not start!120534) (not b!1402970) (not b!1402975))
