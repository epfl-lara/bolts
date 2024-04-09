; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119930 () Bool)

(assert start!119930)

(declare-fun b!1395880 () Bool)

(declare-fun res!935075 () Bool)

(declare-fun e!790289 () Bool)

(assert (=> b!1395880 (=> (not res!935075) (not e!790289))))

(declare-datatypes ((array!95428 0))(
  ( (array!95429 (arr!46065 (Array (_ BitVec 32) (_ BitVec 64))) (size!46616 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95428)

(declare-datatypes ((List!32764 0))(
  ( (Nil!32761) (Cons!32760 (h!33999 (_ BitVec 64)) (t!47465 List!32764)) )
))
(declare-fun arrayNoDuplicates!0 (array!95428 (_ BitVec 32) List!32764) Bool)

(assert (=> b!1395880 (= res!935075 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32761))))

(declare-fun b!1395881 () Bool)

(declare-fun e!790288 () Bool)

(assert (=> b!1395881 (= e!790289 (not e!790288))))

(declare-fun res!935074 () Bool)

(assert (=> b!1395881 (=> res!935074 e!790288)))

(declare-datatypes ((SeekEntryResult!10404 0))(
  ( (MissingZero!10404 (index!43986 (_ BitVec 32))) (Found!10404 (index!43987 (_ BitVec 32))) (Intermediate!10404 (undefined!11216 Bool) (index!43988 (_ BitVec 32)) (x!125655 (_ BitVec 32))) (Undefined!10404) (MissingVacant!10404 (index!43989 (_ BitVec 32))) )
))
(declare-fun lt!613137 () SeekEntryResult!10404)

(assert (=> b!1395881 (= res!935074 (or (not (is-Intermediate!10404 lt!613137)) (undefined!11216 lt!613137)))))

(declare-fun e!790286 () Bool)

(assert (=> b!1395881 e!790286))

(declare-fun res!935076 () Bool)

(assert (=> b!1395881 (=> (not res!935076) (not e!790286))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95428 (_ BitVec 32)) Bool)

(assert (=> b!1395881 (= res!935076 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46762 0))(
  ( (Unit!46763) )
))
(declare-fun lt!613138 () Unit!46762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95428 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46762)

(assert (=> b!1395881 (= lt!613138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95428 (_ BitVec 32)) SeekEntryResult!10404)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395881 (= lt!613137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46065 a!2901) j!112) mask!2840) (select (arr!46065 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395882 () Bool)

(declare-fun res!935068 () Bool)

(assert (=> b!1395882 (=> (not res!935068) (not e!790289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395882 (= res!935068 (validKeyInArray!0 (select (arr!46065 a!2901) j!112)))))

(declare-fun e!790285 () Bool)

(declare-fun b!1395883 () Bool)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395883 (= e!790285 (validKeyInArray!0 (select (store (arr!46065 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1395884 () Bool)

(declare-fun res!935070 () Bool)

(assert (=> b!1395884 (=> res!935070 e!790285)))

(declare-fun lt!613136 () (_ BitVec 32))

(assert (=> b!1395884 (= res!935070 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!613136 #b00000000000000000000000000000000) (bvsge lt!613136 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(declare-fun b!1395885 () Bool)

(declare-fun res!935073 () Bool)

(assert (=> b!1395885 (=> (not res!935073) (not e!790289))))

(assert (=> b!1395885 (= res!935073 (validKeyInArray!0 (select (arr!46065 a!2901) i!1037)))))

(declare-fun b!1395886 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95428 (_ BitVec 32)) SeekEntryResult!10404)

(assert (=> b!1395886 (= e!790286 (= (seekEntryOrOpen!0 (select (arr!46065 a!2901) j!112) a!2901 mask!2840) (Found!10404 j!112)))))

(declare-fun b!1395887 () Bool)

(declare-fun res!935072 () Bool)

(assert (=> b!1395887 (=> (not res!935072) (not e!790289))))

(assert (=> b!1395887 (= res!935072 (and (= (size!46616 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46616 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46616 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!935069 () Bool)

(assert (=> start!119930 (=> (not res!935069) (not e!790289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119930 (= res!935069 (validMask!0 mask!2840))))

(assert (=> start!119930 e!790289))

(assert (=> start!119930 true))

(declare-fun array_inv!35010 (array!95428) Bool)

(assert (=> start!119930 (array_inv!35010 a!2901)))

(declare-fun b!1395888 () Bool)

(declare-fun res!935067 () Bool)

(assert (=> b!1395888 (=> (not res!935067) (not e!790289))))

(assert (=> b!1395888 (= res!935067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395889 () Bool)

(assert (=> b!1395889 (= e!790288 e!790285)))

(declare-fun res!935071 () Bool)

(assert (=> b!1395889 (=> res!935071 e!790285)))

(assert (=> b!1395889 (= res!935071 (= lt!613137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613136 (select (store (arr!46065 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95429 (store (arr!46065 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46616 a!2901)) mask!2840)))))

(assert (=> b!1395889 (= lt!613136 (toIndex!0 (select (store (arr!46065 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(assert (= (and start!119930 res!935069) b!1395887))

(assert (= (and b!1395887 res!935072) b!1395885))

(assert (= (and b!1395885 res!935073) b!1395882))

(assert (= (and b!1395882 res!935068) b!1395888))

(assert (= (and b!1395888 res!935067) b!1395880))

(assert (= (and b!1395880 res!935075) b!1395881))

(assert (= (and b!1395881 res!935076) b!1395886))

(assert (= (and b!1395881 (not res!935074)) b!1395889))

(assert (= (and b!1395889 (not res!935071)) b!1395884))

(assert (= (and b!1395884 (not res!935070)) b!1395883))

(declare-fun m!1282397 () Bool)

(assert (=> b!1395880 m!1282397))

(declare-fun m!1282399 () Bool)

(assert (=> start!119930 m!1282399))

(declare-fun m!1282401 () Bool)

(assert (=> start!119930 m!1282401))

(declare-fun m!1282403 () Bool)

(assert (=> b!1395886 m!1282403))

(assert (=> b!1395886 m!1282403))

(declare-fun m!1282405 () Bool)

(assert (=> b!1395886 m!1282405))

(assert (=> b!1395882 m!1282403))

(assert (=> b!1395882 m!1282403))

(declare-fun m!1282407 () Bool)

(assert (=> b!1395882 m!1282407))

(declare-fun m!1282409 () Bool)

(assert (=> b!1395883 m!1282409))

(declare-fun m!1282411 () Bool)

(assert (=> b!1395883 m!1282411))

(assert (=> b!1395883 m!1282411))

(declare-fun m!1282413 () Bool)

(assert (=> b!1395883 m!1282413))

(declare-fun m!1282415 () Bool)

(assert (=> b!1395885 m!1282415))

(assert (=> b!1395885 m!1282415))

(declare-fun m!1282417 () Bool)

(assert (=> b!1395885 m!1282417))

(declare-fun m!1282419 () Bool)

(assert (=> b!1395888 m!1282419))

(assert (=> b!1395889 m!1282409))

(assert (=> b!1395889 m!1282411))

(assert (=> b!1395889 m!1282411))

(declare-fun m!1282421 () Bool)

(assert (=> b!1395889 m!1282421))

(assert (=> b!1395889 m!1282411))

(declare-fun m!1282423 () Bool)

(assert (=> b!1395889 m!1282423))

(assert (=> b!1395881 m!1282403))

(declare-fun m!1282425 () Bool)

(assert (=> b!1395881 m!1282425))

(assert (=> b!1395881 m!1282403))

(declare-fun m!1282427 () Bool)

(assert (=> b!1395881 m!1282427))

(assert (=> b!1395881 m!1282425))

(assert (=> b!1395881 m!1282403))

(declare-fun m!1282429 () Bool)

(assert (=> b!1395881 m!1282429))

(declare-fun m!1282431 () Bool)

(assert (=> b!1395881 m!1282431))

(push 1)

(assert (not start!119930))

(assert (not b!1395881))

(assert (not b!1395880))

(assert (not b!1395882))

(assert (not b!1395889))

(assert (not b!1395883))

(assert (not b!1395888))

(assert (not b!1395885))

(assert (not b!1395886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

