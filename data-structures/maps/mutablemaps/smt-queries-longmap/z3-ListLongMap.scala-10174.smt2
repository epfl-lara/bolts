; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120012 () Bool)

(assert start!120012)

(declare-fun b!1396496 () Bool)

(declare-fun e!790636 () Bool)

(declare-fun e!790639 () Bool)

(assert (=> b!1396496 (= e!790636 (not e!790639))))

(declare-fun res!935521 () Bool)

(assert (=> b!1396496 (=> res!935521 e!790639)))

(declare-datatypes ((SeekEntryResult!10418 0))(
  ( (MissingZero!10418 (index!44042 (_ BitVec 32))) (Found!10418 (index!44043 (_ BitVec 32))) (Intermediate!10418 (undefined!11230 Bool) (index!44044 (_ BitVec 32)) (x!125715 (_ BitVec 32))) (Undefined!10418) (MissingVacant!10418 (index!44045 (_ BitVec 32))) )
))
(declare-fun lt!613479 () SeekEntryResult!10418)

(get-info :version)

(assert (=> b!1396496 (= res!935521 (or (not ((_ is Intermediate!10418) lt!613479)) (undefined!11230 lt!613479)))))

(declare-fun e!790640 () Bool)

(assert (=> b!1396496 e!790640))

(declare-fun res!935519 () Bool)

