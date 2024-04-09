; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121686 () Bool)

(assert start!121686)

(declare-fun b!1413220 () Bool)

(declare-fun res!950328 () Bool)

(declare-fun e!799803 () Bool)

(assert (=> b!1413220 (=> (not res!950328) (not e!799803))))

(declare-datatypes ((array!96542 0))(
  ( (array!96543 (arr!46604 (Array (_ BitVec 32) (_ BitVec 64))) (size!47155 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96542)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413220 (= res!950328 (validKeyInArray!0 (select (arr!46604 a!2901) j!112)))))

(declare-fun b!1413221 () Bool)

(declare-fun e!799807 () Bool)

(assert (=> b!1413221 (= e!799807 true)))

(declare-fun e!799804 () Bool)

(assert (=> b!1413221 e!799804))

(declare-fun res!950323 () Bool)

(assert (=> b!1413221 (=> (not res!950323) (not e!799804))))

(declare-datatypes ((SeekEntryResult!10937 0))(
  ( (MissingZero!10937 (index!46127 (_ BitVec 32))) (Found!10937 (index!46128 (_ BitVec 32))) (Intermediate!10937 (undefined!11749 Bool) (index!46129 (_ BitVec 32)) (x!127715 (_ BitVec 32))) (Undefined!10937) (MissingVacant!10937 (index!46130 (_ BitVec 32))) )
))
(declare-fun lt!622885 () SeekEntryResult!10937)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622881 () SeekEntryResult!10937)

(assert (=> b!1413221 (= res!950323 (and (not (undefined!11749 lt!622885)) (= (index!46129 lt!622885) i!1037) (bvslt (x!127715 lt!622885) (x!127715 lt!622881)) (= (select (store (arr!46604 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46129 lt!622885)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47798 0))(
  ( (Unit!47799) )
))
(declare-fun lt!622883 () Unit!47798)

(declare-fun lt!622882 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47798)

(assert (=> b!1413221 (= lt!622883 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622882 (x!127715 lt!622881) (index!46129 lt!622881) (x!127715 lt!622885) (index!46129 lt!622885) (undefined!11749 lt!622885) mask!2840))))

(declare-fun b!1413222 () Bool)

(declare-fun res!950327 () Bool)

(assert (=> b!1413222 (=> (not res!950327) (not e!799803))))

(assert (=> b!1413222 (= res!950327 (validKeyInArray!0 (select (arr!46604 a!2901) i!1037)))))

(declare-fun b!1413223 () Bool)

(declare-fun e!799806 () Bool)

(assert (=> b!1413223 (= e!799806 e!799807)))

(declare-fun res!950326 () Bool)

(assert (=> b!1413223 (=> res!950326 e!799807)))

(get-info :version)

(assert (=> b!1413223 (= res!950326 (or (= lt!622881 lt!622885) (not ((_ is Intermediate!10937) lt!622885))))))

(declare-fun lt!622884 () array!96542)

(declare-fun lt!622880 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96542 (_ BitVec 32)) SeekEntryResult!10937)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413223 (= lt!622885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622880 mask!2840) lt!622880 lt!622884 mask!2840))))

