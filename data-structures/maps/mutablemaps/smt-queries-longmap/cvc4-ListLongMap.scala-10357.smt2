; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122000 () Bool)

(assert start!122000)

(declare-fun b!1415278 () Bool)

(declare-fun res!951435 () Bool)

(declare-fun e!801033 () Bool)

(assert (=> b!1415278 (=> (not res!951435) (not e!801033))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96604 0))(
  ( (array!96605 (arr!46629 (Array (_ BitVec 32) (_ BitVec 64))) (size!47180 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96604)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415278 (= res!951435 (and (= (size!47180 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47180 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47180 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415279 () Bool)

(declare-fun res!951438 () Bool)

(assert (=> b!1415279 (=> (not res!951438) (not e!801033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415279 (= res!951438 (validKeyInArray!0 (select (arr!46629 a!2901) i!1037)))))

(declare-fun b!1415280 () Bool)

(declare-fun res!951434 () Bool)

(assert (=> b!1415280 (=> (not res!951434) (not e!801033))))

(declare-datatypes ((List!33328 0))(
  ( (Nil!33325) (Cons!33324 (h!34611 (_ BitVec 64)) (t!48029 List!33328)) )
))
(declare-fun arrayNoDuplicates!0 (array!96604 (_ BitVec 32) List!33328) Bool)

(assert (=> b!1415280 (= res!951434 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33325))))

(declare-fun b!1415281 () Bool)

(declare-fun res!951432 () Bool)

(assert (=> b!1415281 (=> (not res!951432) (not e!801033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96604 (_ BitVec 32)) Bool)

(assert (=> b!1415281 (= res!951432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!801034 () Bool)

(declare-fun b!1415282 () Bool)

(declare-datatypes ((SeekEntryResult!10962 0))(
  ( (MissingZero!10962 (index!46239 (_ BitVec 32))) (Found!10962 (index!46240 (_ BitVec 32))) (Intermediate!10962 (undefined!11774 Bool) (index!46241 (_ BitVec 32)) (x!127852 (_ BitVec 32))) (Undefined!10962) (MissingVacant!10962 (index!46242 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96604 (_ BitVec 32)) SeekEntryResult!10962)

(assert (=> b!1415282 (= e!801034 (= (seekEntryOrOpen!0 (select (arr!46629 a!2901) j!112) a!2901 mask!2840) (Found!10962 j!112)))))

(declare-fun b!1415283 () Bool)

(declare-fun res!951430 () Bool)

(assert (=> b!1415283 (=> (not res!951430) (not e!801033))))

(assert (=> b!1415283 (= res!951430 (validKeyInArray!0 (select (arr!46629 a!2901) j!112)))))

(declare-fun res!951429 () Bool)

(assert (=> start!122000 (=> (not res!951429) (not e!801033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122000 (= res!951429 (validMask!0 mask!2840))))

(assert (=> start!122000 e!801033))

(assert (=> start!122000 true))

(declare-fun array_inv!35574 (array!96604) Bool)

(assert (=> start!122000 (array_inv!35574 a!2901)))

(declare-fun b!1415284 () Bool)

(declare-fun e!801037 () Bool)

(assert (=> b!1415284 (= e!801037 true)))

(declare-fun e!801038 () Bool)

(assert (=> b!1415284 e!801038))

(declare-fun res!951433 () Bool)

(assert (=> b!1415284 (=> (not res!951433) (not e!801038))))

(declare-fun lt!624034 () SeekEntryResult!10962)

(declare-fun lt!624029 () SeekEntryResult!10962)

(assert (=> b!1415284 (= res!951433 (and (not (undefined!11774 lt!624034)) (= (index!46241 lt!624034) i!1037) (bvslt (x!127852 lt!624034) (x!127852 lt!624029)) (= (select (store (arr!46629 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46241 lt!624034)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47848 0))(
  ( (Unit!47849) )
))
(declare-fun lt!624030 () Unit!47848)

(declare-fun lt!624028 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47848)

(assert (=> b!1415284 (= lt!624030 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624028 (x!127852 lt!624029) (index!46241 lt!624029) (x!127852 lt!624034) (index!46241 lt!624034) (undefined!11774 lt!624034) mask!2840))))

(declare-fun b!1415285 () Bool)

(declare-fun e!801035 () Bool)

(assert (=> b!1415285 (= e!801035 e!801037)))

(declare-fun res!951437 () Bool)

(assert (=> b!1415285 (=> res!951437 e!801037)))

(assert (=> b!1415285 (= res!951437 (or (= lt!624029 lt!624034) (not (is-Intermediate!10962 lt!624034))))))

(declare-fun lt!624032 () array!96604)

(declare-fun lt!624033 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96604 (_ BitVec 32)) SeekEntryResult!10962)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415285 (= lt!624034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624033 mask!2840) lt!624033 lt!624032 mask!2840))))

(assert (=> b!1415285 (= lt!624033 (select (store (arr!46629 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415285 (= lt!624032 (array!96605 (store (arr!46629 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47180 a!2901)))))

(declare-fun b!1415286 () Bool)

(assert (=> b!1415286 (= e!801033 (not e!801035))))

(declare-fun res!951436 () Bool)

(assert (=> b!1415286 (=> res!951436 e!801035)))

(assert (=> b!1415286 (= res!951436 (or (not (is-Intermediate!10962 lt!624029)) (undefined!11774 lt!624029)))))

(assert (=> b!1415286 e!801034))

(declare-fun res!951431 () Bool)

(assert (=> b!1415286 (=> (not res!951431) (not e!801034))))

(assert (=> b!1415286 (= res!951431 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624031 () Unit!47848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47848)

(assert (=> b!1415286 (= lt!624031 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415286 (= lt!624029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624028 (select (arr!46629 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415286 (= lt!624028 (toIndex!0 (select (arr!46629 a!2901) j!112) mask!2840))))

(declare-fun b!1415287 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96604 (_ BitVec 32)) SeekEntryResult!10962)

(assert (=> b!1415287 (= e!801038 (= (seekEntryOrOpen!0 lt!624033 lt!624032 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127852 lt!624034) (index!46241 lt!624034) (index!46241 lt!624034) (select (arr!46629 a!2901) j!112) lt!624032 mask!2840)))))

(assert (= (and start!122000 res!951429) b!1415278))

(assert (= (and b!1415278 res!951435) b!1415279))

(assert (= (and b!1415279 res!951438) b!1415283))

(assert (= (and b!1415283 res!951430) b!1415281))

(assert (= (and b!1415281 res!951432) b!1415280))

(assert (= (and b!1415280 res!951434) b!1415286))

(assert (= (and b!1415286 res!951431) b!1415282))

(assert (= (and b!1415286 (not res!951436)) b!1415285))

(assert (= (and b!1415285 (not res!951437)) b!1415284))

(assert (= (and b!1415284 res!951433) b!1415287))

(declare-fun m!1305587 () Bool)

(assert (=> b!1415287 m!1305587))

(declare-fun m!1305589 () Bool)

(assert (=> b!1415287 m!1305589))

(assert (=> b!1415287 m!1305589))

(declare-fun m!1305591 () Bool)

(assert (=> b!1415287 m!1305591))

(declare-fun m!1305593 () Bool)

(assert (=> start!122000 m!1305593))

(declare-fun m!1305595 () Bool)

(assert (=> start!122000 m!1305595))

(declare-fun m!1305597 () Bool)

(assert (=> b!1415280 m!1305597))

(declare-fun m!1305599 () Bool)

(assert (=> b!1415285 m!1305599))

(assert (=> b!1415285 m!1305599))

(declare-fun m!1305601 () Bool)

(assert (=> b!1415285 m!1305601))

(declare-fun m!1305603 () Bool)

(assert (=> b!1415285 m!1305603))

(declare-fun m!1305605 () Bool)

(assert (=> b!1415285 m!1305605))

(assert (=> b!1415284 m!1305603))

(declare-fun m!1305607 () Bool)

(assert (=> b!1415284 m!1305607))

(declare-fun m!1305609 () Bool)

(assert (=> b!1415284 m!1305609))

(declare-fun m!1305611 () Bool)

(assert (=> b!1415281 m!1305611))

(assert (=> b!1415282 m!1305589))

(assert (=> b!1415282 m!1305589))

(declare-fun m!1305613 () Bool)

(assert (=> b!1415282 m!1305613))

(assert (=> b!1415283 m!1305589))

(assert (=> b!1415283 m!1305589))

(declare-fun m!1305615 () Bool)

(assert (=> b!1415283 m!1305615))

(declare-fun m!1305617 () Bool)

(assert (=> b!1415279 m!1305617))

(assert (=> b!1415279 m!1305617))

(declare-fun m!1305619 () Bool)

(assert (=> b!1415279 m!1305619))

(assert (=> b!1415286 m!1305589))

(declare-fun m!1305621 () Bool)

(assert (=> b!1415286 m!1305621))

(assert (=> b!1415286 m!1305589))

(assert (=> b!1415286 m!1305589))

(declare-fun m!1305623 () Bool)

(assert (=> b!1415286 m!1305623))

(declare-fun m!1305625 () Bool)

(assert (=> b!1415286 m!1305625))

(declare-fun m!1305627 () Bool)

(assert (=> b!1415286 m!1305627))

(push 1)

