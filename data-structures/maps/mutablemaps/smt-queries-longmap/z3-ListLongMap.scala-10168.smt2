; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119922 () Bool)

(assert start!119922)

(declare-fun b!1395769 () Bool)

(declare-fun res!934956 () Bool)

(declare-fun e!790230 () Bool)

(assert (=> b!1395769 (=> (not res!934956) (not e!790230))))

(declare-datatypes ((array!95420 0))(
  ( (array!95421 (arr!46061 (Array (_ BitVec 32) (_ BitVec 64))) (size!46612 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95420)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395769 (= res!934956 (validKeyInArray!0 (select (arr!46061 a!2901) i!1037)))))

(declare-fun b!1395770 () Bool)

(declare-fun res!934961 () Bool)

(assert (=> b!1395770 (=> (not res!934961) (not e!790230))))

(declare-datatypes ((List!32760 0))(
  ( (Nil!32757) (Cons!32756 (h!33995 (_ BitVec 64)) (t!47461 List!32760)) )
))
(declare-fun arrayNoDuplicates!0 (array!95420 (_ BitVec 32) List!32760) Bool)

(assert (=> b!1395770 (= res!934961 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32757))))

(declare-fun b!1395771 () Bool)

(declare-fun res!934958 () Bool)

(assert (=> b!1395771 (=> (not res!934958) (not e!790230))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95420 (_ BitVec 32)) Bool)

(assert (=> b!1395771 (= res!934958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395772 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!790229 () Bool)

(declare-datatypes ((SeekEntryResult!10400 0))(
  ( (MissingZero!10400 (index!43970 (_ BitVec 32))) (Found!10400 (index!43971 (_ BitVec 32))) (Intermediate!10400 (undefined!11212 Bool) (index!43972 (_ BitVec 32)) (x!125643 (_ BitVec 32))) (Undefined!10400) (MissingVacant!10400 (index!43973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95420 (_ BitVec 32)) SeekEntryResult!10400)

(assert (=> b!1395772 (= e!790229 (= (seekEntryOrOpen!0 (select (arr!46061 a!2901) j!112) a!2901 mask!2840) (Found!10400 j!112)))))

(declare-fun b!1395773 () Bool)

(declare-fun e!790231 () Bool)

(assert (=> b!1395773 (= e!790230 (not e!790231))))

(declare-fun res!934962 () Bool)

(assert (=> b!1395773 (=> res!934962 e!790231)))

(declare-fun lt!613100 () SeekEntryResult!10400)

(get-info :version)

(assert (=> b!1395773 (= res!934962 (or (not ((_ is Intermediate!10400) lt!613100)) (undefined!11212 lt!613100)))))

(assert (=> b!1395773 e!790229))

(declare-fun res!934960 () Bool)

(assert (=> b!1395773 (=> (not res!934960) (not e!790229))))

(assert (=> b!1395773 (= res!934960 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46754 0))(
  ( (Unit!46755) )
))
(declare-fun lt!613101 () Unit!46754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46754)

(assert (=> b!1395773 (= lt!613101 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95420 (_ BitVec 32)) SeekEntryResult!10400)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395773 (= lt!613100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46061 a!2901) j!112) mask!2840) (select (arr!46061 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!934959 () Bool)

(assert (=> start!119922 (=> (not res!934959) (not e!790230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119922 (= res!934959 (validMask!0 mask!2840))))

(assert (=> start!119922 e!790230))

(assert (=> start!119922 true))

(declare-fun array_inv!35006 (array!95420) Bool)

(assert (=> start!119922 (array_inv!35006 a!2901)))

(declare-fun b!1395768 () Bool)

(declare-fun res!934957 () Bool)

(assert (=> b!1395768 (=> (not res!934957) (not e!790230))))

(assert (=> b!1395768 (= res!934957 (validKeyInArray!0 (select (arr!46061 a!2901) j!112)))))

(declare-fun b!1395774 () Bool)

(declare-fun res!934955 () Bool)

(assert (=> b!1395774 (=> (not res!934955) (not e!790230))))

(assert (=> b!1395774 (= res!934955 (and (= (size!46612 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46612 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46612 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395775 () Bool)

(assert (=> b!1395775 (= e!790231 true)))

(declare-fun lt!613102 () SeekEntryResult!10400)

(assert (=> b!1395775 (= lt!613102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46061 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46061 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95421 (store (arr!46061 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46612 a!2901)) mask!2840))))

(assert (= (and start!119922 res!934959) b!1395774))

(assert (= (and b!1395774 res!934955) b!1395769))

(assert (= (and b!1395769 res!934956) b!1395768))

(assert (= (and b!1395768 res!934957) b!1395771))

(assert (= (and b!1395771 res!934958) b!1395770))

(assert (= (and b!1395770 res!934961) b!1395773))

(assert (= (and b!1395773 res!934960) b!1395772))

(assert (= (and b!1395773 (not res!934962)) b!1395775))

(declare-fun m!1282257 () Bool)

(assert (=> b!1395773 m!1282257))

(declare-fun m!1282259 () Bool)

(assert (=> b!1395773 m!1282259))

(assert (=> b!1395773 m!1282257))

(declare-fun m!1282261 () Bool)

(assert (=> b!1395773 m!1282261))

(assert (=> b!1395773 m!1282259))

(assert (=> b!1395773 m!1282257))

(declare-fun m!1282263 () Bool)

(assert (=> b!1395773 m!1282263))

(declare-fun m!1282265 () Bool)

(assert (=> b!1395773 m!1282265))

(declare-fun m!1282267 () Bool)

(assert (=> b!1395771 m!1282267))

(declare-fun m!1282269 () Bool)

(assert (=> start!119922 m!1282269))

(declare-fun m!1282271 () Bool)

(assert (=> start!119922 m!1282271))

(declare-fun m!1282273 () Bool)

(assert (=> b!1395775 m!1282273))

(declare-fun m!1282275 () Bool)

(assert (=> b!1395775 m!1282275))

(assert (=> b!1395775 m!1282275))

(declare-fun m!1282277 () Bool)

(assert (=> b!1395775 m!1282277))

(assert (=> b!1395775 m!1282277))

(assert (=> b!1395775 m!1282275))

(declare-fun m!1282279 () Bool)

(assert (=> b!1395775 m!1282279))

(assert (=> b!1395768 m!1282257))

(assert (=> b!1395768 m!1282257))

(declare-fun m!1282281 () Bool)

(assert (=> b!1395768 m!1282281))

(declare-fun m!1282283 () Bool)

(assert (=> b!1395770 m!1282283))

(declare-fun m!1282285 () Bool)

(assert (=> b!1395769 m!1282285))

(assert (=> b!1395769 m!1282285))

(declare-fun m!1282287 () Bool)

(assert (=> b!1395769 m!1282287))

(assert (=> b!1395772 m!1282257))

(assert (=> b!1395772 m!1282257))

(declare-fun m!1282289 () Bool)

(assert (=> b!1395772 m!1282289))

(check-sat (not b!1395768) (not b!1395773) (not b!1395769) (not b!1395771) (not start!119922) (not b!1395770) (not b!1395775) (not b!1395772))
