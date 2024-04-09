; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120158 () Bool)

(assert start!120158)

(declare-fun b!1398476 () Bool)

(declare-fun res!937504 () Bool)

(declare-fun e!791741 () Bool)

(assert (=> b!1398476 (=> (not res!937504) (not e!791741))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95605 0))(
  ( (array!95606 (arr!46152 (Array (_ BitVec 32) (_ BitVec 64))) (size!46703 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95605)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398476 (= res!937504 (and (= (size!46703 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46703 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46703 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398477 () Bool)

(declare-fun e!791744 () Bool)

(declare-fun e!791743 () Bool)

(assert (=> b!1398477 (= e!791744 e!791743)))

(declare-fun res!937501 () Bool)

(assert (=> b!1398477 (=> res!937501 e!791743)))

(declare-datatypes ((SeekEntryResult!10491 0))(
  ( (MissingZero!10491 (index!44334 (_ BitVec 32))) (Found!10491 (index!44335 (_ BitVec 32))) (Intermediate!10491 (undefined!11303 Bool) (index!44336 (_ BitVec 32)) (x!125980 (_ BitVec 32))) (Undefined!10491) (MissingVacant!10491 (index!44337 (_ BitVec 32))) )
))
(declare-fun lt!614948 () SeekEntryResult!10491)

(declare-fun lt!614950 () SeekEntryResult!10491)

(assert (=> b!1398477 (= res!937501 (or (= lt!614948 lt!614950) (not (is-Intermediate!10491 lt!614950))))))

(declare-fun lt!614945 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95605 (_ BitVec 32)) SeekEntryResult!10491)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398477 (= lt!614950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614945 mask!2840) lt!614945 (array!95606 (store (arr!46152 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46703 a!2901)) mask!2840))))

(assert (=> b!1398477 (= lt!614945 (select (store (arr!46152 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398478 () Bool)

(assert (=> b!1398478 (= e!791741 (not e!791744))))

(declare-fun res!937503 () Bool)

(assert (=> b!1398478 (=> res!937503 e!791744)))

(assert (=> b!1398478 (= res!937503 (or (not (is-Intermediate!10491 lt!614948)) (undefined!11303 lt!614948)))))

(declare-fun e!791742 () Bool)

(assert (=> b!1398478 e!791742))

(declare-fun res!937499 () Bool)

(assert (=> b!1398478 (=> (not res!937499) (not e!791742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95605 (_ BitVec 32)) Bool)

(assert (=> b!1398478 (= res!937499 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46936 0))(
  ( (Unit!46937) )
))
(declare-fun lt!614946 () Unit!46936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46936)

(assert (=> b!1398478 (= lt!614946 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614947 () (_ BitVec 32))

(assert (=> b!1398478 (= lt!614948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614947 (select (arr!46152 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398478 (= lt!614947 (toIndex!0 (select (arr!46152 a!2901) j!112) mask!2840))))

(declare-fun b!1398479 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95605 (_ BitVec 32)) SeekEntryResult!10491)

(assert (=> b!1398479 (= e!791742 (= (seekEntryOrOpen!0 (select (arr!46152 a!2901) j!112) a!2901 mask!2840) (Found!10491 j!112)))))

(declare-fun b!1398480 () Bool)

(declare-fun res!937498 () Bool)

(assert (=> b!1398480 (=> (not res!937498) (not e!791741))))

(assert (=> b!1398480 (= res!937498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398481 () Bool)

(assert (=> b!1398481 (= e!791743 true)))

(assert (=> b!1398481 (and (not (undefined!11303 lt!614950)) (= (index!44336 lt!614950) i!1037) (bvslt (x!125980 lt!614950) (x!125980 lt!614948)) (= (select (store (arr!46152 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44336 lt!614950)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614949 () Unit!46936)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46936)

(assert (=> b!1398481 (= lt!614949 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614947 (x!125980 lt!614948) (index!44336 lt!614948) (x!125980 lt!614950) (index!44336 lt!614950) (undefined!11303 lt!614950) mask!2840))))

(declare-fun b!1398482 () Bool)

(declare-fun res!937500 () Bool)

(assert (=> b!1398482 (=> (not res!937500) (not e!791741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398482 (= res!937500 (validKeyInArray!0 (select (arr!46152 a!2901) j!112)))))

(declare-fun res!937506 () Bool)

(assert (=> start!120158 (=> (not res!937506) (not e!791741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120158 (= res!937506 (validMask!0 mask!2840))))

(assert (=> start!120158 e!791741))

(assert (=> start!120158 true))

(declare-fun array_inv!35097 (array!95605) Bool)

(assert (=> start!120158 (array_inv!35097 a!2901)))

(declare-fun b!1398483 () Bool)

(declare-fun res!937502 () Bool)

(assert (=> b!1398483 (=> (not res!937502) (not e!791741))))

(assert (=> b!1398483 (= res!937502 (validKeyInArray!0 (select (arr!46152 a!2901) i!1037)))))

(declare-fun b!1398484 () Bool)

(declare-fun res!937505 () Bool)

(assert (=> b!1398484 (=> (not res!937505) (not e!791741))))

(declare-datatypes ((List!32851 0))(
  ( (Nil!32848) (Cons!32847 (h!34089 (_ BitVec 64)) (t!47552 List!32851)) )
))
(declare-fun arrayNoDuplicates!0 (array!95605 (_ BitVec 32) List!32851) Bool)

(assert (=> b!1398484 (= res!937505 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32848))))

(assert (= (and start!120158 res!937506) b!1398476))

(assert (= (and b!1398476 res!937504) b!1398483))

(assert (= (and b!1398483 res!937502) b!1398482))

(assert (= (and b!1398482 res!937500) b!1398480))

(assert (= (and b!1398480 res!937498) b!1398484))

(assert (= (and b!1398484 res!937505) b!1398478))

(assert (= (and b!1398478 res!937499) b!1398479))

(assert (= (and b!1398478 (not res!937503)) b!1398477))

(assert (= (and b!1398477 (not res!937501)) b!1398481))

(declare-fun m!1285713 () Bool)

(assert (=> start!120158 m!1285713))

(declare-fun m!1285715 () Bool)

(assert (=> start!120158 m!1285715))

(declare-fun m!1285717 () Bool)

(assert (=> b!1398484 m!1285717))

(declare-fun m!1285719 () Bool)

(assert (=> b!1398483 m!1285719))

(assert (=> b!1398483 m!1285719))

(declare-fun m!1285721 () Bool)

(assert (=> b!1398483 m!1285721))

(declare-fun m!1285723 () Bool)

(assert (=> b!1398480 m!1285723))

(declare-fun m!1285725 () Bool)

(assert (=> b!1398477 m!1285725))

(declare-fun m!1285727 () Bool)

(assert (=> b!1398477 m!1285727))

(assert (=> b!1398477 m!1285725))

(declare-fun m!1285729 () Bool)

(assert (=> b!1398477 m!1285729))

(declare-fun m!1285731 () Bool)

(assert (=> b!1398477 m!1285731))

(assert (=> b!1398481 m!1285727))

(declare-fun m!1285733 () Bool)

(assert (=> b!1398481 m!1285733))

(declare-fun m!1285735 () Bool)

(assert (=> b!1398481 m!1285735))

(declare-fun m!1285737 () Bool)

(assert (=> b!1398479 m!1285737))

(assert (=> b!1398479 m!1285737))

(declare-fun m!1285739 () Bool)

(assert (=> b!1398479 m!1285739))

(assert (=> b!1398478 m!1285737))

(declare-fun m!1285741 () Bool)

(assert (=> b!1398478 m!1285741))

(assert (=> b!1398478 m!1285737))

(declare-fun m!1285743 () Bool)

(assert (=> b!1398478 m!1285743))

(declare-fun m!1285745 () Bool)

(assert (=> b!1398478 m!1285745))

(assert (=> b!1398478 m!1285737))

(declare-fun m!1285747 () Bool)

(assert (=> b!1398478 m!1285747))

(assert (=> b!1398482 m!1285737))

(assert (=> b!1398482 m!1285737))

(declare-fun m!1285749 () Bool)

(assert (=> b!1398482 m!1285749))

(push 1)

