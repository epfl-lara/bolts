; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121206 () Bool)

(assert start!121206)

(declare-fun res!946585 () Bool)

(declare-fun e!797279 () Bool)

(assert (=> start!121206 (=> (not res!946585) (not e!797279))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121206 (= res!946585 (validMask!0 mask!2840))))

(assert (=> start!121206 e!797279))

(assert (=> start!121206 true))

(declare-datatypes ((array!96278 0))(
  ( (array!96279 (arr!46478 (Array (_ BitVec 32) (_ BitVec 64))) (size!47029 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96278)

(declare-fun array_inv!35423 (array!96278) Bool)

(assert (=> start!121206 (array_inv!35423 a!2901)))

(declare-fun b!1408752 () Bool)

(declare-fun res!946590 () Bool)

(assert (=> b!1408752 (=> (not res!946590) (not e!797279))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408752 (= res!946590 (validKeyInArray!0 (select (arr!46478 a!2901) i!1037)))))

(declare-fun b!1408753 () Bool)

(declare-fun res!946587 () Bool)

(assert (=> b!1408753 (=> (not res!946587) (not e!797279))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408753 (= res!946587 (validKeyInArray!0 (select (arr!46478 a!2901) j!112)))))

(declare-fun b!1408754 () Bool)

(declare-fun res!946586 () Bool)

(assert (=> b!1408754 (=> (not res!946586) (not e!797279))))

(declare-datatypes ((List!33177 0))(
  ( (Nil!33174) (Cons!33173 (h!34436 (_ BitVec 64)) (t!47878 List!33177)) )
))
(declare-fun arrayNoDuplicates!0 (array!96278 (_ BitVec 32) List!33177) Bool)

(assert (=> b!1408754 (= res!946586 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33174))))

(declare-fun b!1408755 () Bool)

(declare-fun e!797277 () Bool)

(assert (=> b!1408755 (= e!797277 true)))

(declare-datatypes ((SeekEntryResult!10811 0))(
  ( (MissingZero!10811 (index!45620 (_ BitVec 32))) (Found!10811 (index!45621 (_ BitVec 32))) (Intermediate!10811 (undefined!11623 Bool) (index!45622 (_ BitVec 32)) (x!127223 (_ BitVec 32))) (Undefined!10811) (MissingVacant!10811 (index!45623 (_ BitVec 32))) )
))
(declare-fun lt!620436 () SeekEntryResult!10811)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96278 (_ BitVec 32)) SeekEntryResult!10811)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408755 (= lt!620436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46478 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46478 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96279 (store (arr!46478 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47029 a!2901)) mask!2840))))

(declare-fun b!1408756 () Bool)

(declare-fun e!797278 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96278 (_ BitVec 32)) SeekEntryResult!10811)

(assert (=> b!1408756 (= e!797278 (= (seekEntryOrOpen!0 (select (arr!46478 a!2901) j!112) a!2901 mask!2840) (Found!10811 j!112)))))

(declare-fun b!1408757 () Bool)

(declare-fun res!946588 () Bool)

(assert (=> b!1408757 (=> (not res!946588) (not e!797279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96278 (_ BitVec 32)) Bool)

(assert (=> b!1408757 (= res!946588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408758 () Bool)

(assert (=> b!1408758 (= e!797279 (not e!797277))))

(declare-fun res!946584 () Bool)

(assert (=> b!1408758 (=> res!946584 e!797277)))

(declare-fun lt!620437 () SeekEntryResult!10811)

(get-info :version)

(assert (=> b!1408758 (= res!946584 (or (not ((_ is Intermediate!10811) lt!620437)) (undefined!11623 lt!620437)))))

(assert (=> b!1408758 e!797278))

(declare-fun res!946589 () Bool)

(assert (=> b!1408758 (=> (not res!946589) (not e!797278))))

(assert (=> b!1408758 (= res!946589 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47546 0))(
  ( (Unit!47547) )
))
(declare-fun lt!620435 () Unit!47546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47546)

(assert (=> b!1408758 (= lt!620435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408758 (= lt!620437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46478 a!2901) j!112) mask!2840) (select (arr!46478 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408759 () Bool)

(declare-fun res!946583 () Bool)

(assert (=> b!1408759 (=> (not res!946583) (not e!797279))))

(assert (=> b!1408759 (= res!946583 (and (= (size!47029 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47029 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47029 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121206 res!946585) b!1408759))

(assert (= (and b!1408759 res!946583) b!1408752))

(assert (= (and b!1408752 res!946590) b!1408753))

(assert (= (and b!1408753 res!946587) b!1408757))

(assert (= (and b!1408757 res!946588) b!1408754))

(assert (= (and b!1408754 res!946586) b!1408758))

(assert (= (and b!1408758 res!946589) b!1408756))

(assert (= (and b!1408758 (not res!946584)) b!1408755))

(declare-fun m!1298277 () Bool)

(assert (=> b!1408752 m!1298277))

(assert (=> b!1408752 m!1298277))

(declare-fun m!1298279 () Bool)

(assert (=> b!1408752 m!1298279))

(declare-fun m!1298281 () Bool)

(assert (=> b!1408755 m!1298281))

(declare-fun m!1298283 () Bool)

(assert (=> b!1408755 m!1298283))

(assert (=> b!1408755 m!1298283))

(declare-fun m!1298285 () Bool)

(assert (=> b!1408755 m!1298285))

(assert (=> b!1408755 m!1298285))

(assert (=> b!1408755 m!1298283))

(declare-fun m!1298287 () Bool)

(assert (=> b!1408755 m!1298287))

(declare-fun m!1298289 () Bool)

(assert (=> b!1408757 m!1298289))

(declare-fun m!1298291 () Bool)

(assert (=> b!1408753 m!1298291))

(assert (=> b!1408753 m!1298291))

(declare-fun m!1298293 () Bool)

(assert (=> b!1408753 m!1298293))

(assert (=> b!1408758 m!1298291))

(declare-fun m!1298295 () Bool)

(assert (=> b!1408758 m!1298295))

(assert (=> b!1408758 m!1298291))

(declare-fun m!1298297 () Bool)

(assert (=> b!1408758 m!1298297))

(assert (=> b!1408758 m!1298295))

(assert (=> b!1408758 m!1298291))

(declare-fun m!1298299 () Bool)

(assert (=> b!1408758 m!1298299))

(declare-fun m!1298301 () Bool)

(assert (=> b!1408758 m!1298301))

(declare-fun m!1298303 () Bool)

(assert (=> b!1408754 m!1298303))

(declare-fun m!1298305 () Bool)

(assert (=> start!121206 m!1298305))

(declare-fun m!1298307 () Bool)

(assert (=> start!121206 m!1298307))

(assert (=> b!1408756 m!1298291))

(assert (=> b!1408756 m!1298291))

(declare-fun m!1298309 () Bool)

(assert (=> b!1408756 m!1298309))

(check-sat (not b!1408752) (not b!1408754) (not b!1408755) (not b!1408756) (not b!1408753) (not b!1408758) (not start!121206) (not b!1408757))
