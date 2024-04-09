; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119622 () Bool)

(assert start!119622)

(declare-fun b!1392837 () Bool)

(declare-fun e!788741 () Bool)

(declare-fun e!788742 () Bool)

(assert (=> b!1392837 (= e!788741 (not e!788742))))

(declare-fun res!932356 () Bool)

(assert (=> b!1392837 (=> res!932356 e!788742)))

(declare-datatypes ((SeekEntryResult!10304 0))(
  ( (MissingZero!10304 (index!43586 (_ BitVec 32))) (Found!10304 (index!43587 (_ BitVec 32))) (Intermediate!10304 (undefined!11116 Bool) (index!43588 (_ BitVec 32)) (x!125279 (_ BitVec 32))) (Undefined!10304) (MissingVacant!10304 (index!43589 (_ BitVec 32))) )
))
(declare-fun lt!611736 () SeekEntryResult!10304)

(get-info :version)

(assert (=> b!1392837 (= res!932356 (or (not ((_ is Intermediate!10304) lt!611736)) (undefined!11116 lt!611736)))))

(declare-fun e!788744 () Bool)

(assert (=> b!1392837 e!788744))

(declare-fun res!932357 () Bool)

(assert (=> b!1392837 (=> (not res!932357) (not e!788744))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95222 0))(
  ( (array!95223 (arr!45965 (Array (_ BitVec 32) (_ BitVec 64))) (size!46516 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95222)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95222 (_ BitVec 32)) Bool)

(assert (=> b!1392837 (= res!932357 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46562 0))(
  ( (Unit!46563) )
))
(declare-fun lt!611735 () Unit!46562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46562)

(assert (=> b!1392837 (= lt!611735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95222 (_ BitVec 32)) SeekEntryResult!10304)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392837 (= lt!611736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45965 a!2901) j!112) mask!2840) (select (arr!45965 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392838 () Bool)

(declare-fun res!932358 () Bool)

(assert (=> b!1392838 (=> (not res!932358) (not e!788741))))

(assert (=> b!1392838 (= res!932358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392839 () Bool)

(declare-fun res!932361 () Bool)

(assert (=> b!1392839 (=> (not res!932361) (not e!788741))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392839 (= res!932361 (validKeyInArray!0 (select (arr!45965 a!2901) i!1037)))))

(declare-fun b!1392840 () Bool)

(declare-fun res!932360 () Bool)

(assert (=> b!1392840 (=> (not res!932360) (not e!788741))))

(assert (=> b!1392840 (= res!932360 (and (= (size!46516 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46516 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46516 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392841 () Bool)

(declare-fun res!932355 () Bool)

(assert (=> b!1392841 (=> (not res!932355) (not e!788741))))

(assert (=> b!1392841 (= res!932355 (validKeyInArray!0 (select (arr!45965 a!2901) j!112)))))

(declare-fun b!1392843 () Bool)

(assert (=> b!1392843 (= e!788742 true)))

(declare-fun lt!611737 () SeekEntryResult!10304)

(assert (=> b!1392843 (= lt!611737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45965 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45965 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95223 (store (arr!45965 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46516 a!2901)) mask!2840))))

(declare-fun b!1392844 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95222 (_ BitVec 32)) SeekEntryResult!10304)

(assert (=> b!1392844 (= e!788744 (= (seekEntryOrOpen!0 (select (arr!45965 a!2901) j!112) a!2901 mask!2840) (Found!10304 j!112)))))

(declare-fun res!932359 () Bool)

(assert (=> start!119622 (=> (not res!932359) (not e!788741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119622 (= res!932359 (validMask!0 mask!2840))))

(assert (=> start!119622 e!788741))

(assert (=> start!119622 true))

(declare-fun array_inv!34910 (array!95222) Bool)

(assert (=> start!119622 (array_inv!34910 a!2901)))

(declare-fun b!1392842 () Bool)

(declare-fun res!932354 () Bool)

(assert (=> b!1392842 (=> (not res!932354) (not e!788741))))

(declare-datatypes ((List!32664 0))(
  ( (Nil!32661) (Cons!32660 (h!33893 (_ BitVec 64)) (t!47365 List!32664)) )
))
(declare-fun arrayNoDuplicates!0 (array!95222 (_ BitVec 32) List!32664) Bool)

(assert (=> b!1392842 (= res!932354 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32661))))

(assert (= (and start!119622 res!932359) b!1392840))

(assert (= (and b!1392840 res!932360) b!1392839))

(assert (= (and b!1392839 res!932361) b!1392841))

(assert (= (and b!1392841 res!932355) b!1392838))

(assert (= (and b!1392838 res!932358) b!1392842))

(assert (= (and b!1392842 res!932354) b!1392837))

(assert (= (and b!1392837 res!932357) b!1392844))

(assert (= (and b!1392837 (not res!932356)) b!1392843))

(declare-fun m!1278591 () Bool)

(assert (=> b!1392841 m!1278591))

(assert (=> b!1392841 m!1278591))

(declare-fun m!1278593 () Bool)

(assert (=> b!1392841 m!1278593))

(assert (=> b!1392844 m!1278591))

(assert (=> b!1392844 m!1278591))

(declare-fun m!1278595 () Bool)

(assert (=> b!1392844 m!1278595))

(declare-fun m!1278597 () Bool)

(assert (=> b!1392839 m!1278597))

(assert (=> b!1392839 m!1278597))

(declare-fun m!1278599 () Bool)

(assert (=> b!1392839 m!1278599))

(declare-fun m!1278601 () Bool)

(assert (=> b!1392843 m!1278601))

(declare-fun m!1278603 () Bool)

(assert (=> b!1392843 m!1278603))

(assert (=> b!1392843 m!1278603))

(declare-fun m!1278605 () Bool)

(assert (=> b!1392843 m!1278605))

(assert (=> b!1392843 m!1278605))

(assert (=> b!1392843 m!1278603))

(declare-fun m!1278607 () Bool)

(assert (=> b!1392843 m!1278607))

(declare-fun m!1278609 () Bool)

(assert (=> start!119622 m!1278609))

(declare-fun m!1278611 () Bool)

(assert (=> start!119622 m!1278611))

(declare-fun m!1278613 () Bool)

(assert (=> b!1392838 m!1278613))

(declare-fun m!1278615 () Bool)

(assert (=> b!1392842 m!1278615))

(assert (=> b!1392837 m!1278591))

(declare-fun m!1278617 () Bool)

(assert (=> b!1392837 m!1278617))

(assert (=> b!1392837 m!1278591))

(declare-fun m!1278619 () Bool)

(assert (=> b!1392837 m!1278619))

(assert (=> b!1392837 m!1278617))

(assert (=> b!1392837 m!1278591))

(declare-fun m!1278621 () Bool)

(assert (=> b!1392837 m!1278621))

(declare-fun m!1278623 () Bool)

(assert (=> b!1392837 m!1278623))

(check-sat (not b!1392838) (not b!1392843) (not b!1392842) (not b!1392837) (not b!1392839) (not b!1392844) (not b!1392841) (not start!119622))
