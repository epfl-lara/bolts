; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120112 () Bool)

(assert start!120112)

(declare-fun b!1397846 () Bool)

(declare-fun e!791390 () Bool)

(declare-fun e!791389 () Bool)

(assert (=> b!1397846 (= e!791390 (not e!791389))))

(declare-fun res!936876 () Bool)

(assert (=> b!1397846 (=> res!936876 e!791389)))

(declare-datatypes ((SeekEntryResult!10468 0))(
  ( (MissingZero!10468 (index!44242 (_ BitVec 32))) (Found!10468 (index!44243 (_ BitVec 32))) (Intermediate!10468 (undefined!11280 Bool) (index!44244 (_ BitVec 32)) (x!125901 (_ BitVec 32))) (Undefined!10468) (MissingVacant!10468 (index!44245 (_ BitVec 32))) )
))
(declare-fun lt!614524 () SeekEntryResult!10468)

(assert (=> b!1397846 (= res!936876 (or (not (is-Intermediate!10468 lt!614524)) (undefined!11280 lt!614524)))))

(declare-fun e!791386 () Bool)

(assert (=> b!1397846 e!791386))

(declare-fun res!936871 () Bool)

(assert (=> b!1397846 (=> (not res!936871) (not e!791386))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95559 0))(
  ( (array!95560 (arr!46129 (Array (_ BitVec 32) (_ BitVec 64))) (size!46680 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95559)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95559 (_ BitVec 32)) Bool)

(assert (=> b!1397846 (= res!936871 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46890 0))(
  ( (Unit!46891) )
))
(declare-fun lt!614526 () Unit!46890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46890)

(assert (=> b!1397846 (= lt!614526 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614528 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95559 (_ BitVec 32)) SeekEntryResult!10468)

(assert (=> b!1397846 (= lt!614524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614528 (select (arr!46129 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397846 (= lt!614528 (toIndex!0 (select (arr!46129 a!2901) j!112) mask!2840))))

(declare-fun b!1397847 () Bool)

(declare-fun e!791387 () Bool)

(assert (=> b!1397847 (= e!791389 e!791387)))

(declare-fun res!936875 () Bool)

(assert (=> b!1397847 (=> res!936875 e!791387)))

(declare-fun lt!614529 () SeekEntryResult!10468)

(assert (=> b!1397847 (= res!936875 (or (= lt!614524 lt!614529) (not (is-Intermediate!10468 lt!614529)) (bvslt (x!125901 lt!614524) #b00000000000000000000000000000000) (bvsgt (x!125901 lt!614524) #b01111111111111111111111111111110) (bvslt lt!614528 #b00000000000000000000000000000000) (bvsge lt!614528 (size!46680 a!2901)) (bvslt (index!44244 lt!614524) #b00000000000000000000000000000000) (bvsge (index!44244 lt!614524) (size!46680 a!2901)) (not (= lt!614524 (Intermediate!10468 false (index!44244 lt!614524) (x!125901 lt!614524)))) (not (= lt!614529 (Intermediate!10468 (undefined!11280 lt!614529) (index!44244 lt!614529) (x!125901 lt!614529))))))))

(declare-fun lt!614527 () (_ BitVec 64))

(declare-fun lt!614530 () array!95559)

(assert (=> b!1397847 (= lt!614529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614527 mask!2840) lt!614527 lt!614530 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397847 (= lt!614527 (select (store (arr!46129 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397847 (= lt!614530 (array!95560 (store (arr!46129 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46680 a!2901)))))

(declare-fun b!1397848 () Bool)

(declare-fun res!936869 () Bool)

(assert (=> b!1397848 (=> (not res!936869) (not e!791390))))

(declare-datatypes ((List!32828 0))(
  ( (Nil!32825) (Cons!32824 (h!34066 (_ BitVec 64)) (t!47529 List!32828)) )
))
(declare-fun arrayNoDuplicates!0 (array!95559 (_ BitVec 32) List!32828) Bool)

(assert (=> b!1397848 (= res!936869 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32825))))

(declare-fun b!1397849 () Bool)

(declare-fun res!936868 () Bool)

(assert (=> b!1397849 (=> (not res!936868) (not e!791390))))

(assert (=> b!1397849 (= res!936868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397850 () Bool)

(declare-fun res!936874 () Bool)

(assert (=> b!1397850 (=> (not res!936874) (not e!791390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397850 (= res!936874 (validKeyInArray!0 (select (arr!46129 a!2901) i!1037)))))

(declare-fun b!1397851 () Bool)

(declare-fun res!936870 () Bool)

(assert (=> b!1397851 (=> (not res!936870) (not e!791390))))

(assert (=> b!1397851 (= res!936870 (validKeyInArray!0 (select (arr!46129 a!2901) j!112)))))

(declare-fun res!936872 () Bool)

(assert (=> start!120112 (=> (not res!936872) (not e!791390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120112 (= res!936872 (validMask!0 mask!2840))))

(assert (=> start!120112 e!791390))

(assert (=> start!120112 true))

(declare-fun array_inv!35074 (array!95559) Bool)

(assert (=> start!120112 (array_inv!35074 a!2901)))

(declare-fun b!1397852 () Bool)

(declare-fun res!936873 () Bool)

(assert (=> b!1397852 (=> (not res!936873) (not e!791390))))

(assert (=> b!1397852 (= res!936873 (and (= (size!46680 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46680 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46680 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397853 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95559 (_ BitVec 32)) SeekEntryResult!10468)

(assert (=> b!1397853 (= e!791386 (= (seekEntryOrOpen!0 (select (arr!46129 a!2901) j!112) a!2901 mask!2840) (Found!10468 j!112)))))

(declare-fun b!1397854 () Bool)

(assert (=> b!1397854 (= e!791387 true)))

(declare-fun lt!614525 () SeekEntryResult!10468)

(assert (=> b!1397854 (= lt!614525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614528 lt!614527 lt!614530 mask!2840))))

(assert (= (and start!120112 res!936872) b!1397852))

(assert (= (and b!1397852 res!936873) b!1397850))

(assert (= (and b!1397850 res!936874) b!1397851))

(assert (= (and b!1397851 res!936870) b!1397849))

(assert (= (and b!1397849 res!936868) b!1397848))

(assert (= (and b!1397848 res!936869) b!1397846))

(assert (= (and b!1397846 res!936871) b!1397853))

(assert (= (and b!1397846 (not res!936876)) b!1397847))

(assert (= (and b!1397847 (not res!936875)) b!1397854))

(declare-fun m!1284839 () Bool)

(assert (=> b!1397853 m!1284839))

(assert (=> b!1397853 m!1284839))

(declare-fun m!1284841 () Bool)

(assert (=> b!1397853 m!1284841))

(declare-fun m!1284843 () Bool)

(assert (=> b!1397850 m!1284843))

(assert (=> b!1397850 m!1284843))

(declare-fun m!1284845 () Bool)

(assert (=> b!1397850 m!1284845))

(assert (=> b!1397851 m!1284839))

(assert (=> b!1397851 m!1284839))

(declare-fun m!1284847 () Bool)

(assert (=> b!1397851 m!1284847))

(declare-fun m!1284849 () Bool)

(assert (=> start!120112 m!1284849))

(declare-fun m!1284851 () Bool)

(assert (=> start!120112 m!1284851))

(declare-fun m!1284853 () Bool)

(assert (=> b!1397848 m!1284853))

(declare-fun m!1284855 () Bool)

(assert (=> b!1397854 m!1284855))

(declare-fun m!1284857 () Bool)

(assert (=> b!1397849 m!1284857))

(declare-fun m!1284859 () Bool)

(assert (=> b!1397847 m!1284859))

(assert (=> b!1397847 m!1284859))

(declare-fun m!1284861 () Bool)

(assert (=> b!1397847 m!1284861))

(declare-fun m!1284863 () Bool)

(assert (=> b!1397847 m!1284863))

(declare-fun m!1284865 () Bool)

(assert (=> b!1397847 m!1284865))

(assert (=> b!1397846 m!1284839))

(declare-fun m!1284867 () Bool)

(assert (=> b!1397846 m!1284867))

(assert (=> b!1397846 m!1284839))

(declare-fun m!1284869 () Bool)

(assert (=> b!1397846 m!1284869))

(assert (=> b!1397846 m!1284839))

(declare-fun m!1284871 () Bool)

(assert (=> b!1397846 m!1284871))

(declare-fun m!1284873 () Bool)

(assert (=> b!1397846 m!1284873))

(push 1)

