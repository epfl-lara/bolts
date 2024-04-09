; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122220 () Bool)

(assert start!122220)

(declare-fun b!1417318 () Bool)

(declare-fun res!953159 () Bool)

(declare-fun e!802177 () Bool)

(assert (=> b!1417318 (=> (not res!953159) (not e!802177))))

(declare-datatypes ((array!96722 0))(
  ( (array!96723 (arr!46685 (Array (_ BitVec 32) (_ BitVec 64))) (size!47236 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96722)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417318 (= res!953159 (validKeyInArray!0 (select (arr!46685 a!2901) j!112)))))

(declare-fun b!1417319 () Bool)

(assert (=> b!1417319 (= e!802177 (not true))))

(declare-fun e!802178 () Bool)

(assert (=> b!1417319 e!802178))

(declare-fun res!953160 () Bool)

(assert (=> b!1417319 (=> (not res!953160) (not e!802178))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96722 (_ BitVec 32)) Bool)

(assert (=> b!1417319 (= res!953160 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47960 0))(
  ( (Unit!47961) )
))
(declare-fun lt!625299 () Unit!47960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96722 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47960)

(assert (=> b!1417319 (= lt!625299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11018 0))(
  ( (MissingZero!11018 (index!46463 (_ BitVec 32))) (Found!11018 (index!46464 (_ BitVec 32))) (Intermediate!11018 (undefined!11830 Bool) (index!46465 (_ BitVec 32)) (x!128072 (_ BitVec 32))) (Undefined!11018) (MissingVacant!11018 (index!46466 (_ BitVec 32))) )
))
(declare-fun lt!625300 () SeekEntryResult!11018)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96722 (_ BitVec 32)) SeekEntryResult!11018)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417319 (= lt!625300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46685 a!2901) j!112) mask!2840) (select (arr!46685 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!953163 () Bool)

(assert (=> start!122220 (=> (not res!953163) (not e!802177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122220 (= res!953163 (validMask!0 mask!2840))))

(assert (=> start!122220 e!802177))

(assert (=> start!122220 true))

(declare-fun array_inv!35630 (array!96722) Bool)

(assert (=> start!122220 (array_inv!35630 a!2901)))

(declare-fun b!1417320 () Bool)

(declare-fun res!953161 () Bool)

(assert (=> b!1417320 (=> (not res!953161) (not e!802177))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1417320 (= res!953161 (and (= (size!47236 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47236 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47236 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417321 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96722 (_ BitVec 32)) SeekEntryResult!11018)

(assert (=> b!1417321 (= e!802178 (= (seekEntryOrOpen!0 (select (arr!46685 a!2901) j!112) a!2901 mask!2840) (Found!11018 j!112)))))

(declare-fun b!1417322 () Bool)

(declare-fun res!953158 () Bool)

(assert (=> b!1417322 (=> (not res!953158) (not e!802177))))

(assert (=> b!1417322 (= res!953158 (validKeyInArray!0 (select (arr!46685 a!2901) i!1037)))))

(declare-fun b!1417323 () Bool)

(declare-fun res!953162 () Bool)

(assert (=> b!1417323 (=> (not res!953162) (not e!802177))))

(declare-datatypes ((List!33384 0))(
  ( (Nil!33381) (Cons!33380 (h!34673 (_ BitVec 64)) (t!48085 List!33384)) )
))
(declare-fun arrayNoDuplicates!0 (array!96722 (_ BitVec 32) List!33384) Bool)

(assert (=> b!1417323 (= res!953162 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33381))))

(declare-fun b!1417324 () Bool)

(declare-fun res!953157 () Bool)

(assert (=> b!1417324 (=> (not res!953157) (not e!802177))))

(assert (=> b!1417324 (= res!953157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122220 res!953163) b!1417320))

(assert (= (and b!1417320 res!953161) b!1417322))

(assert (= (and b!1417322 res!953158) b!1417318))

(assert (= (and b!1417318 res!953159) b!1417324))

(assert (= (and b!1417324 res!953157) b!1417323))

(assert (= (and b!1417323 res!953162) b!1417319))

(assert (= (and b!1417319 res!953160) b!1417321))

(declare-fun m!1308085 () Bool)

(assert (=> b!1417324 m!1308085))

(declare-fun m!1308087 () Bool)

(assert (=> b!1417319 m!1308087))

(declare-fun m!1308089 () Bool)

(assert (=> b!1417319 m!1308089))

(assert (=> b!1417319 m!1308087))

(declare-fun m!1308091 () Bool)

(assert (=> b!1417319 m!1308091))

(assert (=> b!1417319 m!1308089))

(assert (=> b!1417319 m!1308087))

(declare-fun m!1308093 () Bool)

(assert (=> b!1417319 m!1308093))

(declare-fun m!1308095 () Bool)

(assert (=> b!1417319 m!1308095))

(assert (=> b!1417321 m!1308087))

(assert (=> b!1417321 m!1308087))

(declare-fun m!1308097 () Bool)

(assert (=> b!1417321 m!1308097))

(declare-fun m!1308099 () Bool)

(assert (=> b!1417322 m!1308099))

(assert (=> b!1417322 m!1308099))

(declare-fun m!1308101 () Bool)

(assert (=> b!1417322 m!1308101))

(declare-fun m!1308103 () Bool)

(assert (=> b!1417323 m!1308103))

(declare-fun m!1308105 () Bool)

(assert (=> start!122220 m!1308105))

(declare-fun m!1308107 () Bool)

(assert (=> start!122220 m!1308107))

(assert (=> b!1417318 m!1308087))

(assert (=> b!1417318 m!1308087))

(declare-fun m!1308109 () Bool)

(assert (=> b!1417318 m!1308109))

(check-sat (not b!1417321) (not b!1417322) (not b!1417318) (not b!1417323) (not start!122220) (not b!1417324) (not b!1417319))
