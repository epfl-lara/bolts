; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119208 () Bool)

(assert start!119208)

(declare-fun res!930328 () Bool)

(declare-fun e!787274 () Bool)

(assert (=> start!119208 (=> (not res!930328) (not e!787274))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119208 (= res!930328 (validMask!0 mask!2840))))

(assert (=> start!119208 e!787274))

(assert (=> start!119208 true))

(declare-datatypes ((array!95063 0))(
  ( (array!95064 (arr!45893 (Array (_ BitVec 32) (_ BitVec 64))) (size!46444 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95063)

(declare-fun array_inv!34838 (array!95063) Bool)

(assert (=> start!119208 (array_inv!34838 a!2901)))

(declare-fun b!1390054 () Bool)

(declare-fun res!930330 () Bool)

(assert (=> b!1390054 (=> (not res!930330) (not e!787274))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390054 (= res!930330 (validKeyInArray!0 (select (arr!45893 a!2901) i!1037)))))

(declare-fun b!1390055 () Bool)

(declare-fun res!930325 () Bool)

(assert (=> b!1390055 (=> (not res!930325) (not e!787274))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390055 (= res!930325 (and (= (size!46444 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46444 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46444 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390056 () Bool)

(declare-fun res!930324 () Bool)

(assert (=> b!1390056 (=> (not res!930324) (not e!787274))))

(declare-datatypes ((List!32592 0))(
  ( (Nil!32589) (Cons!32588 (h!33806 (_ BitVec 64)) (t!47293 List!32592)) )
))
(declare-fun arrayNoDuplicates!0 (array!95063 (_ BitVec 32) List!32592) Bool)

(assert (=> b!1390056 (= res!930324 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32589))))

(declare-fun e!787272 () Bool)

(declare-fun b!1390057 () Bool)

(declare-datatypes ((SeekEntryResult!10232 0))(
  ( (MissingZero!10232 (index!43298 (_ BitVec 32))) (Found!10232 (index!43299 (_ BitVec 32))) (Intermediate!10232 (undefined!11044 Bool) (index!43300 (_ BitVec 32)) (x!124985 (_ BitVec 32))) (Undefined!10232) (MissingVacant!10232 (index!43301 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95063 (_ BitVec 32)) SeekEntryResult!10232)

(assert (=> b!1390057 (= e!787272 (= (seekEntryOrOpen!0 (select (arr!45893 a!2901) j!112) a!2901 mask!2840) (Found!10232 j!112)))))

(declare-fun b!1390058 () Bool)

(declare-fun res!930329 () Bool)

(assert (=> b!1390058 (=> (not res!930329) (not e!787274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95063 (_ BitVec 32)) Bool)

(assert (=> b!1390058 (= res!930329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390059 () Bool)

(declare-fun res!930326 () Bool)

(assert (=> b!1390059 (=> (not res!930326) (not e!787274))))

(assert (=> b!1390059 (= res!930326 (validKeyInArray!0 (select (arr!45893 a!2901) j!112)))))

(declare-fun b!1390060 () Bool)

(assert (=> b!1390060 (= e!787274 (not true))))

(assert (=> b!1390060 e!787272))

(declare-fun res!930327 () Bool)

(assert (=> b!1390060 (=> (not res!930327) (not e!787272))))

(assert (=> b!1390060 (= res!930327 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46418 0))(
  ( (Unit!46419) )
))
(declare-fun lt!610677 () Unit!46418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46418)

(assert (=> b!1390060 (= lt!610677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610678 () SeekEntryResult!10232)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95063 (_ BitVec 32)) SeekEntryResult!10232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390060 (= lt!610678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45893 a!2901) j!112) mask!2840) (select (arr!45893 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119208 res!930328) b!1390055))

(assert (= (and b!1390055 res!930325) b!1390054))

(assert (= (and b!1390054 res!930330) b!1390059))

(assert (= (and b!1390059 res!930326) b!1390058))

(assert (= (and b!1390058 res!930329) b!1390056))

(assert (= (and b!1390056 res!930324) b!1390060))

(assert (= (and b!1390060 res!930327) b!1390057))

(declare-fun m!1275889 () Bool)

(assert (=> b!1390054 m!1275889))

(assert (=> b!1390054 m!1275889))

(declare-fun m!1275891 () Bool)

(assert (=> b!1390054 m!1275891))

(declare-fun m!1275893 () Bool)

(assert (=> b!1390056 m!1275893))

(declare-fun m!1275895 () Bool)

(assert (=> b!1390059 m!1275895))

(assert (=> b!1390059 m!1275895))

(declare-fun m!1275897 () Bool)

(assert (=> b!1390059 m!1275897))

(assert (=> b!1390057 m!1275895))

(assert (=> b!1390057 m!1275895))

(declare-fun m!1275899 () Bool)

(assert (=> b!1390057 m!1275899))

(assert (=> b!1390060 m!1275895))

(declare-fun m!1275901 () Bool)

(assert (=> b!1390060 m!1275901))

(assert (=> b!1390060 m!1275895))

(declare-fun m!1275903 () Bool)

(assert (=> b!1390060 m!1275903))

(assert (=> b!1390060 m!1275901))

(assert (=> b!1390060 m!1275895))

(declare-fun m!1275905 () Bool)

(assert (=> b!1390060 m!1275905))

(declare-fun m!1275907 () Bool)

(assert (=> b!1390060 m!1275907))

(declare-fun m!1275909 () Bool)

(assert (=> start!119208 m!1275909))

(declare-fun m!1275911 () Bool)

(assert (=> start!119208 m!1275911))

(declare-fun m!1275913 () Bool)

(assert (=> b!1390058 m!1275913))

(check-sat (not b!1390059) (not b!1390056) (not start!119208) (not b!1390054) (not b!1390058) (not b!1390060) (not b!1390057))
