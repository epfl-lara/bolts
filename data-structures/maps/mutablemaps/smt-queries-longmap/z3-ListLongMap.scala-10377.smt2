; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122226 () Bool)

(assert start!122226)

(declare-fun b!1417381 () Bool)

(declare-fun res!953220 () Bool)

(declare-fun e!802204 () Bool)

(assert (=> b!1417381 (=> (not res!953220) (not e!802204))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96728 0))(
  ( (array!96729 (arr!46688 (Array (_ BitVec 32) (_ BitVec 64))) (size!47239 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96728)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417381 (= res!953220 (and (= (size!47239 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47239 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47239 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417382 () Bool)

(assert (=> b!1417382 (= e!802204 (not true))))

(declare-fun e!802205 () Bool)

(assert (=> b!1417382 e!802205))

(declare-fun res!953224 () Bool)

(assert (=> b!1417382 (=> (not res!953224) (not e!802205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96728 (_ BitVec 32)) Bool)

(assert (=> b!1417382 (= res!953224 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47966 0))(
  ( (Unit!47967) )
))
(declare-fun lt!625318 () Unit!47966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47966)

(assert (=> b!1417382 (= lt!625318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11021 0))(
  ( (MissingZero!11021 (index!46475 (_ BitVec 32))) (Found!11021 (index!46476 (_ BitVec 32))) (Intermediate!11021 (undefined!11833 Bool) (index!46477 (_ BitVec 32)) (x!128083 (_ BitVec 32))) (Undefined!11021) (MissingVacant!11021 (index!46478 (_ BitVec 32))) )
))
(declare-fun lt!625317 () SeekEntryResult!11021)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96728 (_ BitVec 32)) SeekEntryResult!11021)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417382 (= lt!625317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46688 a!2901) j!112) mask!2840) (select (arr!46688 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417383 () Bool)

(declare-fun res!953226 () Bool)

(assert (=> b!1417383 (=> (not res!953226) (not e!802204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417383 (= res!953226 (validKeyInArray!0 (select (arr!46688 a!2901) j!112)))))

(declare-fun b!1417384 () Bool)

(declare-fun res!953222 () Bool)

(assert (=> b!1417384 (=> (not res!953222) (not e!802204))))

(assert (=> b!1417384 (= res!953222 (validKeyInArray!0 (select (arr!46688 a!2901) i!1037)))))

(declare-fun b!1417385 () Bool)

(declare-fun res!953221 () Bool)

(assert (=> b!1417385 (=> (not res!953221) (not e!802204))))

(declare-datatypes ((List!33387 0))(
  ( (Nil!33384) (Cons!33383 (h!34676 (_ BitVec 64)) (t!48088 List!33387)) )
))
(declare-fun arrayNoDuplicates!0 (array!96728 (_ BitVec 32) List!33387) Bool)

(assert (=> b!1417385 (= res!953221 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33384))))

(declare-fun b!1417386 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96728 (_ BitVec 32)) SeekEntryResult!11021)

(assert (=> b!1417386 (= e!802205 (= (seekEntryOrOpen!0 (select (arr!46688 a!2901) j!112) a!2901 mask!2840) (Found!11021 j!112)))))

(declare-fun b!1417387 () Bool)

(declare-fun res!953223 () Bool)

(assert (=> b!1417387 (=> (not res!953223) (not e!802204))))

(assert (=> b!1417387 (= res!953223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!953225 () Bool)

(assert (=> start!122226 (=> (not res!953225) (not e!802204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122226 (= res!953225 (validMask!0 mask!2840))))

(assert (=> start!122226 e!802204))

(assert (=> start!122226 true))

(declare-fun array_inv!35633 (array!96728) Bool)

(assert (=> start!122226 (array_inv!35633 a!2901)))

(assert (= (and start!122226 res!953225) b!1417381))

(assert (= (and b!1417381 res!953220) b!1417384))

(assert (= (and b!1417384 res!953222) b!1417383))

(assert (= (and b!1417383 res!953226) b!1417387))

(assert (= (and b!1417387 res!953223) b!1417385))

(assert (= (and b!1417385 res!953221) b!1417382))

(assert (= (and b!1417382 res!953224) b!1417386))

(declare-fun m!1308163 () Bool)

(assert (=> b!1417385 m!1308163))

(declare-fun m!1308165 () Bool)

(assert (=> b!1417382 m!1308165))

(declare-fun m!1308167 () Bool)

(assert (=> b!1417382 m!1308167))

(assert (=> b!1417382 m!1308165))

(declare-fun m!1308169 () Bool)

(assert (=> b!1417382 m!1308169))

(assert (=> b!1417382 m!1308167))

(assert (=> b!1417382 m!1308165))

(declare-fun m!1308171 () Bool)

(assert (=> b!1417382 m!1308171))

(declare-fun m!1308173 () Bool)

(assert (=> b!1417382 m!1308173))

(assert (=> b!1417386 m!1308165))

(assert (=> b!1417386 m!1308165))

(declare-fun m!1308175 () Bool)

(assert (=> b!1417386 m!1308175))

(declare-fun m!1308177 () Bool)

(assert (=> b!1417384 m!1308177))

(assert (=> b!1417384 m!1308177))

(declare-fun m!1308179 () Bool)

(assert (=> b!1417384 m!1308179))

(declare-fun m!1308181 () Bool)

(assert (=> start!122226 m!1308181))

(declare-fun m!1308183 () Bool)

(assert (=> start!122226 m!1308183))

(assert (=> b!1417383 m!1308165))

(assert (=> b!1417383 m!1308165))

(declare-fun m!1308185 () Bool)

(assert (=> b!1417383 m!1308185))

(declare-fun m!1308187 () Bool)

(assert (=> b!1417387 m!1308187))

(check-sat (not b!1417384) (not b!1417383) (not b!1417387) (not start!122226) (not b!1417385) (not b!1417382) (not b!1417386))
