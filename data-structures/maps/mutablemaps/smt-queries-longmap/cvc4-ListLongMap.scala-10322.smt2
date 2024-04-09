; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121460 () Bool)

(assert start!121460)

(declare-fun b!1410621 () Bool)

(declare-fun res!947959 () Bool)

(declare-fun e!798305 () Bool)

(assert (=> b!1410621 (=> (not res!947959) (not e!798305))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96379 0))(
  ( (array!96380 (arr!46524 (Array (_ BitVec 32) (_ BitVec 64))) (size!47075 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96379)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410621 (= res!947959 (and (= (size!47075 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47075 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47075 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410622 () Bool)

(declare-fun e!798308 () Bool)

(assert (=> b!1410622 (= e!798305 (not e!798308))))

(declare-fun res!947960 () Bool)

(assert (=> b!1410622 (=> res!947960 e!798308)))

(declare-datatypes ((SeekEntryResult!10857 0))(
  ( (MissingZero!10857 (index!45804 (_ BitVec 32))) (Found!10857 (index!45805 (_ BitVec 32))) (Intermediate!10857 (undefined!11669 Bool) (index!45806 (_ BitVec 32)) (x!127407 (_ BitVec 32))) (Undefined!10857) (MissingVacant!10857 (index!45807 (_ BitVec 32))) )
))
(declare-fun lt!621238 () SeekEntryResult!10857)

(assert (=> b!1410622 (= res!947960 (or (not (is-Intermediate!10857 lt!621238)) (undefined!11669 lt!621238)))))

(declare-fun e!798307 () Bool)

(assert (=> b!1410622 e!798307))

(declare-fun res!947958 () Bool)

(assert (=> b!1410622 (=> (not res!947958) (not e!798307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96379 (_ BitVec 32)) Bool)

(assert (=> b!1410622 (= res!947958 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47638 0))(
  ( (Unit!47639) )
))
(declare-fun lt!621236 () Unit!47638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47638)

(assert (=> b!1410622 (= lt!621236 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621237 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96379 (_ BitVec 32)) SeekEntryResult!10857)

(assert (=> b!1410622 (= lt!621238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621237 (select (arr!46524 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410622 (= lt!621237 (toIndex!0 (select (arr!46524 a!2901) j!112) mask!2840))))

(declare-fun b!1410623 () Bool)

(declare-fun lt!621235 () SeekEntryResult!10857)

(assert (=> b!1410623 (= e!798308 (or (= lt!621238 lt!621235) (not (is-Intermediate!10857 lt!621235)) (bvslt (x!127407 lt!621238) #b00000000000000000000000000000000) (bvsgt (x!127407 lt!621238) #b01111111111111111111111111111110) (bvslt lt!621237 #b00000000000000000000000000000000) (bvsge lt!621237 (size!47075 a!2901)) (bvslt (index!45806 lt!621238) #b00000000000000000000000000000000) (bvsge (index!45806 lt!621238) (size!47075 a!2901)) (= lt!621238 (Intermediate!10857 false (index!45806 lt!621238) (x!127407 lt!621238)))))))

(assert (=> b!1410623 (= lt!621235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46524 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46524 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96380 (store (arr!46524 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47075 a!2901)) mask!2840))))

(declare-fun b!1410624 () Bool)

(declare-fun res!947963 () Bool)

(assert (=> b!1410624 (=> (not res!947963) (not e!798305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410624 (= res!947963 (validKeyInArray!0 (select (arr!46524 a!2901) i!1037)))))

(declare-fun res!947961 () Bool)

(assert (=> start!121460 (=> (not res!947961) (not e!798305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121460 (= res!947961 (validMask!0 mask!2840))))

(assert (=> start!121460 e!798305))

(assert (=> start!121460 true))

(declare-fun array_inv!35469 (array!96379) Bool)

(assert (=> start!121460 (array_inv!35469 a!2901)))

(declare-fun b!1410625 () Bool)

(declare-fun res!947957 () Bool)

(assert (=> b!1410625 (=> (not res!947957) (not e!798305))))

(assert (=> b!1410625 (= res!947957 (validKeyInArray!0 (select (arr!46524 a!2901) j!112)))))

(declare-fun b!1410626 () Bool)

(declare-fun res!947962 () Bool)

(assert (=> b!1410626 (=> (not res!947962) (not e!798305))))

(declare-datatypes ((List!33223 0))(
  ( (Nil!33220) (Cons!33219 (h!34491 (_ BitVec 64)) (t!47924 List!33223)) )
))
(declare-fun arrayNoDuplicates!0 (array!96379 (_ BitVec 32) List!33223) Bool)

(assert (=> b!1410626 (= res!947962 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33220))))

(declare-fun b!1410627 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96379 (_ BitVec 32)) SeekEntryResult!10857)

(assert (=> b!1410627 (= e!798307 (= (seekEntryOrOpen!0 (select (arr!46524 a!2901) j!112) a!2901 mask!2840) (Found!10857 j!112)))))

(declare-fun b!1410628 () Bool)

(declare-fun res!947964 () Bool)

(assert (=> b!1410628 (=> (not res!947964) (not e!798305))))

(assert (=> b!1410628 (= res!947964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121460 res!947961) b!1410621))

(assert (= (and b!1410621 res!947959) b!1410624))

(assert (= (and b!1410624 res!947963) b!1410625))

(assert (= (and b!1410625 res!947957) b!1410628))

(assert (= (and b!1410628 res!947964) b!1410626))

(assert (= (and b!1410626 res!947962) b!1410622))

(assert (= (and b!1410622 res!947958) b!1410627))

(assert (= (and b!1410622 (not res!947960)) b!1410623))

(declare-fun m!1300303 () Bool)

(assert (=> b!1410624 m!1300303))

(assert (=> b!1410624 m!1300303))

(declare-fun m!1300305 () Bool)

(assert (=> b!1410624 m!1300305))

(declare-fun m!1300307 () Bool)

(assert (=> b!1410623 m!1300307))

(declare-fun m!1300309 () Bool)

(assert (=> b!1410623 m!1300309))

(assert (=> b!1410623 m!1300309))

(declare-fun m!1300311 () Bool)

(assert (=> b!1410623 m!1300311))

(assert (=> b!1410623 m!1300311))

(assert (=> b!1410623 m!1300309))

(declare-fun m!1300313 () Bool)

(assert (=> b!1410623 m!1300313))

(declare-fun m!1300315 () Bool)

(assert (=> start!121460 m!1300315))

(declare-fun m!1300317 () Bool)

(assert (=> start!121460 m!1300317))

(declare-fun m!1300319 () Bool)

(assert (=> b!1410625 m!1300319))

(assert (=> b!1410625 m!1300319))

(declare-fun m!1300321 () Bool)

(assert (=> b!1410625 m!1300321))

(declare-fun m!1300323 () Bool)

(assert (=> b!1410626 m!1300323))

(assert (=> b!1410627 m!1300319))

(assert (=> b!1410627 m!1300319))

(declare-fun m!1300325 () Bool)

(assert (=> b!1410627 m!1300325))

(assert (=> b!1410622 m!1300319))

(declare-fun m!1300327 () Bool)

(assert (=> b!1410622 m!1300327))

(assert (=> b!1410622 m!1300319))

(declare-fun m!1300329 () Bool)

(assert (=> b!1410622 m!1300329))

(assert (=> b!1410622 m!1300319))

(declare-fun m!1300331 () Bool)

(assert (=> b!1410622 m!1300331))

(declare-fun m!1300333 () Bool)

(assert (=> b!1410622 m!1300333))

(declare-fun m!1300335 () Bool)

(assert (=> b!1410628 m!1300335))

(push 1)

(assert (not b!1410628))