(assert (=> b!1396496 (=> (not res!935519) (not e!790640))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95459 0))(
  ( (array!95460 (arr!46079 (Array (_ BitVec 32) (_ BitVec 64))) (size!46630 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95459)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95459 (_ BitVec 32)) Bool)

(assert (=> b!1396496 (= res!935519 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46790 0))(
  ( (Unit!46791) )
))
(declare-fun lt!613477 () Unit!46790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46790)

(assert (=> b!1396496 (= lt!613477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613475 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95459 (_ BitVec 32)) SeekEntryResult!10418)

(assert (=> b!1396496 (= lt!613479 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613475 (select (arr!46079 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396496 (= lt!613475 (toIndex!0 (select (arr!46079 a!2901) j!112) mask!2840))))

(declare-fun b!1396497 () Bool)

(declare-fun res!935523 () Bool)

(assert (=> b!1396497 (=> (not res!935523) (not e!790636))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396497 (= res!935523 (validKeyInArray!0 (select (arr!46079 a!2901) i!1037)))))

(declare-fun b!1396498 () Bool)

(declare-fun res!935525 () Bool)

(assert (=> b!1396498 (=> (not res!935525) (not e!790636))))

(declare-datatypes ((List!32778 0))(
  ( (Nil!32775) (Cons!32774 (h!34016 (_ BitVec 64)) (t!47479 List!32778)) )
))
(declare-fun arrayNoDuplicates!0 (array!95459 (_ BitVec 32) List!32778) Bool)

(assert (=> b!1396498 (= res!935525 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32775))))

(declare-fun b!1396499 () Bool)

(declare-fun res!935524 () Bool)

(assert (=> b!1396499 (=> (not res!935524) (not e!790636))))

(assert (=> b!1396499 (= res!935524 (validKeyInArray!0 (select (arr!46079 a!2901) j!112)))))

(declare-fun res!935518 () Bool)

(assert (=> start!120012 (=> (not res!935518) (not e!790636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120012 (= res!935518 (validMask!0 mask!2840))))

(assert (=> start!120012 e!790636))

(assert (=> start!120012 true))

(declare-fun array_inv!35024 (array!95459) Bool)

(assert (=> start!120012 (array_inv!35024 a!2901)))

(declare-fun b!1396500 () Bool)

(declare-fun res!935526 () Bool)

(assert (=> b!1396500 (=> (not res!935526) (not e!790636))))

(assert (=> b!1396500 (= res!935526 (and (= (size!46630 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46630 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46630 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396501 () Bool)

(declare-fun e!790638 () Bool)

(assert (=> b!1396501 (= e!790638 true)))

(declare-fun lt!613478 () (_ BitVec 64))

(declare-fun lt!613476 () SeekEntryResult!10418)

(declare-fun lt!613474 () array!95459)

(assert (=> b!1396501 (= lt!613476 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613475 lt!613478 lt!613474 mask!2840))))

(declare-fun b!1396502 () Bool)

(assert (=> b!1396502 (= e!790639 e!790638)))

(declare-fun res!935522 () Bool)

(assert (=> b!1396502 (=> res!935522 e!790638)))

(declare-fun lt!613480 () SeekEntryResult!10418)

(assert (=> b!1396502 (= res!935522 (or (= lt!613479 lt!613480) (not ((_ is Intermediate!10418) lt!613480)) (bvslt (x!125715 lt!613479) #b00000000000000000000000000000000) (bvsgt (x!125715 lt!613479) #b01111111111111111111111111111110) (bvslt lt!613475 #b00000000000000000000000000000000) (bvsge lt!613475 (size!46630 a!2901)) (bvslt (index!44044 lt!613479) #b00000000000000000000000000000000) (bvsge (index!44044 lt!613479) (size!46630 a!2901)) (not (= lt!613479 (Intermediate!10418 false (index!44044 lt!613479) (x!125715 lt!613479)))) (not (= lt!613480 (Intermediate!10418 (undefined!11230 lt!613480) (index!44044 lt!613480) (x!125715 lt!613480))))))))

(assert (=> b!1396502 (= lt!613480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613478 mask!2840) lt!613478 lt!613474 mask!2840))))

(assert (=> b!1396502 (= lt!613478 (select (store (arr!46079 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396502 (= lt!613474 (array!95460 (store (arr!46079 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46630 a!2901)))))

(declare-fun b!1396503 () Bool)

(declare-fun res!935520 () Bool)

(assert (=> b!1396503 (=> (not res!935520) (not e!790636))))

(assert (=> b!1396503 (= res!935520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396504 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95459 (_ BitVec 32)) SeekEntryResult!10418)

(assert (=> b!1396504 (= e!790640 (= (seekEntryOrOpen!0 (select (arr!46079 a!2901) j!112) a!2901 mask!2840) (Found!10418 j!112)))))

(assert (= (and start!120012 res!935518) b!1396500))

(assert (= (and b!1396500 res!935526) b!1396497))

(assert (= (and b!1396497 res!935523) b!1396499))

(assert (= (and b!1396499 res!935524) b!1396503))

(assert (= (and b!1396503 res!935520) b!1396498))

(assert (= (and b!1396498 res!935525) b!1396496))

(assert (= (and b!1396496 res!935519) b!1396504))

(assert (= (and b!1396496 (not res!935521)) b!1396502))

(assert (= (and b!1396502 (not res!935522)) b!1396501))

(declare-fun m!1283039 () Bool)

(assert (=> b!1396499 m!1283039))

(assert (=> b!1396499 m!1283039))

(declare-fun m!1283041 () Bool)

(assert (=> b!1396499 m!1283041))

(declare-fun m!1283043 () Bool)

(assert (=> b!1396498 m!1283043))

(declare-fun m!1283045 () Bool)

(assert (=> b!1396503 m!1283045))

(declare-fun m!1283047 () Bool)

(assert (=> b!1396497 m!1283047))

(assert (=> b!1396497 m!1283047))

(declare-fun m!1283049 () Bool)

(assert (=> b!1396497 m!1283049))

(assert (=> b!1396496 m!1283039))

(declare-fun m!1283051 () Bool)

(assert (=> b!1396496 m!1283051))

(assert (=> b!1396496 m!1283039))

(declare-fun m!1283053 () Bool)

(assert (=> b!1396496 m!1283053))

(assert (=> b!1396496 m!1283039))

(declare-fun m!1283055 () Bool)

(assert (=> b!1396496 m!1283055))

(declare-fun m!1283057 () Bool)

(assert (=> b!1396496 m!1283057))

(assert (=> b!1396504 m!1283039))

(assert (=> b!1396504 m!1283039))

(declare-fun m!1283059 () Bool)

(assert (=> b!1396504 m!1283059))

(declare-fun m!1283061 () Bool)

(assert (=> b!1396502 m!1283061))

(assert (=> b!1396502 m!1283061))

(declare-fun m!1283063 () Bool)

(assert (=> b!1396502 m!1283063))

(declare-fun m!1283065 () Bool)

(assert (=> b!1396502 m!1283065))

(declare-fun m!1283067 () Bool)

(assert (=> b!1396502 m!1283067))

(declare-fun m!1283069 () Bool)

(assert (=> start!120012 m!1283069))

(declare-fun m!1283071 () Bool)

(assert (=> start!120012 m!1283071))

(declare-fun m!1283073 () Bool)

(assert (=> b!1396501 m!1283073))

(check-sat (not b!1396497) (not b!1396498) (not b!1396501) (not b!1396502) (not b!1396503) (not b!1396499) (not start!120012) (not b!1396504) (not b!1396496))
(check-sat)
