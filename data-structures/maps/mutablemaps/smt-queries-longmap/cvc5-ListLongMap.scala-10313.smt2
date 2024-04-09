; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121240 () Bool)

(assert start!121240)

(declare-fun b!1409160 () Bool)

(declare-fun res!946996 () Bool)

(declare-fun e!797482 () Bool)

(assert (=> b!1409160 (=> (not res!946996) (not e!797482))))

(declare-datatypes ((array!96312 0))(
  ( (array!96313 (arr!46495 (Array (_ BitVec 32) (_ BitVec 64))) (size!47046 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96312)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409160 (= res!946996 (validKeyInArray!0 (select (arr!46495 a!2901) i!1037)))))

(declare-fun b!1409161 () Bool)

(declare-fun res!946994 () Bool)

(assert (=> b!1409161 (=> (not res!946994) (not e!797482))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409161 (= res!946994 (and (= (size!47046 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47046 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47046 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409162 () Bool)

(declare-fun res!946993 () Bool)

(assert (=> b!1409162 (=> (not res!946993) (not e!797482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96312 (_ BitVec 32)) Bool)

(assert (=> b!1409162 (= res!946993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!946995 () Bool)

(assert (=> start!121240 (=> (not res!946995) (not e!797482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121240 (= res!946995 (validMask!0 mask!2840))))

(assert (=> start!121240 e!797482))

(assert (=> start!121240 true))

(declare-fun array_inv!35440 (array!96312) Bool)

(assert (=> start!121240 (array_inv!35440 a!2901)))

(declare-fun e!797481 () Bool)

(declare-fun b!1409163 () Bool)

(declare-datatypes ((SeekEntryResult!10828 0))(
  ( (MissingZero!10828 (index!45688 (_ BitVec 32))) (Found!10828 (index!45689 (_ BitVec 32))) (Intermediate!10828 (undefined!11640 Bool) (index!45690 (_ BitVec 32)) (x!127288 (_ BitVec 32))) (Undefined!10828) (MissingVacant!10828 (index!45691 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96312 (_ BitVec 32)) SeekEntryResult!10828)

(assert (=> b!1409163 (= e!797481 (= (seekEntryOrOpen!0 (select (arr!46495 a!2901) j!112) a!2901 mask!2840) (Found!10828 j!112)))))

(declare-fun b!1409164 () Bool)

(declare-fun res!946991 () Bool)

(assert (=> b!1409164 (=> (not res!946991) (not e!797482))))

(declare-datatypes ((List!33194 0))(
  ( (Nil!33191) (Cons!33190 (h!34453 (_ BitVec 64)) (t!47895 List!33194)) )
))
(declare-fun arrayNoDuplicates!0 (array!96312 (_ BitVec 32) List!33194) Bool)

(assert (=> b!1409164 (= res!946991 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33191))))

(declare-fun b!1409165 () Bool)

(declare-fun res!946992 () Bool)

(assert (=> b!1409165 (=> (not res!946992) (not e!797482))))

(assert (=> b!1409165 (= res!946992 (validKeyInArray!0 (select (arr!46495 a!2901) j!112)))))

(declare-fun b!1409166 () Bool)

(declare-fun e!797480 () Bool)

(assert (=> b!1409166 (= e!797480 true)))

(declare-fun lt!620589 () SeekEntryResult!10828)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96312 (_ BitVec 32)) SeekEntryResult!10828)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409166 (= lt!620589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46495 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46495 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96313 (store (arr!46495 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47046 a!2901)) mask!2840))))

(declare-fun b!1409167 () Bool)

(assert (=> b!1409167 (= e!797482 (not e!797480))))

(declare-fun res!946998 () Bool)

(assert (=> b!1409167 (=> res!946998 e!797480)))

(declare-fun lt!620588 () SeekEntryResult!10828)

(assert (=> b!1409167 (= res!946998 (or (not (is-Intermediate!10828 lt!620588)) (undefined!11640 lt!620588)))))

(assert (=> b!1409167 e!797481))

(declare-fun res!946997 () Bool)

(assert (=> b!1409167 (=> (not res!946997) (not e!797481))))

(assert (=> b!1409167 (= res!946997 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47580 0))(
  ( (Unit!47581) )
))
(declare-fun lt!620590 () Unit!47580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47580)

(assert (=> b!1409167 (= lt!620590 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409167 (= lt!620588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46495 a!2901) j!112) mask!2840) (select (arr!46495 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121240 res!946995) b!1409161))

(assert (= (and b!1409161 res!946994) b!1409160))

(assert (= (and b!1409160 res!946996) b!1409165))

(assert (= (and b!1409165 res!946992) b!1409162))

(assert (= (and b!1409162 res!946993) b!1409164))

(assert (= (and b!1409164 res!946991) b!1409167))

(assert (= (and b!1409167 res!946997) b!1409163))

(assert (= (and b!1409167 (not res!946998)) b!1409166))

(declare-fun m!1298855 () Bool)

(assert (=> b!1409164 m!1298855))

(declare-fun m!1298857 () Bool)

(assert (=> b!1409166 m!1298857))

(declare-fun m!1298859 () Bool)

(assert (=> b!1409166 m!1298859))

(assert (=> b!1409166 m!1298859))

(declare-fun m!1298861 () Bool)

(assert (=> b!1409166 m!1298861))

(assert (=> b!1409166 m!1298861))

(assert (=> b!1409166 m!1298859))

(declare-fun m!1298863 () Bool)

(assert (=> b!1409166 m!1298863))

(declare-fun m!1298865 () Bool)

(assert (=> b!1409162 m!1298865))

(declare-fun m!1298867 () Bool)

(assert (=> b!1409160 m!1298867))

(assert (=> b!1409160 m!1298867))

(declare-fun m!1298869 () Bool)

(assert (=> b!1409160 m!1298869))

(declare-fun m!1298871 () Bool)

(assert (=> start!121240 m!1298871))

(declare-fun m!1298873 () Bool)

(assert (=> start!121240 m!1298873))

(declare-fun m!1298875 () Bool)

(assert (=> b!1409165 m!1298875))

(assert (=> b!1409165 m!1298875))

(declare-fun m!1298877 () Bool)

(assert (=> b!1409165 m!1298877))

(assert (=> b!1409167 m!1298875))

(declare-fun m!1298879 () Bool)

(assert (=> b!1409167 m!1298879))

(assert (=> b!1409167 m!1298875))

(declare-fun m!1298881 () Bool)

(assert (=> b!1409167 m!1298881))

(assert (=> b!1409167 m!1298879))

(assert (=> b!1409167 m!1298875))

(declare-fun m!1298883 () Bool)

(assert (=> b!1409167 m!1298883))

(declare-fun m!1298885 () Bool)

(assert (=> b!1409167 m!1298885))

(assert (=> b!1409163 m!1298875))

(assert (=> b!1409163 m!1298875))

(declare-fun m!1298887 () Bool)

(assert (=> b!1409163 m!1298887))

(push 1)

(assert (not b!1409166))

(assert (not b!1409160))

(assert (not b!1409162))

(assert (not b!1409167))

(assert (not b!1409165))

(assert (not b!1409164))

(assert (not b!1409163))

(assert (not start!121240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

