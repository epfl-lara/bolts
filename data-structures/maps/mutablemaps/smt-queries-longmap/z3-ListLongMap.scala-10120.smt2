; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119310 () Bool)

(assert start!119310)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95114 0))(
  ( (array!95115 (arr!45917 (Array (_ BitVec 32) (_ BitVec 64))) (size!46468 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95114)

(declare-fun b!1390786 () Bool)

(declare-fun e!787632 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10256 0))(
  ( (MissingZero!10256 (index!43394 (_ BitVec 32))) (Found!10256 (index!43395 (_ BitVec 32))) (Intermediate!10256 (undefined!11068 Bool) (index!43396 (_ BitVec 32)) (x!125079 (_ BitVec 32))) (Undefined!10256) (MissingVacant!10256 (index!43397 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95114 (_ BitVec 32)) SeekEntryResult!10256)

(assert (=> b!1390786 (= e!787632 (= (seekEntryOrOpen!0 (select (arr!45917 a!2901) j!112) a!2901 mask!2840) (Found!10256 j!112)))))

(declare-fun b!1390788 () Bool)

(declare-fun res!930911 () Bool)

(declare-fun e!787633 () Bool)

(assert (=> b!1390788 (=> (not res!930911) (not e!787633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390788 (= res!930911 (validKeyInArray!0 (select (arr!45917 a!2901) j!112)))))

(declare-fun b!1390789 () Bool)

(declare-fun res!930913 () Bool)

(assert (=> b!1390789 (=> (not res!930913) (not e!787633))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390789 (= res!930913 (validKeyInArray!0 (select (arr!45917 a!2901) i!1037)))))

(declare-fun b!1390790 () Bool)

(assert (=> b!1390790 (= e!787633 (not true))))

(assert (=> b!1390790 e!787632))

(declare-fun res!930912 () Bool)

(assert (=> b!1390790 (=> (not res!930912) (not e!787632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95114 (_ BitVec 32)) Bool)

(assert (=> b!1390790 (= res!930912 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46466 0))(
  ( (Unit!46467) )
))
(declare-fun lt!610930 () Unit!46466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46466)

(assert (=> b!1390790 (= lt!610930 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610929 () SeekEntryResult!10256)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95114 (_ BitVec 32)) SeekEntryResult!10256)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390790 (= lt!610929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45917 a!2901) j!112) mask!2840) (select (arr!45917 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930915 () Bool)

(assert (=> start!119310 (=> (not res!930915) (not e!787633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119310 (= res!930915 (validMask!0 mask!2840))))

(assert (=> start!119310 e!787633))

(assert (=> start!119310 true))

(declare-fun array_inv!34862 (array!95114) Bool)

(assert (=> start!119310 (array_inv!34862 a!2901)))

(declare-fun b!1390787 () Bool)

(declare-fun res!930910 () Bool)

(assert (=> b!1390787 (=> (not res!930910) (not e!787633))))

(assert (=> b!1390787 (= res!930910 (and (= (size!46468 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46468 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46468 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390791 () Bool)

(declare-fun res!930909 () Bool)

(assert (=> b!1390791 (=> (not res!930909) (not e!787633))))

(assert (=> b!1390791 (= res!930909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390792 () Bool)

(declare-fun res!930914 () Bool)

(assert (=> b!1390792 (=> (not res!930914) (not e!787633))))

(declare-datatypes ((List!32616 0))(
  ( (Nil!32613) (Cons!32612 (h!33833 (_ BitVec 64)) (t!47317 List!32616)) )
))
(declare-fun arrayNoDuplicates!0 (array!95114 (_ BitVec 32) List!32616) Bool)

(assert (=> b!1390792 (= res!930914 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32613))))

(assert (= (and start!119310 res!930915) b!1390787))

(assert (= (and b!1390787 res!930910) b!1390789))

(assert (= (and b!1390789 res!930913) b!1390788))

(assert (= (and b!1390788 res!930911) b!1390791))

(assert (= (and b!1390791 res!930909) b!1390792))

(assert (= (and b!1390792 res!930914) b!1390790))

(assert (= (and b!1390790 res!930912) b!1390786))

(declare-fun m!1276639 () Bool)

(assert (=> b!1390788 m!1276639))

(assert (=> b!1390788 m!1276639))

(declare-fun m!1276641 () Bool)

(assert (=> b!1390788 m!1276641))

(assert (=> b!1390786 m!1276639))

(assert (=> b!1390786 m!1276639))

(declare-fun m!1276643 () Bool)

(assert (=> b!1390786 m!1276643))

(declare-fun m!1276645 () Bool)

(assert (=> b!1390789 m!1276645))

(assert (=> b!1390789 m!1276645))

(declare-fun m!1276647 () Bool)

(assert (=> b!1390789 m!1276647))

(declare-fun m!1276649 () Bool)

(assert (=> start!119310 m!1276649))

(declare-fun m!1276651 () Bool)

(assert (=> start!119310 m!1276651))

(assert (=> b!1390790 m!1276639))

(declare-fun m!1276653 () Bool)

(assert (=> b!1390790 m!1276653))

(assert (=> b!1390790 m!1276639))

(declare-fun m!1276655 () Bool)

(assert (=> b!1390790 m!1276655))

(assert (=> b!1390790 m!1276653))

(assert (=> b!1390790 m!1276639))

(declare-fun m!1276657 () Bool)

(assert (=> b!1390790 m!1276657))

(declare-fun m!1276659 () Bool)

(assert (=> b!1390790 m!1276659))

(declare-fun m!1276661 () Bool)

(assert (=> b!1390791 m!1276661))

(declare-fun m!1276663 () Bool)

(assert (=> b!1390792 m!1276663))

(check-sat (not b!1390790) (not b!1390791) (not start!119310) (not b!1390792) (not b!1390786) (not b!1390788) (not b!1390789))
