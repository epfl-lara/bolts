; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121986 () Bool)

(assert start!121986)

(declare-fun b!1415068 () Bool)

(declare-fun res!951219 () Bool)

(declare-fun e!800908 () Bool)

(assert (=> b!1415068 (=> (not res!951219) (not e!800908))))

(declare-datatypes ((array!96590 0))(
  ( (array!96591 (arr!46622 (Array (_ BitVec 32) (_ BitVec 64))) (size!47173 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96590)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415068 (= res!951219 (validKeyInArray!0 (select (arr!46622 a!2901) j!112)))))

(declare-fun b!1415069 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!800909 () Bool)

(declare-datatypes ((SeekEntryResult!10955 0))(
  ( (MissingZero!10955 (index!46211 (_ BitVec 32))) (Found!10955 (index!46212 (_ BitVec 32))) (Intermediate!10955 (undefined!11767 Bool) (index!46213 (_ BitVec 32)) (x!127829 (_ BitVec 32))) (Undefined!10955) (MissingVacant!10955 (index!46214 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96590 (_ BitVec 32)) SeekEntryResult!10955)

(assert (=> b!1415069 (= e!800909 (= (seekEntryOrOpen!0 (select (arr!46622 a!2901) j!112) a!2901 mask!2840) (Found!10955 j!112)))))

(declare-fun lt!623882 () (_ BitVec 32))

(declare-fun e!800910 () Bool)

(declare-fun lt!623887 () SeekEntryResult!10955)

(declare-fun b!1415070 () Bool)

(declare-fun lt!623881 () SeekEntryResult!10955)

(assert (=> b!1415070 (= e!800910 (or (bvslt (x!127829 lt!623881) #b00000000000000000000000000000000) (bvsgt (x!127829 lt!623881) #b01111111111111111111111111111110) (bvslt (x!127829 lt!623887) #b00000000000000000000000000000000) (bvsgt (x!127829 lt!623887) #b01111111111111111111111111111110) (bvslt lt!623882 #b00000000000000000000000000000000) (bvsge lt!623882 (size!47173 a!2901)) (bvslt (index!46213 lt!623881) #b00000000000000000000000000000000) (bvsge (index!46213 lt!623881) (size!47173 a!2901)) (and (bvsge (index!46213 lt!623887) #b00000000000000000000000000000000) (bvslt (index!46213 lt!623887) (size!47173 a!2901)))))))

(declare-fun e!800912 () Bool)

(assert (=> b!1415070 e!800912))

(declare-fun res!951228 () Bool)

(assert (=> b!1415070 (=> (not res!951228) (not e!800912))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415070 (= res!951228 (and (not (undefined!11767 lt!623887)) (= (index!46213 lt!623887) i!1037) (bvslt (x!127829 lt!623887) (x!127829 lt!623881)) (= (select (store (arr!46622 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46213 lt!623887)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47834 0))(
  ( (Unit!47835) )
))
(declare-fun lt!623885 () Unit!47834)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47834)

(assert (=> b!1415070 (= lt!623885 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623882 (x!127829 lt!623881) (index!46213 lt!623881) (x!127829 lt!623887) (index!46213 lt!623887) (undefined!11767 lt!623887) mask!2840))))

(declare-fun b!1415071 () Bool)

(declare-fun e!800907 () Bool)

(assert (=> b!1415071 (= e!800907 e!800910)))

(declare-fun res!951221 () Bool)

(assert (=> b!1415071 (=> res!951221 e!800910)))

(get-info :version)

(assert (=> b!1415071 (= res!951221 (or (= lt!623881 lt!623887) (not ((_ is Intermediate!10955) lt!623887))))))

(declare-fun lt!623884 () (_ BitVec 64))

(declare-fun lt!623883 () array!96590)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96590 (_ BitVec 32)) SeekEntryResult!10955)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415071 (= lt!623887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623884 mask!2840) lt!623884 lt!623883 mask!2840))))

(assert (=> b!1415071 (= lt!623884 (select (store (arr!46622 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415071 (= lt!623883 (array!96591 (store (arr!46622 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47173 a!2901)))))

(declare-fun b!1415072 () Bool)

(declare-fun res!951222 () Bool)

(assert (=> b!1415072 (=> (not res!951222) (not e!800908))))

(assert (=> b!1415072 (= res!951222 (and (= (size!47173 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47173 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47173 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415073 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96590 (_ BitVec 32)) SeekEntryResult!10955)

(assert (=> b!1415073 (= e!800912 (= (seekEntryOrOpen!0 lt!623884 lt!623883 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127829 lt!623887) (index!46213 lt!623887) (index!46213 lt!623887) (select (arr!46622 a!2901) j!112) lt!623883 mask!2840)))))

(declare-fun b!1415074 () Bool)

(assert (=> b!1415074 (= e!800908 (not e!800907))))

(declare-fun res!951223 () Bool)

(assert (=> b!1415074 (=> res!951223 e!800907)))

(assert (=> b!1415074 (= res!951223 (or (not ((_ is Intermediate!10955) lt!623881)) (undefined!11767 lt!623881)))))

(assert (=> b!1415074 e!800909))

(declare-fun res!951225 () Bool)

(assert (=> b!1415074 (=> (not res!951225) (not e!800909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96590 (_ BitVec 32)) Bool)

(assert (=> b!1415074 (= res!951225 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623886 () Unit!47834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47834)

(assert (=> b!1415074 (= lt!623886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415074 (= lt!623881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623882 (select (arr!46622 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415074 (= lt!623882 (toIndex!0 (select (arr!46622 a!2901) j!112) mask!2840))))

(declare-fun b!1415075 () Bool)

(declare-fun res!951226 () Bool)

(assert (=> b!1415075 (=> (not res!951226) (not e!800908))))

(assert (=> b!1415075 (= res!951226 (validKeyInArray!0 (select (arr!46622 a!2901) i!1037)))))

(declare-fun res!951220 () Bool)

(assert (=> start!121986 (=> (not res!951220) (not e!800908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121986 (= res!951220 (validMask!0 mask!2840))))

(assert (=> start!121986 e!800908))

(assert (=> start!121986 true))

(declare-fun array_inv!35567 (array!96590) Bool)

(assert (=> start!121986 (array_inv!35567 a!2901)))

(declare-fun b!1415076 () Bool)

(declare-fun res!951227 () Bool)

(assert (=> b!1415076 (=> (not res!951227) (not e!800908))))

(declare-datatypes ((List!33321 0))(
  ( (Nil!33318) (Cons!33317 (h!34604 (_ BitVec 64)) (t!48022 List!33321)) )
))
(declare-fun arrayNoDuplicates!0 (array!96590 (_ BitVec 32) List!33321) Bool)

(assert (=> b!1415076 (= res!951227 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33318))))

(declare-fun b!1415077 () Bool)

(declare-fun res!951224 () Bool)

(assert (=> b!1415077 (=> (not res!951224) (not e!800908))))

(assert (=> b!1415077 (= res!951224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121986 res!951220) b!1415072))

(assert (= (and b!1415072 res!951222) b!1415075))

(assert (= (and b!1415075 res!951226) b!1415068))

(assert (= (and b!1415068 res!951219) b!1415077))

(assert (= (and b!1415077 res!951224) b!1415076))

(assert (= (and b!1415076 res!951227) b!1415074))

(assert (= (and b!1415074 res!951225) b!1415069))

(assert (= (and b!1415074 (not res!951223)) b!1415071))

(assert (= (and b!1415071 (not res!951221)) b!1415070))

(assert (= (and b!1415070 res!951228) b!1415073))

(declare-fun m!1305293 () Bool)

(assert (=> b!1415069 m!1305293))

(assert (=> b!1415069 m!1305293))

(declare-fun m!1305295 () Bool)

(assert (=> b!1415069 m!1305295))

(declare-fun m!1305297 () Bool)

(assert (=> b!1415071 m!1305297))

(assert (=> b!1415071 m!1305297))

(declare-fun m!1305299 () Bool)

(assert (=> b!1415071 m!1305299))

(declare-fun m!1305301 () Bool)

(assert (=> b!1415071 m!1305301))

(declare-fun m!1305303 () Bool)

(assert (=> b!1415071 m!1305303))

(declare-fun m!1305305 () Bool)

(assert (=> b!1415076 m!1305305))

(declare-fun m!1305307 () Bool)

(assert (=> b!1415075 m!1305307))

(assert (=> b!1415075 m!1305307))

(declare-fun m!1305309 () Bool)

(assert (=> b!1415075 m!1305309))

(assert (=> b!1415074 m!1305293))

(declare-fun m!1305311 () Bool)

(assert (=> b!1415074 m!1305311))

(assert (=> b!1415074 m!1305293))

(declare-fun m!1305313 () Bool)

(assert (=> b!1415074 m!1305313))

(assert (=> b!1415074 m!1305293))

(declare-fun m!1305315 () Bool)

(assert (=> b!1415074 m!1305315))

(declare-fun m!1305317 () Bool)

(assert (=> b!1415074 m!1305317))

(assert (=> b!1415068 m!1305293))

(assert (=> b!1415068 m!1305293))

(declare-fun m!1305319 () Bool)

(assert (=> b!1415068 m!1305319))

(declare-fun m!1305321 () Bool)

(assert (=> start!121986 m!1305321))

(declare-fun m!1305323 () Bool)

(assert (=> start!121986 m!1305323))

(assert (=> b!1415070 m!1305301))

(declare-fun m!1305325 () Bool)

(assert (=> b!1415070 m!1305325))

(declare-fun m!1305327 () Bool)

(assert (=> b!1415070 m!1305327))

(declare-fun m!1305329 () Bool)

(assert (=> b!1415073 m!1305329))

(assert (=> b!1415073 m!1305293))

(assert (=> b!1415073 m!1305293))

(declare-fun m!1305331 () Bool)

(assert (=> b!1415073 m!1305331))

(declare-fun m!1305333 () Bool)

(assert (=> b!1415077 m!1305333))

(check-sat (not b!1415068) (not b!1415074) (not b!1415073) (not b!1415075) (not b!1415071) (not b!1415077) (not b!1415070) (not start!121986) (not b!1415069) (not b!1415076))
(check-sat)
