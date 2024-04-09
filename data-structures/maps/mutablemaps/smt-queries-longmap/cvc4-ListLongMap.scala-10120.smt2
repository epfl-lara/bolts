; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119312 () Bool)

(assert start!119312)

(declare-fun b!1390807 () Bool)

(declare-fun res!930930 () Bool)

(declare-fun e!787642 () Bool)

(assert (=> b!1390807 (=> (not res!930930) (not e!787642))))

(declare-datatypes ((array!95116 0))(
  ( (array!95117 (arr!45918 (Array (_ BitVec 32) (_ BitVec 64))) (size!46469 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95116)

(declare-datatypes ((List!32617 0))(
  ( (Nil!32614) (Cons!32613 (h!33834 (_ BitVec 64)) (t!47318 List!32617)) )
))
(declare-fun arrayNoDuplicates!0 (array!95116 (_ BitVec 32) List!32617) Bool)

(assert (=> b!1390807 (= res!930930 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32614))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1390808 () Bool)

(declare-fun e!787641 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10257 0))(
  ( (MissingZero!10257 (index!43398 (_ BitVec 32))) (Found!10257 (index!43399 (_ BitVec 32))) (Intermediate!10257 (undefined!11069 Bool) (index!43400 (_ BitVec 32)) (x!125080 (_ BitVec 32))) (Undefined!10257) (MissingVacant!10257 (index!43401 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95116 (_ BitVec 32)) SeekEntryResult!10257)

(assert (=> b!1390808 (= e!787641 (= (seekEntryOrOpen!0 (select (arr!45918 a!2901) j!112) a!2901 mask!2840) (Found!10257 j!112)))))

(declare-fun b!1390809 () Bool)

(assert (=> b!1390809 (= e!787642 (not true))))

(assert (=> b!1390809 e!787641))

(declare-fun res!930932 () Bool)

(assert (=> b!1390809 (=> (not res!930932) (not e!787641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95116 (_ BitVec 32)) Bool)

(assert (=> b!1390809 (= res!930932 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46468 0))(
  ( (Unit!46469) )
))
(declare-fun lt!610935 () Unit!46468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46468)

(assert (=> b!1390809 (= lt!610935 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610936 () SeekEntryResult!10257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95116 (_ BitVec 32)) SeekEntryResult!10257)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390809 (= lt!610936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45918 a!2901) j!112) mask!2840) (select (arr!45918 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390810 () Bool)

(declare-fun res!930933 () Bool)

(assert (=> b!1390810 (=> (not res!930933) (not e!787642))))

(assert (=> b!1390810 (= res!930933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390811 () Bool)

(declare-fun res!930935 () Bool)

(assert (=> b!1390811 (=> (not res!930935) (not e!787642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390811 (= res!930935 (validKeyInArray!0 (select (arr!45918 a!2901) j!112)))))

(declare-fun b!1390812 () Bool)

(declare-fun res!930936 () Bool)

(assert (=> b!1390812 (=> (not res!930936) (not e!787642))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390812 (= res!930936 (and (= (size!46469 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46469 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46469 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390813 () Bool)

(declare-fun res!930934 () Bool)

(assert (=> b!1390813 (=> (not res!930934) (not e!787642))))

(assert (=> b!1390813 (= res!930934 (validKeyInArray!0 (select (arr!45918 a!2901) i!1037)))))

(declare-fun res!930931 () Bool)

(assert (=> start!119312 (=> (not res!930931) (not e!787642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119312 (= res!930931 (validMask!0 mask!2840))))

(assert (=> start!119312 e!787642))

(assert (=> start!119312 true))

(declare-fun array_inv!34863 (array!95116) Bool)

(assert (=> start!119312 (array_inv!34863 a!2901)))

(assert (= (and start!119312 res!930931) b!1390812))

(assert (= (and b!1390812 res!930936) b!1390813))

(assert (= (and b!1390813 res!930934) b!1390811))

(assert (= (and b!1390811 res!930935) b!1390810))

(assert (= (and b!1390810 res!930933) b!1390807))

(assert (= (and b!1390807 res!930930) b!1390809))

(assert (= (and b!1390809 res!930932) b!1390808))

(declare-fun m!1276665 () Bool)

(assert (=> start!119312 m!1276665))

(declare-fun m!1276667 () Bool)

(assert (=> start!119312 m!1276667))

(declare-fun m!1276669 () Bool)

(assert (=> b!1390813 m!1276669))

(assert (=> b!1390813 m!1276669))

(declare-fun m!1276671 () Bool)

(assert (=> b!1390813 m!1276671))

(declare-fun m!1276673 () Bool)

(assert (=> b!1390807 m!1276673))

(declare-fun m!1276675 () Bool)

(assert (=> b!1390811 m!1276675))

(assert (=> b!1390811 m!1276675))

(declare-fun m!1276677 () Bool)

(assert (=> b!1390811 m!1276677))

(assert (=> b!1390808 m!1276675))

(assert (=> b!1390808 m!1276675))

(declare-fun m!1276679 () Bool)

(assert (=> b!1390808 m!1276679))

(declare-fun m!1276681 () Bool)

(assert (=> b!1390810 m!1276681))

(assert (=> b!1390809 m!1276675))

(declare-fun m!1276683 () Bool)

(assert (=> b!1390809 m!1276683))

(assert (=> b!1390809 m!1276675))

(declare-fun m!1276685 () Bool)

(assert (=> b!1390809 m!1276685))

(assert (=> b!1390809 m!1276683))

(assert (=> b!1390809 m!1276675))

(declare-fun m!1276687 () Bool)

(assert (=> b!1390809 m!1276687))

(declare-fun m!1276689 () Bool)

(assert (=> b!1390809 m!1276689))

(push 1)

(assert (not b!1390807))

(assert (not b!1390813))

(assert (not start!119312))

(assert (not b!1390810))

(assert (not b!1390809))

(assert (not b!1390808))

(assert (not b!1390811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

