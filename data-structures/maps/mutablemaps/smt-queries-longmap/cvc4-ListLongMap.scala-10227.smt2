; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120458 () Bool)

(assert start!120458)

(declare-fun b!1401819 () Bool)

(declare-fun e!793817 () Bool)

(declare-fun e!793816 () Bool)

(assert (=> b!1401819 (= e!793817 e!793816)))

(declare-fun res!940445 () Bool)

(assert (=> b!1401819 (=> res!940445 e!793816)))

(declare-fun lt!617208 () (_ BitVec 32))

(declare-datatypes ((array!95785 0))(
  ( (array!95786 (arr!46239 (Array (_ BitVec 32) (_ BitVec 64))) (size!46790 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95785)

(declare-datatypes ((SeekEntryResult!10578 0))(
  ( (MissingZero!10578 (index!44688 (_ BitVec 32))) (Found!10578 (index!44689 (_ BitVec 32))) (Intermediate!10578 (undefined!11390 Bool) (index!44690 (_ BitVec 32)) (x!126320 (_ BitVec 32))) (Undefined!10578) (MissingVacant!10578 (index!44691 (_ BitVec 32))) )
))
(declare-fun lt!617211 () SeekEntryResult!10578)

(declare-fun lt!617210 () SeekEntryResult!10578)

(assert (=> b!1401819 (= res!940445 (or (bvslt (x!126320 lt!617210) #b00000000000000000000000000000000) (bvsgt (x!126320 lt!617210) #b01111111111111111111111111111110) (bvslt (x!126320 lt!617211) #b00000000000000000000000000000000) (bvsgt (x!126320 lt!617211) #b01111111111111111111111111111110) (bvslt lt!617208 #b00000000000000000000000000000000) (bvsge lt!617208 (size!46790 a!2901)) (bvslt (index!44690 lt!617210) #b00000000000000000000000000000000) (bvsge (index!44690 lt!617210) (size!46790 a!2901)) (bvslt (index!44690 lt!617211) #b00000000000000000000000000000000) (bvsge (index!44690 lt!617211) (size!46790 a!2901)) (not (= lt!617210 (Intermediate!10578 false (index!44690 lt!617210) (x!126320 lt!617210)))) (not (= lt!617211 (Intermediate!10578 false (index!44690 lt!617211) (x!126320 lt!617211))))))))

(declare-fun e!793811 () Bool)

(assert (=> b!1401819 e!793811))

(declare-fun res!940443 () Bool)

(assert (=> b!1401819 (=> (not res!940443) (not e!793811))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401819 (= res!940443 (and (not (undefined!11390 lt!617211)) (= (index!44690 lt!617211) i!1037) (bvslt (x!126320 lt!617211) (x!126320 lt!617210)) (= (select (store (arr!46239 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44690 lt!617211)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47110 0))(
  ( (Unit!47111) )
))
(declare-fun lt!617215 () Unit!47110)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47110)

(assert (=> b!1401819 (= lt!617215 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617208 (x!126320 lt!617210) (index!44690 lt!617210) (x!126320 lt!617211) (index!44690 lt!617211) (undefined!11390 lt!617211) mask!2840))))

(declare-fun b!1401820 () Bool)

(assert (=> b!1401820 (= e!793816 true)))

(declare-fun lt!617209 () SeekEntryResult!10578)

(declare-fun lt!617213 () (_ BitVec 64))

(declare-fun lt!617212 () array!95785)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95785 (_ BitVec 32)) SeekEntryResult!10578)

(assert (=> b!1401820 (= lt!617209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617208 lt!617213 lt!617212 mask!2840))))

(declare-fun b!1401821 () Bool)

(declare-fun res!940440 () Bool)

(declare-fun e!793813 () Bool)

(assert (=> b!1401821 (=> (not res!940440) (not e!793813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401821 (= res!940440 (validKeyInArray!0 (select (arr!46239 a!2901) j!112)))))

(declare-fun b!1401822 () Bool)

(declare-fun e!793814 () Bool)

(assert (=> b!1401822 (= e!793814 e!793817)))

(declare-fun res!940442 () Bool)

(assert (=> b!1401822 (=> res!940442 e!793817)))

(assert (=> b!1401822 (= res!940442 (or (= lt!617210 lt!617211) (not (is-Intermediate!10578 lt!617211))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401822 (= lt!617211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617213 mask!2840) lt!617213 lt!617212 mask!2840))))

(assert (=> b!1401822 (= lt!617213 (select (store (arr!46239 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401822 (= lt!617212 (array!95786 (store (arr!46239 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46790 a!2901)))))

(declare-fun b!1401823 () Bool)

(declare-fun res!940449 () Bool)

(assert (=> b!1401823 (=> (not res!940449) (not e!793813))))

(declare-datatypes ((List!32938 0))(
  ( (Nil!32935) (Cons!32934 (h!34182 (_ BitVec 64)) (t!47639 List!32938)) )
))
(declare-fun arrayNoDuplicates!0 (array!95785 (_ BitVec 32) List!32938) Bool)

(assert (=> b!1401823 (= res!940449 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32935))))

(declare-fun b!1401824 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95785 (_ BitVec 32)) SeekEntryResult!10578)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95785 (_ BitVec 32)) SeekEntryResult!10578)

(assert (=> b!1401824 (= e!793811 (= (seekEntryOrOpen!0 lt!617213 lt!617212 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126320 lt!617211) (index!44690 lt!617211) (index!44690 lt!617211) (select (arr!46239 a!2901) j!112) lt!617212 mask!2840)))))

(declare-fun b!1401825 () Bool)

(assert (=> b!1401825 (= e!793813 (not e!793814))))

(declare-fun res!940448 () Bool)

(assert (=> b!1401825 (=> res!940448 e!793814)))

(assert (=> b!1401825 (= res!940448 (or (not (is-Intermediate!10578 lt!617210)) (undefined!11390 lt!617210)))))

(declare-fun e!793812 () Bool)

(assert (=> b!1401825 e!793812))

(declare-fun res!940441 () Bool)

(assert (=> b!1401825 (=> (not res!940441) (not e!793812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95785 (_ BitVec 32)) Bool)

(assert (=> b!1401825 (= res!940441 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617214 () Unit!47110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47110)

(assert (=> b!1401825 (= lt!617214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401825 (= lt!617210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617208 (select (arr!46239 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401825 (= lt!617208 (toIndex!0 (select (arr!46239 a!2901) j!112) mask!2840))))

(declare-fun b!1401827 () Bool)

(declare-fun res!940447 () Bool)

(assert (=> b!1401827 (=> (not res!940447) (not e!793813))))

(assert (=> b!1401827 (= res!940447 (validKeyInArray!0 (select (arr!46239 a!2901) i!1037)))))

(declare-fun res!940444 () Bool)

(assert (=> start!120458 (=> (not res!940444) (not e!793813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120458 (= res!940444 (validMask!0 mask!2840))))

(assert (=> start!120458 e!793813))

(assert (=> start!120458 true))

(declare-fun array_inv!35184 (array!95785) Bool)

(assert (=> start!120458 (array_inv!35184 a!2901)))

(declare-fun b!1401826 () Bool)

(declare-fun res!940439 () Bool)

(assert (=> b!1401826 (=> (not res!940439) (not e!793813))))

(assert (=> b!1401826 (= res!940439 (and (= (size!46790 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46790 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46790 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401828 () Bool)

(declare-fun res!940446 () Bool)

(assert (=> b!1401828 (=> (not res!940446) (not e!793813))))

(assert (=> b!1401828 (= res!940446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401829 () Bool)

(assert (=> b!1401829 (= e!793812 (= (seekEntryOrOpen!0 (select (arr!46239 a!2901) j!112) a!2901 mask!2840) (Found!10578 j!112)))))

(assert (= (and start!120458 res!940444) b!1401826))

(assert (= (and b!1401826 res!940439) b!1401827))

(assert (= (and b!1401827 res!940447) b!1401821))

(assert (= (and b!1401821 res!940440) b!1401828))

(assert (= (and b!1401828 res!940446) b!1401823))

(assert (= (and b!1401823 res!940449) b!1401825))

(assert (= (and b!1401825 res!940441) b!1401829))

(assert (= (and b!1401825 (not res!940448)) b!1401822))

(assert (= (and b!1401822 (not res!940442)) b!1401819))

(assert (= (and b!1401819 res!940443) b!1401824))

(assert (= (and b!1401819 (not res!940445)) b!1401820))

(declare-fun m!1289817 () Bool)

(assert (=> b!1401822 m!1289817))

(assert (=> b!1401822 m!1289817))

(declare-fun m!1289819 () Bool)

(assert (=> b!1401822 m!1289819))

(declare-fun m!1289821 () Bool)

(assert (=> b!1401822 m!1289821))

(declare-fun m!1289823 () Bool)

(assert (=> b!1401822 m!1289823))

(declare-fun m!1289825 () Bool)

(assert (=> b!1401828 m!1289825))

(declare-fun m!1289827 () Bool)

(assert (=> b!1401824 m!1289827))

(declare-fun m!1289829 () Bool)

(assert (=> b!1401824 m!1289829))

(assert (=> b!1401824 m!1289829))

(declare-fun m!1289831 () Bool)

(assert (=> b!1401824 m!1289831))

(assert (=> b!1401825 m!1289829))

(declare-fun m!1289833 () Bool)

(assert (=> b!1401825 m!1289833))

(assert (=> b!1401825 m!1289829))

(declare-fun m!1289835 () Bool)

(assert (=> b!1401825 m!1289835))

(assert (=> b!1401825 m!1289829))

(declare-fun m!1289837 () Bool)

(assert (=> b!1401825 m!1289837))

(declare-fun m!1289839 () Bool)

(assert (=> b!1401825 m!1289839))

(assert (=> b!1401819 m!1289821))

(declare-fun m!1289841 () Bool)

(assert (=> b!1401819 m!1289841))

(declare-fun m!1289843 () Bool)

(assert (=> b!1401819 m!1289843))

(declare-fun m!1289845 () Bool)

(assert (=> b!1401823 m!1289845))

(assert (=> b!1401829 m!1289829))

(assert (=> b!1401829 m!1289829))

(declare-fun m!1289847 () Bool)

(assert (=> b!1401829 m!1289847))

(declare-fun m!1289849 () Bool)

(assert (=> start!120458 m!1289849))

(declare-fun m!1289851 () Bool)

(assert (=> start!120458 m!1289851))

(assert (=> b!1401821 m!1289829))

(assert (=> b!1401821 m!1289829))

(declare-fun m!1289853 () Bool)

(assert (=> b!1401821 m!1289853))

(declare-fun m!1289855 () Bool)

(assert (=> b!1401820 m!1289855))

(declare-fun m!1289857 () Bool)

(assert (=> b!1401827 m!1289857))

(assert (=> b!1401827 m!1289857))

(declare-fun m!1289859 () Bool)

(assert (=> b!1401827 m!1289859))

(push 1)

