; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122034 () Bool)

(assert start!122034)

(declare-fun b!1415811 () Bool)

(declare-fun e!801366 () Bool)

(declare-fun e!801367 () Bool)

(assert (=> b!1415811 (= e!801366 e!801367)))

(declare-fun res!951964 () Bool)

(assert (=> b!1415811 (=> res!951964 e!801367)))

(declare-datatypes ((SeekEntryResult!10979 0))(
  ( (MissingZero!10979 (index!46307 (_ BitVec 32))) (Found!10979 (index!46308 (_ BitVec 32))) (Intermediate!10979 (undefined!11791 Bool) (index!46309 (_ BitVec 32)) (x!127917 (_ BitVec 32))) (Undefined!10979) (MissingVacant!10979 (index!46310 (_ BitVec 32))) )
))
(declare-fun lt!624401 () SeekEntryResult!10979)

(declare-fun lt!624400 () SeekEntryResult!10979)

(get-info :version)

(assert (=> b!1415811 (= res!951964 (or (= lt!624401 lt!624400) (not ((_ is Intermediate!10979) lt!624400))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624405 () (_ BitVec 64))

(declare-datatypes ((array!96638 0))(
  ( (array!96639 (arr!46646 (Array (_ BitVec 32) (_ BitVec 64))) (size!47197 (_ BitVec 32))) )
))
(declare-fun lt!624402 () array!96638)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96638 (_ BitVec 32)) SeekEntryResult!10979)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415811 (= lt!624400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624405 mask!2840) lt!624405 lt!624402 mask!2840))))

