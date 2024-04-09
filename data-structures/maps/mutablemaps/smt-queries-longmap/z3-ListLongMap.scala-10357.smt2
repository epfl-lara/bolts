; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121998 () Bool)

(assert start!121998)

(declare-fun b!1415248 () Bool)

(declare-fun e!801018 () Bool)

(declare-fun e!801020 () Bool)

(assert (=> b!1415248 (= e!801018 (not e!801020))))

(declare-fun res!951405 () Bool)

(assert (=> b!1415248 (=> res!951405 e!801020)))

(declare-datatypes ((SeekEntryResult!10961 0))(
  ( (MissingZero!10961 (index!46235 (_ BitVec 32))) (Found!10961 (index!46236 (_ BitVec 32))) (Intermediate!10961 (undefined!11773 Bool) (index!46237 (_ BitVec 32)) (x!127851 (_ BitVec 32))) (Undefined!10961) (MissingVacant!10961 (index!46238 (_ BitVec 32))) )
))
(declare-fun lt!624007 () SeekEntryResult!10961)

(get-info :version)

(assert (=> b!1415248 (= res!951405 (or (not ((_ is Intermediate!10961) lt!624007)) (undefined!11773 lt!624007)))))

(declare-fun e!801019 () Bool)

(assert (=> b!1415248 e!801019))

(declare-fun res!951400 () Bool)

