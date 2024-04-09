; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125106 () Bool)

(assert start!125106)

(declare-fun e!819107 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98471 0))(
  ( (array!98472 (arr!47519 (Array (_ BitVec 32) (_ BitVec 64))) (size!48070 (_ BitVec 32))) )
))
(declare-fun lt!638011 () array!98471)

(declare-fun b!1455670 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!638007 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11794 0))(
  ( (MissingZero!11794 (index!49567 (_ BitVec 32))) (Found!11794 (index!49568 (_ BitVec 32))) (Intermediate!11794 (undefined!12606 Bool) (index!49569 (_ BitVec 32)) (x!131198 (_ BitVec 32))) (Undefined!11794) (MissingVacant!11794 (index!49570 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98471 (_ BitVec 32)) SeekEntryResult!11794)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98471 (_ BitVec 32)) SeekEntryResult!11794)

(assert (=> b!1455670 (= e!819107 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638007 lt!638011 mask!2687) (seekEntryOrOpen!0 lt!638007 lt!638011 mask!2687)))))

(declare-fun b!1455671 () Bool)

(declare-fun e!819108 () Bool)

(declare-fun e!819113 () Bool)

(assert (=> b!1455671 (= e!819108 e!819113)))

(declare-fun res!986389 () Bool)

(assert (=> b!1455671 (=> (not res!986389) (not e!819113))))

(declare-fun lt!638005 () SeekEntryResult!11794)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455671 (= res!986389 (= lt!638005 (Intermediate!11794 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98471 (_ BitVec 32)) SeekEntryResult!11794)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455671 (= lt!638005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638007 mask!2687) lt!638007 lt!638011 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98471)

