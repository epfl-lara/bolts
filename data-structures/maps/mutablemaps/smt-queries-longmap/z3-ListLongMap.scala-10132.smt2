; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119544 () Bool)

(assert start!119544)

(declare-fun b!1392267 () Bool)

(declare-fun res!931952 () Bool)

(declare-fun e!788431 () Bool)

(assert (=> b!1392267 (=> (not res!931952) (not e!788431))))

(declare-datatypes ((array!95195 0))(
  ( (array!95196 (arr!45953 (Array (_ BitVec 32) (_ BitVec 64))) (size!46504 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95195)

(declare-datatypes ((List!32652 0))(
  ( (Nil!32649) (Cons!32648 (h!33878 (_ BitVec 64)) (t!47353 List!32652)) )
))
(declare-fun arrayNoDuplicates!0 (array!95195 (_ BitVec 32) List!32652) Bool)

(assert (=> b!1392267 (= res!931952 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32649))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788432 () Bool)

(declare-fun b!1392269 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10292 0))(
  ( (MissingZero!10292 (index!43538 (_ BitVec 32))) (Found!10292 (index!43539 (_ BitVec 32))) (Intermediate!10292 (undefined!11104 Bool) (index!43540 (_ BitVec 32)) (x!125229 (_ BitVec 32))) (Undefined!10292) (MissingVacant!10292 (index!43541 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95195 (_ BitVec 32)) SeekEntryResult!10292)

(assert (=> b!1392269 (= e!788432 (= (seekEntryOrOpen!0 (select (arr!45953 a!2901) j!112) a!2901 mask!2840) (Found!10292 j!112)))))

(declare-fun b!1392270 () Bool)

(declare-fun e!788429 () Bool)

(assert (=> b!1392270 (= e!788429 true)))

(declare-fun lt!611527 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392270 (= lt!611527 (toIndex!0 (select (store (arr!45953 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1392271 () Bool)

(declare-fun res!931951 () Bool)

(assert (=> b!1392271 (=> (not res!931951) (not e!788431))))

(assert (=> b!1392271 (= res!931951 (and (= (size!46504 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46504 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46504 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392272 () Bool)

(declare-fun res!931956 () Bool)

(assert (=> b!1392272 (=> (not res!931956) (not e!788431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95195 (_ BitVec 32)) Bool)

(assert (=> b!1392272 (= res!931956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392268 () Bool)

(declare-fun res!931950 () Bool)

(assert (=> b!1392268 (=> (not res!931950) (not e!788431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392268 (= res!931950 (validKeyInArray!0 (select (arr!45953 a!2901) j!112)))))

(declare-fun res!931954 () Bool)

(assert (=> start!119544 (=> (not res!931954) (not e!788431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119544 (= res!931954 (validMask!0 mask!2840))))

(assert (=> start!119544 e!788431))

(assert (=> start!119544 true))

(declare-fun array_inv!34898 (array!95195) Bool)

(assert (=> start!119544 (array_inv!34898 a!2901)))

(declare-fun b!1392273 () Bool)

(declare-fun res!931949 () Bool)

(assert (=> b!1392273 (=> (not res!931949) (not e!788431))))

(assert (=> b!1392273 (= res!931949 (validKeyInArray!0 (select (arr!45953 a!2901) i!1037)))))

(declare-fun b!1392274 () Bool)

(assert (=> b!1392274 (= e!788431 (not e!788429))))

(declare-fun res!931955 () Bool)

(assert (=> b!1392274 (=> res!931955 e!788429)))

(declare-fun lt!611526 () SeekEntryResult!10292)

(get-info :version)

(assert (=> b!1392274 (= res!931955 (or (not ((_ is Intermediate!10292) lt!611526)) (undefined!11104 lt!611526)))))

(assert (=> b!1392274 e!788432))

(declare-fun res!931953 () Bool)

(assert (=> b!1392274 (=> (not res!931953) (not e!788432))))

(assert (=> b!1392274 (= res!931953 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46538 0))(
  ( (Unit!46539) )
))
(declare-fun lt!611525 () Unit!46538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46538)

(assert (=> b!1392274 (= lt!611525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95195 (_ BitVec 32)) SeekEntryResult!10292)

(assert (=> b!1392274 (= lt!611526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45953 a!2901) j!112) mask!2840) (select (arr!45953 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119544 res!931954) b!1392271))

(assert (= (and b!1392271 res!931951) b!1392273))

(assert (= (and b!1392273 res!931949) b!1392268))

(assert (= (and b!1392268 res!931950) b!1392272))

(assert (= (and b!1392272 res!931956) b!1392267))

(assert (= (and b!1392267 res!931952) b!1392274))

(assert (= (and b!1392274 res!931953) b!1392269))

(assert (= (and b!1392274 (not res!931955)) b!1392270))

(declare-fun m!1278037 () Bool)

(assert (=> b!1392267 m!1278037))

(declare-fun m!1278039 () Bool)

(assert (=> b!1392273 m!1278039))

(assert (=> b!1392273 m!1278039))

(declare-fun m!1278041 () Bool)

(assert (=> b!1392273 m!1278041))

(declare-fun m!1278043 () Bool)

(assert (=> start!119544 m!1278043))

(declare-fun m!1278045 () Bool)

(assert (=> start!119544 m!1278045))

(declare-fun m!1278047 () Bool)

(assert (=> b!1392268 m!1278047))

(assert (=> b!1392268 m!1278047))

(declare-fun m!1278049 () Bool)

(assert (=> b!1392268 m!1278049))

(declare-fun m!1278051 () Bool)

(assert (=> b!1392270 m!1278051))

(declare-fun m!1278053 () Bool)

(assert (=> b!1392270 m!1278053))

(assert (=> b!1392270 m!1278053))

(declare-fun m!1278055 () Bool)

(assert (=> b!1392270 m!1278055))

(assert (=> b!1392269 m!1278047))

(assert (=> b!1392269 m!1278047))

(declare-fun m!1278057 () Bool)

(assert (=> b!1392269 m!1278057))

(assert (=> b!1392274 m!1278047))

(declare-fun m!1278059 () Bool)

(assert (=> b!1392274 m!1278059))

(assert (=> b!1392274 m!1278047))

(declare-fun m!1278061 () Bool)

(assert (=> b!1392274 m!1278061))

(assert (=> b!1392274 m!1278059))

(assert (=> b!1392274 m!1278047))

(declare-fun m!1278063 () Bool)

(assert (=> b!1392274 m!1278063))

(declare-fun m!1278065 () Bool)

(assert (=> b!1392274 m!1278065))

(declare-fun m!1278067 () Bool)

(assert (=> b!1392272 m!1278067))

(check-sat (not b!1392274) (not b!1392272) (not b!1392273) (not start!119544) (not b!1392270) (not b!1392269) (not b!1392267) (not b!1392268))