(assert (=> b!1413223 (= lt!622880 (select (store (arr!46604 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413223 (= lt!622884 (array!96543 (store (arr!46604 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47155 a!2901)))))

(declare-fun b!1413224 () Bool)

(assert (=> b!1413224 (= e!799803 (not e!799806))))

(declare-fun res!950320 () Bool)

(assert (=> b!1413224 (=> res!950320 e!799806)))

(assert (=> b!1413224 (= res!950320 (or (not ((_ is Intermediate!10937) lt!622881)) (undefined!11749 lt!622881)))))

(declare-fun e!799805 () Bool)

(assert (=> b!1413224 e!799805))

(declare-fun res!950325 () Bool)

(assert (=> b!1413224 (=> (not res!950325) (not e!799805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96542 (_ BitVec 32)) Bool)

(assert (=> b!1413224 (= res!950325 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622879 () Unit!47798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47798)

(assert (=> b!1413224 (= lt!622879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1413224 (= lt!622881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622882 (select (arr!46604 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413224 (= lt!622882 (toIndex!0 (select (arr!46604 a!2901) j!112) mask!2840))))

(declare-fun b!1413225 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96542 (_ BitVec 32)) SeekEntryResult!10937)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96542 (_ BitVec 32)) SeekEntryResult!10937)

(assert (=> b!1413225 (= e!799804 (= (seekEntryOrOpen!0 lt!622880 lt!622884 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127715 lt!622885) (index!46129 lt!622885) (index!46129 lt!622885) (select (arr!46604 a!2901) j!112) lt!622884 mask!2840)))))

(declare-fun b!1413226 () Bool)

(declare-fun res!950319 () Bool)

(assert (=> b!1413226 (=> (not res!950319) (not e!799803))))

(assert (=> b!1413226 (= res!950319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413228 () Bool)

(declare-fun res!950322 () Bool)

(assert (=> b!1413228 (=> (not res!950322) (not e!799803))))

(declare-datatypes ((List!33303 0))(
  ( (Nil!33300) (Cons!33299 (h!34574 (_ BitVec 64)) (t!48004 List!33303)) )
))
(declare-fun arrayNoDuplicates!0 (array!96542 (_ BitVec 32) List!33303) Bool)

(assert (=> b!1413228 (= res!950322 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33300))))

(declare-fun b!1413229 () Bool)

(declare-fun res!950321 () Bool)

(assert (=> b!1413229 (=> (not res!950321) (not e!799803))))

(assert (=> b!1413229 (= res!950321 (and (= (size!47155 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47155 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47155 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413227 () Bool)

(assert (=> b!1413227 (= e!799805 (= (seekEntryOrOpen!0 (select (arr!46604 a!2901) j!112) a!2901 mask!2840) (Found!10937 j!112)))))

(declare-fun res!950324 () Bool)

(assert (=> start!121686 (=> (not res!950324) (not e!799803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121686 (= res!950324 (validMask!0 mask!2840))))

(assert (=> start!121686 e!799803))

(assert (=> start!121686 true))

(declare-fun array_inv!35549 (array!96542) Bool)

(assert (=> start!121686 (array_inv!35549 a!2901)))

(assert (= (and start!121686 res!950324) b!1413229))

(assert (= (and b!1413229 res!950321) b!1413222))

(assert (= (and b!1413222 res!950327) b!1413220))

(assert (= (and b!1413220 res!950328) b!1413226))

(assert (= (and b!1413226 res!950319) b!1413228))

(assert (= (and b!1413228 res!950322) b!1413224))

(assert (= (and b!1413224 res!950325) b!1413227))

(assert (= (and b!1413224 (not res!950320)) b!1413223))

(assert (= (and b!1413223 (not res!950326)) b!1413221))

(assert (= (and b!1413221 res!950323) b!1413225))

(declare-fun m!1303649 () Bool)

(assert (=> b!1413220 m!1303649))

(assert (=> b!1413220 m!1303649))

(declare-fun m!1303651 () Bool)

(assert (=> b!1413220 m!1303651))

(assert (=> b!1413224 m!1303649))

(declare-fun m!1303653 () Bool)

(assert (=> b!1413224 m!1303653))

(assert (=> b!1413224 m!1303649))

(declare-fun m!1303655 () Bool)

(assert (=> b!1413224 m!1303655))

(assert (=> b!1413224 m!1303649))

(declare-fun m!1303657 () Bool)

(assert (=> b!1413224 m!1303657))

(declare-fun m!1303659 () Bool)

(assert (=> b!1413224 m!1303659))

(declare-fun m!1303661 () Bool)

(assert (=> b!1413221 m!1303661))

(declare-fun m!1303663 () Bool)

(assert (=> b!1413221 m!1303663))

(declare-fun m!1303665 () Bool)

(assert (=> b!1413221 m!1303665))

(declare-fun m!1303667 () Bool)

(assert (=> start!121686 m!1303667))

(declare-fun m!1303669 () Bool)

(assert (=> start!121686 m!1303669))

(declare-fun m!1303671 () Bool)

(assert (=> b!1413225 m!1303671))

(assert (=> b!1413225 m!1303649))

(assert (=> b!1413225 m!1303649))

(declare-fun m!1303673 () Bool)

(assert (=> b!1413225 m!1303673))

(declare-fun m!1303675 () Bool)

(assert (=> b!1413228 m!1303675))

(declare-fun m!1303677 () Bool)

(assert (=> b!1413223 m!1303677))

(assert (=> b!1413223 m!1303677))

(declare-fun m!1303679 () Bool)

(assert (=> b!1413223 m!1303679))

(assert (=> b!1413223 m!1303661))

(declare-fun m!1303681 () Bool)

(assert (=> b!1413223 m!1303681))

(assert (=> b!1413227 m!1303649))

(assert (=> b!1413227 m!1303649))

(declare-fun m!1303683 () Bool)

(assert (=> b!1413227 m!1303683))

(declare-fun m!1303685 () Bool)

(assert (=> b!1413222 m!1303685))

(assert (=> b!1413222 m!1303685))

(declare-fun m!1303687 () Bool)

(assert (=> b!1413222 m!1303687))

(declare-fun m!1303689 () Bool)

(assert (=> b!1413226 m!1303689))

(check-sat (not b!1413221) (not b!1413224) (not b!1413227) (not b!1413223) (not b!1413225) (not start!121686) (not b!1413222) (not b!1413228) (not b!1413220) (not b!1413226))
(check-sat)
