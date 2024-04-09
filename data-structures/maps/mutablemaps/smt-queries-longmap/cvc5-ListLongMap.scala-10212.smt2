; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120364 () Bool)

(assert start!120364)

(declare-fun b!1400268 () Bool)

(declare-fun res!938898 () Bool)

(declare-fun e!792825 () Bool)

(assert (=> b!1400268 (=> (not res!938898) (not e!792825))))

(declare-datatypes ((array!95691 0))(
  ( (array!95692 (arr!46192 (Array (_ BitVec 32) (_ BitVec 64))) (size!46743 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95691)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95691 (_ BitVec 32)) Bool)

(assert (=> b!1400268 (= res!938898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400269 () Bool)

(declare-fun res!938891 () Bool)

(assert (=> b!1400269 (=> (not res!938891) (not e!792825))))

(declare-datatypes ((List!32891 0))(
  ( (Nil!32888) (Cons!32887 (h!34135 (_ BitVec 64)) (t!47592 List!32891)) )
))
(declare-fun arrayNoDuplicates!0 (array!95691 (_ BitVec 32) List!32891) Bool)

(assert (=> b!1400269 (= res!938891 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32888))))

(declare-fun b!1400270 () Bool)

(declare-fun e!792828 () Bool)

(assert (=> b!1400270 (= e!792825 (not e!792828))))

(declare-fun res!938894 () Bool)

(assert (=> b!1400270 (=> res!938894 e!792828)))

(declare-datatypes ((SeekEntryResult!10531 0))(
  ( (MissingZero!10531 (index!44500 (_ BitVec 32))) (Found!10531 (index!44501 (_ BitVec 32))) (Intermediate!10531 (undefined!11343 Bool) (index!44502 (_ BitVec 32)) (x!126153 (_ BitVec 32))) (Undefined!10531) (MissingVacant!10531 (index!44503 (_ BitVec 32))) )
))
(declare-fun lt!616084 () SeekEntryResult!10531)

(assert (=> b!1400270 (= res!938894 (or (not (is-Intermediate!10531 lt!616084)) (undefined!11343 lt!616084)))))

(declare-fun e!792824 () Bool)

(assert (=> b!1400270 e!792824))

(declare-fun res!938896 () Bool)

(assert (=> b!1400270 (=> (not res!938896) (not e!792824))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400270 (= res!938896 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47016 0))(
  ( (Unit!47017) )
))
(declare-fun lt!616087 () Unit!47016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47016)

(assert (=> b!1400270 (= lt!616087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616086 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95691 (_ BitVec 32)) SeekEntryResult!10531)

(assert (=> b!1400270 (= lt!616084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616086 (select (arr!46192 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400270 (= lt!616086 (toIndex!0 (select (arr!46192 a!2901) j!112) mask!2840))))

(declare-fun b!1400271 () Bool)

(declare-fun e!792826 () Bool)

(assert (=> b!1400271 (= e!792826 true)))

(declare-fun lt!616082 () SeekEntryResult!10531)

(declare-fun lt!616080 () (_ BitVec 64))

(declare-fun lt!616083 () array!95691)

(assert (=> b!1400271 (= lt!616082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616086 lt!616080 lt!616083 mask!2840))))

(declare-fun res!938889 () Bool)

(assert (=> start!120364 (=> (not res!938889) (not e!792825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120364 (= res!938889 (validMask!0 mask!2840))))

(assert (=> start!120364 e!792825))

(assert (=> start!120364 true))

(declare-fun array_inv!35137 (array!95691) Bool)

(assert (=> start!120364 (array_inv!35137 a!2901)))

(declare-fun b!1400272 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95691 (_ BitVec 32)) SeekEntryResult!10531)

(assert (=> b!1400272 (= e!792824 (= (seekEntryOrOpen!0 (select (arr!46192 a!2901) j!112) a!2901 mask!2840) (Found!10531 j!112)))))

(declare-fun b!1400273 () Bool)

(declare-fun lt!616085 () SeekEntryResult!10531)

(declare-fun e!792827 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95691 (_ BitVec 32)) SeekEntryResult!10531)

(assert (=> b!1400273 (= e!792827 (= (seekEntryOrOpen!0 lt!616080 lt!616083 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126153 lt!616085) (index!44502 lt!616085) (index!44502 lt!616085) (select (arr!46192 a!2901) j!112) lt!616083 mask!2840)))))

(declare-fun b!1400274 () Bool)

(declare-fun res!938895 () Bool)

(assert (=> b!1400274 (=> (not res!938895) (not e!792825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400274 (= res!938895 (validKeyInArray!0 (select (arr!46192 a!2901) j!112)))))

(declare-fun b!1400275 () Bool)

(declare-fun res!938888 () Bool)

(assert (=> b!1400275 (=> (not res!938888) (not e!792825))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400275 (= res!938888 (and (= (size!46743 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46743 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46743 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400276 () Bool)

(declare-fun e!792830 () Bool)

(assert (=> b!1400276 (= e!792828 e!792830)))

(declare-fun res!938897 () Bool)

(assert (=> b!1400276 (=> res!938897 e!792830)))

(assert (=> b!1400276 (= res!938897 (or (= lt!616084 lt!616085) (not (is-Intermediate!10531 lt!616085))))))

(assert (=> b!1400276 (= lt!616085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616080 mask!2840) lt!616080 lt!616083 mask!2840))))

(assert (=> b!1400276 (= lt!616080 (select (store (arr!46192 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400276 (= lt!616083 (array!95692 (store (arr!46192 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46743 a!2901)))))

(declare-fun b!1400277 () Bool)

(assert (=> b!1400277 (= e!792830 e!792826)))

(declare-fun res!938892 () Bool)

(assert (=> b!1400277 (=> res!938892 e!792826)))

(assert (=> b!1400277 (= res!938892 (or (bvslt (x!126153 lt!616084) #b00000000000000000000000000000000) (bvsgt (x!126153 lt!616084) #b01111111111111111111111111111110) (bvslt (x!126153 lt!616085) #b00000000000000000000000000000000) (bvsgt (x!126153 lt!616085) #b01111111111111111111111111111110) (bvslt lt!616086 #b00000000000000000000000000000000) (bvsge lt!616086 (size!46743 a!2901)) (bvslt (index!44502 lt!616084) #b00000000000000000000000000000000) (bvsge (index!44502 lt!616084) (size!46743 a!2901)) (bvslt (index!44502 lt!616085) #b00000000000000000000000000000000) (bvsge (index!44502 lt!616085) (size!46743 a!2901)) (not (= lt!616084 (Intermediate!10531 false (index!44502 lt!616084) (x!126153 lt!616084)))) (not (= lt!616085 (Intermediate!10531 false (index!44502 lt!616085) (x!126153 lt!616085))))))))

(assert (=> b!1400277 e!792827))

(declare-fun res!938890 () Bool)

(assert (=> b!1400277 (=> (not res!938890) (not e!792827))))

(assert (=> b!1400277 (= res!938890 (and (not (undefined!11343 lt!616085)) (= (index!44502 lt!616085) i!1037) (bvslt (x!126153 lt!616085) (x!126153 lt!616084)) (= (select (store (arr!46192 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44502 lt!616085)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616081 () Unit!47016)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47016)

(assert (=> b!1400277 (= lt!616081 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616086 (x!126153 lt!616084) (index!44502 lt!616084) (x!126153 lt!616085) (index!44502 lt!616085) (undefined!11343 lt!616085) mask!2840))))

(declare-fun b!1400278 () Bool)

(declare-fun res!938893 () Bool)

(assert (=> b!1400278 (=> (not res!938893) (not e!792825))))

(assert (=> b!1400278 (= res!938893 (validKeyInArray!0 (select (arr!46192 a!2901) i!1037)))))

(assert (= (and start!120364 res!938889) b!1400275))

(assert (= (and b!1400275 res!938888) b!1400278))

(assert (= (and b!1400278 res!938893) b!1400274))

(assert (= (and b!1400274 res!938895) b!1400268))

(assert (= (and b!1400268 res!938898) b!1400269))

(assert (= (and b!1400269 res!938891) b!1400270))

(assert (= (and b!1400270 res!938896) b!1400272))

(assert (= (and b!1400270 (not res!938894)) b!1400276))

(assert (= (and b!1400276 (not res!938897)) b!1400277))

(assert (= (and b!1400277 res!938890) b!1400273))

(assert (= (and b!1400277 (not res!938892)) b!1400271))

(declare-fun m!1287749 () Bool)

(assert (=> b!1400269 m!1287749))

(declare-fun m!1287751 () Bool)

(assert (=> b!1400271 m!1287751))

(declare-fun m!1287753 () Bool)

(assert (=> b!1400270 m!1287753))

(declare-fun m!1287755 () Bool)

(assert (=> b!1400270 m!1287755))

(assert (=> b!1400270 m!1287753))

(declare-fun m!1287757 () Bool)

(assert (=> b!1400270 m!1287757))

(declare-fun m!1287759 () Bool)

(assert (=> b!1400270 m!1287759))

(assert (=> b!1400270 m!1287753))

(declare-fun m!1287761 () Bool)

(assert (=> b!1400270 m!1287761))

(assert (=> b!1400274 m!1287753))

(assert (=> b!1400274 m!1287753))

(declare-fun m!1287763 () Bool)

(assert (=> b!1400274 m!1287763))

(assert (=> b!1400272 m!1287753))

(assert (=> b!1400272 m!1287753))

(declare-fun m!1287765 () Bool)

(assert (=> b!1400272 m!1287765))

(declare-fun m!1287767 () Bool)

(assert (=> b!1400276 m!1287767))

(assert (=> b!1400276 m!1287767))

(declare-fun m!1287769 () Bool)

(assert (=> b!1400276 m!1287769))

(declare-fun m!1287771 () Bool)

(assert (=> b!1400276 m!1287771))

(declare-fun m!1287773 () Bool)

(assert (=> b!1400276 m!1287773))

(declare-fun m!1287775 () Bool)

(assert (=> start!120364 m!1287775))

(declare-fun m!1287777 () Bool)

(assert (=> start!120364 m!1287777))

(declare-fun m!1287779 () Bool)

(assert (=> b!1400268 m!1287779))

(declare-fun m!1287781 () Bool)

(assert (=> b!1400273 m!1287781))

(assert (=> b!1400273 m!1287753))

(assert (=> b!1400273 m!1287753))

(declare-fun m!1287783 () Bool)

(assert (=> b!1400273 m!1287783))

(assert (=> b!1400277 m!1287771))

(declare-fun m!1287785 () Bool)

(assert (=> b!1400277 m!1287785))

(declare-fun m!1287787 () Bool)

(assert (=> b!1400277 m!1287787))

(declare-fun m!1287789 () Bool)

(assert (=> b!1400278 m!1287789))

(assert (=> b!1400278 m!1287789))

(declare-fun m!1287791 () Bool)

(assert (=> b!1400278 m!1287791))

(push 1)