(assert (=> b!1415248 (=> (not res!951400) (not e!801019))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96602 0))(
  ( (array!96603 (arr!46628 (Array (_ BitVec 32) (_ BitVec 64))) (size!47179 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96602)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96602 (_ BitVec 32)) Bool)

(assert (=> b!1415248 (= res!951400 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47846 0))(
  ( (Unit!47847) )
))
(declare-fun lt!624013 () Unit!47846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47846)

(assert (=> b!1415248 (= lt!624013 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624008 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96602 (_ BitVec 32)) SeekEntryResult!10961)

(assert (=> b!1415248 (= lt!624007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624008 (select (arr!46628 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415248 (= lt!624008 (toIndex!0 (select (arr!46628 a!2901) j!112) mask!2840))))

(declare-fun b!1415250 () Bool)

(declare-fun res!951407 () Bool)

(assert (=> b!1415250 (=> (not res!951407) (not e!801018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415250 (= res!951407 (validKeyInArray!0 (select (arr!46628 a!2901) j!112)))))

(declare-fun lt!624010 () array!96602)

(declare-fun lt!624012 () (_ BitVec 64))

(declare-fun b!1415251 () Bool)

(declare-fun lt!624011 () SeekEntryResult!10961)

(declare-fun e!801015 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96602 (_ BitVec 32)) SeekEntryResult!10961)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96602 (_ BitVec 32)) SeekEntryResult!10961)

(assert (=> b!1415251 (= e!801015 (= (seekEntryOrOpen!0 lt!624012 lt!624010 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127851 lt!624011) (index!46237 lt!624011) (index!46237 lt!624011) (select (arr!46628 a!2901) j!112) lt!624010 mask!2840)))))

(declare-fun b!1415252 () Bool)

(declare-fun e!801016 () Bool)

(assert (=> b!1415252 (= e!801020 e!801016)))

(declare-fun res!951404 () Bool)

(assert (=> b!1415252 (=> res!951404 e!801016)))

(assert (=> b!1415252 (= res!951404 (or (= lt!624007 lt!624011) (not ((_ is Intermediate!10961) lt!624011))))))

(assert (=> b!1415252 (= lt!624011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624012 mask!2840) lt!624012 lt!624010 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415252 (= lt!624012 (select (store (arr!46628 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415252 (= lt!624010 (array!96603 (store (arr!46628 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47179 a!2901)))))

(declare-fun b!1415253 () Bool)

(assert (=> b!1415253 (= e!801019 (= (seekEntryOrOpen!0 (select (arr!46628 a!2901) j!112) a!2901 mask!2840) (Found!10961 j!112)))))

(declare-fun b!1415254 () Bool)

(declare-fun res!951399 () Bool)

(assert (=> b!1415254 (=> (not res!951399) (not e!801018))))

(declare-datatypes ((List!33327 0))(
  ( (Nil!33324) (Cons!33323 (h!34610 (_ BitVec 64)) (t!48028 List!33327)) )
))
(declare-fun arrayNoDuplicates!0 (array!96602 (_ BitVec 32) List!33327) Bool)

(assert (=> b!1415254 (= res!951399 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33324))))

(declare-fun b!1415255 () Bool)

(declare-fun res!951403 () Bool)

(assert (=> b!1415255 (=> (not res!951403) (not e!801018))))

(assert (=> b!1415255 (= res!951403 (and (= (size!47179 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47179 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47179 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!951401 () Bool)

(assert (=> start!121998 (=> (not res!951401) (not e!801018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121998 (= res!951401 (validMask!0 mask!2840))))

(assert (=> start!121998 e!801018))

(assert (=> start!121998 true))

(declare-fun array_inv!35573 (array!96602) Bool)

(assert (=> start!121998 (array_inv!35573 a!2901)))

(declare-fun b!1415249 () Bool)

(assert (=> b!1415249 (= e!801016 true)))

(assert (=> b!1415249 e!801015))

(declare-fun res!951402 () Bool)

(assert (=> b!1415249 (=> (not res!951402) (not e!801015))))

(assert (=> b!1415249 (= res!951402 (and (not (undefined!11773 lt!624011)) (= (index!46237 lt!624011) i!1037) (bvslt (x!127851 lt!624011) (x!127851 lt!624007)) (= (select (store (arr!46628 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46237 lt!624011)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624009 () Unit!47846)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47846)

(assert (=> b!1415249 (= lt!624009 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624008 (x!127851 lt!624007) (index!46237 lt!624007) (x!127851 lt!624011) (index!46237 lt!624011) (undefined!11773 lt!624011) mask!2840))))

(declare-fun b!1415256 () Bool)

(declare-fun res!951408 () Bool)

(assert (=> b!1415256 (=> (not res!951408) (not e!801018))))

(assert (=> b!1415256 (= res!951408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415257 () Bool)

(declare-fun res!951406 () Bool)

(assert (=> b!1415257 (=> (not res!951406) (not e!801018))))

(assert (=> b!1415257 (= res!951406 (validKeyInArray!0 (select (arr!46628 a!2901) i!1037)))))

(assert (= (and start!121998 res!951401) b!1415255))

(assert (= (and b!1415255 res!951403) b!1415257))

(assert (= (and b!1415257 res!951406) b!1415250))

(assert (= (and b!1415250 res!951407) b!1415256))

(assert (= (and b!1415256 res!951408) b!1415254))

(assert (= (and b!1415254 res!951399) b!1415248))

(assert (= (and b!1415248 res!951400) b!1415253))

(assert (= (and b!1415248 (not res!951405)) b!1415252))

(assert (= (and b!1415252 (not res!951404)) b!1415249))

(assert (= (and b!1415249 res!951402) b!1415251))

(declare-fun m!1305545 () Bool)

(assert (=> b!1415249 m!1305545))

(declare-fun m!1305547 () Bool)

(assert (=> b!1415249 m!1305547))

(declare-fun m!1305549 () Bool)

(assert (=> b!1415249 m!1305549))

(declare-fun m!1305551 () Bool)

(assert (=> b!1415253 m!1305551))

(assert (=> b!1415253 m!1305551))

(declare-fun m!1305553 () Bool)

(assert (=> b!1415253 m!1305553))

(declare-fun m!1305555 () Bool)

(assert (=> b!1415251 m!1305555))

(assert (=> b!1415251 m!1305551))

(assert (=> b!1415251 m!1305551))

(declare-fun m!1305557 () Bool)

(assert (=> b!1415251 m!1305557))

(declare-fun m!1305559 () Bool)

(assert (=> b!1415256 m!1305559))

(declare-fun m!1305561 () Bool)

(assert (=> b!1415252 m!1305561))

(assert (=> b!1415252 m!1305561))

(declare-fun m!1305563 () Bool)

(assert (=> b!1415252 m!1305563))

(assert (=> b!1415252 m!1305545))

(declare-fun m!1305565 () Bool)

(assert (=> b!1415252 m!1305565))

(assert (=> b!1415248 m!1305551))

(declare-fun m!1305567 () Bool)

(assert (=> b!1415248 m!1305567))

(assert (=> b!1415248 m!1305551))

(assert (=> b!1415248 m!1305551))

(declare-fun m!1305569 () Bool)

(assert (=> b!1415248 m!1305569))

(declare-fun m!1305571 () Bool)

(assert (=> b!1415248 m!1305571))

(declare-fun m!1305573 () Bool)

(assert (=> b!1415248 m!1305573))

(declare-fun m!1305575 () Bool)

(assert (=> b!1415257 m!1305575))

(assert (=> b!1415257 m!1305575))

(declare-fun m!1305577 () Bool)

(assert (=> b!1415257 m!1305577))

(assert (=> b!1415250 m!1305551))

(assert (=> b!1415250 m!1305551))

(declare-fun m!1305579 () Bool)

(assert (=> b!1415250 m!1305579))

(declare-fun m!1305581 () Bool)

(assert (=> b!1415254 m!1305581))

(declare-fun m!1305583 () Bool)

(assert (=> start!121998 m!1305583))

(declare-fun m!1305585 () Bool)

(assert (=> start!121998 m!1305585))

(check-sat (not b!1415254) (not b!1415248) (not b!1415256) (not b!1415252) (not start!121998) (not b!1415251) (not b!1415250) (not b!1415257) (not b!1415253) (not b!1415249))
(check-sat)
