; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119314 () Bool)

(assert start!119314)

(declare-fun res!930954 () Bool)

(declare-fun e!787651 () Bool)

(assert (=> start!119314 (=> (not res!930954) (not e!787651))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119314 (= res!930954 (validMask!0 mask!2840))))

(assert (=> start!119314 e!787651))

(assert (=> start!119314 true))

(declare-datatypes ((array!95118 0))(
  ( (array!95119 (arr!45919 (Array (_ BitVec 32) (_ BitVec 64))) (size!46470 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95118)

(declare-fun array_inv!34864 (array!95118) Bool)

(assert (=> start!119314 (array_inv!34864 a!2901)))

(declare-fun e!787652 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1390828 () Bool)

(declare-datatypes ((SeekEntryResult!10258 0))(
  ( (MissingZero!10258 (index!43402 (_ BitVec 32))) (Found!10258 (index!43403 (_ BitVec 32))) (Intermediate!10258 (undefined!11070 Bool) (index!43404 (_ BitVec 32)) (x!125089 (_ BitVec 32))) (Undefined!10258) (MissingVacant!10258 (index!43405 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95118 (_ BitVec 32)) SeekEntryResult!10258)

(assert (=> b!1390828 (= e!787652 (= (seekEntryOrOpen!0 (select (arr!45919 a!2901) j!112) a!2901 mask!2840) (Found!10258 j!112)))))

(declare-fun b!1390829 () Bool)

(declare-fun res!930955 () Bool)

(assert (=> b!1390829 (=> (not res!930955) (not e!787651))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390829 (= res!930955 (validKeyInArray!0 (select (arr!45919 a!2901) i!1037)))))

(declare-fun b!1390830 () Bool)

(declare-fun res!930952 () Bool)

(assert (=> b!1390830 (=> (not res!930952) (not e!787651))))

(assert (=> b!1390830 (= res!930952 (and (= (size!46470 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46470 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46470 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390831 () Bool)

(declare-fun lt!610942 () SeekEntryResult!10258)

(assert (=> b!1390831 (= e!787651 (not (or (not (is-Intermediate!10258 lt!610942)) (undefined!11070 lt!610942) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(assert (=> b!1390831 e!787652))

(declare-fun res!930957 () Bool)

(assert (=> b!1390831 (=> (not res!930957) (not e!787652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95118 (_ BitVec 32)) Bool)

(assert (=> b!1390831 (= res!930957 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46470 0))(
  ( (Unit!46471) )
))
(declare-fun lt!610941 () Unit!46470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46470)

(assert (=> b!1390831 (= lt!610941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95118 (_ BitVec 32)) SeekEntryResult!10258)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390831 (= lt!610942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45919 a!2901) j!112) mask!2840) (select (arr!45919 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390832 () Bool)

(declare-fun res!930953 () Bool)

(assert (=> b!1390832 (=> (not res!930953) (not e!787651))))

(assert (=> b!1390832 (= res!930953 (validKeyInArray!0 (select (arr!45919 a!2901) j!112)))))

(declare-fun b!1390833 () Bool)

(declare-fun res!930951 () Bool)

(assert (=> b!1390833 (=> (not res!930951) (not e!787651))))

(declare-datatypes ((List!32618 0))(
  ( (Nil!32615) (Cons!32614 (h!33835 (_ BitVec 64)) (t!47319 List!32618)) )
))
(declare-fun arrayNoDuplicates!0 (array!95118 (_ BitVec 32) List!32618) Bool)

(assert (=> b!1390833 (= res!930951 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32615))))

(declare-fun b!1390834 () Bool)

(declare-fun res!930956 () Bool)

(assert (=> b!1390834 (=> (not res!930956) (not e!787651))))

(assert (=> b!1390834 (= res!930956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119314 res!930954) b!1390830))

(assert (= (and b!1390830 res!930952) b!1390829))

(assert (= (and b!1390829 res!930955) b!1390832))

(assert (= (and b!1390832 res!930953) b!1390834))

(assert (= (and b!1390834 res!930956) b!1390833))

(assert (= (and b!1390833 res!930951) b!1390831))

(assert (= (and b!1390831 res!930957) b!1390828))

(declare-fun m!1276691 () Bool)

(assert (=> start!119314 m!1276691))

(declare-fun m!1276693 () Bool)

(assert (=> start!119314 m!1276693))

(declare-fun m!1276695 () Bool)

(assert (=> b!1390832 m!1276695))

(assert (=> b!1390832 m!1276695))

(declare-fun m!1276697 () Bool)

(assert (=> b!1390832 m!1276697))

(declare-fun m!1276699 () Bool)

(assert (=> b!1390833 m!1276699))

(assert (=> b!1390831 m!1276695))

(declare-fun m!1276701 () Bool)

(assert (=> b!1390831 m!1276701))

(assert (=> b!1390831 m!1276695))

(declare-fun m!1276703 () Bool)

(assert (=> b!1390831 m!1276703))

(assert (=> b!1390831 m!1276701))

(assert (=> b!1390831 m!1276695))

(declare-fun m!1276705 () Bool)

(assert (=> b!1390831 m!1276705))

(declare-fun m!1276707 () Bool)

(assert (=> b!1390831 m!1276707))

(declare-fun m!1276709 () Bool)

(assert (=> b!1390829 m!1276709))

(assert (=> b!1390829 m!1276709))

(declare-fun m!1276711 () Bool)

(assert (=> b!1390829 m!1276711))

(assert (=> b!1390828 m!1276695))

(assert (=> b!1390828 m!1276695))

(declare-fun m!1276713 () Bool)

(assert (=> b!1390828 m!1276713))

(declare-fun m!1276715 () Bool)

(assert (=> b!1390834 m!1276715))

(push 1)

(assert (not b!1390831))

(assert (not b!1390829))

