; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121480 () Bool)

(assert start!121480)

(declare-fun b!1410885 () Bool)

(declare-fun e!798452 () Bool)

(declare-fun e!798448 () Bool)

(assert (=> b!1410885 (= e!798452 e!798448)))

(declare-fun res!948222 () Bool)

(assert (=> b!1410885 (=> res!948222 e!798448)))

(declare-fun lt!621383 () (_ BitVec 32))

(declare-datatypes ((array!96399 0))(
  ( (array!96400 (arr!46534 (Array (_ BitVec 32) (_ BitVec 64))) (size!47085 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96399)

(declare-datatypes ((SeekEntryResult!10867 0))(
  ( (MissingZero!10867 (index!45844 (_ BitVec 32))) (Found!10867 (index!45845 (_ BitVec 32))) (Intermediate!10867 (undefined!11679 Bool) (index!45846 (_ BitVec 32)) (x!127449 (_ BitVec 32))) (Undefined!10867) (MissingVacant!10867 (index!45847 (_ BitVec 32))) )
))
(declare-fun lt!621381 () SeekEntryResult!10867)

(declare-fun lt!621380 () SeekEntryResult!10867)

(assert (=> b!1410885 (= res!948222 (or (= lt!621381 lt!621380) (not (is-Intermediate!10867 lt!621380)) (bvslt (x!127449 lt!621381) #b00000000000000000000000000000000) (bvsgt (x!127449 lt!621381) #b01111111111111111111111111111110) (bvslt lt!621383 #b00000000000000000000000000000000) (bvsge lt!621383 (size!47085 a!2901)) (bvslt (index!45846 lt!621381) #b00000000000000000000000000000000) (bvsge (index!45846 lt!621381) (size!47085 a!2901)) (not (= lt!621381 (Intermediate!10867 false (index!45846 lt!621381) (x!127449 lt!621381))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621384 () (_ BitVec 64))

(declare-fun lt!621385 () array!96399)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96399 (_ BitVec 32)) SeekEntryResult!10867)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410885 (= lt!621380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621384 mask!2840) lt!621384 lt!621385 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410885 (= lt!621384 (select (store (arr!46534 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410885 (= lt!621385 (array!96400 (store (arr!46534 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47085 a!2901)))))

(declare-fun b!1410887 () Bool)

(declare-fun res!948228 () Bool)

(declare-fun e!798450 () Bool)

(assert (=> b!1410887 (=> (not res!948228) (not e!798450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410887 (= res!948228 (validKeyInArray!0 (select (arr!46534 a!2901) i!1037)))))

(declare-fun e!798449 () Bool)

(declare-fun b!1410888 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96399 (_ BitVec 32)) SeekEntryResult!10867)

(assert (=> b!1410888 (= e!798449 (= (seekEntryOrOpen!0 (select (arr!46534 a!2901) j!112) a!2901 mask!2840) (Found!10867 j!112)))))

(declare-fun b!1410889 () Bool)

(declare-fun res!948224 () Bool)

(declare-fun e!798447 () Bool)

(assert (=> b!1410889 (=> res!948224 e!798447)))

(declare-fun lt!621382 () SeekEntryResult!10867)

(assert (=> b!1410889 (= res!948224 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621383 lt!621384 lt!621385 mask!2840) lt!621382)))))

(declare-fun b!1410890 () Bool)

(declare-fun res!948230 () Bool)

(assert (=> b!1410890 (=> (not res!948230) (not e!798450))))

(declare-datatypes ((List!33233 0))(
  ( (Nil!33230) (Cons!33229 (h!34501 (_ BitVec 64)) (t!47934 List!33233)) )
))
(declare-fun arrayNoDuplicates!0 (array!96399 (_ BitVec 32) List!33233) Bool)

(assert (=> b!1410890 (= res!948230 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33230))))

(declare-fun b!1410891 () Bool)

(assert (=> b!1410891 (= e!798450 (not e!798452))))

(declare-fun res!948221 () Bool)

(assert (=> b!1410891 (=> res!948221 e!798452)))

(assert (=> b!1410891 (= res!948221 (or (not (is-Intermediate!10867 lt!621381)) (undefined!11679 lt!621381)))))

(assert (=> b!1410891 e!798449))

(declare-fun res!948225 () Bool)

(assert (=> b!1410891 (=> (not res!948225) (not e!798449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96399 (_ BitVec 32)) Bool)

(assert (=> b!1410891 (= res!948225 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47658 0))(
  ( (Unit!47659) )
))
(declare-fun lt!621379 () Unit!47658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47658)

(assert (=> b!1410891 (= lt!621379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410891 (= lt!621381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621383 (select (arr!46534 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410891 (= lt!621383 (toIndex!0 (select (arr!46534 a!2901) j!112) mask!2840))))

(declare-fun b!1410892 () Bool)

(assert (=> b!1410892 (= e!798448 e!798447)))

(declare-fun res!948227 () Bool)

(assert (=> b!1410892 (=> res!948227 e!798447)))

(assert (=> b!1410892 (= res!948227 (not (= lt!621380 lt!621382)))))

(assert (=> b!1410892 (= lt!621382 (Intermediate!10867 (undefined!11679 lt!621380) (index!45846 lt!621380) (x!127449 lt!621380)))))

(declare-fun b!1410893 () Bool)

(declare-fun res!948231 () Bool)

(assert (=> b!1410893 (=> (not res!948231) (not e!798450))))

(assert (=> b!1410893 (= res!948231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410886 () Bool)

(declare-fun res!948223 () Bool)

(assert (=> b!1410886 (=> (not res!948223) (not e!798450))))

(assert (=> b!1410886 (= res!948223 (and (= (size!47085 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47085 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47085 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!948226 () Bool)

(assert (=> start!121480 (=> (not res!948226) (not e!798450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121480 (= res!948226 (validMask!0 mask!2840))))

(assert (=> start!121480 e!798450))

(assert (=> start!121480 true))

(declare-fun array_inv!35479 (array!96399) Bool)

(assert (=> start!121480 (array_inv!35479 a!2901)))

(declare-fun b!1410894 () Bool)

(assert (=> b!1410894 (= e!798447 (or (undefined!11679 lt!621380) (not (= (index!45846 lt!621381) (index!45846 lt!621380))) (not (= (x!127449 lt!621381) (x!127449 lt!621380)))))))

(declare-fun b!1410895 () Bool)

(declare-fun res!948229 () Bool)

(assert (=> b!1410895 (=> (not res!948229) (not e!798450))))

(assert (=> b!1410895 (= res!948229 (validKeyInArray!0 (select (arr!46534 a!2901) j!112)))))

(assert (= (and start!121480 res!948226) b!1410886))

(assert (= (and b!1410886 res!948223) b!1410887))

(assert (= (and b!1410887 res!948228) b!1410895))

(assert (= (and b!1410895 res!948229) b!1410893))

(assert (= (and b!1410893 res!948231) b!1410890))

(assert (= (and b!1410890 res!948230) b!1410891))

(assert (= (and b!1410891 res!948225) b!1410888))

(assert (= (and b!1410891 (not res!948221)) b!1410885))

(assert (= (and b!1410885 (not res!948222)) b!1410892))

(assert (= (and b!1410892 (not res!948227)) b!1410889))

(assert (= (and b!1410889 (not res!948224)) b!1410894))

(declare-fun m!1300649 () Bool)

(assert (=> b!1410895 m!1300649))

(assert (=> b!1410895 m!1300649))

(declare-fun m!1300651 () Bool)

(assert (=> b!1410895 m!1300651))

(declare-fun m!1300653 () Bool)

(assert (=> b!1410893 m!1300653))

(declare-fun m!1300655 () Bool)

(assert (=> b!1410889 m!1300655))

(assert (=> b!1410888 m!1300649))

(assert (=> b!1410888 m!1300649))

(declare-fun m!1300657 () Bool)

(assert (=> b!1410888 m!1300657))

(declare-fun m!1300659 () Bool)

(assert (=> b!1410890 m!1300659))

(declare-fun m!1300661 () Bool)

(assert (=> b!1410887 m!1300661))

(assert (=> b!1410887 m!1300661))

(declare-fun m!1300663 () Bool)

(assert (=> b!1410887 m!1300663))

(declare-fun m!1300665 () Bool)

(assert (=> start!121480 m!1300665))

(declare-fun m!1300667 () Bool)

(assert (=> start!121480 m!1300667))

(assert (=> b!1410891 m!1300649))

(declare-fun m!1300669 () Bool)

(assert (=> b!1410891 m!1300669))

(assert (=> b!1410891 m!1300649))

(declare-fun m!1300671 () Bool)

(assert (=> b!1410891 m!1300671))

(assert (=> b!1410891 m!1300649))

(declare-fun m!1300673 () Bool)

(assert (=> b!1410891 m!1300673))

(declare-fun m!1300675 () Bool)

(assert (=> b!1410891 m!1300675))

(declare-fun m!1300677 () Bool)

(assert (=> b!1410885 m!1300677))

(assert (=> b!1410885 m!1300677))

(declare-fun m!1300679 () Bool)

(assert (=> b!1410885 m!1300679))

(declare-fun m!1300681 () Bool)

(assert (=> b!1410885 m!1300681))

(declare-fun m!1300683 () Bool)

(assert (=> b!1410885 m!1300683))

(push 1)

