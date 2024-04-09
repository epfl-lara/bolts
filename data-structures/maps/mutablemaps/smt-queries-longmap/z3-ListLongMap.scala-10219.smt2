; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120408 () Bool)

(assert start!120408)

(declare-fun b!1400994 () Bool)

(declare-fun res!939617 () Bool)

(declare-fun e!793291 () Bool)

(assert (=> b!1400994 (=> (not res!939617) (not e!793291))))

(declare-datatypes ((array!95735 0))(
  ( (array!95736 (arr!46214 (Array (_ BitVec 32) (_ BitVec 64))) (size!46765 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95735)

(declare-datatypes ((List!32913 0))(
  ( (Nil!32910) (Cons!32909 (h!34157 (_ BitVec 64)) (t!47614 List!32913)) )
))
(declare-fun arrayNoDuplicates!0 (array!95735 (_ BitVec 32) List!32913) Bool)

(assert (=> b!1400994 (= res!939617 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32910))))

(declare-fun b!1400995 () Bool)

(declare-fun e!793292 () Bool)

(assert (=> b!1400995 (= e!793291 (not e!793292))))

(declare-fun res!939623 () Bool)

(assert (=> b!1400995 (=> res!939623 e!793292)))

(declare-datatypes ((SeekEntryResult!10553 0))(
  ( (MissingZero!10553 (index!44588 (_ BitVec 32))) (Found!10553 (index!44589 (_ BitVec 32))) (Intermediate!10553 (undefined!11365 Bool) (index!44590 (_ BitVec 32)) (x!126231 (_ BitVec 32))) (Undefined!10553) (MissingVacant!10553 (index!44591 (_ BitVec 32))) )
))
(declare-fun lt!616614 () SeekEntryResult!10553)

(get-info :version)

(assert (=> b!1400995 (= res!939623 (or (not ((_ is Intermediate!10553) lt!616614)) (undefined!11365 lt!616614)))))

(declare-fun e!793288 () Bool)

(assert (=> b!1400995 e!793288))

(declare-fun res!939619 () Bool)

(assert (=> b!1400995 (=> (not res!939619) (not e!793288))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95735 (_ BitVec 32)) Bool)

(assert (=> b!1400995 (= res!939619 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47060 0))(
  ( (Unit!47061) )
))
(declare-fun lt!616612 () Unit!47060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47060)

(assert (=> b!1400995 (= lt!616612 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616615 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95735 (_ BitVec 32)) SeekEntryResult!10553)

(assert (=> b!1400995 (= lt!616614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616615 (select (arr!46214 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400995 (= lt!616615 (toIndex!0 (select (arr!46214 a!2901) j!112) mask!2840))))

(declare-fun b!1400996 () Bool)

(declare-fun res!939616 () Bool)

(assert (=> b!1400996 (=> (not res!939616) (not e!793291))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400996 (= res!939616 (and (= (size!46765 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46765 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46765 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400997 () Bool)

(declare-fun res!939621 () Bool)

(assert (=> b!1400997 (=> (not res!939621) (not e!793291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400997 (= res!939621 (validKeyInArray!0 (select (arr!46214 a!2901) i!1037)))))

(declare-fun b!1400998 () Bool)

(declare-fun e!793290 () Bool)

(assert (=> b!1400998 (= e!793290 true)))

(declare-fun lt!616613 () array!95735)

(declare-fun lt!616611 () (_ BitVec 64))

(declare-fun lt!616609 () SeekEntryResult!10553)

(assert (=> b!1400998 (= lt!616609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616615 lt!616611 lt!616613 mask!2840))))

(declare-fun b!1400999 () Bool)

(declare-fun e!793286 () Bool)

(assert (=> b!1400999 (= e!793286 e!793290)))

(declare-fun res!939614 () Bool)

(assert (=> b!1400999 (=> res!939614 e!793290)))

(declare-fun lt!616608 () SeekEntryResult!10553)

(assert (=> b!1400999 (= res!939614 (or (bvslt (x!126231 lt!616614) #b00000000000000000000000000000000) (bvsgt (x!126231 lt!616614) #b01111111111111111111111111111110) (bvslt (x!126231 lt!616608) #b00000000000000000000000000000000) (bvsgt (x!126231 lt!616608) #b01111111111111111111111111111110) (bvslt lt!616615 #b00000000000000000000000000000000) (bvsge lt!616615 (size!46765 a!2901)) (bvslt (index!44590 lt!616614) #b00000000000000000000000000000000) (bvsge (index!44590 lt!616614) (size!46765 a!2901)) (bvslt (index!44590 lt!616608) #b00000000000000000000000000000000) (bvsge (index!44590 lt!616608) (size!46765 a!2901)) (not (= lt!616614 (Intermediate!10553 false (index!44590 lt!616614) (x!126231 lt!616614)))) (not (= lt!616608 (Intermediate!10553 false (index!44590 lt!616608) (x!126231 lt!616608))))))))

(declare-fun e!793287 () Bool)

(assert (=> b!1400999 e!793287))

(declare-fun res!939615 () Bool)

(assert (=> b!1400999 (=> (not res!939615) (not e!793287))))

(assert (=> b!1400999 (= res!939615 (and (not (undefined!11365 lt!616608)) (= (index!44590 lt!616608) i!1037) (bvslt (x!126231 lt!616608) (x!126231 lt!616614)) (= (select (store (arr!46214 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44590 lt!616608)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616610 () Unit!47060)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47060)

(assert (=> b!1400999 (= lt!616610 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616615 (x!126231 lt!616614) (index!44590 lt!616614) (x!126231 lt!616608) (index!44590 lt!616608) (undefined!11365 lt!616608) mask!2840))))

(declare-fun b!1401000 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95735 (_ BitVec 32)) SeekEntryResult!10553)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95735 (_ BitVec 32)) SeekEntryResult!10553)

(assert (=> b!1401000 (= e!793287 (= (seekEntryOrOpen!0 lt!616611 lt!616613 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126231 lt!616608) (index!44590 lt!616608) (index!44590 lt!616608) (select (arr!46214 a!2901) j!112) lt!616613 mask!2840)))))

(declare-fun res!939620 () Bool)

(assert (=> start!120408 (=> (not res!939620) (not e!793291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120408 (= res!939620 (validMask!0 mask!2840))))

(assert (=> start!120408 e!793291))

(assert (=> start!120408 true))

(declare-fun array_inv!35159 (array!95735) Bool)

(assert (=> start!120408 (array_inv!35159 a!2901)))

(declare-fun b!1401001 () Bool)

(assert (=> b!1401001 (= e!793288 (= (seekEntryOrOpen!0 (select (arr!46214 a!2901) j!112) a!2901 mask!2840) (Found!10553 j!112)))))

(declare-fun b!1401002 () Bool)

(declare-fun res!939618 () Bool)

(assert (=> b!1401002 (=> (not res!939618) (not e!793291))))

(assert (=> b!1401002 (= res!939618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401003 () Bool)

(assert (=> b!1401003 (= e!793292 e!793286)))

(declare-fun res!939622 () Bool)

(assert (=> b!1401003 (=> res!939622 e!793286)))

(assert (=> b!1401003 (= res!939622 (or (= lt!616614 lt!616608) (not ((_ is Intermediate!10553) lt!616608))))))

(assert (=> b!1401003 (= lt!616608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616611 mask!2840) lt!616611 lt!616613 mask!2840))))

(assert (=> b!1401003 (= lt!616611 (select (store (arr!46214 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401003 (= lt!616613 (array!95736 (store (arr!46214 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46765 a!2901)))))

(declare-fun b!1401004 () Bool)

(declare-fun res!939624 () Bool)

(assert (=> b!1401004 (=> (not res!939624) (not e!793291))))

(assert (=> b!1401004 (= res!939624 (validKeyInArray!0 (select (arr!46214 a!2901) j!112)))))

(assert (= (and start!120408 res!939620) b!1400996))

(assert (= (and b!1400996 res!939616) b!1400997))

(assert (= (and b!1400997 res!939621) b!1401004))

(assert (= (and b!1401004 res!939624) b!1401002))

(assert (= (and b!1401002 res!939618) b!1400994))

(assert (= (and b!1400994 res!939617) b!1400995))

(assert (= (and b!1400995 res!939619) b!1401001))

(assert (= (and b!1400995 (not res!939623)) b!1401003))

(assert (= (and b!1401003 (not res!939622)) b!1400999))

(assert (= (and b!1400999 res!939615) b!1401000))

(assert (= (and b!1400999 (not res!939614)) b!1400998))

(declare-fun m!1288717 () Bool)

(assert (=> b!1400998 m!1288717))

(declare-fun m!1288719 () Bool)

(assert (=> b!1400997 m!1288719))

(assert (=> b!1400997 m!1288719))

(declare-fun m!1288721 () Bool)

(assert (=> b!1400997 m!1288721))

(declare-fun m!1288723 () Bool)

(assert (=> b!1401000 m!1288723))

(declare-fun m!1288725 () Bool)

(assert (=> b!1401000 m!1288725))

(assert (=> b!1401000 m!1288725))

(declare-fun m!1288727 () Bool)

(assert (=> b!1401000 m!1288727))

(declare-fun m!1288729 () Bool)

(assert (=> b!1400994 m!1288729))

(assert (=> b!1401001 m!1288725))

(assert (=> b!1401001 m!1288725))

(declare-fun m!1288731 () Bool)

(assert (=> b!1401001 m!1288731))

(declare-fun m!1288733 () Bool)

(assert (=> start!120408 m!1288733))

(declare-fun m!1288735 () Bool)

(assert (=> start!120408 m!1288735))

(declare-fun m!1288737 () Bool)

(assert (=> b!1401002 m!1288737))

(declare-fun m!1288739 () Bool)

(assert (=> b!1401003 m!1288739))

(assert (=> b!1401003 m!1288739))

(declare-fun m!1288741 () Bool)

(assert (=> b!1401003 m!1288741))

(declare-fun m!1288743 () Bool)

(assert (=> b!1401003 m!1288743))

(declare-fun m!1288745 () Bool)

(assert (=> b!1401003 m!1288745))

(assert (=> b!1400999 m!1288743))

(declare-fun m!1288747 () Bool)

(assert (=> b!1400999 m!1288747))

(declare-fun m!1288749 () Bool)

(assert (=> b!1400999 m!1288749))

(assert (=> b!1401004 m!1288725))

(assert (=> b!1401004 m!1288725))

(declare-fun m!1288751 () Bool)

(assert (=> b!1401004 m!1288751))

(assert (=> b!1400995 m!1288725))

(declare-fun m!1288753 () Bool)

(assert (=> b!1400995 m!1288753))

(assert (=> b!1400995 m!1288725))

(declare-fun m!1288755 () Bool)

(assert (=> b!1400995 m!1288755))

(assert (=> b!1400995 m!1288725))

(declare-fun m!1288757 () Bool)

(assert (=> b!1400995 m!1288757))

(declare-fun m!1288759 () Bool)

(assert (=> b!1400995 m!1288759))

(check-sat (not b!1400999) (not start!120408) (not b!1400998) (not b!1401000) (not b!1401003) (not b!1401002) (not b!1400995) (not b!1401004) (not b!1401001) (not b!1400994) (not b!1400997))
(check-sat)
