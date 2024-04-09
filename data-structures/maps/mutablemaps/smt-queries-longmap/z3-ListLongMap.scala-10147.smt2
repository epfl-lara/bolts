; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119688 () Bool)

(assert start!119688)

(declare-fun res!933151 () Bool)

(declare-fun e!789138 () Bool)

(assert (=> start!119688 (=> (not res!933151) (not e!789138))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119688 (= res!933151 (validMask!0 mask!2840))))

(assert (=> start!119688 e!789138))

(assert (=> start!119688 true))

(declare-datatypes ((array!95288 0))(
  ( (array!95289 (arr!45998 (Array (_ BitVec 32) (_ BitVec 64))) (size!46549 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95288)

(declare-fun array_inv!34943 (array!95288) Bool)

(assert (=> start!119688 (array_inv!34943 a!2901)))

(declare-fun b!1393629 () Bool)

(declare-fun e!789137 () Bool)

(assert (=> b!1393629 (= e!789138 (not e!789137))))

(declare-fun res!933153 () Bool)

(assert (=> b!1393629 (=> res!933153 e!789137)))

(declare-datatypes ((SeekEntryResult!10337 0))(
  ( (MissingZero!10337 (index!43718 (_ BitVec 32))) (Found!10337 (index!43719 (_ BitVec 32))) (Intermediate!10337 (undefined!11149 Bool) (index!43720 (_ BitVec 32)) (x!125400 (_ BitVec 32))) (Undefined!10337) (MissingVacant!10337 (index!43721 (_ BitVec 32))) )
))
(declare-fun lt!612033 () SeekEntryResult!10337)

(get-info :version)

(assert (=> b!1393629 (= res!933153 (or (not ((_ is Intermediate!10337) lt!612033)) (undefined!11149 lt!612033)))))

(declare-fun e!789140 () Bool)

(assert (=> b!1393629 e!789140))

(declare-fun res!933149 () Bool)

(assert (=> b!1393629 (=> (not res!933149) (not e!789140))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95288 (_ BitVec 32)) Bool)

(assert (=> b!1393629 (= res!933149 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46628 0))(
  ( (Unit!46629) )
))
(declare-fun lt!612032 () Unit!46628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46628)

(assert (=> b!1393629 (= lt!612032 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95288 (_ BitVec 32)) SeekEntryResult!10337)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393629 (= lt!612033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45998 a!2901) j!112) mask!2840) (select (arr!45998 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393630 () Bool)

(declare-fun res!933152 () Bool)

(assert (=> b!1393630 (=> (not res!933152) (not e!789138))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393630 (= res!933152 (validKeyInArray!0 (select (arr!45998 a!2901) i!1037)))))

(declare-fun b!1393631 () Bool)

(declare-fun res!933150 () Bool)

(assert (=> b!1393631 (=> (not res!933150) (not e!789138))))

(declare-datatypes ((List!32697 0))(
  ( (Nil!32694) (Cons!32693 (h!33926 (_ BitVec 64)) (t!47398 List!32697)) )
))
(declare-fun arrayNoDuplicates!0 (array!95288 (_ BitVec 32) List!32697) Bool)

(assert (=> b!1393631 (= res!933150 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32694))))

(declare-fun b!1393632 () Bool)

(declare-fun res!933146 () Bool)

(assert (=> b!1393632 (=> (not res!933146) (not e!789138))))

(assert (=> b!1393632 (= res!933146 (validKeyInArray!0 (select (arr!45998 a!2901) j!112)))))

(declare-fun b!1393633 () Bool)

(assert (=> b!1393633 (= e!789137 true)))

(declare-fun lt!612034 () SeekEntryResult!10337)

(assert (=> b!1393633 (= lt!612034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45998 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45998 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95289 (store (arr!45998 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46549 a!2901)) mask!2840))))

(declare-fun b!1393634 () Bool)

(declare-fun res!933148 () Bool)

(assert (=> b!1393634 (=> (not res!933148) (not e!789138))))

(assert (=> b!1393634 (= res!933148 (and (= (size!46549 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46549 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46549 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393635 () Bool)

(declare-fun res!933147 () Bool)

(assert (=> b!1393635 (=> (not res!933147) (not e!789138))))

(assert (=> b!1393635 (= res!933147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393636 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95288 (_ BitVec 32)) SeekEntryResult!10337)

(assert (=> b!1393636 (= e!789140 (= (seekEntryOrOpen!0 (select (arr!45998 a!2901) j!112) a!2901 mask!2840) (Found!10337 j!112)))))

(assert (= (and start!119688 res!933151) b!1393634))

(assert (= (and b!1393634 res!933148) b!1393630))

(assert (= (and b!1393630 res!933152) b!1393632))

(assert (= (and b!1393632 res!933146) b!1393635))

(assert (= (and b!1393635 res!933147) b!1393631))

(assert (= (and b!1393631 res!933150) b!1393629))

(assert (= (and b!1393629 res!933149) b!1393636))

(assert (= (and b!1393629 (not res!933153)) b!1393633))

(declare-fun m!1279713 () Bool)

(assert (=> b!1393629 m!1279713))

(declare-fun m!1279715 () Bool)

(assert (=> b!1393629 m!1279715))

(assert (=> b!1393629 m!1279713))

(declare-fun m!1279717 () Bool)

(assert (=> b!1393629 m!1279717))

(assert (=> b!1393629 m!1279715))

(assert (=> b!1393629 m!1279713))

(declare-fun m!1279719 () Bool)

(assert (=> b!1393629 m!1279719))

(declare-fun m!1279721 () Bool)

(assert (=> b!1393629 m!1279721))

(declare-fun m!1279723 () Bool)

(assert (=> b!1393635 m!1279723))

(declare-fun m!1279725 () Bool)

(assert (=> b!1393630 m!1279725))

(assert (=> b!1393630 m!1279725))

(declare-fun m!1279727 () Bool)

(assert (=> b!1393630 m!1279727))

(declare-fun m!1279729 () Bool)

(assert (=> start!119688 m!1279729))

(declare-fun m!1279731 () Bool)

(assert (=> start!119688 m!1279731))

(declare-fun m!1279733 () Bool)

(assert (=> b!1393631 m!1279733))

(declare-fun m!1279735 () Bool)

(assert (=> b!1393633 m!1279735))

(declare-fun m!1279737 () Bool)

(assert (=> b!1393633 m!1279737))

(assert (=> b!1393633 m!1279737))

(declare-fun m!1279739 () Bool)

(assert (=> b!1393633 m!1279739))

(assert (=> b!1393633 m!1279739))

(assert (=> b!1393633 m!1279737))

(declare-fun m!1279741 () Bool)

(assert (=> b!1393633 m!1279741))

(assert (=> b!1393636 m!1279713))

(assert (=> b!1393636 m!1279713))

(declare-fun m!1279743 () Bool)

(assert (=> b!1393636 m!1279743))

(assert (=> b!1393632 m!1279713))

(assert (=> b!1393632 m!1279713))

(declare-fun m!1279745 () Bool)

(assert (=> b!1393632 m!1279745))

(check-sat (not b!1393631) (not b!1393635) (not b!1393636) (not b!1393633) (not b!1393632) (not start!119688) (not b!1393629) (not b!1393630))
