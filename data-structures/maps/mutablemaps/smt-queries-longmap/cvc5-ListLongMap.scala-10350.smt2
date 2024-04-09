; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121690 () Bool)

(assert start!121690)

(declare-fun res!950381 () Bool)

(declare-fun e!799841 () Bool)

(assert (=> start!121690 (=> (not res!950381) (not e!799841))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121690 (= res!950381 (validMask!0 mask!2840))))

(assert (=> start!121690 e!799841))

(assert (=> start!121690 true))

(declare-datatypes ((array!96546 0))(
  ( (array!96547 (arr!46606 (Array (_ BitVec 32) (_ BitVec 64))) (size!47157 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96546)

(declare-fun array_inv!35551 (array!96546) Bool)

(assert (=> start!121690 (array_inv!35551 a!2901)))

(declare-fun b!1413280 () Bool)

(declare-fun e!799839 () Bool)

(declare-fun e!799840 () Bool)

(assert (=> b!1413280 (= e!799839 e!799840)))

(declare-fun res!950382 () Bool)

(assert (=> b!1413280 (=> res!950382 e!799840)))

(declare-datatypes ((SeekEntryResult!10939 0))(
  ( (MissingZero!10939 (index!46135 (_ BitVec 32))) (Found!10939 (index!46136 (_ BitVec 32))) (Intermediate!10939 (undefined!11751 Bool) (index!46137 (_ BitVec 32)) (x!127725 (_ BitVec 32))) (Undefined!10939) (MissingVacant!10939 (index!46138 (_ BitVec 32))) )
))
(declare-fun lt!622922 () SeekEntryResult!10939)

(declare-fun lt!622927 () SeekEntryResult!10939)

(assert (=> b!1413280 (= res!950382 (or (= lt!622922 lt!622927) (not (is-Intermediate!10939 lt!622927))))))

(declare-fun lt!622923 () (_ BitVec 64))

(declare-fun lt!622924 () array!96546)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96546 (_ BitVec 32)) SeekEntryResult!10939)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413280 (= lt!622927 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622923 mask!2840) lt!622923 lt!622924 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1413280 (= lt!622923 (select (store (arr!46606 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413280 (= lt!622924 (array!96547 (store (arr!46606 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47157 a!2901)))))

(declare-fun b!1413281 () Bool)

(declare-fun res!950383 () Bool)

(assert (=> b!1413281 (=> (not res!950383) (not e!799841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413281 (= res!950383 (validKeyInArray!0 (select (arr!46606 a!2901) i!1037)))))

(declare-fun b!1413282 () Bool)

(declare-fun res!950387 () Bool)

(assert (=> b!1413282 (=> (not res!950387) (not e!799841))))

(assert (=> b!1413282 (= res!950387 (validKeyInArray!0 (select (arr!46606 a!2901) j!112)))))

(declare-fun b!1413283 () Bool)

(declare-fun res!950379 () Bool)

(assert (=> b!1413283 (=> (not res!950379) (not e!799841))))

(declare-datatypes ((List!33305 0))(
  ( (Nil!33302) (Cons!33301 (h!34576 (_ BitVec 64)) (t!48006 List!33305)) )
))
(declare-fun arrayNoDuplicates!0 (array!96546 (_ BitVec 32) List!33305) Bool)

(assert (=> b!1413283 (= res!950379 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33302))))

(declare-fun b!1413284 () Bool)

(assert (=> b!1413284 (= e!799841 (not e!799839))))

(declare-fun res!950380 () Bool)

(assert (=> b!1413284 (=> res!950380 e!799839)))

(assert (=> b!1413284 (= res!950380 (or (not (is-Intermediate!10939 lt!622922)) (undefined!11751 lt!622922)))))

(declare-fun e!799844 () Bool)

(assert (=> b!1413284 e!799844))

(declare-fun res!950384 () Bool)

(assert (=> b!1413284 (=> (not res!950384) (not e!799844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96546 (_ BitVec 32)) Bool)

(assert (=> b!1413284 (= res!950384 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47802 0))(
  ( (Unit!47803) )
))
(declare-fun lt!622926 () Unit!47802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47802)

(assert (=> b!1413284 (= lt!622926 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622921 () (_ BitVec 32))

(assert (=> b!1413284 (= lt!622922 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622921 (select (arr!46606 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413284 (= lt!622921 (toIndex!0 (select (arr!46606 a!2901) j!112) mask!2840))))

(declare-fun b!1413285 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96546 (_ BitVec 32)) SeekEntryResult!10939)

(assert (=> b!1413285 (= e!799844 (= (seekEntryOrOpen!0 (select (arr!46606 a!2901) j!112) a!2901 mask!2840) (Found!10939 j!112)))))

(declare-fun b!1413286 () Bool)

(declare-fun res!950386 () Bool)

(assert (=> b!1413286 (=> (not res!950386) (not e!799841))))

(assert (=> b!1413286 (= res!950386 (and (= (size!47157 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47157 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47157 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413287 () Bool)

(declare-fun e!799842 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96546 (_ BitVec 32)) SeekEntryResult!10939)

(assert (=> b!1413287 (= e!799842 (= (seekEntryOrOpen!0 lt!622923 lt!622924 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127725 lt!622927) (index!46137 lt!622927) (index!46137 lt!622927) (select (arr!46606 a!2901) j!112) lt!622924 mask!2840)))))

(declare-fun b!1413288 () Bool)

(assert (=> b!1413288 (= e!799840 true)))

(assert (=> b!1413288 e!799842))

(declare-fun res!950388 () Bool)

(assert (=> b!1413288 (=> (not res!950388) (not e!799842))))

(assert (=> b!1413288 (= res!950388 (and (not (undefined!11751 lt!622927)) (= (index!46137 lt!622927) i!1037) (bvslt (x!127725 lt!622927) (x!127725 lt!622922)) (= (select (store (arr!46606 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46137 lt!622927)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622925 () Unit!47802)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47802)

(assert (=> b!1413288 (= lt!622925 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622921 (x!127725 lt!622922) (index!46137 lt!622922) (x!127725 lt!622927) (index!46137 lt!622927) (undefined!11751 lt!622927) mask!2840))))

(declare-fun b!1413289 () Bool)

(declare-fun res!950385 () Bool)

(assert (=> b!1413289 (=> (not res!950385) (not e!799841))))

(assert (=> b!1413289 (= res!950385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121690 res!950381) b!1413286))

(assert (= (and b!1413286 res!950386) b!1413281))

(assert (= (and b!1413281 res!950383) b!1413282))

(assert (= (and b!1413282 res!950387) b!1413289))

(assert (= (and b!1413289 res!950385) b!1413283))

(assert (= (and b!1413283 res!950379) b!1413284))

(assert (= (and b!1413284 res!950384) b!1413285))

(assert (= (and b!1413284 (not res!950380)) b!1413280))

(assert (= (and b!1413280 (not res!950382)) b!1413288))

(assert (= (and b!1413288 res!950388) b!1413287))

(declare-fun m!1303733 () Bool)

(assert (=> b!1413289 m!1303733))

(declare-fun m!1303735 () Bool)

(assert (=> start!121690 m!1303735))

(declare-fun m!1303737 () Bool)

(assert (=> start!121690 m!1303737))

(declare-fun m!1303739 () Bool)

(assert (=> b!1413287 m!1303739))

(declare-fun m!1303741 () Bool)

(assert (=> b!1413287 m!1303741))

(assert (=> b!1413287 m!1303741))

(declare-fun m!1303743 () Bool)

(assert (=> b!1413287 m!1303743))

(declare-fun m!1303745 () Bool)

(assert (=> b!1413288 m!1303745))

(declare-fun m!1303747 () Bool)

(assert (=> b!1413288 m!1303747))

(declare-fun m!1303749 () Bool)

(assert (=> b!1413288 m!1303749))

(declare-fun m!1303751 () Bool)

(assert (=> b!1413283 m!1303751))

(assert (=> b!1413285 m!1303741))

(assert (=> b!1413285 m!1303741))

(declare-fun m!1303753 () Bool)

(assert (=> b!1413285 m!1303753))

(declare-fun m!1303755 () Bool)

(assert (=> b!1413281 m!1303755))

(assert (=> b!1413281 m!1303755))

(declare-fun m!1303757 () Bool)

(assert (=> b!1413281 m!1303757))

(assert (=> b!1413282 m!1303741))

(assert (=> b!1413282 m!1303741))

(declare-fun m!1303759 () Bool)

(assert (=> b!1413282 m!1303759))

(declare-fun m!1303761 () Bool)

(assert (=> b!1413280 m!1303761))

(assert (=> b!1413280 m!1303761))

(declare-fun m!1303763 () Bool)

(assert (=> b!1413280 m!1303763))

(assert (=> b!1413280 m!1303745))

(declare-fun m!1303765 () Bool)

(assert (=> b!1413280 m!1303765))

(assert (=> b!1413284 m!1303741))

(declare-fun m!1303767 () Bool)

(assert (=> b!1413284 m!1303767))

(assert (=> b!1413284 m!1303741))

(declare-fun m!1303769 () Bool)

(assert (=> b!1413284 m!1303769))

(declare-fun m!1303771 () Bool)

(assert (=> b!1413284 m!1303771))

(assert (=> b!1413284 m!1303741))

(declare-fun m!1303773 () Bool)

(assert (=> b!1413284 m!1303773))

(push 1)

