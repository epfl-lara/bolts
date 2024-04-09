; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130086 () Bool)

(assert start!130086)

(declare-fun b!1525893 () Bool)

(declare-fun res!1044069 () Bool)

(declare-fun e!850579 () Bool)

(assert (=> b!1525893 (=> (not res!1044069) (not e!850579))))

(declare-datatypes ((array!101426 0))(
  ( (array!101427 (arr!48935 (Array (_ BitVec 32) (_ BitVec 64))) (size!49486 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101426)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525893 (= res!1044069 (validKeyInArray!0 (select (arr!48935 a!2804) i!961)))))

(declare-fun b!1525894 () Bool)

(declare-fun e!850577 () Bool)

(declare-fun e!850576 () Bool)

(assert (=> b!1525894 (= e!850577 e!850576)))

(declare-fun res!1044067 () Bool)

(assert (=> b!1525894 (=> res!1044067 e!850576)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!660847 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525894 (= res!1044067 (or (not (= (select (arr!48935 a!2804) j!70) lt!660847)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48935 a!2804) index!487) (select (arr!48935 a!2804) j!70)) (not (= (select (arr!48935 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525895 () Bool)

(declare-fun res!1044070 () Bool)

(assert (=> b!1525895 (=> (not res!1044070) (not e!850579))))

(declare-datatypes ((List!35598 0))(
  ( (Nil!35595) (Cons!35594 (h!37028 (_ BitVec 64)) (t!50299 List!35598)) )
))
(declare-fun arrayNoDuplicates!0 (array!101426 (_ BitVec 32) List!35598) Bool)

(assert (=> b!1525895 (= res!1044070 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35595))))

(declare-fun b!1525896 () Bool)

(declare-fun e!850580 () Bool)

(assert (=> b!1525896 (= e!850576 e!850580)))

(declare-fun res!1044072 () Bool)

(assert (=> b!1525896 (=> (not res!1044072) (not e!850580))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13121 0))(
  ( (MissingZero!13121 (index!54878 (_ BitVec 32))) (Found!13121 (index!54879 (_ BitVec 32))) (Intermediate!13121 (undefined!13933 Bool) (index!54880 (_ BitVec 32)) (x!136586 (_ BitVec 32))) (Undefined!13121) (MissingVacant!13121 (index!54881 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101426 (_ BitVec 32)) SeekEntryResult!13121)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101426 (_ BitVec 32)) SeekEntryResult!13121)

(assert (=> b!1525896 (= res!1044072 (= (seekEntryOrOpen!0 (select (arr!48935 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48935 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525897 () Bool)

(declare-fun res!1044075 () Bool)

(assert (=> b!1525897 (=> (not res!1044075) (not e!850579))))

(assert (=> b!1525897 (= res!1044075 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49486 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49486 a!2804))))))

(declare-fun b!1525898 () Bool)

(declare-fun res!1044076 () Bool)

(declare-fun e!850575 () Bool)

(assert (=> b!1525898 (=> (not res!1044076) (not e!850575))))

(declare-fun lt!660846 () SeekEntryResult!13121)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101426 (_ BitVec 32)) SeekEntryResult!13121)

(assert (=> b!1525898 (= res!1044076 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48935 a!2804) j!70) a!2804 mask!2512) lt!660846))))

(declare-fun res!1044077 () Bool)

(assert (=> start!130086 (=> (not res!1044077) (not e!850579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130086 (= res!1044077 (validMask!0 mask!2512))))

(assert (=> start!130086 e!850579))

(assert (=> start!130086 true))

(declare-fun array_inv!37880 (array!101426) Bool)

(assert (=> start!130086 (array_inv!37880 a!2804)))

(declare-fun b!1525899 () Bool)

(declare-fun e!850574 () Bool)

(assert (=> b!1525899 (= e!850575 e!850574)))

(declare-fun res!1044073 () Bool)

(assert (=> b!1525899 (=> (not res!1044073) (not e!850574))))

(declare-fun lt!660849 () SeekEntryResult!13121)

(declare-fun lt!660848 () array!101426)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525899 (= res!1044073 (= lt!660849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660847 mask!2512) lt!660847 lt!660848 mask!2512)))))

(assert (=> b!1525899 (= lt!660847 (select (store (arr!48935 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525899 (= lt!660848 (array!101427 (store (arr!48935 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49486 a!2804)))))

(declare-fun b!1525900 () Bool)

(assert (=> b!1525900 (= e!850579 e!850575)))

(declare-fun res!1044068 () Bool)

(assert (=> b!1525900 (=> (not res!1044068) (not e!850575))))

(assert (=> b!1525900 (= res!1044068 (= lt!660849 lt!660846))))

(assert (=> b!1525900 (= lt!660846 (Intermediate!13121 false resIndex!21 resX!21))))

(assert (=> b!1525900 (= lt!660849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48935 a!2804) j!70) mask!2512) (select (arr!48935 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525901 () Bool)

(declare-fun res!1044065 () Bool)

(assert (=> b!1525901 (=> (not res!1044065) (not e!850579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101426 (_ BitVec 32)) Bool)

(assert (=> b!1525901 (= res!1044065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525902 () Bool)

(assert (=> b!1525902 (= e!850574 (not true))))

(assert (=> b!1525902 e!850577))

(declare-fun res!1044074 () Bool)

(assert (=> b!1525902 (=> (not res!1044074) (not e!850577))))

(assert (=> b!1525902 (= res!1044074 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50982 0))(
  ( (Unit!50983) )
))
(declare-fun lt!660850 () Unit!50982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50982)

(assert (=> b!1525902 (= lt!660850 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525903 () Bool)

(declare-fun res!1044071 () Bool)

(assert (=> b!1525903 (=> (not res!1044071) (not e!850579))))

(assert (=> b!1525903 (= res!1044071 (and (= (size!49486 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49486 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49486 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525904 () Bool)

(declare-fun res!1044066 () Bool)

(assert (=> b!1525904 (=> (not res!1044066) (not e!850579))))

(assert (=> b!1525904 (= res!1044066 (validKeyInArray!0 (select (arr!48935 a!2804) j!70)))))

(declare-fun b!1525905 () Bool)

(declare-fun res!1044078 () Bool)

(assert (=> b!1525905 (=> (not res!1044078) (not e!850577))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101426 (_ BitVec 32)) SeekEntryResult!13121)

(assert (=> b!1525905 (= res!1044078 (= (seekEntry!0 (select (arr!48935 a!2804) j!70) a!2804 mask!2512) (Found!13121 j!70)))))

(declare-fun b!1525906 () Bool)

(assert (=> b!1525906 (= e!850580 (= (seekEntryOrOpen!0 lt!660847 lt!660848 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660847 lt!660848 mask!2512)))))

(assert (= (and start!130086 res!1044077) b!1525903))

(assert (= (and b!1525903 res!1044071) b!1525893))

(assert (= (and b!1525893 res!1044069) b!1525904))

(assert (= (and b!1525904 res!1044066) b!1525901))

(assert (= (and b!1525901 res!1044065) b!1525895))

(assert (= (and b!1525895 res!1044070) b!1525897))

(assert (= (and b!1525897 res!1044075) b!1525900))

(assert (= (and b!1525900 res!1044068) b!1525898))

(assert (= (and b!1525898 res!1044076) b!1525899))

(assert (= (and b!1525899 res!1044073) b!1525902))

(assert (= (and b!1525902 res!1044074) b!1525905))

(assert (= (and b!1525905 res!1044078) b!1525894))

(assert (= (and b!1525894 (not res!1044067)) b!1525896))

(assert (= (and b!1525896 res!1044072) b!1525906))

(declare-fun m!1408705 () Bool)

(assert (=> b!1525895 m!1408705))

(declare-fun m!1408707 () Bool)

(assert (=> b!1525900 m!1408707))

(assert (=> b!1525900 m!1408707))

(declare-fun m!1408709 () Bool)

(assert (=> b!1525900 m!1408709))

(assert (=> b!1525900 m!1408709))

(assert (=> b!1525900 m!1408707))

(declare-fun m!1408711 () Bool)

(assert (=> b!1525900 m!1408711))

(declare-fun m!1408713 () Bool)

(assert (=> start!130086 m!1408713))

(declare-fun m!1408715 () Bool)

(assert (=> start!130086 m!1408715))

(assert (=> b!1525905 m!1408707))

(assert (=> b!1525905 m!1408707))

(declare-fun m!1408717 () Bool)

(assert (=> b!1525905 m!1408717))

(declare-fun m!1408719 () Bool)

(assert (=> b!1525899 m!1408719))

(assert (=> b!1525899 m!1408719))

(declare-fun m!1408721 () Bool)

(assert (=> b!1525899 m!1408721))

(declare-fun m!1408723 () Bool)

(assert (=> b!1525899 m!1408723))

(declare-fun m!1408725 () Bool)

(assert (=> b!1525899 m!1408725))

(declare-fun m!1408727 () Bool)

(assert (=> b!1525893 m!1408727))

(assert (=> b!1525893 m!1408727))

(declare-fun m!1408729 () Bool)

(assert (=> b!1525893 m!1408729))

(assert (=> b!1525904 m!1408707))

(assert (=> b!1525904 m!1408707))

(declare-fun m!1408731 () Bool)

(assert (=> b!1525904 m!1408731))

(assert (=> b!1525896 m!1408707))

(assert (=> b!1525896 m!1408707))

(declare-fun m!1408733 () Bool)

(assert (=> b!1525896 m!1408733))

(assert (=> b!1525896 m!1408707))

(declare-fun m!1408735 () Bool)

(assert (=> b!1525896 m!1408735))

(assert (=> b!1525898 m!1408707))

(assert (=> b!1525898 m!1408707))

(declare-fun m!1408737 () Bool)

(assert (=> b!1525898 m!1408737))

(declare-fun m!1408739 () Bool)

(assert (=> b!1525906 m!1408739))

(declare-fun m!1408741 () Bool)

(assert (=> b!1525906 m!1408741))

(declare-fun m!1408743 () Bool)

(assert (=> b!1525901 m!1408743))

(declare-fun m!1408745 () Bool)

(assert (=> b!1525902 m!1408745))

(declare-fun m!1408747 () Bool)

(assert (=> b!1525902 m!1408747))

(assert (=> b!1525894 m!1408707))

(declare-fun m!1408749 () Bool)

(assert (=> b!1525894 m!1408749))

(check-sat (not b!1525899) (not b!1525898) (not b!1525893) (not b!1525904) (not b!1525896) (not start!130086) (not b!1525906) (not b!1525901) (not b!1525900) (not b!1525905) (not b!1525895) (not b!1525902))
(check-sat)
