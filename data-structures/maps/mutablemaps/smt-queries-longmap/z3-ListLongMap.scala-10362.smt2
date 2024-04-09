; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122028 () Bool)

(assert start!122028)

(declare-fun b!1415712 () Bool)

(declare-fun e!801299 () Bool)

(assert (=> b!1415712 (= e!801299 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96632 0))(
  ( (array!96633 (arr!46643 (Array (_ BitVec 32) (_ BitVec 64))) (size!47194 (_ BitVec 32))) )
))
(declare-fun lt!624333 () array!96632)

(declare-fun lt!624327 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10976 0))(
  ( (MissingZero!10976 (index!46295 (_ BitVec 32))) (Found!10976 (index!46296 (_ BitVec 32))) (Intermediate!10976 (undefined!11788 Bool) (index!46297 (_ BitVec 32)) (x!127906 (_ BitVec 32))) (Undefined!10976) (MissingVacant!10976 (index!46298 (_ BitVec 32))) )
))
(declare-fun lt!624328 () SeekEntryResult!10976)

(declare-fun lt!624332 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96632 (_ BitVec 32)) SeekEntryResult!10976)

(assert (=> b!1415712 (= lt!624328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624332 lt!624327 lt!624333 mask!2840))))

(declare-fun b!1415713 () Bool)

(declare-fun e!801305 () Bool)

(assert (=> b!1415713 (= e!801305 e!801299)))

(declare-fun res!951870 () Bool)

(assert (=> b!1415713 (=> res!951870 e!801299)))

(declare-fun a!2901 () array!96632)

(declare-fun lt!624331 () SeekEntryResult!10976)

(declare-fun lt!624330 () SeekEntryResult!10976)

