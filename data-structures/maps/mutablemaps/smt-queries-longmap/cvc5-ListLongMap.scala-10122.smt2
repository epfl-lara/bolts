; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119320 () Bool)

(assert start!119320)

(declare-fun b!1390891 () Bool)

(declare-fun res!931020 () Bool)

(declare-fun e!787678 () Bool)

(assert (=> b!1390891 (=> (not res!931020) (not e!787678))))

(declare-datatypes ((array!95124 0))(
  ( (array!95125 (arr!45922 (Array (_ BitVec 32) (_ BitVec 64))) (size!46473 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95124)

(declare-datatypes ((List!32621 0))(
  ( (Nil!32618) (Cons!32617 (h!33838 (_ BitVec 64)) (t!47322 List!32621)) )
))
(declare-fun arrayNoDuplicates!0 (array!95124 (_ BitVec 32) List!32621) Bool)

(assert (=> b!1390891 (= res!931020 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32618))))

(declare-fun res!931016 () Bool)

(assert (=> start!119320 (=> (not res!931016) (not e!787678))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119320 (= res!931016 (validMask!0 mask!2840))))

(assert (=> start!119320 e!787678))

(assert (=> start!119320 true))

(declare-fun array_inv!34867 (array!95124) Bool)

(assert (=> start!119320 (array_inv!34867 a!2901)))

(declare-fun e!787677 () Bool)

(declare-fun b!1390892 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10261 0))(
  ( (MissingZero!10261 (index!43414 (_ BitVec 32))) (Found!10261 (index!43415 (_ BitVec 32))) (Intermediate!10261 (undefined!11073 Bool) (index!43416 (_ BitVec 32)) (x!125100 (_ BitVec 32))) (Undefined!10261) (MissingVacant!10261 (index!43417 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95124 (_ BitVec 32)) SeekEntryResult!10261)

(assert (=> b!1390892 (= e!787677 (= (seekEntryOrOpen!0 (select (arr!45922 a!2901) j!112) a!2901 mask!2840) (Found!10261 j!112)))))

(declare-fun b!1390893 () Bool)

(assert (=> b!1390893 (= e!787678 (not true))))

(assert (=> b!1390893 e!787677))

(declare-fun res!931017 () Bool)

(assert (=> b!1390893 (=> (not res!931017) (not e!787677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95124 (_ BitVec 32)) Bool)

(assert (=> b!1390893 (= res!931017 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46476 0))(
  ( (Unit!46477) )
))
(declare-fun lt!610959 () Unit!46476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46476)

(assert (=> b!1390893 (= lt!610959 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610960 () SeekEntryResult!10261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95124 (_ BitVec 32)) SeekEntryResult!10261)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390893 (= lt!610960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45922 a!2901) j!112) mask!2840) (select (arr!45922 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390894 () Bool)

(declare-fun res!931015 () Bool)

(assert (=> b!1390894 (=> (not res!931015) (not e!787678))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390894 (= res!931015 (validKeyInArray!0 (select (arr!45922 a!2901) i!1037)))))

(declare-fun b!1390895 () Bool)

(declare-fun res!931018 () Bool)

(assert (=> b!1390895 (=> (not res!931018) (not e!787678))))

(assert (=> b!1390895 (= res!931018 (validKeyInArray!0 (select (arr!45922 a!2901) j!112)))))

(declare-fun b!1390896 () Bool)

(declare-fun res!931014 () Bool)

(assert (=> b!1390896 (=> (not res!931014) (not e!787678))))

(assert (=> b!1390896 (= res!931014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390897 () Bool)

(declare-fun res!931019 () Bool)

(assert (=> b!1390897 (=> (not res!931019) (not e!787678))))

(assert (=> b!1390897 (= res!931019 (and (= (size!46473 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46473 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46473 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119320 res!931016) b!1390897))

(assert (= (and b!1390897 res!931019) b!1390894))

(assert (= (and b!1390894 res!931015) b!1390895))

(assert (= (and b!1390895 res!931018) b!1390896))

(assert (= (and b!1390896 res!931014) b!1390891))

(assert (= (and b!1390891 res!931020) b!1390893))

(assert (= (and b!1390893 res!931017) b!1390892))

(declare-fun m!1276769 () Bool)

(assert (=> b!1390892 m!1276769))

(assert (=> b!1390892 m!1276769))

(declare-fun m!1276771 () Bool)

(assert (=> b!1390892 m!1276771))

(declare-fun m!1276773 () Bool)

(assert (=> b!1390894 m!1276773))

(assert (=> b!1390894 m!1276773))

(declare-fun m!1276775 () Bool)

(assert (=> b!1390894 m!1276775))

(declare-fun m!1276777 () Bool)

(assert (=> b!1390891 m!1276777))

(declare-fun m!1276779 () Bool)

(assert (=> b!1390896 m!1276779))

(assert (=> b!1390895 m!1276769))

(assert (=> b!1390895 m!1276769))

(declare-fun m!1276781 () Bool)

(assert (=> b!1390895 m!1276781))

(assert (=> b!1390893 m!1276769))

(declare-fun m!1276783 () Bool)

(assert (=> b!1390893 m!1276783))

(assert (=> b!1390893 m!1276769))

(declare-fun m!1276785 () Bool)

(assert (=> b!1390893 m!1276785))

(assert (=> b!1390893 m!1276783))

(assert (=> b!1390893 m!1276769))

(declare-fun m!1276787 () Bool)

(assert (=> b!1390893 m!1276787))

(declare-fun m!1276789 () Bool)

(assert (=> b!1390893 m!1276789))

(declare-fun m!1276791 () Bool)

(assert (=> start!119320 m!1276791))

(declare-fun m!1276793 () Bool)

(assert (=> start!119320 m!1276793))

(push 1)

(assert (not b!1390893))

(assert (not b!1390894))

(assert (not start!119320))

(assert (not b!1390896))

(assert (not b!1390895))

(assert (not b!1390891))

(assert (not b!1390892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