(assert (=> b!1455671 (= lt!638007 (select (store (arr!47519 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455672 () Bool)

(declare-fun res!986392 () Bool)

(declare-fun e!819111 () Bool)

(assert (=> b!1455672 (=> (not res!986392) (not e!819111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455672 (= res!986392 (validKeyInArray!0 (select (arr!47519 a!2862) j!93)))))

(declare-fun b!1455673 () Bool)

(declare-fun e!819106 () Bool)

(assert (=> b!1455673 (= e!819106 e!819108)))

(declare-fun res!986401 () Bool)

(assert (=> b!1455673 (=> (not res!986401) (not e!819108))))

(declare-fun lt!638010 () SeekEntryResult!11794)

(assert (=> b!1455673 (= res!986401 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47519 a!2862) j!93) mask!2687) (select (arr!47519 a!2862) j!93) a!2862 mask!2687) lt!638010))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455673 (= lt!638010 (Intermediate!11794 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455674 () Bool)

(declare-fun res!986393 () Bool)

(assert (=> b!1455674 (=> (not res!986393) (not e!819113))))

(assert (=> b!1455674 (= res!986393 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!986395 () Bool)

(assert (=> start!125106 (=> (not res!986395) (not e!819111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125106 (= res!986395 (validMask!0 mask!2687))))

(assert (=> start!125106 e!819111))

(assert (=> start!125106 true))

(declare-fun array_inv!36464 (array!98471) Bool)

(assert (=> start!125106 (array_inv!36464 a!2862)))

(declare-fun b!1455675 () Bool)

(assert (=> b!1455675 (= e!819107 (= lt!638005 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638007 lt!638011 mask!2687)))))

(declare-fun b!1455676 () Bool)

(declare-fun e!819104 () Bool)

(assert (=> b!1455676 (= e!819113 (not e!819104))))

(declare-fun res!986397 () Bool)

(assert (=> b!1455676 (=> res!986397 e!819104)))

(assert (=> b!1455676 (= res!986397 (or (and (= (select (arr!47519 a!2862) index!646) (select (store (arr!47519 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47519 a!2862) index!646) (select (arr!47519 a!2862) j!93))) (= (select (arr!47519 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819105 () Bool)

(assert (=> b!1455676 e!819105))

(declare-fun res!986396 () Bool)

(assert (=> b!1455676 (=> (not res!986396) (not e!819105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98471 (_ BitVec 32)) Bool)

(assert (=> b!1455676 (= res!986396 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49032 0))(
  ( (Unit!49033) )
))
(declare-fun lt!638009 () Unit!49032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49032)

(assert (=> b!1455676 (= lt!638009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!638008 () (_ BitVec 32))

(declare-fun lt!638006 () SeekEntryResult!11794)

(declare-fun e!819110 () Bool)

(declare-fun b!1455677 () Bool)

(assert (=> b!1455677 (= e!819110 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638008 intermediateAfterIndex!19 lt!638007 lt!638011 mask!2687) lt!638006)))))

(declare-fun b!1455678 () Bool)

(declare-fun res!986387 () Bool)

(assert (=> b!1455678 (=> (not res!986387) (not e!819111))))

(assert (=> b!1455678 (= res!986387 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48070 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48070 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48070 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455679 () Bool)

(declare-fun res!986391 () Bool)

(assert (=> b!1455679 (=> (not res!986391) (not e!819111))))

(assert (=> b!1455679 (= res!986391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455680 () Bool)

(declare-fun res!986398 () Bool)

(assert (=> b!1455680 (=> (not res!986398) (not e!819113))))

(assert (=> b!1455680 (= res!986398 e!819107)))

(declare-fun c!134155 () Bool)

(assert (=> b!1455680 (= c!134155 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455681 () Bool)

(declare-fun res!986386 () Bool)

(declare-fun e!819112 () Bool)

(assert (=> b!1455681 (=> res!986386 e!819112)))

(assert (=> b!1455681 (= res!986386 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638008 (select (arr!47519 a!2862) j!93) a!2862 mask!2687) lt!638010)))))

(declare-fun b!1455682 () Bool)

(declare-fun res!986402 () Bool)

(assert (=> b!1455682 (=> (not res!986402) (not e!819111))))

(assert (=> b!1455682 (= res!986402 (validKeyInArray!0 (select (arr!47519 a!2862) i!1006)))))

(declare-fun b!1455683 () Bool)

(assert (=> b!1455683 (= e!819110 (not (= lt!638005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638008 lt!638007 lt!638011 mask!2687))))))

(declare-fun b!1455684 () Bool)

(declare-fun res!986394 () Bool)

(assert (=> b!1455684 (=> (not res!986394) (not e!819108))))

(assert (=> b!1455684 (= res!986394 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47519 a!2862) j!93) a!2862 mask!2687) lt!638010))))

(declare-fun b!1455685 () Bool)

(assert (=> b!1455685 (= e!819105 (and (or (= (select (arr!47519 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47519 a!2862) intermediateBeforeIndex!19) (select (arr!47519 a!2862) j!93))) (let ((bdg!53182 (select (store (arr!47519 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47519 a!2862) index!646) bdg!53182) (= (select (arr!47519 a!2862) index!646) (select (arr!47519 a!2862) j!93))) (= (select (arr!47519 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53182 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455686 () Bool)

(assert (=> b!1455686 (= e!819111 e!819106)))

(declare-fun res!986399 () Bool)

(assert (=> b!1455686 (=> (not res!986399) (not e!819106))))

(assert (=> b!1455686 (= res!986399 (= (select (store (arr!47519 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455686 (= lt!638011 (array!98472 (store (arr!47519 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48070 a!2862)))))

(declare-fun b!1455687 () Bool)

(declare-fun res!986390 () Bool)

(assert (=> b!1455687 (=> (not res!986390) (not e!819111))))

(assert (=> b!1455687 (= res!986390 (and (= (size!48070 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48070 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48070 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455688 () Bool)

(declare-fun res!986403 () Bool)

(assert (=> b!1455688 (=> (not res!986403) (not e!819111))))

(declare-datatypes ((List!34200 0))(
  ( (Nil!34197) (Cons!34196 (h!35546 (_ BitVec 64)) (t!48901 List!34200)) )
))
(declare-fun arrayNoDuplicates!0 (array!98471 (_ BitVec 32) List!34200) Bool)

(assert (=> b!1455688 (= res!986403 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34197))))

(declare-fun b!1455689 () Bool)

(assert (=> b!1455689 (= e!819104 e!819112)))

(declare-fun res!986400 () Bool)

(assert (=> b!1455689 (=> res!986400 e!819112)))

(assert (=> b!1455689 (= res!986400 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638008 #b00000000000000000000000000000000) (bvsge lt!638008 (size!48070 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455689 (= lt!638008 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455689 (= lt!638006 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638007 lt!638011 mask!2687))))

(assert (=> b!1455689 (= lt!638006 (seekEntryOrOpen!0 lt!638007 lt!638011 mask!2687))))

(declare-fun b!1455690 () Bool)

(declare-fun res!986388 () Bool)

(assert (=> b!1455690 (=> (not res!986388) (not e!819105))))

(assert (=> b!1455690 (= res!986388 (= (seekEntryOrOpen!0 (select (arr!47519 a!2862) j!93) a!2862 mask!2687) (Found!11794 j!93)))))

(declare-fun b!1455691 () Bool)

(assert (=> b!1455691 (= e!819112 true)))

(declare-fun lt!638004 () Bool)

(assert (=> b!1455691 (= lt!638004 e!819110)))

(declare-fun c!134156 () Bool)

(assert (=> b!1455691 (= c!134156 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125106 res!986395) b!1455687))

(assert (= (and b!1455687 res!986390) b!1455682))

(assert (= (and b!1455682 res!986402) b!1455672))

(assert (= (and b!1455672 res!986392) b!1455679))

(assert (= (and b!1455679 res!986391) b!1455688))

(assert (= (and b!1455688 res!986403) b!1455678))

(assert (= (and b!1455678 res!986387) b!1455686))

(assert (= (and b!1455686 res!986399) b!1455673))

(assert (= (and b!1455673 res!986401) b!1455684))

(assert (= (and b!1455684 res!986394) b!1455671))

(assert (= (and b!1455671 res!986389) b!1455680))

(assert (= (and b!1455680 c!134155) b!1455675))

(assert (= (and b!1455680 (not c!134155)) b!1455670))

(assert (= (and b!1455680 res!986398) b!1455674))

(assert (= (and b!1455674 res!986393) b!1455676))

(assert (= (and b!1455676 res!986396) b!1455690))

(assert (= (and b!1455690 res!986388) b!1455685))

(assert (= (and b!1455676 (not res!986397)) b!1455689))

(assert (= (and b!1455689 (not res!986400)) b!1455681))

(assert (= (and b!1455681 (not res!986386)) b!1455691))

(assert (= (and b!1455691 c!134156) b!1455683))

(assert (= (and b!1455691 (not c!134156)) b!1455677))

(declare-fun m!1343911 () Bool)

(assert (=> b!1455673 m!1343911))

(assert (=> b!1455673 m!1343911))

(declare-fun m!1343913 () Bool)

(assert (=> b!1455673 m!1343913))

(assert (=> b!1455673 m!1343913))

(assert (=> b!1455673 m!1343911))

(declare-fun m!1343915 () Bool)

(assert (=> b!1455673 m!1343915))

(declare-fun m!1343917 () Bool)

(assert (=> b!1455670 m!1343917))

(declare-fun m!1343919 () Bool)

(assert (=> b!1455670 m!1343919))

(declare-fun m!1343921 () Bool)

(assert (=> b!1455675 m!1343921))

(declare-fun m!1343923 () Bool)

(assert (=> b!1455686 m!1343923))

(declare-fun m!1343925 () Bool)

(assert (=> b!1455686 m!1343925))

(assert (=> b!1455681 m!1343911))

(assert (=> b!1455681 m!1343911))

(declare-fun m!1343927 () Bool)

(assert (=> b!1455681 m!1343927))

(declare-fun m!1343929 () Bool)

(assert (=> b!1455677 m!1343929))

(declare-fun m!1343931 () Bool)

(assert (=> b!1455688 m!1343931))

(assert (=> b!1455685 m!1343923))

(declare-fun m!1343933 () Bool)

(assert (=> b!1455685 m!1343933))

(declare-fun m!1343935 () Bool)

(assert (=> b!1455685 m!1343935))

(declare-fun m!1343937 () Bool)

(assert (=> b!1455685 m!1343937))

(assert (=> b!1455685 m!1343911))

(declare-fun m!1343939 () Bool)

(assert (=> b!1455683 m!1343939))

(declare-fun m!1343941 () Bool)

(assert (=> start!125106 m!1343941))

(declare-fun m!1343943 () Bool)

(assert (=> start!125106 m!1343943))

(declare-fun m!1343945 () Bool)

(assert (=> b!1455671 m!1343945))

(assert (=> b!1455671 m!1343945))

(declare-fun m!1343947 () Bool)

(assert (=> b!1455671 m!1343947))

(assert (=> b!1455671 m!1343923))

(declare-fun m!1343949 () Bool)

(assert (=> b!1455671 m!1343949))

(assert (=> b!1455684 m!1343911))

(assert (=> b!1455684 m!1343911))

(declare-fun m!1343951 () Bool)

(assert (=> b!1455684 m!1343951))

(declare-fun m!1343953 () Bool)

(assert (=> b!1455676 m!1343953))

(assert (=> b!1455676 m!1343923))

(assert (=> b!1455676 m!1343935))

(assert (=> b!1455676 m!1343937))

(declare-fun m!1343955 () Bool)

(assert (=> b!1455676 m!1343955))

(assert (=> b!1455676 m!1343911))

(declare-fun m!1343957 () Bool)

(assert (=> b!1455689 m!1343957))

(assert (=> b!1455689 m!1343917))

(assert (=> b!1455689 m!1343919))

(declare-fun m!1343959 () Bool)

(assert (=> b!1455682 m!1343959))

(assert (=> b!1455682 m!1343959))

(declare-fun m!1343961 () Bool)

(assert (=> b!1455682 m!1343961))

(assert (=> b!1455672 m!1343911))

(assert (=> b!1455672 m!1343911))

(declare-fun m!1343963 () Bool)

(assert (=> b!1455672 m!1343963))

(assert (=> b!1455690 m!1343911))

(assert (=> b!1455690 m!1343911))

(declare-fun m!1343965 () Bool)

(assert (=> b!1455690 m!1343965))

(declare-fun m!1343967 () Bool)

(assert (=> b!1455679 m!1343967))

(check-sat (not b!1455683) (not b!1455672) (not b!1455682) (not b!1455679) (not b!1455673) (not b!1455690) (not b!1455676) (not b!1455675) (not b!1455688) (not b!1455671) (not b!1455684) (not b!1455670) (not start!125106) (not b!1455681) (not b!1455677) (not b!1455689))
(check-sat)
