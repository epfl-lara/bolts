; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120554 () Bool)

(assert start!120554)

(declare-fun b!1403208 () Bool)

(declare-fun e!794555 () Bool)

(declare-fun e!794552 () Bool)

(assert (=> b!1403208 (= e!794555 (not e!794552))))

(declare-fun res!941835 () Bool)

(assert (=> b!1403208 (=> res!941835 e!794552)))

(declare-datatypes ((SeekEntryResult!10626 0))(
  ( (MissingZero!10626 (index!44880 (_ BitVec 32))) (Found!10626 (index!44881 (_ BitVec 32))) (Intermediate!10626 (undefined!11438 Bool) (index!44882 (_ BitVec 32)) (x!126496 (_ BitVec 32))) (Undefined!10626) (MissingVacant!10626 (index!44883 (_ BitVec 32))) )
))
(declare-fun lt!618284 () SeekEntryResult!10626)

(assert (=> b!1403208 (= res!941835 (or (not (is-Intermediate!10626 lt!618284)) (undefined!11438 lt!618284)))))

(declare-fun e!794553 () Bool)

(assert (=> b!1403208 e!794553))

(declare-fun res!941834 () Bool)

(assert (=> b!1403208 (=> (not res!941834) (not e!794553))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95881 0))(
  ( (array!95882 (arr!46287 (Array (_ BitVec 32) (_ BitVec 64))) (size!46838 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95881)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95881 (_ BitVec 32)) Bool)

(assert (=> b!1403208 (= res!941834 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47206 0))(
  ( (Unit!47207) )
))
(declare-fun lt!618286 () Unit!47206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47206)

(assert (=> b!1403208 (= lt!618286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95881 (_ BitVec 32)) SeekEntryResult!10626)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403208 (= lt!618284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46287 a!2901) j!112) mask!2840) (select (arr!46287 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403209 () Bool)

(declare-fun res!941833 () Bool)

(assert (=> b!1403209 (=> (not res!941833) (not e!794555))))

(assert (=> b!1403209 (= res!941833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403210 () Bool)

(assert (=> b!1403210 (= e!794552 true)))

(declare-fun lt!618285 () SeekEntryResult!10626)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403210 (= lt!618285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46287 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46287 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95882 (store (arr!46287 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46838 a!2901)) mask!2840))))

(declare-fun res!941832 () Bool)

(assert (=> start!120554 (=> (not res!941832) (not e!794555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120554 (= res!941832 (validMask!0 mask!2840))))

(assert (=> start!120554 e!794555))

(assert (=> start!120554 true))

(declare-fun array_inv!35232 (array!95881) Bool)

(assert (=> start!120554 (array_inv!35232 a!2901)))

(declare-fun b!1403211 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95881 (_ BitVec 32)) SeekEntryResult!10626)

(assert (=> b!1403211 (= e!794553 (= (seekEntryOrOpen!0 (select (arr!46287 a!2901) j!112) a!2901 mask!2840) (Found!10626 j!112)))))

(declare-fun b!1403212 () Bool)

(declare-fun res!941831 () Bool)

(assert (=> b!1403212 (=> (not res!941831) (not e!794555))))

(assert (=> b!1403212 (= res!941831 (and (= (size!46838 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46838 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46838 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403213 () Bool)

(declare-fun res!941829 () Bool)

(assert (=> b!1403213 (=> (not res!941829) (not e!794555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403213 (= res!941829 (validKeyInArray!0 (select (arr!46287 a!2901) i!1037)))))

(declare-fun b!1403214 () Bool)

(declare-fun res!941830 () Bool)

(assert (=> b!1403214 (=> (not res!941830) (not e!794555))))

(declare-datatypes ((List!32986 0))(
  ( (Nil!32983) (Cons!32982 (h!34230 (_ BitVec 64)) (t!47687 List!32986)) )
))
(declare-fun arrayNoDuplicates!0 (array!95881 (_ BitVec 32) List!32986) Bool)

(assert (=> b!1403214 (= res!941830 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32983))))

(declare-fun b!1403215 () Bool)

(declare-fun res!941828 () Bool)

(assert (=> b!1403215 (=> (not res!941828) (not e!794555))))

(assert (=> b!1403215 (= res!941828 (validKeyInArray!0 (select (arr!46287 a!2901) j!112)))))

(assert (= (and start!120554 res!941832) b!1403212))

(assert (= (and b!1403212 res!941831) b!1403213))

(assert (= (and b!1403213 res!941829) b!1403215))

(assert (= (and b!1403215 res!941828) b!1403209))

(assert (= (and b!1403209 res!941833) b!1403214))

(assert (= (and b!1403214 res!941830) b!1403208))

(assert (= (and b!1403208 res!941834) b!1403211))

(assert (= (and b!1403208 (not res!941835)) b!1403210))

(declare-fun m!1291843 () Bool)

(assert (=> b!1403208 m!1291843))

(declare-fun m!1291845 () Bool)

(assert (=> b!1403208 m!1291845))

(assert (=> b!1403208 m!1291843))

(declare-fun m!1291847 () Bool)

(assert (=> b!1403208 m!1291847))

(assert (=> b!1403208 m!1291845))

(assert (=> b!1403208 m!1291843))

(declare-fun m!1291849 () Bool)

(assert (=> b!1403208 m!1291849))

(declare-fun m!1291851 () Bool)

(assert (=> b!1403208 m!1291851))

(declare-fun m!1291853 () Bool)

(assert (=> b!1403209 m!1291853))

(declare-fun m!1291855 () Bool)

(assert (=> b!1403210 m!1291855))

(declare-fun m!1291857 () Bool)

(assert (=> b!1403210 m!1291857))

(assert (=> b!1403210 m!1291857))

(declare-fun m!1291859 () Bool)

(assert (=> b!1403210 m!1291859))

(assert (=> b!1403210 m!1291859))

(assert (=> b!1403210 m!1291857))

(declare-fun m!1291861 () Bool)

(assert (=> b!1403210 m!1291861))

(assert (=> b!1403211 m!1291843))

(assert (=> b!1403211 m!1291843))

(declare-fun m!1291863 () Bool)

(assert (=> b!1403211 m!1291863))

(declare-fun m!1291865 () Bool)

(assert (=> start!120554 m!1291865))

(declare-fun m!1291867 () Bool)

(assert (=> start!120554 m!1291867))

(declare-fun m!1291869 () Bool)

(assert (=> b!1403214 m!1291869))

(assert (=> b!1403215 m!1291843))

(assert (=> b!1403215 m!1291843))

(declare-fun m!1291871 () Bool)

(assert (=> b!1403215 m!1291871))

(declare-fun m!1291873 () Bool)

(assert (=> b!1403213 m!1291873))

(assert (=> b!1403213 m!1291873))

(declare-fun m!1291875 () Bool)

(assert (=> b!1403213 m!1291875))

(push 1)

(assert (not b!1403210))

(assert (not b!1403211))

(assert (not b!1403214))

(assert (not b!1403208))

(assert (not b!1403209))

(assert (not start!120554))

(assert (not b!1403213))

(assert (not b!1403215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

