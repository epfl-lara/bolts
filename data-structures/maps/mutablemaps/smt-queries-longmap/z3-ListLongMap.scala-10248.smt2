; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120582 () Bool)

(assert start!120582)

(declare-fun b!1403530 () Bool)

(declare-fun res!942154 () Bool)

(declare-fun e!794707 () Bool)

(assert (=> b!1403530 (=> (not res!942154) (not e!794707))))

(declare-datatypes ((array!95909 0))(
  ( (array!95910 (arr!46301 (Array (_ BitVec 32) (_ BitVec 64))) (size!46852 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95909)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95909 (_ BitVec 32)) Bool)

(assert (=> b!1403530 (= res!942154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403531 () Bool)

(declare-fun res!942155 () Bool)

(assert (=> b!1403531 (=> (not res!942155) (not e!794707))))

(declare-datatypes ((List!33000 0))(
  ( (Nil!32997) (Cons!32996 (h!34244 (_ BitVec 64)) (t!47701 List!33000)) )
))
(declare-fun arrayNoDuplicates!0 (array!95909 (_ BitVec 32) List!33000) Bool)

(assert (=> b!1403531 (= res!942155 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32997))))

(declare-fun b!1403532 () Bool)

(assert (=> b!1403532 (= e!794707 (not true))))

(declare-fun e!794708 () Bool)

(assert (=> b!1403532 e!794708))

(declare-fun res!942153 () Bool)

(assert (=> b!1403532 (=> (not res!942153) (not e!794708))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403532 (= res!942153 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47234 0))(
  ( (Unit!47235) )
))
(declare-fun lt!618397 () Unit!47234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47234)

(assert (=> b!1403532 (= lt!618397 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10640 0))(
  ( (MissingZero!10640 (index!44936 (_ BitVec 32))) (Found!10640 (index!44937 (_ BitVec 32))) (Intermediate!10640 (undefined!11452 Bool) (index!44938 (_ BitVec 32)) (x!126550 (_ BitVec 32))) (Undefined!10640) (MissingVacant!10640 (index!44939 (_ BitVec 32))) )
))
(declare-fun lt!618396 () SeekEntryResult!10640)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95909 (_ BitVec 32)) SeekEntryResult!10640)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403532 (= lt!618396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46301 a!2901) j!112) mask!2840) (select (arr!46301 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403533 () Bool)

(declare-fun res!942150 () Bool)

(assert (=> b!1403533 (=> (not res!942150) (not e!794707))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403533 (= res!942150 (and (= (size!46852 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46852 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46852 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403534 () Bool)

(declare-fun res!942151 () Bool)

(assert (=> b!1403534 (=> (not res!942151) (not e!794707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403534 (= res!942151 (validKeyInArray!0 (select (arr!46301 a!2901) j!112)))))

(declare-fun res!942156 () Bool)

(assert (=> start!120582 (=> (not res!942156) (not e!794707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120582 (= res!942156 (validMask!0 mask!2840))))

(assert (=> start!120582 e!794707))

(assert (=> start!120582 true))

(declare-fun array_inv!35246 (array!95909) Bool)

(assert (=> start!120582 (array_inv!35246 a!2901)))

(declare-fun b!1403535 () Bool)

(declare-fun res!942152 () Bool)

(assert (=> b!1403535 (=> (not res!942152) (not e!794707))))

(assert (=> b!1403535 (= res!942152 (validKeyInArray!0 (select (arr!46301 a!2901) i!1037)))))

(declare-fun b!1403536 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95909 (_ BitVec 32)) SeekEntryResult!10640)

(assert (=> b!1403536 (= e!794708 (= (seekEntryOrOpen!0 (select (arr!46301 a!2901) j!112) a!2901 mask!2840) (Found!10640 j!112)))))

(assert (= (and start!120582 res!942156) b!1403533))

(assert (= (and b!1403533 res!942150) b!1403535))

(assert (= (and b!1403535 res!942152) b!1403534))

(assert (= (and b!1403534 res!942151) b!1403530))

(assert (= (and b!1403530 res!942154) b!1403531))

(assert (= (and b!1403531 res!942155) b!1403532))

(assert (= (and b!1403532 res!942153) b!1403536))

(declare-fun m!1292287 () Bool)

(assert (=> start!120582 m!1292287))

(declare-fun m!1292289 () Bool)

(assert (=> start!120582 m!1292289))

(declare-fun m!1292291 () Bool)

(assert (=> b!1403534 m!1292291))

(assert (=> b!1403534 m!1292291))

(declare-fun m!1292293 () Bool)

(assert (=> b!1403534 m!1292293))

(assert (=> b!1403532 m!1292291))

(declare-fun m!1292295 () Bool)

(assert (=> b!1403532 m!1292295))

(assert (=> b!1403532 m!1292291))

(declare-fun m!1292297 () Bool)

(assert (=> b!1403532 m!1292297))

(assert (=> b!1403532 m!1292295))

(assert (=> b!1403532 m!1292291))

(declare-fun m!1292299 () Bool)

(assert (=> b!1403532 m!1292299))

(declare-fun m!1292301 () Bool)

(assert (=> b!1403532 m!1292301))

(declare-fun m!1292303 () Bool)

(assert (=> b!1403530 m!1292303))

(declare-fun m!1292305 () Bool)

(assert (=> b!1403531 m!1292305))

(declare-fun m!1292307 () Bool)

(assert (=> b!1403535 m!1292307))

(assert (=> b!1403535 m!1292307))

(declare-fun m!1292309 () Bool)

(assert (=> b!1403535 m!1292309))

(assert (=> b!1403536 m!1292291))

(assert (=> b!1403536 m!1292291))

(declare-fun m!1292311 () Bool)

(assert (=> b!1403536 m!1292311))

(check-sat (not b!1403535) (not b!1403530) (not b!1403531) (not b!1403532) (not b!1403536) (not b!1403534) (not start!120582))
