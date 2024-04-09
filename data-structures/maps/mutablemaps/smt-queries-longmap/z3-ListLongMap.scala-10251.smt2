; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120600 () Bool)

(assert start!120600)

(declare-fun b!1403719 () Bool)

(declare-fun e!794789 () Bool)

(assert (=> b!1403719 (= e!794789 (not true))))

(declare-fun e!794787 () Bool)

(assert (=> b!1403719 e!794787))

(declare-fun res!942341 () Bool)

(assert (=> b!1403719 (=> (not res!942341) (not e!794787))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95927 0))(
  ( (array!95928 (arr!46310 (Array (_ BitVec 32) (_ BitVec 64))) (size!46861 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95927)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95927 (_ BitVec 32)) Bool)

(assert (=> b!1403719 (= res!942341 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47252 0))(
  ( (Unit!47253) )
))
(declare-fun lt!618450 () Unit!47252)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47252)

(assert (=> b!1403719 (= lt!618450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10649 0))(
  ( (MissingZero!10649 (index!44972 (_ BitVec 32))) (Found!10649 (index!44973 (_ BitVec 32))) (Intermediate!10649 (undefined!11461 Bool) (index!44974 (_ BitVec 32)) (x!126583 (_ BitVec 32))) (Undefined!10649) (MissingVacant!10649 (index!44975 (_ BitVec 32))) )
))
(declare-fun lt!618451 () SeekEntryResult!10649)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95927 (_ BitVec 32)) SeekEntryResult!10649)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403719 (= lt!618451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46310 a!2901) j!112) mask!2840) (select (arr!46310 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403720 () Bool)

(declare-fun res!942342 () Bool)

(assert (=> b!1403720 (=> (not res!942342) (not e!794789))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403720 (= res!942342 (validKeyInArray!0 (select (arr!46310 a!2901) i!1037)))))

(declare-fun b!1403721 () Bool)

(declare-fun res!942345 () Bool)

(assert (=> b!1403721 (=> (not res!942345) (not e!794789))))

(assert (=> b!1403721 (= res!942345 (and (= (size!46861 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46861 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46861 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403722 () Bool)

(declare-fun res!942343 () Bool)

(assert (=> b!1403722 (=> (not res!942343) (not e!794789))))

(declare-datatypes ((List!33009 0))(
  ( (Nil!33006) (Cons!33005 (h!34253 (_ BitVec 64)) (t!47710 List!33009)) )
))
(declare-fun arrayNoDuplicates!0 (array!95927 (_ BitVec 32) List!33009) Bool)

(assert (=> b!1403722 (= res!942343 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33006))))

(declare-fun b!1403723 () Bool)

(declare-fun res!942340 () Bool)

(assert (=> b!1403723 (=> (not res!942340) (not e!794789))))

(assert (=> b!1403723 (= res!942340 (validKeyInArray!0 (select (arr!46310 a!2901) j!112)))))

(declare-fun b!1403724 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95927 (_ BitVec 32)) SeekEntryResult!10649)

(assert (=> b!1403724 (= e!794787 (= (seekEntryOrOpen!0 (select (arr!46310 a!2901) j!112) a!2901 mask!2840) (Found!10649 j!112)))))

(declare-fun b!1403725 () Bool)

(declare-fun res!942339 () Bool)

(assert (=> b!1403725 (=> (not res!942339) (not e!794789))))

(assert (=> b!1403725 (= res!942339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942344 () Bool)

(assert (=> start!120600 (=> (not res!942344) (not e!794789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120600 (= res!942344 (validMask!0 mask!2840))))

(assert (=> start!120600 e!794789))

(assert (=> start!120600 true))

(declare-fun array_inv!35255 (array!95927) Bool)

(assert (=> start!120600 (array_inv!35255 a!2901)))

(assert (= (and start!120600 res!942344) b!1403721))

(assert (= (and b!1403721 res!942345) b!1403720))

(assert (= (and b!1403720 res!942342) b!1403723))

(assert (= (and b!1403723 res!942340) b!1403725))

(assert (= (and b!1403725 res!942339) b!1403722))

(assert (= (and b!1403722 res!942343) b!1403719))

(assert (= (and b!1403719 res!942341) b!1403724))

(declare-fun m!1292521 () Bool)

(assert (=> b!1403720 m!1292521))

(assert (=> b!1403720 m!1292521))

(declare-fun m!1292523 () Bool)

(assert (=> b!1403720 m!1292523))

(declare-fun m!1292525 () Bool)

(assert (=> b!1403722 m!1292525))

(declare-fun m!1292527 () Bool)

(assert (=> b!1403724 m!1292527))

(assert (=> b!1403724 m!1292527))

(declare-fun m!1292529 () Bool)

(assert (=> b!1403724 m!1292529))

(assert (=> b!1403723 m!1292527))

(assert (=> b!1403723 m!1292527))

(declare-fun m!1292531 () Bool)

(assert (=> b!1403723 m!1292531))

(declare-fun m!1292533 () Bool)

(assert (=> b!1403725 m!1292533))

(assert (=> b!1403719 m!1292527))

(declare-fun m!1292535 () Bool)

(assert (=> b!1403719 m!1292535))

(assert (=> b!1403719 m!1292527))

(declare-fun m!1292537 () Bool)

(assert (=> b!1403719 m!1292537))

(assert (=> b!1403719 m!1292535))

(assert (=> b!1403719 m!1292527))

(declare-fun m!1292539 () Bool)

(assert (=> b!1403719 m!1292539))

(declare-fun m!1292541 () Bool)

(assert (=> b!1403719 m!1292541))

(declare-fun m!1292543 () Bool)

(assert (=> start!120600 m!1292543))

(declare-fun m!1292545 () Bool)

(assert (=> start!120600 m!1292545))

(check-sat (not b!1403719) (not b!1403723) (not b!1403720) (not b!1403724) (not b!1403722) (not b!1403725) (not start!120600))
