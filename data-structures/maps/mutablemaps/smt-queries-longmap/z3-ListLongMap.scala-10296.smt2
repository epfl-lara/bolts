; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121140 () Bool)

(assert start!121140)

(declare-fun b!1407920 () Bool)

(declare-fun res!945754 () Bool)

(declare-fun e!796883 () Bool)

(assert (=> b!1407920 (=> (not res!945754) (not e!796883))))

(declare-datatypes ((array!96212 0))(
  ( (array!96213 (arr!46445 (Array (_ BitVec 32) (_ BitVec 64))) (size!46996 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96212)

(declare-datatypes ((List!33144 0))(
  ( (Nil!33141) (Cons!33140 (h!34403 (_ BitVec 64)) (t!47845 List!33144)) )
))
(declare-fun arrayNoDuplicates!0 (array!96212 (_ BitVec 32) List!33144) Bool)

(assert (=> b!1407920 (= res!945754 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33141))))

(declare-fun b!1407921 () Bool)

(declare-fun res!945751 () Bool)

(assert (=> b!1407921 (=> (not res!945751) (not e!796883))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96212 (_ BitVec 32)) Bool)

(assert (=> b!1407921 (= res!945751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407922 () Bool)

(declare-fun res!945757 () Bool)

(assert (=> b!1407922 (=> (not res!945757) (not e!796883))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407922 (= res!945757 (and (= (size!46996 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46996 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46996 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407923 () Bool)

(declare-fun e!796882 () Bool)

(assert (=> b!1407923 (= e!796882 true)))

(declare-fun lt!619980 () (_ BitVec 64))

(declare-fun lt!619979 () array!96212)

(declare-datatypes ((SeekEntryResult!10778 0))(
  ( (MissingZero!10778 (index!45488 (_ BitVec 32))) (Found!10778 (index!45489 (_ BitVec 32))) (Intermediate!10778 (undefined!11590 Bool) (index!45490 (_ BitVec 32)) (x!127102 (_ BitVec 32))) (Undefined!10778) (MissingVacant!10778 (index!45491 (_ BitVec 32))) )
))
(declare-fun lt!619983 () SeekEntryResult!10778)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96212 (_ BitVec 32)) SeekEntryResult!10778)

(assert (=> b!1407923 (= lt!619983 (seekEntryOrOpen!0 lt!619980 lt!619979 mask!2840))))

(declare-datatypes ((Unit!47480 0))(
  ( (Unit!47481) )
))
(declare-fun lt!619984 () Unit!47480)

(declare-fun lt!619981 () SeekEntryResult!10778)

(declare-fun lt!619978 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47480)

(assert (=> b!1407923 (= lt!619984 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!619978 (x!127102 lt!619981) (index!45490 lt!619981) mask!2840))))

(declare-fun b!1407924 () Bool)

(declare-fun e!796880 () Bool)

(assert (=> b!1407924 (= e!796880 e!796882)))

(declare-fun res!945755 () Bool)

(assert (=> b!1407924 (=> res!945755 e!796882)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96212 (_ BitVec 32)) SeekEntryResult!10778)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407924 (= res!945755 (not (= lt!619981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!619980 mask!2840) lt!619980 lt!619979 mask!2840))))))

(assert (=> b!1407924 (= lt!619980 (select (store (arr!46445 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1407924 (= lt!619979 (array!96213 (store (arr!46445 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46996 a!2901)))))

(declare-fun res!945753 () Bool)

(assert (=> start!121140 (=> (not res!945753) (not e!796883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121140 (= res!945753 (validMask!0 mask!2840))))

(assert (=> start!121140 e!796883))

(assert (=> start!121140 true))

(declare-fun array_inv!35390 (array!96212) Bool)

(assert (=> start!121140 (array_inv!35390 a!2901)))

(declare-fun b!1407925 () Bool)

(assert (=> b!1407925 (= e!796883 (not e!796880))))

(declare-fun res!945758 () Bool)

(assert (=> b!1407925 (=> res!945758 e!796880)))

(get-info :version)

(assert (=> b!1407925 (= res!945758 (or (not ((_ is Intermediate!10778) lt!619981)) (undefined!11590 lt!619981)))))

(assert (=> b!1407925 (= lt!619983 (Found!10778 j!112))))

(assert (=> b!1407925 (= lt!619983 (seekEntryOrOpen!0 (select (arr!46445 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407925 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619982 () Unit!47480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47480)

(assert (=> b!1407925 (= lt!619982 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407925 (= lt!619981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619978 (select (arr!46445 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407925 (= lt!619978 (toIndex!0 (select (arr!46445 a!2901) j!112) mask!2840))))

(declare-fun b!1407926 () Bool)

(declare-fun res!945756 () Bool)

(assert (=> b!1407926 (=> (not res!945756) (not e!796883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407926 (= res!945756 (validKeyInArray!0 (select (arr!46445 a!2901) j!112)))))

(declare-fun b!1407927 () Bool)

(declare-fun res!945759 () Bool)

(assert (=> b!1407927 (=> res!945759 e!796882)))

(assert (=> b!1407927 (= res!945759 (or (bvslt (x!127102 lt!619981) #b00000000000000000000000000000000) (bvsgt (x!127102 lt!619981) #b01111111111111111111111111111110) (bvslt lt!619978 #b00000000000000000000000000000000) (bvsge lt!619978 (size!46996 a!2901)) (bvslt (index!45490 lt!619981) #b00000000000000000000000000000000) (bvsge (index!45490 lt!619981) (size!46996 a!2901)) (not (= lt!619981 (Intermediate!10778 false (index!45490 lt!619981) (x!127102 lt!619981))))))))

(declare-fun b!1407928 () Bool)

(declare-fun res!945752 () Bool)

(assert (=> b!1407928 (=> (not res!945752) (not e!796883))))

(assert (=> b!1407928 (= res!945752 (validKeyInArray!0 (select (arr!46445 a!2901) i!1037)))))

(assert (= (and start!121140 res!945753) b!1407922))

(assert (= (and b!1407922 res!945757) b!1407928))

(assert (= (and b!1407928 res!945752) b!1407926))

(assert (= (and b!1407926 res!945756) b!1407921))

(assert (= (and b!1407921 res!945751) b!1407920))

(assert (= (and b!1407920 res!945754) b!1407925))

(assert (= (and b!1407925 (not res!945758)) b!1407924))

(assert (= (and b!1407924 (not res!945755)) b!1407927))

(assert (= (and b!1407927 (not res!945759)) b!1407923))

(declare-fun m!1297099 () Bool)

(assert (=> b!1407921 m!1297099))

(declare-fun m!1297101 () Bool)

(assert (=> b!1407920 m!1297101))

(declare-fun m!1297103 () Bool)

(assert (=> b!1407928 m!1297103))

(assert (=> b!1407928 m!1297103))

(declare-fun m!1297105 () Bool)

(assert (=> b!1407928 m!1297105))

(declare-fun m!1297107 () Bool)

(assert (=> b!1407923 m!1297107))

(declare-fun m!1297109 () Bool)

(assert (=> b!1407923 m!1297109))

(declare-fun m!1297111 () Bool)

(assert (=> b!1407925 m!1297111))

(declare-fun m!1297113 () Bool)

(assert (=> b!1407925 m!1297113))

(assert (=> b!1407925 m!1297111))

(assert (=> b!1407925 m!1297111))

(declare-fun m!1297115 () Bool)

(assert (=> b!1407925 m!1297115))

(declare-fun m!1297117 () Bool)

(assert (=> b!1407925 m!1297117))

(assert (=> b!1407925 m!1297111))

(declare-fun m!1297119 () Bool)

(assert (=> b!1407925 m!1297119))

(declare-fun m!1297121 () Bool)

(assert (=> b!1407925 m!1297121))

(declare-fun m!1297123 () Bool)

(assert (=> b!1407924 m!1297123))

(assert (=> b!1407924 m!1297123))

(declare-fun m!1297125 () Bool)

(assert (=> b!1407924 m!1297125))

(declare-fun m!1297127 () Bool)

(assert (=> b!1407924 m!1297127))

(declare-fun m!1297129 () Bool)

(assert (=> b!1407924 m!1297129))

(assert (=> b!1407926 m!1297111))

(assert (=> b!1407926 m!1297111))

(declare-fun m!1297131 () Bool)

(assert (=> b!1407926 m!1297131))

(declare-fun m!1297133 () Bool)

(assert (=> start!121140 m!1297133))

(declare-fun m!1297135 () Bool)

(assert (=> start!121140 m!1297135))

(check-sat (not start!121140) (not b!1407924) (not b!1407920) (not b!1407926) (not b!1407928) (not b!1407925) (not b!1407921) (not b!1407923))
(check-sat)
