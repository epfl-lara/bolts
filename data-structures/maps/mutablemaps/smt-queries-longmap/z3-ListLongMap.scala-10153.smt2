; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119724 () Bool)

(assert start!119724)

(declare-fun res!933584 () Bool)

(declare-fun e!789356 () Bool)

(assert (=> start!119724 (=> (not res!933584) (not e!789356))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119724 (= res!933584 (validMask!0 mask!2840))))

(assert (=> start!119724 e!789356))

(assert (=> start!119724 true))

(declare-datatypes ((array!95324 0))(
  ( (array!95325 (arr!46016 (Array (_ BitVec 32) (_ BitVec 64))) (size!46567 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95324)

(declare-fun array_inv!34961 (array!95324) Bool)

(assert (=> start!119724 (array_inv!34961 a!2901)))

(declare-fun b!1394061 () Bool)

(declare-fun e!789354 () Bool)

(assert (=> b!1394061 (= e!789356 (not e!789354))))

(declare-fun res!933583 () Bool)

(assert (=> b!1394061 (=> res!933583 e!789354)))

(declare-datatypes ((SeekEntryResult!10355 0))(
  ( (MissingZero!10355 (index!43790 (_ BitVec 32))) (Found!10355 (index!43791 (_ BitVec 32))) (Intermediate!10355 (undefined!11167 Bool) (index!43792 (_ BitVec 32)) (x!125466 (_ BitVec 32))) (Undefined!10355) (MissingVacant!10355 (index!43793 (_ BitVec 32))) )
))
(declare-fun lt!612196 () SeekEntryResult!10355)

(get-info :version)

(assert (=> b!1394061 (= res!933583 (or (not ((_ is Intermediate!10355) lt!612196)) (undefined!11167 lt!612196)))))

(declare-fun e!789355 () Bool)

(assert (=> b!1394061 e!789355))

(declare-fun res!933580 () Bool)

(assert (=> b!1394061 (=> (not res!933580) (not e!789355))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95324 (_ BitVec 32)) Bool)

(assert (=> b!1394061 (= res!933580 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46664 0))(
  ( (Unit!46665) )
))
(declare-fun lt!612194 () Unit!46664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46664)

(assert (=> b!1394061 (= lt!612194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95324 (_ BitVec 32)) SeekEntryResult!10355)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394061 (= lt!612196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46016 a!2901) j!112) mask!2840) (select (arr!46016 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394062 () Bool)

(assert (=> b!1394062 (= e!789354 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612195 () SeekEntryResult!10355)

(assert (=> b!1394062 (= lt!612195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46016 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46016 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95325 (store (arr!46016 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46567 a!2901)) mask!2840))))

(declare-fun b!1394063 () Bool)

(declare-fun res!933579 () Bool)

(assert (=> b!1394063 (=> (not res!933579) (not e!789356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394063 (= res!933579 (validKeyInArray!0 (select (arr!46016 a!2901) j!112)))))

(declare-fun b!1394064 () Bool)

(declare-fun res!933582 () Bool)

(assert (=> b!1394064 (=> (not res!933582) (not e!789356))))

(assert (=> b!1394064 (= res!933582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394065 () Bool)

(declare-fun res!933578 () Bool)

(assert (=> b!1394065 (=> (not res!933578) (not e!789356))))

(declare-datatypes ((List!32715 0))(
  ( (Nil!32712) (Cons!32711 (h!33944 (_ BitVec 64)) (t!47416 List!32715)) )
))
(declare-fun arrayNoDuplicates!0 (array!95324 (_ BitVec 32) List!32715) Bool)

(assert (=> b!1394065 (= res!933578 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32712))))

(declare-fun b!1394066 () Bool)

(declare-fun res!933585 () Bool)

(assert (=> b!1394066 (=> (not res!933585) (not e!789356))))

(assert (=> b!1394066 (= res!933585 (and (= (size!46567 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46567 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46567 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394067 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95324 (_ BitVec 32)) SeekEntryResult!10355)

(assert (=> b!1394067 (= e!789355 (= (seekEntryOrOpen!0 (select (arr!46016 a!2901) j!112) a!2901 mask!2840) (Found!10355 j!112)))))

(declare-fun b!1394068 () Bool)

(declare-fun res!933581 () Bool)

(assert (=> b!1394068 (=> (not res!933581) (not e!789356))))

(assert (=> b!1394068 (= res!933581 (validKeyInArray!0 (select (arr!46016 a!2901) i!1037)))))

(assert (= (and start!119724 res!933584) b!1394066))

(assert (= (and b!1394066 res!933585) b!1394068))

(assert (= (and b!1394068 res!933581) b!1394063))

(assert (= (and b!1394063 res!933579) b!1394064))

(assert (= (and b!1394064 res!933582) b!1394065))

(assert (= (and b!1394065 res!933578) b!1394061))

(assert (= (and b!1394061 res!933580) b!1394067))

(assert (= (and b!1394061 (not res!933583)) b!1394062))

(declare-fun m!1280325 () Bool)

(assert (=> b!1394068 m!1280325))

(assert (=> b!1394068 m!1280325))

(declare-fun m!1280327 () Bool)

(assert (=> b!1394068 m!1280327))

(declare-fun m!1280329 () Bool)

(assert (=> start!119724 m!1280329))

(declare-fun m!1280331 () Bool)

(assert (=> start!119724 m!1280331))

(declare-fun m!1280333 () Bool)

(assert (=> b!1394063 m!1280333))

(assert (=> b!1394063 m!1280333))

(declare-fun m!1280335 () Bool)

(assert (=> b!1394063 m!1280335))

(declare-fun m!1280337 () Bool)

(assert (=> b!1394065 m!1280337))

(assert (=> b!1394067 m!1280333))

(assert (=> b!1394067 m!1280333))

(declare-fun m!1280339 () Bool)

(assert (=> b!1394067 m!1280339))

(declare-fun m!1280341 () Bool)

(assert (=> b!1394064 m!1280341))

(declare-fun m!1280343 () Bool)

(assert (=> b!1394062 m!1280343))

(declare-fun m!1280345 () Bool)

(assert (=> b!1394062 m!1280345))

(assert (=> b!1394062 m!1280345))

(declare-fun m!1280347 () Bool)

(assert (=> b!1394062 m!1280347))

(assert (=> b!1394062 m!1280347))

(assert (=> b!1394062 m!1280345))

(declare-fun m!1280349 () Bool)

(assert (=> b!1394062 m!1280349))

(assert (=> b!1394061 m!1280333))

(declare-fun m!1280351 () Bool)

(assert (=> b!1394061 m!1280351))

(assert (=> b!1394061 m!1280333))

(declare-fun m!1280353 () Bool)

(assert (=> b!1394061 m!1280353))

(assert (=> b!1394061 m!1280351))

(assert (=> b!1394061 m!1280333))

(declare-fun m!1280355 () Bool)

(assert (=> b!1394061 m!1280355))

(declare-fun m!1280357 () Bool)

(assert (=> b!1394061 m!1280357))

(check-sat (not b!1394065) (not b!1394063) (not b!1394068) (not b!1394062) (not b!1394064) (not b!1394067) (not start!119724) (not b!1394061))
