; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119846 () Bool)

(assert start!119846)

(declare-fun b!1395231 () Bool)

(declare-fun res!934586 () Bool)

(declare-fun e!789932 () Bool)

(assert (=> b!1395231 (=> (not res!934586) (not e!789932))))

(declare-datatypes ((array!95395 0))(
  ( (array!95396 (arr!46050 (Array (_ BitVec 32) (_ BitVec 64))) (size!46601 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95395)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95395 (_ BitVec 32)) Bool)

(assert (=> b!1395231 (= res!934586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!934587 () Bool)

(assert (=> start!119846 (=> (not res!934587) (not e!789932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119846 (= res!934587 (validMask!0 mask!2840))))

(assert (=> start!119846 e!789932))

(assert (=> start!119846 true))

(declare-fun array_inv!34995 (array!95395) Bool)

(assert (=> start!119846 (array_inv!34995 a!2901)))

(declare-fun b!1395232 () Bool)

(declare-fun res!934585 () Bool)

(assert (=> b!1395232 (=> (not res!934585) (not e!789932))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395232 (= res!934585 (validKeyInArray!0 (select (arr!46050 a!2901) i!1037)))))

(declare-fun b!1395233 () Bool)

(declare-fun res!934590 () Bool)

(assert (=> b!1395233 (=> (not res!934590) (not e!789932))))

(declare-datatypes ((List!32749 0))(
  ( (Nil!32746) (Cons!32745 (h!33981 (_ BitVec 64)) (t!47450 List!32749)) )
))
(declare-fun arrayNoDuplicates!0 (array!95395 (_ BitVec 32) List!32749) Bool)

(assert (=> b!1395233 (= res!934590 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32746))))

(declare-fun b!1395234 () Bool)

(declare-fun e!789930 () Bool)

(assert (=> b!1395234 (= e!789930 true)))

(declare-datatypes ((SeekEntryResult!10389 0))(
  ( (MissingZero!10389 (index!43926 (_ BitVec 32))) (Found!10389 (index!43927 (_ BitVec 32))) (Intermediate!10389 (undefined!11201 Bool) (index!43928 (_ BitVec 32)) (x!125594 (_ BitVec 32))) (Undefined!10389) (MissingVacant!10389 (index!43929 (_ BitVec 32))) )
))
(declare-fun lt!612891 () SeekEntryResult!10389)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95395 (_ BitVec 32)) SeekEntryResult!10389)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395234 (= lt!612891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46050 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46050 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95396 (store (arr!46050 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46601 a!2901)) mask!2840))))

(declare-fun b!1395235 () Bool)

(declare-fun res!934588 () Bool)

(assert (=> b!1395235 (=> (not res!934588) (not e!789932))))

(assert (=> b!1395235 (= res!934588 (and (= (size!46601 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46601 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46601 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!789929 () Bool)

(declare-fun b!1395236 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95395 (_ BitVec 32)) SeekEntryResult!10389)

(assert (=> b!1395236 (= e!789929 (= (seekEntryOrOpen!0 (select (arr!46050 a!2901) j!112) a!2901 mask!2840) (Found!10389 j!112)))))

(declare-fun b!1395237 () Bool)

(declare-fun res!934583 () Bool)

(assert (=> b!1395237 (=> (not res!934583) (not e!789932))))

(assert (=> b!1395237 (= res!934583 (validKeyInArray!0 (select (arr!46050 a!2901) j!112)))))

(declare-fun b!1395238 () Bool)

(assert (=> b!1395238 (= e!789932 (not e!789930))))

(declare-fun res!934589 () Bool)

(assert (=> b!1395238 (=> res!934589 e!789930)))

(declare-fun lt!612892 () SeekEntryResult!10389)

(assert (=> b!1395238 (= res!934589 (or (not (is-Intermediate!10389 lt!612892)) (undefined!11201 lt!612892)))))

(assert (=> b!1395238 e!789929))

(declare-fun res!934584 () Bool)

(assert (=> b!1395238 (=> (not res!934584) (not e!789929))))

(assert (=> b!1395238 (= res!934584 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46732 0))(
  ( (Unit!46733) )
))
(declare-fun lt!612890 () Unit!46732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46732)

(assert (=> b!1395238 (= lt!612890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395238 (= lt!612892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46050 a!2901) j!112) mask!2840) (select (arr!46050 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119846 res!934587) b!1395235))

(assert (= (and b!1395235 res!934588) b!1395232))

(assert (= (and b!1395232 res!934585) b!1395237))

(assert (= (and b!1395237 res!934583) b!1395231))

(assert (= (and b!1395231 res!934586) b!1395233))

(assert (= (and b!1395233 res!934590) b!1395238))

(assert (= (and b!1395238 res!934584) b!1395236))

(assert (= (and b!1395238 (not res!934589)) b!1395234))

(declare-fun m!1281733 () Bool)

(assert (=> b!1395238 m!1281733))

(declare-fun m!1281735 () Bool)

(assert (=> b!1395238 m!1281735))

(assert (=> b!1395238 m!1281733))

(declare-fun m!1281737 () Bool)

(assert (=> b!1395238 m!1281737))

(assert (=> b!1395238 m!1281735))

(assert (=> b!1395238 m!1281733))

(declare-fun m!1281739 () Bool)

(assert (=> b!1395238 m!1281739))

(declare-fun m!1281741 () Bool)

(assert (=> b!1395238 m!1281741))

(declare-fun m!1281743 () Bool)

(assert (=> b!1395232 m!1281743))

(assert (=> b!1395232 m!1281743))

(declare-fun m!1281745 () Bool)

(assert (=> b!1395232 m!1281745))

(declare-fun m!1281747 () Bool)

(assert (=> start!119846 m!1281747))

(declare-fun m!1281749 () Bool)

(assert (=> start!119846 m!1281749))

(assert (=> b!1395237 m!1281733))

(assert (=> b!1395237 m!1281733))

(declare-fun m!1281751 () Bool)

(assert (=> b!1395237 m!1281751))

(declare-fun m!1281753 () Bool)

(assert (=> b!1395234 m!1281753))

(declare-fun m!1281755 () Bool)

(assert (=> b!1395234 m!1281755))

(assert (=> b!1395234 m!1281755))

(declare-fun m!1281757 () Bool)

(assert (=> b!1395234 m!1281757))

(assert (=> b!1395234 m!1281757))

(assert (=> b!1395234 m!1281755))

(declare-fun m!1281759 () Bool)

(assert (=> b!1395234 m!1281759))

(declare-fun m!1281761 () Bool)

(assert (=> b!1395231 m!1281761))

(declare-fun m!1281763 () Bool)

(assert (=> b!1395233 m!1281763))

(assert (=> b!1395236 m!1281733))

(assert (=> b!1395236 m!1281733))

(declare-fun m!1281765 () Bool)

(assert (=> b!1395236 m!1281765))

(push 1)

(assert (not b!1395237))

(assert (not b!1395238))

(assert (not b!1395236))

(assert (not start!119846))

(assert (not b!1395232))

(assert (not b!1395234))

(assert (not b!1395231))

(assert (not b!1395233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

