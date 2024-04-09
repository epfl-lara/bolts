; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119178 () Bool)

(assert start!119178)

(declare-fun b!1389761 () Bool)

(declare-fun res!930031 () Bool)

(declare-fun e!787159 () Bool)

(assert (=> b!1389761 (=> (not res!930031) (not e!787159))))

(declare-datatypes ((array!95033 0))(
  ( (array!95034 (arr!45878 (Array (_ BitVec 32) (_ BitVec 64))) (size!46429 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95033)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389761 (= res!930031 (validKeyInArray!0 (select (arr!45878 a!2901) i!1037)))))

(declare-fun b!1389762 () Bool)

(declare-fun res!930035 () Bool)

(assert (=> b!1389762 (=> (not res!930035) (not e!787159))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389762 (= res!930035 (and (= (size!46429 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46429 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46429 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389763 () Bool)

(declare-fun res!930033 () Bool)

(assert (=> b!1389763 (=> (not res!930033) (not e!787159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95033 (_ BitVec 32)) Bool)

(assert (=> b!1389763 (= res!930033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389764 () Bool)

(declare-fun res!930034 () Bool)

(assert (=> b!1389764 (=> (not res!930034) (not e!787159))))

(declare-datatypes ((List!32577 0))(
  ( (Nil!32574) (Cons!32573 (h!33791 (_ BitVec 64)) (t!47278 List!32577)) )
))
(declare-fun arrayNoDuplicates!0 (array!95033 (_ BitVec 32) List!32577) Bool)

(assert (=> b!1389764 (= res!930034 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32574))))

(declare-fun b!1389765 () Bool)

(declare-fun res!930032 () Bool)

(assert (=> b!1389765 (=> (not res!930032) (not e!787159))))

(assert (=> b!1389765 (= res!930032 (validKeyInArray!0 (select (arr!45878 a!2901) j!112)))))

(declare-fun b!1389766 () Bool)

(assert (=> b!1389766 (= e!787159 (not (bvsge mask!2840 #b00000000000000000000000000000000)))))

(assert (=> b!1389766 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46388 0))(
  ( (Unit!46389) )
))
(declare-fun lt!610587 () Unit!46388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46388)

(assert (=> b!1389766 (= lt!610587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10217 0))(
  ( (MissingZero!10217 (index!43238 (_ BitVec 32))) (Found!10217 (index!43239 (_ BitVec 32))) (Intermediate!10217 (undefined!11029 Bool) (index!43240 (_ BitVec 32)) (x!124930 (_ BitVec 32))) (Undefined!10217) (MissingVacant!10217 (index!43241 (_ BitVec 32))) )
))
(declare-fun lt!610588 () SeekEntryResult!10217)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95033 (_ BitVec 32)) SeekEntryResult!10217)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389766 (= lt!610588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45878 a!2901) j!112) mask!2840) (select (arr!45878 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930036 () Bool)

(assert (=> start!119178 (=> (not res!930036) (not e!787159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119178 (= res!930036 (validMask!0 mask!2840))))

(assert (=> start!119178 e!787159))

(assert (=> start!119178 true))

(declare-fun array_inv!34823 (array!95033) Bool)

(assert (=> start!119178 (array_inv!34823 a!2901)))

(assert (= (and start!119178 res!930036) b!1389762))

(assert (= (and b!1389762 res!930035) b!1389761))

(assert (= (and b!1389761 res!930031) b!1389765))

(assert (= (and b!1389765 res!930032) b!1389763))

(assert (= (and b!1389763 res!930033) b!1389764))

(assert (= (and b!1389764 res!930034) b!1389766))

(declare-fun m!1275515 () Bool)

(assert (=> start!119178 m!1275515))

(declare-fun m!1275517 () Bool)

(assert (=> start!119178 m!1275517))

(declare-fun m!1275519 () Bool)

(assert (=> b!1389765 m!1275519))

(assert (=> b!1389765 m!1275519))

(declare-fun m!1275521 () Bool)

(assert (=> b!1389765 m!1275521))

(declare-fun m!1275523 () Bool)

(assert (=> b!1389761 m!1275523))

(assert (=> b!1389761 m!1275523))

(declare-fun m!1275525 () Bool)

(assert (=> b!1389761 m!1275525))

(declare-fun m!1275527 () Bool)

(assert (=> b!1389763 m!1275527))

(assert (=> b!1389766 m!1275519))

(declare-fun m!1275529 () Bool)

(assert (=> b!1389766 m!1275529))

(assert (=> b!1389766 m!1275519))

(declare-fun m!1275531 () Bool)

(assert (=> b!1389766 m!1275531))

(assert (=> b!1389766 m!1275529))

(assert (=> b!1389766 m!1275519))

(declare-fun m!1275533 () Bool)

(assert (=> b!1389766 m!1275533))

(declare-fun m!1275535 () Bool)

(assert (=> b!1389766 m!1275535))

(declare-fun m!1275537 () Bool)

(assert (=> b!1389764 m!1275537))

(check-sat (not b!1389764) (not b!1389766) (not b!1389763) (not b!1389761) (not b!1389765) (not start!119178))
(check-sat)
