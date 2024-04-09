; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120418 () Bool)

(assert start!120418)

(declare-fun b!1401159 () Bool)

(declare-fun e!793395 () Bool)

(assert (=> b!1401159 (= e!793395 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10558 0))(
  ( (MissingZero!10558 (index!44608 (_ BitVec 32))) (Found!10558 (index!44609 (_ BitVec 32))) (Intermediate!10558 (undefined!11370 Bool) (index!44610 (_ BitVec 32)) (x!126252 (_ BitVec 32))) (Undefined!10558) (MissingVacant!10558 (index!44611 (_ BitVec 32))) )
))
(declare-fun lt!616731 () SeekEntryResult!10558)

(declare-fun lt!616728 () (_ BitVec 64))

(declare-datatypes ((array!95745 0))(
  ( (array!95746 (arr!46219 (Array (_ BitVec 32) (_ BitVec 64))) (size!46770 (_ BitVec 32))) )
))
(declare-fun lt!616732 () array!95745)

(declare-fun lt!616730 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95745 (_ BitVec 32)) SeekEntryResult!10558)

(assert (=> b!1401159 (= lt!616731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616730 lt!616728 lt!616732 mask!2840))))

(declare-fun b!1401160 () Bool)

(declare-fun res!939787 () Bool)

(declare-fun e!793393 () Bool)

(assert (=> b!1401160 (=> (not res!939787) (not e!793393))))

(declare-fun a!2901 () array!95745)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95745 (_ BitVec 32)) Bool)

