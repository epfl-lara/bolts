; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120120 () Bool)

(assert start!120120)

(declare-fun b!1397954 () Bool)

(declare-fun res!936979 () Bool)

(declare-fun e!791449 () Bool)

(assert (=> b!1397954 (=> (not res!936979) (not e!791449))))

(declare-datatypes ((array!95567 0))(
  ( (array!95568 (arr!46133 (Array (_ BitVec 32) (_ BitVec 64))) (size!46684 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95567)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95567 (_ BitVec 32)) Bool)

(assert (=> b!1397954 (= res!936979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397955 () Bool)

(declare-fun e!791448 () Bool)

(assert (=> b!1397955 (= e!791449 (not e!791448))))

(declare-fun res!936980 () Bool)

(assert (=> b!1397955 (=> res!936980 e!791448)))

(declare-datatypes ((SeekEntryResult!10472 0))(
  ( (MissingZero!10472 (index!44258 (_ BitVec 32))) (Found!10472 (index!44259 (_ BitVec 32))) (Intermediate!10472 (undefined!11284 Bool) (index!44260 (_ BitVec 32)) (x!125913 (_ BitVec 32))) (Undefined!10472) (MissingVacant!10472 (index!44261 (_ BitVec 32))) )
))
(declare-fun lt!614604 () SeekEntryResult!10472)

(get-info :version)

(assert (=> b!1397955 (= res!936980 (or (not ((_ is Intermediate!10472) lt!614604)) (undefined!11284 lt!614604)))))

(declare-fun e!791450 () Bool)

(assert (=> b!1397955 e!791450))

(declare-fun res!936978 () Bool)

(assert (=> b!1397955 (=> (not res!936978) (not e!791450))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397955 (= res!936978 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46898 0))(
  ( (Unit!46899) )
))
(declare-fun lt!614603 () Unit!46898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46898)

(assert (=> b!1397955 (= lt!614603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95567 (_ BitVec 32)) SeekEntryResult!10472)

(assert (=> b!1397955 (= lt!614604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614605 (select (arr!46133 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397955 (= lt!614605 (toIndex!0 (select (arr!46133 a!2901) j!112) mask!2840))))

(declare-fun b!1397956 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95567 (_ BitVec 32)) SeekEntryResult!10472)

(assert (=> b!1397956 (= e!791450 (= (seekEntryOrOpen!0 (select (arr!46133 a!2901) j!112) a!2901 mask!2840) (Found!10472 j!112)))))

(declare-fun b!1397957 () Bool)

(declare-fun res!936983 () Bool)

(assert (=> b!1397957 (=> (not res!936983) (not e!791449))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397957 (= res!936983 (and (= (size!46684 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46684 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46684 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397958 () Bool)

(declare-fun e!791446 () Bool)

(assert (=> b!1397958 (= e!791446 true)))

(declare-fun lt!614608 () SeekEntryResult!10472)

(assert (=> b!1397958 (and (not (undefined!11284 lt!614608)) (= (index!44260 lt!614608) i!1037) (bvslt (x!125913 lt!614608) (x!125913 lt!614604)) (= (select (store (arr!46133 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44260 lt!614608)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614606 () Unit!46898)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46898)

(assert (=> b!1397958 (= lt!614606 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614605 (x!125913 lt!614604) (index!44260 lt!614604) (x!125913 lt!614608) (index!44260 lt!614608) (undefined!11284 lt!614608) mask!2840))))

(declare-fun res!936984 () Bool)

(assert (=> start!120120 (=> (not res!936984) (not e!791449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120120 (= res!936984 (validMask!0 mask!2840))))

(assert (=> start!120120 e!791449))

(assert (=> start!120120 true))

(declare-fun array_inv!35078 (array!95567) Bool)

(assert (=> start!120120 (array_inv!35078 a!2901)))

(declare-fun b!1397959 () Bool)

(declare-fun res!936977 () Bool)

(assert (=> b!1397959 (=> (not res!936977) (not e!791449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397959 (= res!936977 (validKeyInArray!0 (select (arr!46133 a!2901) i!1037)))))

(declare-fun b!1397960 () Bool)

(declare-fun res!936981 () Bool)

(assert (=> b!1397960 (=> (not res!936981) (not e!791449))))

(assert (=> b!1397960 (= res!936981 (validKeyInArray!0 (select (arr!46133 a!2901) j!112)))))

(declare-fun b!1397961 () Bool)

(assert (=> b!1397961 (= e!791448 e!791446)))

(declare-fun res!936976 () Bool)

(assert (=> b!1397961 (=> res!936976 e!791446)))

(assert (=> b!1397961 (= res!936976 (or (= lt!614604 lt!614608) (not ((_ is Intermediate!10472) lt!614608))))))

(declare-fun lt!614607 () (_ BitVec 64))

(assert (=> b!1397961 (= lt!614608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614607 mask!2840) lt!614607 (array!95568 (store (arr!46133 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46684 a!2901)) mask!2840))))

(assert (=> b!1397961 (= lt!614607 (select (store (arr!46133 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1397962 () Bool)

(declare-fun res!936982 () Bool)

(assert (=> b!1397962 (=> (not res!936982) (not e!791449))))

(declare-datatypes ((List!32832 0))(
  ( (Nil!32829) (Cons!32828 (h!34070 (_ BitVec 64)) (t!47533 List!32832)) )
))
(declare-fun arrayNoDuplicates!0 (array!95567 (_ BitVec 32) List!32832) Bool)

(assert (=> b!1397962 (= res!936982 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32829))))

(assert (= (and start!120120 res!936984) b!1397957))

(assert (= (and b!1397957 res!936983) b!1397959))

(assert (= (and b!1397959 res!936977) b!1397960))

(assert (= (and b!1397960 res!936981) b!1397954))

(assert (= (and b!1397954 res!936979) b!1397962))

(assert (= (and b!1397962 res!936982) b!1397955))

(assert (= (and b!1397955 res!936978) b!1397956))

(assert (= (and b!1397955 (not res!936980)) b!1397961))

(assert (= (and b!1397961 (not res!936976)) b!1397958))

(declare-fun m!1284985 () Bool)

(assert (=> b!1397959 m!1284985))

(assert (=> b!1397959 m!1284985))

(declare-fun m!1284987 () Bool)

(assert (=> b!1397959 m!1284987))

(declare-fun m!1284989 () Bool)

(assert (=> b!1397962 m!1284989))

(declare-fun m!1284991 () Bool)

(assert (=> b!1397955 m!1284991))

(declare-fun m!1284993 () Bool)

(assert (=> b!1397955 m!1284993))

(assert (=> b!1397955 m!1284991))

(declare-fun m!1284995 () Bool)

(assert (=> b!1397955 m!1284995))

(declare-fun m!1284997 () Bool)

(assert (=> b!1397955 m!1284997))

(assert (=> b!1397955 m!1284991))

(declare-fun m!1284999 () Bool)

(assert (=> b!1397955 m!1284999))

(assert (=> b!1397956 m!1284991))

(assert (=> b!1397956 m!1284991))

(declare-fun m!1285001 () Bool)

(assert (=> b!1397956 m!1285001))

(declare-fun m!1285003 () Bool)

(assert (=> start!120120 m!1285003))

(declare-fun m!1285005 () Bool)

(assert (=> start!120120 m!1285005))

(declare-fun m!1285007 () Bool)

(assert (=> b!1397958 m!1285007))

(declare-fun m!1285009 () Bool)

(assert (=> b!1397958 m!1285009))

(declare-fun m!1285011 () Bool)

(assert (=> b!1397958 m!1285011))

(declare-fun m!1285013 () Bool)

(assert (=> b!1397954 m!1285013))

(assert (=> b!1397960 m!1284991))

(assert (=> b!1397960 m!1284991))

(declare-fun m!1285015 () Bool)

(assert (=> b!1397960 m!1285015))

(declare-fun m!1285017 () Bool)

(assert (=> b!1397961 m!1285017))

(assert (=> b!1397961 m!1285007))

(assert (=> b!1397961 m!1285017))

(declare-fun m!1285019 () Bool)

(assert (=> b!1397961 m!1285019))

(declare-fun m!1285021 () Bool)

(assert (=> b!1397961 m!1285021))

(check-sat (not b!1397956) (not b!1397958) (not b!1397960) (not b!1397962) (not b!1397955) (not b!1397954) (not b!1397961) (not start!120120) (not b!1397959))
(check-sat)