(assert (=> b!1415713 (= res!951870 (or (bvslt (x!127906 lt!624331) #b00000000000000000000000000000000) (bvsgt (x!127906 lt!624331) #b01111111111111111111111111111110) (bvslt (x!127906 lt!624330) #b00000000000000000000000000000000) (bvsgt (x!127906 lt!624330) #b01111111111111111111111111111110) (bvslt lt!624332 #b00000000000000000000000000000000) (bvsge lt!624332 (size!47194 a!2901)) (bvslt (index!46297 lt!624331) #b00000000000000000000000000000000) (bvsge (index!46297 lt!624331) (size!47194 a!2901)) (bvslt (index!46297 lt!624330) #b00000000000000000000000000000000) (bvsge (index!46297 lt!624330) (size!47194 a!2901)) (not (= lt!624331 (Intermediate!10976 false (index!46297 lt!624331) (x!127906 lt!624331)))) (not (= lt!624330 (Intermediate!10976 false (index!46297 lt!624330) (x!127906 lt!624330))))))))

(declare-fun e!801303 () Bool)

(assert (=> b!1415713 e!801303))

(declare-fun res!951867 () Bool)

(assert (=> b!1415713 (=> (not res!951867) (not e!801303))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415713 (= res!951867 (and (not (undefined!11788 lt!624330)) (= (index!46297 lt!624330) i!1037) (bvslt (x!127906 lt!624330) (x!127906 lt!624331)) (= (select (store (arr!46643 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46297 lt!624330)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47876 0))(
  ( (Unit!47877) )
))
(declare-fun lt!624334 () Unit!47876)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47876)

(assert (=> b!1415713 (= lt!624334 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624332 (x!127906 lt!624331) (index!46297 lt!624331) (x!127906 lt!624330) (index!46297 lt!624330) (undefined!11788 lt!624330) mask!2840))))

(declare-fun b!1415714 () Bool)

(declare-fun res!951865 () Bool)

(declare-fun e!801301 () Bool)

(assert (=> b!1415714 (=> (not res!951865) (not e!801301))))

(declare-datatypes ((List!33342 0))(
  ( (Nil!33339) (Cons!33338 (h!34625 (_ BitVec 64)) (t!48043 List!33342)) )
))
(declare-fun arrayNoDuplicates!0 (array!96632 (_ BitVec 32) List!33342) Bool)

(assert (=> b!1415714 (= res!951865 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33339))))

(declare-fun b!1415715 () Bool)

(declare-fun e!801304 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96632 (_ BitVec 32)) SeekEntryResult!10976)

(assert (=> b!1415715 (= e!801304 (= (seekEntryOrOpen!0 (select (arr!46643 a!2901) j!112) a!2901 mask!2840) (Found!10976 j!112)))))

(declare-fun b!1415716 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96632 (_ BitVec 32)) SeekEntryResult!10976)

(assert (=> b!1415716 (= e!801303 (= (seekEntryOrOpen!0 lt!624327 lt!624333 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127906 lt!624330) (index!46297 lt!624330) (index!46297 lt!624330) (select (arr!46643 a!2901) j!112) lt!624333 mask!2840)))))

(declare-fun b!1415717 () Bool)

(declare-fun res!951872 () Bool)

(assert (=> b!1415717 (=> (not res!951872) (not e!801301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96632 (_ BitVec 32)) Bool)

(assert (=> b!1415717 (= res!951872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415718 () Bool)

(declare-fun res!951873 () Bool)

(assert (=> b!1415718 (=> (not res!951873) (not e!801301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415718 (= res!951873 (validKeyInArray!0 (select (arr!46643 a!2901) i!1037)))))

(declare-fun res!951864 () Bool)

(assert (=> start!122028 (=> (not res!951864) (not e!801301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122028 (= res!951864 (validMask!0 mask!2840))))

(assert (=> start!122028 e!801301))

(assert (=> start!122028 true))

(declare-fun array_inv!35588 (array!96632) Bool)

(assert (=> start!122028 (array_inv!35588 a!2901)))

(declare-fun b!1415719 () Bool)

(declare-fun res!951863 () Bool)

(assert (=> b!1415719 (=> (not res!951863) (not e!801301))))

(assert (=> b!1415719 (= res!951863 (and (= (size!47194 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47194 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47194 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415720 () Bool)

(declare-fun res!951868 () Bool)

(assert (=> b!1415720 (=> (not res!951868) (not e!801301))))

(assert (=> b!1415720 (= res!951868 (validKeyInArray!0 (select (arr!46643 a!2901) j!112)))))

(declare-fun b!1415721 () Bool)

(declare-fun e!801302 () Bool)

(assert (=> b!1415721 (= e!801302 e!801305)))

(declare-fun res!951866 () Bool)

(assert (=> b!1415721 (=> res!951866 e!801305)))

(get-info :version)

(assert (=> b!1415721 (= res!951866 (or (= lt!624331 lt!624330) (not ((_ is Intermediate!10976) lt!624330))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415721 (= lt!624330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624327 mask!2840) lt!624327 lt!624333 mask!2840))))

(assert (=> b!1415721 (= lt!624327 (select (store (arr!46643 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415721 (= lt!624333 (array!96633 (store (arr!46643 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47194 a!2901)))))

(declare-fun b!1415722 () Bool)

(assert (=> b!1415722 (= e!801301 (not e!801302))))

(declare-fun res!951871 () Bool)

(assert (=> b!1415722 (=> res!951871 e!801302)))

(assert (=> b!1415722 (= res!951871 (or (not ((_ is Intermediate!10976) lt!624331)) (undefined!11788 lt!624331)))))

(assert (=> b!1415722 e!801304))

(declare-fun res!951869 () Bool)

(assert (=> b!1415722 (=> (not res!951869) (not e!801304))))

(assert (=> b!1415722 (= res!951869 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624329 () Unit!47876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47876)

(assert (=> b!1415722 (= lt!624329 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415722 (= lt!624331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624332 (select (arr!46643 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415722 (= lt!624332 (toIndex!0 (select (arr!46643 a!2901) j!112) mask!2840))))

(assert (= (and start!122028 res!951864) b!1415719))

(assert (= (and b!1415719 res!951863) b!1415718))

(assert (= (and b!1415718 res!951873) b!1415720))

(assert (= (and b!1415720 res!951868) b!1415717))

(assert (= (and b!1415717 res!951872) b!1415714))

(assert (= (and b!1415714 res!951865) b!1415722))

(assert (= (and b!1415722 res!951869) b!1415715))

(assert (= (and b!1415722 (not res!951871)) b!1415721))

(assert (= (and b!1415721 (not res!951866)) b!1415713))

(assert (= (and b!1415713 res!951867) b!1415716))

(assert (= (and b!1415713 (not res!951870)) b!1415712))

(declare-fun m!1306183 () Bool)

(assert (=> b!1415715 m!1306183))

(assert (=> b!1415715 m!1306183))

(declare-fun m!1306185 () Bool)

(assert (=> b!1415715 m!1306185))

(declare-fun m!1306187 () Bool)

(assert (=> b!1415718 m!1306187))

(assert (=> b!1415718 m!1306187))

(declare-fun m!1306189 () Bool)

(assert (=> b!1415718 m!1306189))

(declare-fun m!1306191 () Bool)

(assert (=> b!1415721 m!1306191))

(assert (=> b!1415721 m!1306191))

(declare-fun m!1306193 () Bool)

(assert (=> b!1415721 m!1306193))

(declare-fun m!1306195 () Bool)

(assert (=> b!1415721 m!1306195))

(declare-fun m!1306197 () Bool)

(assert (=> b!1415721 m!1306197))

(declare-fun m!1306199 () Bool)

(assert (=> b!1415712 m!1306199))

(declare-fun m!1306201 () Bool)

(assert (=> b!1415716 m!1306201))

(assert (=> b!1415716 m!1306183))

(assert (=> b!1415716 m!1306183))

(declare-fun m!1306203 () Bool)

(assert (=> b!1415716 m!1306203))

(assert (=> b!1415722 m!1306183))

(declare-fun m!1306205 () Bool)

(assert (=> b!1415722 m!1306205))

(assert (=> b!1415722 m!1306183))

(assert (=> b!1415722 m!1306183))

(declare-fun m!1306207 () Bool)

(assert (=> b!1415722 m!1306207))

(declare-fun m!1306209 () Bool)

(assert (=> b!1415722 m!1306209))

(declare-fun m!1306211 () Bool)

(assert (=> b!1415722 m!1306211))

(declare-fun m!1306213 () Bool)

(assert (=> start!122028 m!1306213))

(declare-fun m!1306215 () Bool)

(assert (=> start!122028 m!1306215))

(assert (=> b!1415713 m!1306195))

(declare-fun m!1306217 () Bool)

(assert (=> b!1415713 m!1306217))

(declare-fun m!1306219 () Bool)

(assert (=> b!1415713 m!1306219))

(declare-fun m!1306221 () Bool)

(assert (=> b!1415717 m!1306221))

(declare-fun m!1306223 () Bool)

(assert (=> b!1415714 m!1306223))

(assert (=> b!1415720 m!1306183))

(assert (=> b!1415720 m!1306183))

(declare-fun m!1306225 () Bool)

(assert (=> b!1415720 m!1306225))

(check-sat (not b!1415715) (not b!1415714) (not b!1415717) (not b!1415713) (not b!1415721) (not b!1415712) (not b!1415720) (not b!1415718) (not start!122028) (not b!1415722) (not b!1415716))
(check-sat)
