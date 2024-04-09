; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119624 () Bool)

(assert start!119624)

(declare-fun b!1392861 () Bool)

(declare-fun res!932383 () Bool)

(declare-fun e!788756 () Bool)

(assert (=> b!1392861 (=> (not res!932383) (not e!788756))))

(declare-datatypes ((array!95224 0))(
  ( (array!95225 (arr!45966 (Array (_ BitVec 32) (_ BitVec 64))) (size!46517 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95224)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392861 (= res!932383 (validKeyInArray!0 (select (arr!45966 a!2901) j!112)))))

(declare-fun b!1392862 () Bool)

(declare-fun e!788754 () Bool)

(assert (=> b!1392862 (= e!788754 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10305 0))(
  ( (MissingZero!10305 (index!43590 (_ BitVec 32))) (Found!10305 (index!43591 (_ BitVec 32))) (Intermediate!10305 (undefined!11117 Bool) (index!43592 (_ BitVec 32)) (x!125280 (_ BitVec 32))) (Undefined!10305) (MissingVacant!10305 (index!43593 (_ BitVec 32))) )
))
(declare-fun lt!611745 () SeekEntryResult!10305)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95224 (_ BitVec 32)) SeekEntryResult!10305)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392862 (= lt!611745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45966 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45966 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95225 (store (arr!45966 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46517 a!2901)) mask!2840))))

(declare-fun b!1392863 () Bool)

(declare-fun e!788755 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95224 (_ BitVec 32)) SeekEntryResult!10305)

(assert (=> b!1392863 (= e!788755 (= (seekEntryOrOpen!0 (select (arr!45966 a!2901) j!112) a!2901 mask!2840) (Found!10305 j!112)))))

(declare-fun b!1392864 () Bool)

(assert (=> b!1392864 (= e!788756 (not e!788754))))

(declare-fun res!932379 () Bool)

(assert (=> b!1392864 (=> res!932379 e!788754)))

(declare-fun lt!611746 () SeekEntryResult!10305)

(assert (=> b!1392864 (= res!932379 (or (not (is-Intermediate!10305 lt!611746)) (undefined!11117 lt!611746)))))

(assert (=> b!1392864 e!788755))

(declare-fun res!932382 () Bool)

(assert (=> b!1392864 (=> (not res!932382) (not e!788755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95224 (_ BitVec 32)) Bool)

(assert (=> b!1392864 (= res!932382 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46564 0))(
  ( (Unit!46565) )
))
(declare-fun lt!611744 () Unit!46564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46564)

(assert (=> b!1392864 (= lt!611744 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1392864 (= lt!611746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45966 a!2901) j!112) mask!2840) (select (arr!45966 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392865 () Bool)

(declare-fun res!932378 () Bool)

(assert (=> b!1392865 (=> (not res!932378) (not e!788756))))

(declare-datatypes ((List!32665 0))(
  ( (Nil!32662) (Cons!32661 (h!33894 (_ BitVec 64)) (t!47366 List!32665)) )
))
(declare-fun arrayNoDuplicates!0 (array!95224 (_ BitVec 32) List!32665) Bool)

(assert (=> b!1392865 (= res!932378 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32662))))

(declare-fun b!1392866 () Bool)

(declare-fun res!932381 () Bool)

(assert (=> b!1392866 (=> (not res!932381) (not e!788756))))

(assert (=> b!1392866 (= res!932381 (validKeyInArray!0 (select (arr!45966 a!2901) i!1037)))))

(declare-fun b!1392867 () Bool)

(declare-fun res!932384 () Bool)

(assert (=> b!1392867 (=> (not res!932384) (not e!788756))))

(assert (=> b!1392867 (= res!932384 (and (= (size!46517 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46517 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46517 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392868 () Bool)

(declare-fun res!932385 () Bool)

(assert (=> b!1392868 (=> (not res!932385) (not e!788756))))

(assert (=> b!1392868 (= res!932385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!932380 () Bool)

(assert (=> start!119624 (=> (not res!932380) (not e!788756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119624 (= res!932380 (validMask!0 mask!2840))))

(assert (=> start!119624 e!788756))

(assert (=> start!119624 true))

(declare-fun array_inv!34911 (array!95224) Bool)

(assert (=> start!119624 (array_inv!34911 a!2901)))

(assert (= (and start!119624 res!932380) b!1392867))

(assert (= (and b!1392867 res!932384) b!1392866))

(assert (= (and b!1392866 res!932381) b!1392861))

(assert (= (and b!1392861 res!932383) b!1392868))

(assert (= (and b!1392868 res!932385) b!1392865))

(assert (= (and b!1392865 res!932378) b!1392864))

(assert (= (and b!1392864 res!932382) b!1392863))

(assert (= (and b!1392864 (not res!932379)) b!1392862))

(declare-fun m!1278625 () Bool)

(assert (=> b!1392866 m!1278625))

(assert (=> b!1392866 m!1278625))

(declare-fun m!1278627 () Bool)

(assert (=> b!1392866 m!1278627))

(declare-fun m!1278629 () Bool)

(assert (=> b!1392868 m!1278629))

(declare-fun m!1278631 () Bool)

(assert (=> b!1392864 m!1278631))

(declare-fun m!1278633 () Bool)

(assert (=> b!1392864 m!1278633))

(assert (=> b!1392864 m!1278631))

(declare-fun m!1278635 () Bool)

(assert (=> b!1392864 m!1278635))

(assert (=> b!1392864 m!1278633))

(assert (=> b!1392864 m!1278631))

(declare-fun m!1278637 () Bool)

(assert (=> b!1392864 m!1278637))

(declare-fun m!1278639 () Bool)

(assert (=> b!1392864 m!1278639))

(declare-fun m!1278641 () Bool)

(assert (=> b!1392865 m!1278641))

(declare-fun m!1278643 () Bool)

(assert (=> b!1392862 m!1278643))

(declare-fun m!1278645 () Bool)

(assert (=> b!1392862 m!1278645))

(assert (=> b!1392862 m!1278645))

(declare-fun m!1278647 () Bool)

(assert (=> b!1392862 m!1278647))

(assert (=> b!1392862 m!1278647))

(assert (=> b!1392862 m!1278645))

(declare-fun m!1278649 () Bool)

(assert (=> b!1392862 m!1278649))

(assert (=> b!1392861 m!1278631))

(assert (=> b!1392861 m!1278631))

(declare-fun m!1278651 () Bool)

(assert (=> b!1392861 m!1278651))

(declare-fun m!1278653 () Bool)

(assert (=> start!119624 m!1278653))

(declare-fun m!1278655 () Bool)

(assert (=> start!119624 m!1278655))

(assert (=> b!1392863 m!1278631))

(assert (=> b!1392863 m!1278631))

(declare-fun m!1278657 () Bool)

(assert (=> b!1392863 m!1278657))

(push 1)

(assert (not b!1392865))

(assert (not b!1392864))

(assert (not start!119624))

(assert (not b!1392863))

(assert (not b!1392862))

(assert (not b!1392861))

(assert (not b!1392868))

(assert (not b!1392866))

(check-sat)

