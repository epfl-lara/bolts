; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119162 () Bool)

(assert start!119162)

(declare-fun b!1389617 () Bool)

(declare-fun res!929890 () Bool)

(declare-fun e!787112 () Bool)

(assert (=> b!1389617 (=> (not res!929890) (not e!787112))))

(declare-datatypes ((array!95017 0))(
  ( (array!95018 (arr!45870 (Array (_ BitVec 32) (_ BitVec 64))) (size!46421 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95017)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95017 (_ BitVec 32)) Bool)

(assert (=> b!1389617 (= res!929890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389618 () Bool)

(declare-fun res!929889 () Bool)

(assert (=> b!1389618 (=> (not res!929889) (not e!787112))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389618 (= res!929889 (validKeyInArray!0 (select (arr!45870 a!2901) j!112)))))

(declare-fun b!1389619 () Bool)

(declare-fun res!929887 () Bool)

(assert (=> b!1389619 (=> (not res!929887) (not e!787112))))

(declare-datatypes ((List!32569 0))(
  ( (Nil!32566) (Cons!32565 (h!33783 (_ BitVec 64)) (t!47270 List!32569)) )
))
(declare-fun arrayNoDuplicates!0 (array!95017 (_ BitVec 32) List!32569) Bool)

(assert (=> b!1389619 (= res!929887 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32566))))

(declare-fun b!1389620 () Bool)

(declare-fun res!929891 () Bool)

(assert (=> b!1389620 (=> (not res!929891) (not e!787112))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389620 (= res!929891 (validKeyInArray!0 (select (arr!45870 a!2901) i!1037)))))

(declare-fun res!929888 () Bool)

(assert (=> start!119162 (=> (not res!929888) (not e!787112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119162 (= res!929888 (validMask!0 mask!2840))))

(assert (=> start!119162 e!787112))

(assert (=> start!119162 true))

(declare-fun array_inv!34815 (array!95017) Bool)

(assert (=> start!119162 (array_inv!34815 a!2901)))

(declare-fun b!1389621 () Bool)

(assert (=> b!1389621 (= e!787112 false)))

(declare-datatypes ((SeekEntryResult!10209 0))(
  ( (MissingZero!10209 (index!43206 (_ BitVec 32))) (Found!10209 (index!43207 (_ BitVec 32))) (Intermediate!10209 (undefined!11021 Bool) (index!43208 (_ BitVec 32)) (x!124898 (_ BitVec 32))) (Undefined!10209) (MissingVacant!10209 (index!43209 (_ BitVec 32))) )
))
(declare-fun lt!610549 () SeekEntryResult!10209)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95017 (_ BitVec 32)) SeekEntryResult!10209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389621 (= lt!610549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45870 a!2901) j!112) mask!2840) (select (arr!45870 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389622 () Bool)

(declare-fun res!929892 () Bool)

(assert (=> b!1389622 (=> (not res!929892) (not e!787112))))

(assert (=> b!1389622 (= res!929892 (and (= (size!46421 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46421 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46421 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119162 res!929888) b!1389622))

(assert (= (and b!1389622 res!929892) b!1389620))

(assert (= (and b!1389620 res!929891) b!1389618))

(assert (= (and b!1389618 res!929889) b!1389617))

(assert (= (and b!1389617 res!929890) b!1389619))

(assert (= (and b!1389619 res!929887) b!1389621))

(declare-fun m!1275339 () Bool)

(assert (=> b!1389617 m!1275339))

(declare-fun m!1275341 () Bool)

(assert (=> b!1389619 m!1275341))

(declare-fun m!1275343 () Bool)

(assert (=> start!119162 m!1275343))

(declare-fun m!1275345 () Bool)

(assert (=> start!119162 m!1275345))

(declare-fun m!1275347 () Bool)

(assert (=> b!1389621 m!1275347))

(assert (=> b!1389621 m!1275347))

(declare-fun m!1275349 () Bool)

(assert (=> b!1389621 m!1275349))

(assert (=> b!1389621 m!1275349))

(assert (=> b!1389621 m!1275347))

(declare-fun m!1275351 () Bool)

(assert (=> b!1389621 m!1275351))

(assert (=> b!1389618 m!1275347))

(assert (=> b!1389618 m!1275347))

(declare-fun m!1275353 () Bool)

(assert (=> b!1389618 m!1275353))

(declare-fun m!1275355 () Bool)

(assert (=> b!1389620 m!1275355))

(assert (=> b!1389620 m!1275355))

(declare-fun m!1275357 () Bool)

(assert (=> b!1389620 m!1275357))

(push 1)

(assert (not b!1389618))

(assert (not start!119162))

(assert (not b!1389617))

(assert (not b!1389621))

(assert (not b!1389620))

(assert (not b!1389619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