(declare-fun a!2901 () array!96638)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415811 (= lt!624405 (select (store (arr!46646 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415811 (= lt!624402 (array!96639 (store (arr!46646 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47197 a!2901)))))

(declare-fun b!1415812 () Bool)

(declare-fun res!951965 () Bool)

(declare-fun e!801364 () Bool)

(assert (=> b!1415812 (=> (not res!951965) (not e!801364))))

(declare-datatypes ((List!33345 0))(
  ( (Nil!33342) (Cons!33341 (h!34628 (_ BitVec 64)) (t!48046 List!33345)) )
))
(declare-fun arrayNoDuplicates!0 (array!96638 (_ BitVec 32) List!33345) Bool)

(assert (=> b!1415812 (= res!951965 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33342))))

(declare-fun b!1415813 () Bool)

(declare-fun e!801362 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96638 (_ BitVec 32)) SeekEntryResult!10979)

(assert (=> b!1415813 (= e!801362 (= (seekEntryOrOpen!0 (select (arr!46646 a!2901) j!112) a!2901 mask!2840) (Found!10979 j!112)))))

(declare-fun b!1415814 () Bool)

(declare-fun res!951968 () Bool)

(assert (=> b!1415814 (=> (not res!951968) (not e!801364))))

(assert (=> b!1415814 (= res!951968 (and (= (size!47197 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47197 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47197 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415815 () Bool)

(assert (=> b!1415815 (= e!801364 (not e!801366))))

(declare-fun res!951972 () Bool)

(assert (=> b!1415815 (=> res!951972 e!801366)))

(assert (=> b!1415815 (= res!951972 (or (not ((_ is Intermediate!10979) lt!624401)) (undefined!11791 lt!624401)))))

(assert (=> b!1415815 e!801362))

(declare-fun res!951963 () Bool)

(assert (=> b!1415815 (=> (not res!951963) (not e!801362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96638 (_ BitVec 32)) Bool)

(assert (=> b!1415815 (= res!951963 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47882 0))(
  ( (Unit!47883) )
))
(declare-fun lt!624403 () Unit!47882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47882)

(assert (=> b!1415815 (= lt!624403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624406 () (_ BitVec 32))

(assert (=> b!1415815 (= lt!624401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624406 (select (arr!46646 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415815 (= lt!624406 (toIndex!0 (select (arr!46646 a!2901) j!112) mask!2840))))

(declare-fun b!1415816 () Bool)

(declare-fun e!801363 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96638 (_ BitVec 32)) SeekEntryResult!10979)

(assert (=> b!1415816 (= e!801363 (= (seekEntryOrOpen!0 lt!624405 lt!624402 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127917 lt!624400) (index!46309 lt!624400) (index!46309 lt!624400) (select (arr!46646 a!2901) j!112) lt!624402 mask!2840)))))

(declare-fun b!1415817 () Bool)

(declare-fun res!951971 () Bool)

(assert (=> b!1415817 (=> (not res!951971) (not e!801364))))

(assert (=> b!1415817 (= res!951971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415818 () Bool)

(declare-fun e!801368 () Bool)

(assert (=> b!1415818 (= e!801368 true)))

(declare-fun lt!624399 () SeekEntryResult!10979)

(assert (=> b!1415818 (= lt!624399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624406 lt!624405 lt!624402 mask!2840))))

(declare-fun b!1415819 () Bool)

(declare-fun res!951967 () Bool)

(assert (=> b!1415819 (=> (not res!951967) (not e!801364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415819 (= res!951967 (validKeyInArray!0 (select (arr!46646 a!2901) j!112)))))

(declare-fun res!951962 () Bool)

(assert (=> start!122034 (=> (not res!951962) (not e!801364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122034 (= res!951962 (validMask!0 mask!2840))))

(assert (=> start!122034 e!801364))

(assert (=> start!122034 true))

(declare-fun array_inv!35591 (array!96638) Bool)

(assert (=> start!122034 (array_inv!35591 a!2901)))

(declare-fun b!1415820 () Bool)

(declare-fun res!951969 () Bool)

(assert (=> b!1415820 (=> (not res!951969) (not e!801364))))

(assert (=> b!1415820 (= res!951969 (validKeyInArray!0 (select (arr!46646 a!2901) i!1037)))))

(declare-fun b!1415821 () Bool)

(assert (=> b!1415821 (= e!801367 e!801368)))

(declare-fun res!951970 () Bool)

(assert (=> b!1415821 (=> res!951970 e!801368)))

(assert (=> b!1415821 (= res!951970 (or (bvslt (x!127917 lt!624401) #b00000000000000000000000000000000) (bvsgt (x!127917 lt!624401) #b01111111111111111111111111111110) (bvslt (x!127917 lt!624400) #b00000000000000000000000000000000) (bvsgt (x!127917 lt!624400) #b01111111111111111111111111111110) (bvslt lt!624406 #b00000000000000000000000000000000) (bvsge lt!624406 (size!47197 a!2901)) (bvslt (index!46309 lt!624401) #b00000000000000000000000000000000) (bvsge (index!46309 lt!624401) (size!47197 a!2901)) (bvslt (index!46309 lt!624400) #b00000000000000000000000000000000) (bvsge (index!46309 lt!624400) (size!47197 a!2901)) (not (= lt!624401 (Intermediate!10979 false (index!46309 lt!624401) (x!127917 lt!624401)))) (not (= lt!624400 (Intermediate!10979 false (index!46309 lt!624400) (x!127917 lt!624400))))))))

(assert (=> b!1415821 e!801363))

(declare-fun res!951966 () Bool)

(assert (=> b!1415821 (=> (not res!951966) (not e!801363))))

(assert (=> b!1415821 (= res!951966 (and (not (undefined!11791 lt!624400)) (= (index!46309 lt!624400) i!1037) (bvslt (x!127917 lt!624400) (x!127917 lt!624401)) (= (select (store (arr!46646 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46309 lt!624400)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624404 () Unit!47882)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47882)

(assert (=> b!1415821 (= lt!624404 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624406 (x!127917 lt!624401) (index!46309 lt!624401) (x!127917 lt!624400) (index!46309 lt!624400) (undefined!11791 lt!624400) mask!2840))))

(assert (= (and start!122034 res!951962) b!1415814))

(assert (= (and b!1415814 res!951968) b!1415820))

(assert (= (and b!1415820 res!951969) b!1415819))

(assert (= (and b!1415819 res!951967) b!1415817))

(assert (= (and b!1415817 res!951971) b!1415812))

(assert (= (and b!1415812 res!951965) b!1415815))

(assert (= (and b!1415815 res!951963) b!1415813))

(assert (= (and b!1415815 (not res!951972)) b!1415811))

(assert (= (and b!1415811 (not res!951964)) b!1415821))

(assert (= (and b!1415821 res!951966) b!1415816))

(assert (= (and b!1415821 (not res!951970)) b!1415818))

(declare-fun m!1306315 () Bool)

(assert (=> b!1415821 m!1306315))

(declare-fun m!1306317 () Bool)

(assert (=> b!1415821 m!1306317))

(declare-fun m!1306319 () Bool)

(assert (=> b!1415821 m!1306319))

(declare-fun m!1306321 () Bool)

(assert (=> b!1415819 m!1306321))

(assert (=> b!1415819 m!1306321))

(declare-fun m!1306323 () Bool)

(assert (=> b!1415819 m!1306323))

(declare-fun m!1306325 () Bool)

(assert (=> b!1415817 m!1306325))

(declare-fun m!1306327 () Bool)

(assert (=> b!1415811 m!1306327))

(assert (=> b!1415811 m!1306327))

(declare-fun m!1306329 () Bool)

(assert (=> b!1415811 m!1306329))

(assert (=> b!1415811 m!1306315))

(declare-fun m!1306331 () Bool)

(assert (=> b!1415811 m!1306331))

(declare-fun m!1306333 () Bool)

(assert (=> b!1415816 m!1306333))

(assert (=> b!1415816 m!1306321))

(assert (=> b!1415816 m!1306321))

(declare-fun m!1306335 () Bool)

(assert (=> b!1415816 m!1306335))

(declare-fun m!1306337 () Bool)

(assert (=> b!1415812 m!1306337))

(assert (=> b!1415815 m!1306321))

(declare-fun m!1306339 () Bool)

(assert (=> b!1415815 m!1306339))

(assert (=> b!1415815 m!1306321))

(declare-fun m!1306341 () Bool)

(assert (=> b!1415815 m!1306341))

(declare-fun m!1306343 () Bool)

(assert (=> b!1415815 m!1306343))

(assert (=> b!1415815 m!1306321))

(declare-fun m!1306345 () Bool)

(assert (=> b!1415815 m!1306345))

(declare-fun m!1306347 () Bool)

(assert (=> b!1415820 m!1306347))

(assert (=> b!1415820 m!1306347))

(declare-fun m!1306349 () Bool)

(assert (=> b!1415820 m!1306349))

(declare-fun m!1306351 () Bool)

(assert (=> b!1415818 m!1306351))

(assert (=> b!1415813 m!1306321))

(assert (=> b!1415813 m!1306321))

(declare-fun m!1306353 () Bool)

(assert (=> b!1415813 m!1306353))

(declare-fun m!1306355 () Bool)

(assert (=> start!122034 m!1306355))

(declare-fun m!1306357 () Bool)

(assert (=> start!122034 m!1306357))

(check-sat (not b!1415815) (not b!1415821) (not b!1415817) (not b!1415820) (not b!1415811) (not b!1415813) (not b!1415816) (not start!122034) (not b!1415819) (not b!1415812) (not b!1415818))
(check-sat)
