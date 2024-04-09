; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119070 () Bool)

(assert start!119070)

(declare-fun b!1389032 () Bool)

(declare-fun res!929339 () Bool)

(declare-fun e!786880 () Bool)

(assert (=> b!1389032 (=> (not res!929339) (not e!786880))))

(declare-datatypes ((array!94958 0))(
  ( (array!94959 (arr!45842 (Array (_ BitVec 32) (_ BitVec 64))) (size!46393 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94958)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389032 (= res!929339 (validKeyInArray!0 (select (arr!45842 a!2901) i!1037)))))

(declare-fun b!1389033 () Bool)

(declare-fun res!929338 () Bool)

(assert (=> b!1389033 (=> (not res!929338) (not e!786880))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389033 (= res!929338 (validKeyInArray!0 (select (arr!45842 a!2901) j!112)))))

(declare-fun b!1389034 () Bool)

(assert (=> b!1389034 (= e!786880 false)))

(declare-fun lt!610420 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389034 (= lt!610420 (toIndex!0 (select (arr!45842 a!2901) j!112) mask!2840))))

(declare-fun b!1389035 () Bool)

(declare-fun res!929337 () Bool)

(assert (=> b!1389035 (=> (not res!929337) (not e!786880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94958 (_ BitVec 32)) Bool)

(assert (=> b!1389035 (= res!929337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389036 () Bool)

(declare-fun res!929336 () Bool)

(assert (=> b!1389036 (=> (not res!929336) (not e!786880))))

(assert (=> b!1389036 (= res!929336 (and (= (size!46393 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46393 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46393 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929340 () Bool)

(assert (=> start!119070 (=> (not res!929340) (not e!786880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119070 (= res!929340 (validMask!0 mask!2840))))

(assert (=> start!119070 e!786880))

(assert (=> start!119070 true))

(declare-fun array_inv!34787 (array!94958) Bool)

(assert (=> start!119070 (array_inv!34787 a!2901)))

(declare-fun b!1389037 () Bool)

(declare-fun res!929335 () Bool)

(assert (=> b!1389037 (=> (not res!929335) (not e!786880))))

(declare-datatypes ((List!32541 0))(
  ( (Nil!32538) (Cons!32537 (h!33752 (_ BitVec 64)) (t!47242 List!32541)) )
))
(declare-fun arrayNoDuplicates!0 (array!94958 (_ BitVec 32) List!32541) Bool)

(assert (=> b!1389037 (= res!929335 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32538))))

(assert (= (and start!119070 res!929340) b!1389036))

(assert (= (and b!1389036 res!929336) b!1389032))

(assert (= (and b!1389032 res!929339) b!1389033))

(assert (= (and b!1389033 res!929338) b!1389035))

(assert (= (and b!1389035 res!929337) b!1389037))

(assert (= (and b!1389037 res!929335) b!1389034))

(declare-fun m!1274765 () Bool)

(assert (=> b!1389033 m!1274765))

(assert (=> b!1389033 m!1274765))

(declare-fun m!1274767 () Bool)

(assert (=> b!1389033 m!1274767))

(assert (=> b!1389034 m!1274765))

(assert (=> b!1389034 m!1274765))

(declare-fun m!1274769 () Bool)

(assert (=> b!1389034 m!1274769))

(declare-fun m!1274771 () Bool)

(assert (=> b!1389037 m!1274771))

(declare-fun m!1274773 () Bool)

(assert (=> b!1389032 m!1274773))

(assert (=> b!1389032 m!1274773))

(declare-fun m!1274775 () Bool)

(assert (=> b!1389032 m!1274775))

(declare-fun m!1274777 () Bool)

(assert (=> b!1389035 m!1274777))

(declare-fun m!1274779 () Bool)

(assert (=> start!119070 m!1274779))

(declare-fun m!1274781 () Bool)

(assert (=> start!119070 m!1274781))

(check-sat (not b!1389037) (not b!1389034) (not start!119070) (not b!1389032) (not b!1389035) (not b!1389033))
