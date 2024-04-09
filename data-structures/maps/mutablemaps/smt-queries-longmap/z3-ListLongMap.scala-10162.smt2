; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119778 () Bool)

(assert start!119778)

(declare-fun b!1394795 () Bool)

(declare-fun res!934313 () Bool)

(declare-fun e!789688 () Bool)

(assert (=> b!1394795 (=> (not res!934313) (not e!789688))))

(declare-datatypes ((array!95378 0))(
  ( (array!95379 (arr!46043 (Array (_ BitVec 32) (_ BitVec 64))) (size!46594 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95378)

(declare-datatypes ((List!32742 0))(
  ( (Nil!32739) (Cons!32738 (h!33971 (_ BitVec 64)) (t!47443 List!32742)) )
))
(declare-fun arrayNoDuplicates!0 (array!95378 (_ BitVec 32) List!32742) Bool)

(assert (=> b!1394795 (= res!934313 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32739))))

(declare-fun b!1394796 () Bool)

(declare-fun res!934315 () Bool)

(declare-fun e!789689 () Bool)

(assert (=> b!1394796 (=> res!934315 e!789689)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10382 0))(
  ( (MissingZero!10382 (index!43898 (_ BitVec 32))) (Found!10382 (index!43899 (_ BitVec 32))) (Intermediate!10382 (undefined!11194 Bool) (index!43900 (_ BitVec 32)) (x!125565 (_ BitVec 32))) (Undefined!10382) (MissingVacant!10382 (index!43901 (_ BitVec 32))) )
))
(declare-fun lt!612721 () SeekEntryResult!10382)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95378 (_ BitVec 32)) SeekEntryResult!10382)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394796 (= res!934315 (= lt!612721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46043 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46043 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95379 (store (arr!46043 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46594 a!2901)) mask!2840)))))

(declare-fun res!934314 () Bool)

(assert (=> start!119778 (=> (not res!934314) (not e!789688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119778 (= res!934314 (validMask!0 mask!2840))))

(assert (=> start!119778 e!789688))

(assert (=> start!119778 true))

(declare-fun array_inv!34988 (array!95378) Bool)

(assert (=> start!119778 (array_inv!34988 a!2901)))

(declare-fun b!1394797 () Bool)

(assert (=> b!1394797 (= e!789689 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1394798 () Bool)

(declare-fun res!934316 () Bool)

(assert (=> b!1394798 (=> (not res!934316) (not e!789688))))

(assert (=> b!1394798 (= res!934316 (and (= (size!46594 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46594 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46594 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394799 () Bool)

(assert (=> b!1394799 (= e!789688 (not e!789689))))

(declare-fun res!934319 () Bool)

(assert (=> b!1394799 (=> res!934319 e!789689)))

(get-info :version)

(assert (=> b!1394799 (= res!934319 (or (not ((_ is Intermediate!10382) lt!612721)) (undefined!11194 lt!612721)))))

(declare-fun e!789686 () Bool)

(assert (=> b!1394799 e!789686))

(declare-fun res!934318 () Bool)

(assert (=> b!1394799 (=> (not res!934318) (not e!789686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95378 (_ BitVec 32)) Bool)

(assert (=> b!1394799 (= res!934318 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46718 0))(
  ( (Unit!46719) )
))
(declare-fun lt!612720 () Unit!46718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46718)

(assert (=> b!1394799 (= lt!612720 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394799 (= lt!612721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46043 a!2901) j!112) mask!2840) (select (arr!46043 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394800 () Bool)

(declare-fun res!934320 () Bool)

(assert (=> b!1394800 (=> (not res!934320) (not e!789688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394800 (= res!934320 (validKeyInArray!0 (select (arr!46043 a!2901) j!112)))))

(declare-fun b!1394801 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95378 (_ BitVec 32)) SeekEntryResult!10382)

(assert (=> b!1394801 (= e!789686 (= (seekEntryOrOpen!0 (select (arr!46043 a!2901) j!112) a!2901 mask!2840) (Found!10382 j!112)))))

(declare-fun b!1394802 () Bool)

(declare-fun res!934312 () Bool)

(assert (=> b!1394802 (=> (not res!934312) (not e!789688))))

(assert (=> b!1394802 (= res!934312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394803 () Bool)

(declare-fun res!934317 () Bool)

(assert (=> b!1394803 (=> (not res!934317) (not e!789688))))

(assert (=> b!1394803 (= res!934317 (validKeyInArray!0 (select (arr!46043 a!2901) i!1037)))))

(assert (= (and start!119778 res!934314) b!1394798))

(assert (= (and b!1394798 res!934316) b!1394803))

(assert (= (and b!1394803 res!934317) b!1394800))

(assert (= (and b!1394800 res!934320) b!1394802))

(assert (= (and b!1394802 res!934312) b!1394795))

(assert (= (and b!1394795 res!934313) b!1394799))

(assert (= (and b!1394799 res!934318) b!1394801))

(assert (= (and b!1394799 (not res!934319)) b!1394796))

(assert (= (and b!1394796 (not res!934315)) b!1394797))

(declare-fun m!1281345 () Bool)

(assert (=> b!1394801 m!1281345))

(assert (=> b!1394801 m!1281345))

(declare-fun m!1281347 () Bool)

(assert (=> b!1394801 m!1281347))

(declare-fun m!1281349 () Bool)

(assert (=> b!1394796 m!1281349))

(declare-fun m!1281351 () Bool)

(assert (=> b!1394796 m!1281351))

(assert (=> b!1394796 m!1281351))

(declare-fun m!1281353 () Bool)

(assert (=> b!1394796 m!1281353))

(assert (=> b!1394796 m!1281353))

(assert (=> b!1394796 m!1281351))

(declare-fun m!1281355 () Bool)

(assert (=> b!1394796 m!1281355))

(declare-fun m!1281357 () Bool)

(assert (=> b!1394795 m!1281357))

(declare-fun m!1281359 () Bool)

(assert (=> start!119778 m!1281359))

(declare-fun m!1281361 () Bool)

(assert (=> start!119778 m!1281361))

(assert (=> b!1394799 m!1281345))

(declare-fun m!1281363 () Bool)

(assert (=> b!1394799 m!1281363))

(assert (=> b!1394799 m!1281345))

(declare-fun m!1281365 () Bool)

(assert (=> b!1394799 m!1281365))

(assert (=> b!1394799 m!1281363))

(assert (=> b!1394799 m!1281345))

(declare-fun m!1281367 () Bool)

(assert (=> b!1394799 m!1281367))

(declare-fun m!1281369 () Bool)

(assert (=> b!1394799 m!1281369))

(declare-fun m!1281371 () Bool)

(assert (=> b!1394802 m!1281371))

(declare-fun m!1281373 () Bool)

(assert (=> b!1394803 m!1281373))

(assert (=> b!1394803 m!1281373))

(declare-fun m!1281375 () Bool)

(assert (=> b!1394803 m!1281375))

(assert (=> b!1394800 m!1281345))

(assert (=> b!1394800 m!1281345))

(declare-fun m!1281377 () Bool)

(assert (=> b!1394800 m!1281377))

(check-sat (not start!119778) (not b!1394800) (not b!1394795) (not b!1394796) (not b!1394799) (not b!1394803) (not b!1394801) (not b!1394802))
(check-sat)