(assert (=> b!1401160 (= res!939787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401161 () Bool)

(declare-fun res!939782 () Bool)

(assert (=> b!1401161 (=> (not res!939782) (not e!793393))))

(declare-datatypes ((List!32918 0))(
  ( (Nil!32915) (Cons!32914 (h!34162 (_ BitVec 64)) (t!47619 List!32918)) )
))
(declare-fun arrayNoDuplicates!0 (array!95745 (_ BitVec 32) List!32918) Bool)

(assert (=> b!1401161 (= res!939782 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32915))))

(declare-fun res!939781 () Bool)

(assert (=> start!120418 (=> (not res!939781) (not e!793393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120418 (= res!939781 (validMask!0 mask!2840))))

(assert (=> start!120418 e!793393))

(assert (=> start!120418 true))

(declare-fun array_inv!35164 (array!95745) Bool)

(assert (=> start!120418 (array_inv!35164 a!2901)))

(declare-fun b!1401162 () Bool)

(declare-fun e!793394 () Bool)

(declare-fun e!793396 () Bool)

(assert (=> b!1401162 (= e!793394 e!793396)))

(declare-fun res!939789 () Bool)

(assert (=> b!1401162 (=> res!939789 e!793396)))

(declare-fun lt!616734 () SeekEntryResult!10558)

(declare-fun lt!616729 () SeekEntryResult!10558)

(assert (=> b!1401162 (= res!939789 (or (= lt!616734 lt!616729) (not (is-Intermediate!10558 lt!616729))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401162 (= lt!616729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616728 mask!2840) lt!616728 lt!616732 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401162 (= lt!616728 (select (store (arr!46219 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401162 (= lt!616732 (array!95746 (store (arr!46219 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46770 a!2901)))))

(declare-fun b!1401163 () Bool)

(declare-fun e!793397 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95745 (_ BitVec 32)) SeekEntryResult!10558)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95745 (_ BitVec 32)) SeekEntryResult!10558)

(assert (=> b!1401163 (= e!793397 (= (seekEntryOrOpen!0 lt!616728 lt!616732 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126252 lt!616729) (index!44610 lt!616729) (index!44610 lt!616729) (select (arr!46219 a!2901) j!112) lt!616732 mask!2840)))))

(declare-fun b!1401164 () Bool)

(declare-fun e!793392 () Bool)

(assert (=> b!1401164 (= e!793392 (= (seekEntryOrOpen!0 (select (arr!46219 a!2901) j!112) a!2901 mask!2840) (Found!10558 j!112)))))

(declare-fun b!1401165 () Bool)

(assert (=> b!1401165 (= e!793393 (not e!793394))))

(declare-fun res!939788 () Bool)

(assert (=> b!1401165 (=> res!939788 e!793394)))

(assert (=> b!1401165 (= res!939788 (or (not (is-Intermediate!10558 lt!616734)) (undefined!11370 lt!616734)))))

(assert (=> b!1401165 e!793392))

(declare-fun res!939785 () Bool)

(assert (=> b!1401165 (=> (not res!939785) (not e!793392))))

(assert (=> b!1401165 (= res!939785 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47070 0))(
  ( (Unit!47071) )
))
(declare-fun lt!616733 () Unit!47070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47070)

(assert (=> b!1401165 (= lt!616733 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401165 (= lt!616734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616730 (select (arr!46219 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401165 (= lt!616730 (toIndex!0 (select (arr!46219 a!2901) j!112) mask!2840))))

(declare-fun b!1401166 () Bool)

(assert (=> b!1401166 (= e!793396 e!793395)))

(declare-fun res!939784 () Bool)

(assert (=> b!1401166 (=> res!939784 e!793395)))

(assert (=> b!1401166 (= res!939784 (or (bvslt (x!126252 lt!616734) #b00000000000000000000000000000000) (bvsgt (x!126252 lt!616734) #b01111111111111111111111111111110) (bvslt (x!126252 lt!616729) #b00000000000000000000000000000000) (bvsgt (x!126252 lt!616729) #b01111111111111111111111111111110) (bvslt lt!616730 #b00000000000000000000000000000000) (bvsge lt!616730 (size!46770 a!2901)) (bvslt (index!44610 lt!616734) #b00000000000000000000000000000000) (bvsge (index!44610 lt!616734) (size!46770 a!2901)) (bvslt (index!44610 lt!616729) #b00000000000000000000000000000000) (bvsge (index!44610 lt!616729) (size!46770 a!2901)) (not (= lt!616734 (Intermediate!10558 false (index!44610 lt!616734) (x!126252 lt!616734)))) (not (= lt!616729 (Intermediate!10558 false (index!44610 lt!616729) (x!126252 lt!616729))))))))

(assert (=> b!1401166 e!793397))

(declare-fun res!939786 () Bool)

(assert (=> b!1401166 (=> (not res!939786) (not e!793397))))

(assert (=> b!1401166 (= res!939786 (and (not (undefined!11370 lt!616729)) (= (index!44610 lt!616729) i!1037) (bvslt (x!126252 lt!616729) (x!126252 lt!616734)) (= (select (store (arr!46219 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44610 lt!616729)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616735 () Unit!47070)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47070)

(assert (=> b!1401166 (= lt!616735 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616730 (x!126252 lt!616734) (index!44610 lt!616734) (x!126252 lt!616729) (index!44610 lt!616729) (undefined!11370 lt!616729) mask!2840))))

(declare-fun b!1401167 () Bool)

(declare-fun res!939779 () Bool)

(assert (=> b!1401167 (=> (not res!939779) (not e!793393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401167 (= res!939779 (validKeyInArray!0 (select (arr!46219 a!2901) j!112)))))

(declare-fun b!1401168 () Bool)

(declare-fun res!939780 () Bool)

(assert (=> b!1401168 (=> (not res!939780) (not e!793393))))

(assert (=> b!1401168 (= res!939780 (and (= (size!46770 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46770 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46770 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401169 () Bool)

(declare-fun res!939783 () Bool)

(assert (=> b!1401169 (=> (not res!939783) (not e!793393))))

(assert (=> b!1401169 (= res!939783 (validKeyInArray!0 (select (arr!46219 a!2901) i!1037)))))

(assert (= (and start!120418 res!939781) b!1401168))

(assert (= (and b!1401168 res!939780) b!1401169))

(assert (= (and b!1401169 res!939783) b!1401167))

(assert (= (and b!1401167 res!939779) b!1401160))

(assert (= (and b!1401160 res!939787) b!1401161))

(assert (= (and b!1401161 res!939782) b!1401165))

(assert (= (and b!1401165 res!939785) b!1401164))

(assert (= (and b!1401165 (not res!939788)) b!1401162))

(assert (= (and b!1401162 (not res!939789)) b!1401166))

(assert (= (and b!1401166 res!939786) b!1401163))

(assert (= (and b!1401166 (not res!939784)) b!1401159))

(declare-fun m!1288937 () Bool)

(assert (=> b!1401164 m!1288937))

(assert (=> b!1401164 m!1288937))

(declare-fun m!1288939 () Bool)

(assert (=> b!1401164 m!1288939))

(declare-fun m!1288941 () Bool)

(assert (=> start!120418 m!1288941))

(declare-fun m!1288943 () Bool)

(assert (=> start!120418 m!1288943))

(declare-fun m!1288945 () Bool)

(assert (=> b!1401160 m!1288945))

(declare-fun m!1288947 () Bool)

(assert (=> b!1401162 m!1288947))

(assert (=> b!1401162 m!1288947))

(declare-fun m!1288949 () Bool)

(assert (=> b!1401162 m!1288949))

(declare-fun m!1288951 () Bool)

(assert (=> b!1401162 m!1288951))

(declare-fun m!1288953 () Bool)

(assert (=> b!1401162 m!1288953))

(declare-fun m!1288955 () Bool)

(assert (=> b!1401159 m!1288955))

(assert (=> b!1401167 m!1288937))

(assert (=> b!1401167 m!1288937))

(declare-fun m!1288957 () Bool)

(assert (=> b!1401167 m!1288957))

(declare-fun m!1288959 () Bool)

(assert (=> b!1401163 m!1288959))

(assert (=> b!1401163 m!1288937))

(assert (=> b!1401163 m!1288937))

(declare-fun m!1288961 () Bool)

(assert (=> b!1401163 m!1288961))

(assert (=> b!1401166 m!1288951))

(declare-fun m!1288963 () Bool)

(assert (=> b!1401166 m!1288963))

(declare-fun m!1288965 () Bool)

(assert (=> b!1401166 m!1288965))

(declare-fun m!1288967 () Bool)

(assert (=> b!1401161 m!1288967))

(assert (=> b!1401165 m!1288937))

(declare-fun m!1288969 () Bool)

(assert (=> b!1401165 m!1288969))

(assert (=> b!1401165 m!1288937))

(declare-fun m!1288971 () Bool)

(assert (=> b!1401165 m!1288971))

(declare-fun m!1288973 () Bool)

(assert (=> b!1401165 m!1288973))

(assert (=> b!1401165 m!1288937))

(declare-fun m!1288975 () Bool)

(assert (=> b!1401165 m!1288975))

(declare-fun m!1288977 () Bool)

(assert (=> b!1401169 m!1288977))

(assert (=> b!1401169 m!1288977))

(declare-fun m!1288979 () Bool)

(assert (=> b!1401169 m!1288979))

(push 1)

