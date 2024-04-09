; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119202 () Bool)

(assert start!119202)

(declare-fun b!1389991 () Bool)

(declare-fun res!930261 () Bool)

(declare-fun e!787246 () Bool)

(assert (=> b!1389991 (=> (not res!930261) (not e!787246))))

(declare-datatypes ((array!95057 0))(
  ( (array!95058 (arr!45890 (Array (_ BitVec 32) (_ BitVec 64))) (size!46441 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95057)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389991 (= res!930261 (validKeyInArray!0 (select (arr!45890 a!2901) j!112)))))

(declare-fun b!1389992 () Bool)

(declare-fun res!930264 () Bool)

(assert (=> b!1389992 (=> (not res!930264) (not e!787246))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389992 (= res!930264 (and (= (size!46441 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46441 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46441 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389993 () Bool)

(declare-fun res!930266 () Bool)

(assert (=> b!1389993 (=> (not res!930266) (not e!787246))))

(declare-datatypes ((List!32589 0))(
  ( (Nil!32586) (Cons!32585 (h!33803 (_ BitVec 64)) (t!47290 List!32589)) )
))
(declare-fun arrayNoDuplicates!0 (array!95057 (_ BitVec 32) List!32589) Bool)

(assert (=> b!1389993 (= res!930266 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32586))))

(declare-fun res!930262 () Bool)

(assert (=> start!119202 (=> (not res!930262) (not e!787246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119202 (= res!930262 (validMask!0 mask!2840))))

(assert (=> start!119202 e!787246))

(assert (=> start!119202 true))

(declare-fun array_inv!34835 (array!95057) Bool)

(assert (=> start!119202 (array_inv!34835 a!2901)))

(declare-fun e!787245 () Bool)

(declare-fun b!1389994 () Bool)

(declare-datatypes ((SeekEntryResult!10229 0))(
  ( (MissingZero!10229 (index!43286 (_ BitVec 32))) (Found!10229 (index!43287 (_ BitVec 32))) (Intermediate!10229 (undefined!11041 Bool) (index!43288 (_ BitVec 32)) (x!124974 (_ BitVec 32))) (Undefined!10229) (MissingVacant!10229 (index!43289 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95057 (_ BitVec 32)) SeekEntryResult!10229)

(assert (=> b!1389994 (= e!787245 (= (seekEntryOrOpen!0 (select (arr!45890 a!2901) j!112) a!2901 mask!2840) (Found!10229 j!112)))))

(declare-fun b!1389995 () Bool)

(assert (=> b!1389995 (= e!787246 (not true))))

(assert (=> b!1389995 e!787245))

(declare-fun res!930267 () Bool)

(assert (=> b!1389995 (=> (not res!930267) (not e!787245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95057 (_ BitVec 32)) Bool)

(assert (=> b!1389995 (= res!930267 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46412 0))(
  ( (Unit!46413) )
))
(declare-fun lt!610660 () Unit!46412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46412)

(assert (=> b!1389995 (= lt!610660 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610659 () SeekEntryResult!10229)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95057 (_ BitVec 32)) SeekEntryResult!10229)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389995 (= lt!610659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45890 a!2901) j!112) mask!2840) (select (arr!45890 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389996 () Bool)

(declare-fun res!930263 () Bool)

(assert (=> b!1389996 (=> (not res!930263) (not e!787246))))

(assert (=> b!1389996 (= res!930263 (validKeyInArray!0 (select (arr!45890 a!2901) i!1037)))))

(declare-fun b!1389997 () Bool)

(declare-fun res!930265 () Bool)

(assert (=> b!1389997 (=> (not res!930265) (not e!787246))))

(assert (=> b!1389997 (= res!930265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119202 res!930262) b!1389992))

(assert (= (and b!1389992 res!930264) b!1389996))

(assert (= (and b!1389996 res!930263) b!1389991))

(assert (= (and b!1389991 res!930261) b!1389997))

(assert (= (and b!1389997 res!930265) b!1389993))

(assert (= (and b!1389993 res!930266) b!1389995))

(assert (= (and b!1389995 res!930267) b!1389994))

(declare-fun m!1275811 () Bool)

(assert (=> start!119202 m!1275811))

(declare-fun m!1275813 () Bool)

(assert (=> start!119202 m!1275813))

(declare-fun m!1275815 () Bool)

(assert (=> b!1389991 m!1275815))

(assert (=> b!1389991 m!1275815))

(declare-fun m!1275817 () Bool)

(assert (=> b!1389991 m!1275817))

(assert (=> b!1389995 m!1275815))

(declare-fun m!1275819 () Bool)

(assert (=> b!1389995 m!1275819))

(assert (=> b!1389995 m!1275815))

(declare-fun m!1275821 () Bool)

(assert (=> b!1389995 m!1275821))

(assert (=> b!1389995 m!1275819))

(assert (=> b!1389995 m!1275815))

(declare-fun m!1275823 () Bool)

(assert (=> b!1389995 m!1275823))

(declare-fun m!1275825 () Bool)

(assert (=> b!1389995 m!1275825))

(declare-fun m!1275827 () Bool)

(assert (=> b!1389997 m!1275827))

(declare-fun m!1275829 () Bool)

(assert (=> b!1389996 m!1275829))

(assert (=> b!1389996 m!1275829))

(declare-fun m!1275831 () Bool)

(assert (=> b!1389996 m!1275831))

(assert (=> b!1389994 m!1275815))

(assert (=> b!1389994 m!1275815))

(declare-fun m!1275833 () Bool)

(assert (=> b!1389994 m!1275833))

(declare-fun m!1275835 () Bool)

(assert (=> b!1389993 m!1275835))

(check-sat (not b!1389993) (not b!1389996) (not b!1389991) (not b!1389994) (not b!1389995) (not start!119202) (not b!1389997))
(check-sat)
