; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120426 () Bool)

(assert start!120426)

(declare-fun b!1401291 () Bool)

(declare-fun res!939918 () Bool)

(declare-fun e!793475 () Bool)

(assert (=> b!1401291 (=> (not res!939918) (not e!793475))))

(declare-datatypes ((array!95753 0))(
  ( (array!95754 (arr!46223 (Array (_ BitVec 32) (_ BitVec 64))) (size!46774 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95753)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95753 (_ BitVec 32)) Bool)

(assert (=> b!1401291 (= res!939918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!793480 () Bool)

(declare-fun b!1401292 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10562 0))(
  ( (MissingZero!10562 (index!44624 (_ BitVec 32))) (Found!10562 (index!44625 (_ BitVec 32))) (Intermediate!10562 (undefined!11374 Bool) (index!44626 (_ BitVec 32)) (x!126264 (_ BitVec 32))) (Undefined!10562) (MissingVacant!10562 (index!44627 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95753 (_ BitVec 32)) SeekEntryResult!10562)

(assert (=> b!1401292 (= e!793480 (= (seekEntryOrOpen!0 (select (arr!46223 a!2901) j!112) a!2901 mask!2840) (Found!10562 j!112)))))

(declare-fun b!1401293 () Bool)

(declare-fun res!939921 () Bool)

(assert (=> b!1401293 (=> (not res!939921) (not e!793475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401293 (= res!939921 (validKeyInArray!0 (select (arr!46223 a!2901) j!112)))))

(declare-fun b!1401294 () Bool)

(declare-fun e!793478 () Bool)

(declare-fun e!793479 () Bool)

(assert (=> b!1401294 (= e!793478 e!793479)))

(declare-fun res!939913 () Bool)

(assert (=> b!1401294 (=> res!939913 e!793479)))

(declare-fun lt!616824 () SeekEntryResult!10562)

(declare-fun lt!616827 () SeekEntryResult!10562)

(get-info :version)

(assert (=> b!1401294 (= res!939913 (or (= lt!616824 lt!616827) (not ((_ is Intermediate!10562) lt!616827))))))

(declare-fun lt!616830 () array!95753)

(declare-fun lt!616825 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95753 (_ BitVec 32)) SeekEntryResult!10562)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401294 (= lt!616827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616825 mask!2840) lt!616825 lt!616830 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401294 (= lt!616825 (select (store (arr!46223 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401294 (= lt!616830 (array!95754 (store (arr!46223 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46774 a!2901)))))

(declare-fun b!1401295 () Bool)

(declare-fun res!939916 () Bool)

(assert (=> b!1401295 (=> (not res!939916) (not e!793475))))

(assert (=> b!1401295 (= res!939916 (validKeyInArray!0 (select (arr!46223 a!2901) i!1037)))))

(declare-fun b!1401296 () Bool)

(declare-fun e!793481 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95753 (_ BitVec 32)) SeekEntryResult!10562)

(assert (=> b!1401296 (= e!793481 (= (seekEntryOrOpen!0 lt!616825 lt!616830 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126264 lt!616827) (index!44626 lt!616827) (index!44626 lt!616827) (select (arr!46223 a!2901) j!112) lt!616830 mask!2840)))))

(declare-fun b!1401297 () Bool)

(declare-fun e!793477 () Bool)

(assert (=> b!1401297 (= e!793477 true)))

(declare-fun lt!616831 () SeekEntryResult!10562)

(declare-fun lt!616828 () (_ BitVec 32))

(assert (=> b!1401297 (= lt!616831 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616828 lt!616825 lt!616830 mask!2840))))

(declare-fun b!1401298 () Bool)

(assert (=> b!1401298 (= e!793475 (not e!793478))))

(declare-fun res!939919 () Bool)

(assert (=> b!1401298 (=> res!939919 e!793478)))

(assert (=> b!1401298 (= res!939919 (or (not ((_ is Intermediate!10562) lt!616824)) (undefined!11374 lt!616824)))))

(assert (=> b!1401298 e!793480))

(declare-fun res!939915 () Bool)

(assert (=> b!1401298 (=> (not res!939915) (not e!793480))))

(assert (=> b!1401298 (= res!939915 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47078 0))(
  ( (Unit!47079) )
))
(declare-fun lt!616829 () Unit!47078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47078)

(assert (=> b!1401298 (= lt!616829 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401298 (= lt!616824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616828 (select (arr!46223 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401298 (= lt!616828 (toIndex!0 (select (arr!46223 a!2901) j!112) mask!2840))))

(declare-fun res!939914 () Bool)

(assert (=> start!120426 (=> (not res!939914) (not e!793475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120426 (= res!939914 (validMask!0 mask!2840))))

(assert (=> start!120426 e!793475))

(assert (=> start!120426 true))

(declare-fun array_inv!35168 (array!95753) Bool)

(assert (=> start!120426 (array_inv!35168 a!2901)))

(declare-fun b!1401299 () Bool)

(declare-fun res!939912 () Bool)

(assert (=> b!1401299 (=> (not res!939912) (not e!793475))))

(declare-datatypes ((List!32922 0))(
  ( (Nil!32919) (Cons!32918 (h!34166 (_ BitVec 64)) (t!47623 List!32922)) )
))
(declare-fun arrayNoDuplicates!0 (array!95753 (_ BitVec 32) List!32922) Bool)

(assert (=> b!1401299 (= res!939912 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32919))))

(declare-fun b!1401300 () Bool)

(declare-fun res!939917 () Bool)

(assert (=> b!1401300 (=> (not res!939917) (not e!793475))))

(assert (=> b!1401300 (= res!939917 (and (= (size!46774 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46774 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46774 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401301 () Bool)

(assert (=> b!1401301 (= e!793479 e!793477)))

(declare-fun res!939920 () Bool)

(assert (=> b!1401301 (=> res!939920 e!793477)))

(assert (=> b!1401301 (= res!939920 (or (bvslt (x!126264 lt!616824) #b00000000000000000000000000000000) (bvsgt (x!126264 lt!616824) #b01111111111111111111111111111110) (bvslt (x!126264 lt!616827) #b00000000000000000000000000000000) (bvsgt (x!126264 lt!616827) #b01111111111111111111111111111110) (bvslt lt!616828 #b00000000000000000000000000000000) (bvsge lt!616828 (size!46774 a!2901)) (bvslt (index!44626 lt!616824) #b00000000000000000000000000000000) (bvsge (index!44626 lt!616824) (size!46774 a!2901)) (bvslt (index!44626 lt!616827) #b00000000000000000000000000000000) (bvsge (index!44626 lt!616827) (size!46774 a!2901)) (not (= lt!616824 (Intermediate!10562 false (index!44626 lt!616824) (x!126264 lt!616824)))) (not (= lt!616827 (Intermediate!10562 false (index!44626 lt!616827) (x!126264 lt!616827))))))))

(assert (=> b!1401301 e!793481))

(declare-fun res!939911 () Bool)

(assert (=> b!1401301 (=> (not res!939911) (not e!793481))))

(assert (=> b!1401301 (= res!939911 (and (not (undefined!11374 lt!616827)) (= (index!44626 lt!616827) i!1037) (bvslt (x!126264 lt!616827) (x!126264 lt!616824)) (= (select (store (arr!46223 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44626 lt!616827)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616826 () Unit!47078)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47078)

(assert (=> b!1401301 (= lt!616826 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616828 (x!126264 lt!616824) (index!44626 lt!616824) (x!126264 lt!616827) (index!44626 lt!616827) (undefined!11374 lt!616827) mask!2840))))

(assert (= (and start!120426 res!939914) b!1401300))

(assert (= (and b!1401300 res!939917) b!1401295))

(assert (= (and b!1401295 res!939916) b!1401293))

(assert (= (and b!1401293 res!939921) b!1401291))

(assert (= (and b!1401291 res!939918) b!1401299))

(assert (= (and b!1401299 res!939912) b!1401298))

(assert (= (and b!1401298 res!939915) b!1401292))

(assert (= (and b!1401298 (not res!939919)) b!1401294))

(assert (= (and b!1401294 (not res!939913)) b!1401301))

(assert (= (and b!1401301 res!939911) b!1401296))

(assert (= (and b!1401301 (not res!939920)) b!1401297))

(declare-fun m!1289113 () Bool)

(assert (=> b!1401299 m!1289113))

(declare-fun m!1289115 () Bool)

(assert (=> start!120426 m!1289115))

(declare-fun m!1289117 () Bool)

(assert (=> start!120426 m!1289117))

(declare-fun m!1289119 () Bool)

(assert (=> b!1401295 m!1289119))

(assert (=> b!1401295 m!1289119))

(declare-fun m!1289121 () Bool)

(assert (=> b!1401295 m!1289121))

(declare-fun m!1289123 () Bool)

(assert (=> b!1401298 m!1289123))

(declare-fun m!1289125 () Bool)

(assert (=> b!1401298 m!1289125))

(assert (=> b!1401298 m!1289123))

(declare-fun m!1289127 () Bool)

(assert (=> b!1401298 m!1289127))

(assert (=> b!1401298 m!1289123))

(declare-fun m!1289129 () Bool)

(assert (=> b!1401298 m!1289129))

(declare-fun m!1289131 () Bool)

(assert (=> b!1401298 m!1289131))

(declare-fun m!1289133 () Bool)

(assert (=> b!1401296 m!1289133))

(assert (=> b!1401296 m!1289123))

(assert (=> b!1401296 m!1289123))

(declare-fun m!1289135 () Bool)

(assert (=> b!1401296 m!1289135))

(declare-fun m!1289137 () Bool)

(assert (=> b!1401291 m!1289137))

(declare-fun m!1289139 () Bool)

(assert (=> b!1401301 m!1289139))

(declare-fun m!1289141 () Bool)

(assert (=> b!1401301 m!1289141))

(declare-fun m!1289143 () Bool)

(assert (=> b!1401301 m!1289143))

(assert (=> b!1401293 m!1289123))

(assert (=> b!1401293 m!1289123))

(declare-fun m!1289145 () Bool)

(assert (=> b!1401293 m!1289145))

(assert (=> b!1401292 m!1289123))

(assert (=> b!1401292 m!1289123))

(declare-fun m!1289147 () Bool)

(assert (=> b!1401292 m!1289147))

(declare-fun m!1289149 () Bool)

(assert (=> b!1401297 m!1289149))

(declare-fun m!1289151 () Bool)

(assert (=> b!1401294 m!1289151))

(assert (=> b!1401294 m!1289151))

(declare-fun m!1289153 () Bool)

(assert (=> b!1401294 m!1289153))

(assert (=> b!1401294 m!1289139))

(declare-fun m!1289155 () Bool)

(assert (=> b!1401294 m!1289155))

(check-sat (not b!1401294) (not b!1401301) (not b!1401298) (not b!1401297) (not b!1401296) (not b!1401293) (not b!1401299) (not start!120426) (not b!1401292) (not b!1401291) (not b!1401295))
(check-sat)
