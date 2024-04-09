; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119776 () Bool)

(assert start!119776)

(declare-fun b!1394768 () Bool)

(declare-fun res!934293 () Bool)

(declare-fun e!789674 () Bool)

(assert (=> b!1394768 (=> (not res!934293) (not e!789674))))

(declare-datatypes ((array!95376 0))(
  ( (array!95377 (arr!46042 (Array (_ BitVec 32) (_ BitVec 64))) (size!46593 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95376)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95376 (_ BitVec 32)) Bool)

(assert (=> b!1394768 (= res!934293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394769 () Bool)

(declare-fun res!934289 () Bool)

(assert (=> b!1394769 (=> (not res!934289) (not e!789674))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394769 (= res!934289 (validKeyInArray!0 (select (arr!46042 a!2901) i!1037)))))

(declare-fun b!1394770 () Bool)

(declare-fun e!789677 () Bool)

(assert (=> b!1394770 (= e!789674 (not e!789677))))

(declare-fun res!934286 () Bool)

(assert (=> b!1394770 (=> res!934286 e!789677)))

(declare-datatypes ((SeekEntryResult!10381 0))(
  ( (MissingZero!10381 (index!43894 (_ BitVec 32))) (Found!10381 (index!43895 (_ BitVec 32))) (Intermediate!10381 (undefined!11193 Bool) (index!43896 (_ BitVec 32)) (x!125564 (_ BitVec 32))) (Undefined!10381) (MissingVacant!10381 (index!43897 (_ BitVec 32))) )
))
(declare-fun lt!612715 () SeekEntryResult!10381)

(assert (=> b!1394770 (= res!934286 (or (not (is-Intermediate!10381 lt!612715)) (undefined!11193 lt!612715)))))

(declare-fun e!789676 () Bool)

(assert (=> b!1394770 e!789676))

(declare-fun res!934291 () Bool)

(assert (=> b!1394770 (=> (not res!934291) (not e!789676))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394770 (= res!934291 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46716 0))(
  ( (Unit!46717) )
))
(declare-fun lt!612714 () Unit!46716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46716)

(assert (=> b!1394770 (= lt!612714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95376 (_ BitVec 32)) SeekEntryResult!10381)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394770 (= lt!612715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46042 a!2901) j!112) mask!2840) (select (arr!46042 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394771 () Bool)

(declare-fun res!934285 () Bool)

(assert (=> b!1394771 (=> res!934285 e!789677)))

(assert (=> b!1394771 (= res!934285 (= lt!612715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46042 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46042 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95377 (store (arr!46042 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46593 a!2901)) mask!2840)))))

(declare-fun b!1394772 () Bool)

(assert (=> b!1394772 (= e!789677 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun res!934288 () Bool)

(assert (=> start!119776 (=> (not res!934288) (not e!789674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119776 (= res!934288 (validMask!0 mask!2840))))

(assert (=> start!119776 e!789674))

(assert (=> start!119776 true))

(declare-fun array_inv!34987 (array!95376) Bool)

(assert (=> start!119776 (array_inv!34987 a!2901)))

(declare-fun b!1394773 () Bool)

(declare-fun res!934287 () Bool)

(assert (=> b!1394773 (=> (not res!934287) (not e!789674))))

(assert (=> b!1394773 (= res!934287 (and (= (size!46593 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46593 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46593 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394774 () Bool)

(declare-fun res!934290 () Bool)

(assert (=> b!1394774 (=> (not res!934290) (not e!789674))))

(assert (=> b!1394774 (= res!934290 (validKeyInArray!0 (select (arr!46042 a!2901) j!112)))))

(declare-fun b!1394775 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95376 (_ BitVec 32)) SeekEntryResult!10381)

(assert (=> b!1394775 (= e!789676 (= (seekEntryOrOpen!0 (select (arr!46042 a!2901) j!112) a!2901 mask!2840) (Found!10381 j!112)))))

(declare-fun b!1394776 () Bool)

(declare-fun res!934292 () Bool)

(assert (=> b!1394776 (=> (not res!934292) (not e!789674))))

(declare-datatypes ((List!32741 0))(
  ( (Nil!32738) (Cons!32737 (h!33970 (_ BitVec 64)) (t!47442 List!32741)) )
))
(declare-fun arrayNoDuplicates!0 (array!95376 (_ BitVec 32) List!32741) Bool)

(assert (=> b!1394776 (= res!934292 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32738))))

(assert (= (and start!119776 res!934288) b!1394773))

(assert (= (and b!1394773 res!934287) b!1394769))

(assert (= (and b!1394769 res!934289) b!1394774))

(assert (= (and b!1394774 res!934290) b!1394768))

(assert (= (and b!1394768 res!934293) b!1394776))

(assert (= (and b!1394776 res!934292) b!1394770))

(assert (= (and b!1394770 res!934291) b!1394775))

(assert (= (and b!1394770 (not res!934286)) b!1394771))

(assert (= (and b!1394771 (not res!934285)) b!1394772))

(declare-fun m!1281311 () Bool)

(assert (=> b!1394769 m!1281311))

(assert (=> b!1394769 m!1281311))

(declare-fun m!1281313 () Bool)

(assert (=> b!1394769 m!1281313))

(declare-fun m!1281315 () Bool)

(assert (=> start!119776 m!1281315))

(declare-fun m!1281317 () Bool)

(assert (=> start!119776 m!1281317))

(declare-fun m!1281319 () Bool)

(assert (=> b!1394776 m!1281319))

(declare-fun m!1281321 () Bool)

(assert (=> b!1394770 m!1281321))

(declare-fun m!1281323 () Bool)

(assert (=> b!1394770 m!1281323))

(assert (=> b!1394770 m!1281321))

(declare-fun m!1281325 () Bool)

(assert (=> b!1394770 m!1281325))

(assert (=> b!1394770 m!1281323))

(assert (=> b!1394770 m!1281321))

(declare-fun m!1281327 () Bool)

(assert (=> b!1394770 m!1281327))

(declare-fun m!1281329 () Bool)

(assert (=> b!1394770 m!1281329))

(assert (=> b!1394774 m!1281321))

(assert (=> b!1394774 m!1281321))

(declare-fun m!1281331 () Bool)

(assert (=> b!1394774 m!1281331))

(declare-fun m!1281333 () Bool)

(assert (=> b!1394768 m!1281333))

(declare-fun m!1281335 () Bool)

(assert (=> b!1394771 m!1281335))

(declare-fun m!1281337 () Bool)

(assert (=> b!1394771 m!1281337))

(assert (=> b!1394771 m!1281337))

(declare-fun m!1281339 () Bool)

(assert (=> b!1394771 m!1281339))

(assert (=> b!1394771 m!1281339))

(assert (=> b!1394771 m!1281337))

(declare-fun m!1281341 () Bool)

(assert (=> b!1394771 m!1281341))

(assert (=> b!1394775 m!1281321))

(assert (=> b!1394775 m!1281321))

(declare-fun m!1281343 () Bool)

(assert (=> b!1394775 m!1281343))

(push 1)

