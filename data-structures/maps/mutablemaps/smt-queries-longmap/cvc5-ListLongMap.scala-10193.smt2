; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120124 () Bool)

(assert start!120124)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95571 0))(
  ( (array!95572 (arr!46135 (Array (_ BitVec 32) (_ BitVec 64))) (size!46686 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95571)

(declare-fun e!791476 () Bool)

(declare-fun b!1398008 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10474 0))(
  ( (MissingZero!10474 (index!44266 (_ BitVec 32))) (Found!10474 (index!44267 (_ BitVec 32))) (Intermediate!10474 (undefined!11286 Bool) (index!44268 (_ BitVec 32)) (x!125923 (_ BitVec 32))) (Undefined!10474) (MissingVacant!10474 (index!44269 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95571 (_ BitVec 32)) SeekEntryResult!10474)

(assert (=> b!1398008 (= e!791476 (= (seekEntryOrOpen!0 (select (arr!46135 a!2901) j!112) a!2901 mask!2840) (Found!10474 j!112)))))

(declare-fun b!1398009 () Bool)

(declare-fun res!937038 () Bool)

(declare-fun e!791478 () Bool)

(assert (=> b!1398009 (=> (not res!937038) (not e!791478))))

(declare-datatypes ((List!32834 0))(
  ( (Nil!32831) (Cons!32830 (h!34072 (_ BitVec 64)) (t!47535 List!32834)) )
))
(declare-fun arrayNoDuplicates!0 (array!95571 (_ BitVec 32) List!32834) Bool)

(assert (=> b!1398009 (= res!937038 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32831))))

(declare-fun b!1398010 () Bool)

(declare-fun e!791479 () Bool)

(assert (=> b!1398010 (= e!791478 (not e!791479))))

(declare-fun res!937035 () Bool)

(assert (=> b!1398010 (=> res!937035 e!791479)))

(declare-fun lt!614642 () SeekEntryResult!10474)

(assert (=> b!1398010 (= res!937035 (or (not (is-Intermediate!10474 lt!614642)) (undefined!11286 lt!614642)))))

(assert (=> b!1398010 e!791476))

(declare-fun res!937030 () Bool)

(assert (=> b!1398010 (=> (not res!937030) (not e!791476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95571 (_ BitVec 32)) Bool)

(assert (=> b!1398010 (= res!937030 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46902 0))(
  ( (Unit!46903) )
))
(declare-fun lt!614639 () Unit!46902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46902)

(assert (=> b!1398010 (= lt!614639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614641 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95571 (_ BitVec 32)) SeekEntryResult!10474)

(assert (=> b!1398010 (= lt!614642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614641 (select (arr!46135 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398010 (= lt!614641 (toIndex!0 (select (arr!46135 a!2901) j!112) mask!2840))))

(declare-fun res!937031 () Bool)

(assert (=> start!120124 (=> (not res!937031) (not e!791478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120124 (= res!937031 (validMask!0 mask!2840))))

(assert (=> start!120124 e!791478))

(assert (=> start!120124 true))

(declare-fun array_inv!35080 (array!95571) Bool)

(assert (=> start!120124 (array_inv!35080 a!2901)))

(declare-fun b!1398011 () Bool)

(declare-fun res!937036 () Bool)

(assert (=> b!1398011 (=> (not res!937036) (not e!791478))))

(assert (=> b!1398011 (= res!937036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398012 () Bool)

(declare-fun res!937032 () Bool)

(assert (=> b!1398012 (=> (not res!937032) (not e!791478))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398012 (= res!937032 (validKeyInArray!0 (select (arr!46135 a!2901) i!1037)))))

(declare-fun b!1398013 () Bool)

(declare-fun e!791480 () Bool)

(assert (=> b!1398013 (= e!791479 e!791480)))

(declare-fun res!937037 () Bool)

(assert (=> b!1398013 (=> res!937037 e!791480)))

(declare-fun lt!614643 () SeekEntryResult!10474)

(assert (=> b!1398013 (= res!937037 (or (= lt!614642 lt!614643) (not (is-Intermediate!10474 lt!614643))))))

(declare-fun lt!614640 () (_ BitVec 64))

(assert (=> b!1398013 (= lt!614643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614640 mask!2840) lt!614640 (array!95572 (store (arr!46135 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46686 a!2901)) mask!2840))))

(assert (=> b!1398013 (= lt!614640 (select (store (arr!46135 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398014 () Bool)

(declare-fun res!937034 () Bool)

(assert (=> b!1398014 (=> (not res!937034) (not e!791478))))

(assert (=> b!1398014 (= res!937034 (and (= (size!46686 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46686 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46686 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398015 () Bool)

(declare-fun res!937033 () Bool)

(assert (=> b!1398015 (=> (not res!937033) (not e!791478))))

(assert (=> b!1398015 (= res!937033 (validKeyInArray!0 (select (arr!46135 a!2901) j!112)))))

(declare-fun b!1398016 () Bool)

(assert (=> b!1398016 (= e!791480 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398016 (and (not (undefined!11286 lt!614643)) (= (index!44268 lt!614643) i!1037) (bvslt (x!125923 lt!614643) (x!125923 lt!614642)) (= (select (store (arr!46135 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44268 lt!614643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614644 () Unit!46902)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46902)

(assert (=> b!1398016 (= lt!614644 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614641 (x!125923 lt!614642) (index!44268 lt!614642) (x!125923 lt!614643) (index!44268 lt!614643) (undefined!11286 lt!614643) mask!2840))))

(assert (= (and start!120124 res!937031) b!1398014))

(assert (= (and b!1398014 res!937034) b!1398012))

(assert (= (and b!1398012 res!937032) b!1398015))

(assert (= (and b!1398015 res!937033) b!1398011))

(assert (= (and b!1398011 res!937036) b!1398009))

(assert (= (and b!1398009 res!937038) b!1398010))

(assert (= (and b!1398010 res!937030) b!1398008))

(assert (= (and b!1398010 (not res!937035)) b!1398013))

(assert (= (and b!1398013 (not res!937037)) b!1398016))

(declare-fun m!1285061 () Bool)

(assert (=> b!1398009 m!1285061))

(declare-fun m!1285063 () Bool)

(assert (=> start!120124 m!1285063))

(declare-fun m!1285065 () Bool)

(assert (=> start!120124 m!1285065))

(declare-fun m!1285067 () Bool)

(assert (=> b!1398015 m!1285067))

(assert (=> b!1398015 m!1285067))

(declare-fun m!1285069 () Bool)

(assert (=> b!1398015 m!1285069))

(declare-fun m!1285071 () Bool)

(assert (=> b!1398013 m!1285071))

(declare-fun m!1285073 () Bool)

(assert (=> b!1398013 m!1285073))

(assert (=> b!1398013 m!1285071))

(declare-fun m!1285075 () Bool)

(assert (=> b!1398013 m!1285075))

(declare-fun m!1285077 () Bool)

(assert (=> b!1398013 m!1285077))

(assert (=> b!1398008 m!1285067))

(assert (=> b!1398008 m!1285067))

(declare-fun m!1285079 () Bool)

(assert (=> b!1398008 m!1285079))

(assert (=> b!1398016 m!1285073))

(declare-fun m!1285081 () Bool)

(assert (=> b!1398016 m!1285081))

(declare-fun m!1285083 () Bool)

(assert (=> b!1398016 m!1285083))

(declare-fun m!1285085 () Bool)

(assert (=> b!1398011 m!1285085))

(declare-fun m!1285087 () Bool)

(assert (=> b!1398012 m!1285087))

(assert (=> b!1398012 m!1285087))

(declare-fun m!1285089 () Bool)

(assert (=> b!1398012 m!1285089))

(assert (=> b!1398010 m!1285067))

(declare-fun m!1285091 () Bool)

(assert (=> b!1398010 m!1285091))

(assert (=> b!1398010 m!1285067))

(assert (=> b!1398010 m!1285067))

(declare-fun m!1285093 () Bool)

(assert (=> b!1398010 m!1285093))

(declare-fun m!1285095 () Bool)

(assert (=> b!1398010 m!1285095))

(declare-fun m!1285097 () Bool)

(assert (=> b!1398010 m!1285097))

(push 1)

