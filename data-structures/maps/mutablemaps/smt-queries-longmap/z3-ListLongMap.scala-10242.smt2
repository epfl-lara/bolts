; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120546 () Bool)

(assert start!120546)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95873 0))(
  ( (array!95874 (arr!46283 (Array (_ BitVec 32) (_ BitVec 64))) (size!46834 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95873)

(declare-fun e!794507 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1403112 () Bool)

(declare-datatypes ((SeekEntryResult!10622 0))(
  ( (MissingZero!10622 (index!44864 (_ BitVec 32))) (Found!10622 (index!44865 (_ BitVec 32))) (Intermediate!10622 (undefined!11434 Bool) (index!44866 (_ BitVec 32)) (x!126484 (_ BitVec 32))) (Undefined!10622) (MissingVacant!10622 (index!44867 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95873 (_ BitVec 32)) SeekEntryResult!10622)

(assert (=> b!1403112 (= e!794507 (= (seekEntryOrOpen!0 (select (arr!46283 a!2901) j!112) a!2901 mask!2840) (Found!10622 j!112)))))

(declare-fun res!941733 () Bool)

(declare-fun e!794504 () Bool)

(assert (=> start!120546 (=> (not res!941733) (not e!794504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120546 (= res!941733 (validMask!0 mask!2840))))

(assert (=> start!120546 e!794504))

(assert (=> start!120546 true))

(declare-fun array_inv!35228 (array!95873) Bool)

(assert (=> start!120546 (array_inv!35228 a!2901)))

(declare-fun b!1403113 () Bool)

(declare-fun res!941738 () Bool)

(assert (=> b!1403113 (=> (not res!941738) (not e!794504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403113 (= res!941738 (validKeyInArray!0 (select (arr!46283 a!2901) j!112)))))

(declare-fun b!1403114 () Bool)

(declare-fun e!794506 () Bool)

(assert (=> b!1403114 (= e!794506 true)))

(declare-fun lt!618249 () SeekEntryResult!10622)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95873 (_ BitVec 32)) SeekEntryResult!10622)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403114 (= lt!618249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46283 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46283 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95874 (store (arr!46283 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46834 a!2901)) mask!2840))))

(declare-fun b!1403115 () Bool)

(declare-fun res!941736 () Bool)

(assert (=> b!1403115 (=> (not res!941736) (not e!794504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95873 (_ BitVec 32)) Bool)

(assert (=> b!1403115 (= res!941736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403116 () Bool)

(declare-fun res!941739 () Bool)

(assert (=> b!1403116 (=> (not res!941739) (not e!794504))))

(assert (=> b!1403116 (= res!941739 (and (= (size!46834 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46834 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46834 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403117 () Bool)

(assert (=> b!1403117 (= e!794504 (not e!794506))))

(declare-fun res!941734 () Bool)

(assert (=> b!1403117 (=> res!941734 e!794506)))

(declare-fun lt!618250 () SeekEntryResult!10622)

(get-info :version)

(assert (=> b!1403117 (= res!941734 (or (not ((_ is Intermediate!10622) lt!618250)) (undefined!11434 lt!618250)))))

(assert (=> b!1403117 e!794507))

(declare-fun res!941732 () Bool)

(assert (=> b!1403117 (=> (not res!941732) (not e!794507))))

(assert (=> b!1403117 (= res!941732 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47198 0))(
  ( (Unit!47199) )
))
(declare-fun lt!618248 () Unit!47198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47198)

(assert (=> b!1403117 (= lt!618248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403117 (= lt!618250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46283 a!2901) j!112) mask!2840) (select (arr!46283 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403118 () Bool)

(declare-fun res!941735 () Bool)

(assert (=> b!1403118 (=> (not res!941735) (not e!794504))))

(assert (=> b!1403118 (= res!941735 (validKeyInArray!0 (select (arr!46283 a!2901) i!1037)))))

(declare-fun b!1403119 () Bool)

(declare-fun res!941737 () Bool)

(assert (=> b!1403119 (=> (not res!941737) (not e!794504))))

(declare-datatypes ((List!32982 0))(
  ( (Nil!32979) (Cons!32978 (h!34226 (_ BitVec 64)) (t!47683 List!32982)) )
))
(declare-fun arrayNoDuplicates!0 (array!95873 (_ BitVec 32) List!32982) Bool)

(assert (=> b!1403119 (= res!941737 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32979))))

(assert (= (and start!120546 res!941733) b!1403116))

(assert (= (and b!1403116 res!941739) b!1403118))

(assert (= (and b!1403118 res!941735) b!1403113))

(assert (= (and b!1403113 res!941738) b!1403115))

(assert (= (and b!1403115 res!941736) b!1403119))

(assert (= (and b!1403119 res!941737) b!1403117))

(assert (= (and b!1403117 res!941732) b!1403112))

(assert (= (and b!1403117 (not res!941734)) b!1403114))

(declare-fun m!1291707 () Bool)

(assert (=> b!1403118 m!1291707))

(assert (=> b!1403118 m!1291707))

(declare-fun m!1291709 () Bool)

(assert (=> b!1403118 m!1291709))

(declare-fun m!1291711 () Bool)

(assert (=> b!1403119 m!1291711))

(declare-fun m!1291713 () Bool)

(assert (=> b!1403114 m!1291713))

(declare-fun m!1291715 () Bool)

(assert (=> b!1403114 m!1291715))

(assert (=> b!1403114 m!1291715))

(declare-fun m!1291717 () Bool)

(assert (=> b!1403114 m!1291717))

(assert (=> b!1403114 m!1291717))

(assert (=> b!1403114 m!1291715))

(declare-fun m!1291719 () Bool)

(assert (=> b!1403114 m!1291719))

(declare-fun m!1291721 () Bool)

(assert (=> b!1403113 m!1291721))

(assert (=> b!1403113 m!1291721))

(declare-fun m!1291723 () Bool)

(assert (=> b!1403113 m!1291723))

(declare-fun m!1291725 () Bool)

(assert (=> b!1403115 m!1291725))

(assert (=> b!1403117 m!1291721))

(declare-fun m!1291727 () Bool)

(assert (=> b!1403117 m!1291727))

(assert (=> b!1403117 m!1291721))

(declare-fun m!1291729 () Bool)

(assert (=> b!1403117 m!1291729))

(assert (=> b!1403117 m!1291727))

(assert (=> b!1403117 m!1291721))

(declare-fun m!1291731 () Bool)

(assert (=> b!1403117 m!1291731))

(declare-fun m!1291733 () Bool)

(assert (=> b!1403117 m!1291733))

(assert (=> b!1403112 m!1291721))

(assert (=> b!1403112 m!1291721))

(declare-fun m!1291735 () Bool)

(assert (=> b!1403112 m!1291735))

(declare-fun m!1291737 () Bool)

(assert (=> start!120546 m!1291737))

(declare-fun m!1291739 () Bool)

(assert (=> start!120546 m!1291739))

(check-sat (not b!1403117) (not b!1403113) (not b!1403118) (not b!1403112) (not b!1403114) (not b!1403119) (not start!120546) (not b!1403115))
