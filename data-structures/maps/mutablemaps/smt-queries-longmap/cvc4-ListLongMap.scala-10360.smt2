; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122018 () Bool)

(assert start!122018)

(declare-fun res!951707 () Bool)

(declare-fun e!801198 () Bool)

(assert (=> start!122018 (=> (not res!951707) (not e!801198))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122018 (= res!951707 (validMask!0 mask!2840))))

(assert (=> start!122018 e!801198))

(assert (=> start!122018 true))

(declare-datatypes ((array!96622 0))(
  ( (array!96623 (arr!46638 (Array (_ BitVec 32) (_ BitVec 64))) (size!47189 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96622)

(declare-fun array_inv!35583 (array!96622) Bool)

(assert (=> start!122018 (array_inv!35583 a!2901)))

(declare-datatypes ((SeekEntryResult!10971 0))(
  ( (MissingZero!10971 (index!46275 (_ BitVec 32))) (Found!10971 (index!46276 (_ BitVec 32))) (Intermediate!10971 (undefined!11783 Bool) (index!46277 (_ BitVec 32)) (x!127885 (_ BitVec 32))) (Undefined!10971) (MissingVacant!10971 (index!46278 (_ BitVec 32))) )
))
(declare-fun lt!624223 () SeekEntryResult!10971)

(declare-fun lt!624218 () (_ BitVec 32))

(declare-fun b!1415548 () Bool)

(declare-fun lt!624219 () SeekEntryResult!10971)

(declare-fun e!801199 () Bool)

(assert (=> b!1415548 (= e!801199 (or (bvslt (x!127885 lt!624223) #b00000000000000000000000000000000) (bvsgt (x!127885 lt!624223) #b01111111111111111111111111111110) (bvslt (x!127885 lt!624219) #b00000000000000000000000000000000) (bvsgt (x!127885 lt!624219) #b01111111111111111111111111111110) (bvslt lt!624218 #b00000000000000000000000000000000) (bvsge lt!624218 (size!47189 a!2901)) (bvslt (index!46277 lt!624223) #b00000000000000000000000000000000) (bvsge (index!46277 lt!624223) (size!47189 a!2901)) (bvslt (index!46277 lt!624219) #b00000000000000000000000000000000) (bvsge (index!46277 lt!624219) (size!47189 a!2901)) (not (= lt!624223 (Intermediate!10971 false (index!46277 lt!624223) (x!127885 lt!624223)))) (= lt!624219 (Intermediate!10971 false (index!46277 lt!624219) (x!127885 lt!624219)))))))

(declare-fun e!801200 () Bool)

(assert (=> b!1415548 e!801200))

(declare-fun res!951705 () Bool)

(assert (=> b!1415548 (=> (not res!951705) (not e!801200))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415548 (= res!951705 (and (not (undefined!11783 lt!624219)) (= (index!46277 lt!624219) i!1037) (bvslt (x!127885 lt!624219) (x!127885 lt!624223)) (= (select (store (arr!46638 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46277 lt!624219)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47866 0))(
  ( (Unit!47867) )
))
(declare-fun lt!624221 () Unit!47866)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47866)

(assert (=> b!1415548 (= lt!624221 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624218 (x!127885 lt!624223) (index!46277 lt!624223) (x!127885 lt!624219) (index!46277 lt!624219) (undefined!11783 lt!624219) mask!2840))))

(declare-fun b!1415549 () Bool)

(declare-fun e!801195 () Bool)

(assert (=> b!1415549 (= e!801198 (not e!801195))))

(declare-fun res!951706 () Bool)

(assert (=> b!1415549 (=> res!951706 e!801195)))

(assert (=> b!1415549 (= res!951706 (or (not (is-Intermediate!10971 lt!624223)) (undefined!11783 lt!624223)))))

(declare-fun e!801197 () Bool)

(assert (=> b!1415549 e!801197))

(declare-fun res!951708 () Bool)

(assert (=> b!1415549 (=> (not res!951708) (not e!801197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96622 (_ BitVec 32)) Bool)

(assert (=> b!1415549 (= res!951708 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624220 () Unit!47866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47866)

(assert (=> b!1415549 (= lt!624220 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96622 (_ BitVec 32)) SeekEntryResult!10971)

(assert (=> b!1415549 (= lt!624223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624218 (select (arr!46638 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415549 (= lt!624218 (toIndex!0 (select (arr!46638 a!2901) j!112) mask!2840))))

(declare-fun b!1415550 () Bool)

(assert (=> b!1415550 (= e!801195 e!801199)))

(declare-fun res!951702 () Bool)

(assert (=> b!1415550 (=> res!951702 e!801199)))

(assert (=> b!1415550 (= res!951702 (or (= lt!624223 lt!624219) (not (is-Intermediate!10971 lt!624219))))))

(declare-fun lt!624222 () array!96622)

(declare-fun lt!624217 () (_ BitVec 64))

(assert (=> b!1415550 (= lt!624219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624217 mask!2840) lt!624217 lt!624222 mask!2840))))

(assert (=> b!1415550 (= lt!624217 (select (store (arr!46638 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415550 (= lt!624222 (array!96623 (store (arr!46638 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47189 a!2901)))))

(declare-fun b!1415551 () Bool)

(declare-fun res!951700 () Bool)

(assert (=> b!1415551 (=> (not res!951700) (not e!801198))))

(assert (=> b!1415551 (= res!951700 (and (= (size!47189 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47189 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47189 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415552 () Bool)

(declare-fun res!951701 () Bool)

(assert (=> b!1415552 (=> (not res!951701) (not e!801198))))

(assert (=> b!1415552 (= res!951701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415553 () Bool)

(declare-fun res!951699 () Bool)

(assert (=> b!1415553 (=> (not res!951699) (not e!801198))))

(declare-datatypes ((List!33337 0))(
  ( (Nil!33334) (Cons!33333 (h!34620 (_ BitVec 64)) (t!48038 List!33337)) )
))
(declare-fun arrayNoDuplicates!0 (array!96622 (_ BitVec 32) List!33337) Bool)

(assert (=> b!1415553 (= res!951699 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33334))))

(declare-fun b!1415554 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96622 (_ BitVec 32)) SeekEntryResult!10971)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96622 (_ BitVec 32)) SeekEntryResult!10971)

(assert (=> b!1415554 (= e!801200 (= (seekEntryOrOpen!0 lt!624217 lt!624222 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127885 lt!624219) (index!46277 lt!624219) (index!46277 lt!624219) (select (arr!46638 a!2901) j!112) lt!624222 mask!2840)))))

(declare-fun b!1415555 () Bool)

(declare-fun res!951704 () Bool)

(assert (=> b!1415555 (=> (not res!951704) (not e!801198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415555 (= res!951704 (validKeyInArray!0 (select (arr!46638 a!2901) i!1037)))))

(declare-fun b!1415556 () Bool)

(declare-fun res!951703 () Bool)

(assert (=> b!1415556 (=> (not res!951703) (not e!801198))))

(assert (=> b!1415556 (= res!951703 (validKeyInArray!0 (select (arr!46638 a!2901) j!112)))))

(declare-fun b!1415557 () Bool)

(assert (=> b!1415557 (= e!801197 (= (seekEntryOrOpen!0 (select (arr!46638 a!2901) j!112) a!2901 mask!2840) (Found!10971 j!112)))))

(assert (= (and start!122018 res!951707) b!1415551))

(assert (= (and b!1415551 res!951700) b!1415555))

(assert (= (and b!1415555 res!951704) b!1415556))

(assert (= (and b!1415556 res!951703) b!1415552))

(assert (= (and b!1415552 res!951701) b!1415553))

(assert (= (and b!1415553 res!951699) b!1415549))

(assert (= (and b!1415549 res!951708) b!1415557))

(assert (= (and b!1415549 (not res!951706)) b!1415550))

(assert (= (and b!1415550 (not res!951702)) b!1415548))

(assert (= (and b!1415548 res!951705) b!1415554))

(declare-fun m!1305965 () Bool)

(assert (=> b!1415556 m!1305965))

(assert (=> b!1415556 m!1305965))

(declare-fun m!1305967 () Bool)

(assert (=> b!1415556 m!1305967))

(declare-fun m!1305969 () Bool)

(assert (=> b!1415553 m!1305969))

(declare-fun m!1305971 () Bool)

(assert (=> b!1415554 m!1305971))

(assert (=> b!1415554 m!1305965))

(assert (=> b!1415554 m!1305965))

(declare-fun m!1305973 () Bool)

(assert (=> b!1415554 m!1305973))

(declare-fun m!1305975 () Bool)

(assert (=> b!1415555 m!1305975))

(assert (=> b!1415555 m!1305975))

(declare-fun m!1305977 () Bool)

(assert (=> b!1415555 m!1305977))

(declare-fun m!1305979 () Bool)

(assert (=> start!122018 m!1305979))

(declare-fun m!1305981 () Bool)

(assert (=> start!122018 m!1305981))

(declare-fun m!1305983 () Bool)

(assert (=> b!1415550 m!1305983))

(assert (=> b!1415550 m!1305983))

(declare-fun m!1305985 () Bool)

(assert (=> b!1415550 m!1305985))

(declare-fun m!1305987 () Bool)

(assert (=> b!1415550 m!1305987))

(declare-fun m!1305989 () Bool)

(assert (=> b!1415550 m!1305989))

(declare-fun m!1305991 () Bool)

(assert (=> b!1415552 m!1305991))

(assert (=> b!1415548 m!1305987))

(declare-fun m!1305993 () Bool)

(assert (=> b!1415548 m!1305993))

(declare-fun m!1305995 () Bool)

(assert (=> b!1415548 m!1305995))

(assert (=> b!1415557 m!1305965))

(assert (=> b!1415557 m!1305965))

(declare-fun m!1305997 () Bool)

(assert (=> b!1415557 m!1305997))

(assert (=> b!1415549 m!1305965))

(declare-fun m!1305999 () Bool)

(assert (=> b!1415549 m!1305999))

(assert (=> b!1415549 m!1305965))

(declare-fun m!1306001 () Bool)

(assert (=> b!1415549 m!1306001))

(assert (=> b!1415549 m!1305965))

(declare-fun m!1306003 () Bool)

(assert (=> b!1415549 m!1306003))

(declare-fun m!1306005 () Bool)

(assert (=> b!1415549 m!1306005))

(push 1)

