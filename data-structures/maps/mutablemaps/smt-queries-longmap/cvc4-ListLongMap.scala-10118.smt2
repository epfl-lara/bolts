; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119246 () Bool)

(assert start!119246)

(declare-fun b!1390453 () Bool)

(declare-fun res!930724 () Bool)

(declare-fun e!787443 () Bool)

(assert (=> b!1390453 (=> (not res!930724) (not e!787443))))

(declare-datatypes ((array!95101 0))(
  ( (array!95102 (arr!45912 (Array (_ BitVec 32) (_ BitVec 64))) (size!46463 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95101)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95101 (_ BitVec 32)) Bool)

(assert (=> b!1390453 (= res!930724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390454 () Bool)

(declare-fun res!930723 () Bool)

(assert (=> b!1390454 (=> (not res!930723) (not e!787443))))

(declare-datatypes ((List!32611 0))(
  ( (Nil!32608) (Cons!32607 (h!33825 (_ BitVec 64)) (t!47312 List!32611)) )
))
(declare-fun arrayNoDuplicates!0 (array!95101 (_ BitVec 32) List!32611) Bool)

(assert (=> b!1390454 (= res!930723 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32608))))

(declare-fun b!1390455 () Bool)

(declare-fun res!930727 () Bool)

(assert (=> b!1390455 (=> (not res!930727) (not e!787443))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390455 (= res!930727 (validKeyInArray!0 (select (arr!45912 a!2901) i!1037)))))

(declare-fun b!1390456 () Bool)

(declare-fun res!930725 () Bool)

(assert (=> b!1390456 (=> (not res!930725) (not e!787443))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390456 (= res!930725 (and (= (size!46463 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46463 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46463 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!930728 () Bool)

(assert (=> start!119246 (=> (not res!930728) (not e!787443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119246 (= res!930728 (validMask!0 mask!2840))))

(assert (=> start!119246 e!787443))

(assert (=> start!119246 true))

(declare-fun array_inv!34857 (array!95101) Bool)

(assert (=> start!119246 (array_inv!34857 a!2901)))

(declare-fun b!1390457 () Bool)

(declare-fun e!787444 () Bool)

(declare-datatypes ((SeekEntryResult!10251 0))(
  ( (MissingZero!10251 (index!43374 (_ BitVec 32))) (Found!10251 (index!43375 (_ BitVec 32))) (Intermediate!10251 (undefined!11063 Bool) (index!43376 (_ BitVec 32)) (x!125052 (_ BitVec 32))) (Undefined!10251) (MissingVacant!10251 (index!43377 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95101 (_ BitVec 32)) SeekEntryResult!10251)

(assert (=> b!1390457 (= e!787444 (= (seekEntryOrOpen!0 (select (arr!45912 a!2901) j!112) a!2901 mask!2840) (Found!10251 j!112)))))

(declare-fun b!1390458 () Bool)

(declare-fun res!930726 () Bool)

(assert (=> b!1390458 (=> (not res!930726) (not e!787443))))

(assert (=> b!1390458 (= res!930726 (validKeyInArray!0 (select (arr!45912 a!2901) j!112)))))

(declare-fun b!1390459 () Bool)

(declare-fun lt!610791 () SeekEntryResult!10251)

(assert (=> b!1390459 (= e!787443 (not (or (not (is-Intermediate!10251 lt!610791)) (undefined!11063 lt!610791) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(assert (=> b!1390459 e!787444))

(declare-fun res!930729 () Bool)

(assert (=> b!1390459 (=> (not res!930729) (not e!787444))))

(assert (=> b!1390459 (= res!930729 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46456 0))(
  ( (Unit!46457) )
))
(declare-fun lt!610792 () Unit!46456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46456)

(assert (=> b!1390459 (= lt!610792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95101 (_ BitVec 32)) SeekEntryResult!10251)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390459 (= lt!610791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45912 a!2901) j!112) mask!2840) (select (arr!45912 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119246 res!930728) b!1390456))

(assert (= (and b!1390456 res!930725) b!1390455))

(assert (= (and b!1390455 res!930727) b!1390458))

(assert (= (and b!1390458 res!930726) b!1390453))

(assert (= (and b!1390453 res!930724) b!1390454))

(assert (= (and b!1390454 res!930723) b!1390459))

(assert (= (and b!1390459 res!930729) b!1390457))

(declare-fun m!1276383 () Bool)

(assert (=> b!1390459 m!1276383))

(declare-fun m!1276385 () Bool)

(assert (=> b!1390459 m!1276385))

(assert (=> b!1390459 m!1276383))

(declare-fun m!1276387 () Bool)

(assert (=> b!1390459 m!1276387))

(assert (=> b!1390459 m!1276385))

(assert (=> b!1390459 m!1276383))

(declare-fun m!1276389 () Bool)

(assert (=> b!1390459 m!1276389))

(declare-fun m!1276391 () Bool)

(assert (=> b!1390459 m!1276391))

(assert (=> b!1390458 m!1276383))

(assert (=> b!1390458 m!1276383))

(declare-fun m!1276393 () Bool)

(assert (=> b!1390458 m!1276393))

(declare-fun m!1276395 () Bool)

(assert (=> b!1390453 m!1276395))

(declare-fun m!1276397 () Bool)

(assert (=> start!119246 m!1276397))

(declare-fun m!1276399 () Bool)

(assert (=> start!119246 m!1276399))

(declare-fun m!1276401 () Bool)

(assert (=> b!1390454 m!1276401))

(declare-fun m!1276403 () Bool)

(assert (=> b!1390455 m!1276403))

(assert (=> b!1390455 m!1276403))

(declare-fun m!1276405 () Bool)

(assert (=> b!1390455 m!1276405))

(assert (=> b!1390457 m!1276383))

(assert (=> b!1390457 m!1276383))

(declare-fun m!1276407 () Bool)

(assert (=> b!1390457 m!1276407))

(push 1)

(assert (not b!1390457))

(assert (not b!1390453))

(assert (not b!1390455))

(assert (not b!1390454))

(assert (not b!1390459))

