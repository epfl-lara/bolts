; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120866 () Bool)

(assert start!120866)

(declare-fun b!1405770 () Bool)

(declare-fun res!944100 () Bool)

(declare-fun e!795731 () Bool)

(assert (=> b!1405770 (=> (not res!944100) (not e!795731))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96091 0))(
  ( (array!96092 (arr!46389 (Array (_ BitVec 32) (_ BitVec 64))) (size!46940 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96091)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405770 (= res!944100 (and (= (size!46940 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46940 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46940 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405771 () Bool)

(declare-fun res!944103 () Bool)

(assert (=> b!1405771 (=> (not res!944103) (not e!795731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405771 (= res!944103 (validKeyInArray!0 (select (arr!46389 a!2901) i!1037)))))

(declare-fun res!944098 () Bool)

(assert (=> start!120866 (=> (not res!944098) (not e!795731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120866 (= res!944098 (validMask!0 mask!2840))))

(assert (=> start!120866 e!795731))

(assert (=> start!120866 true))

(declare-fun array_inv!35334 (array!96091) Bool)

(assert (=> start!120866 (array_inv!35334 a!2901)))

(declare-fun b!1405772 () Bool)

(declare-fun res!944096 () Bool)

(assert (=> b!1405772 (=> (not res!944096) (not e!795731))))

(assert (=> b!1405772 (= res!944096 (validKeyInArray!0 (select (arr!46389 a!2901) j!112)))))

(declare-fun b!1405773 () Bool)

(declare-fun res!944102 () Bool)

(assert (=> b!1405773 (=> (not res!944102) (not e!795731))))

(declare-datatypes ((List!33088 0))(
  ( (Nil!33085) (Cons!33084 (h!34338 (_ BitVec 64)) (t!47789 List!33088)) )
))
(declare-fun arrayNoDuplicates!0 (array!96091 (_ BitVec 32) List!33088) Bool)

(assert (=> b!1405773 (= res!944102 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33085))))

(declare-fun b!1405774 () Bool)

(declare-fun res!944099 () Bool)

(assert (=> b!1405774 (=> (not res!944099) (not e!795731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96091 (_ BitVec 32)) Bool)

(assert (=> b!1405774 (= res!944099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405775 () Bool)

(declare-fun e!795734 () Bool)

(assert (=> b!1405775 (= e!795734 true)))

(declare-datatypes ((SeekEntryResult!10722 0))(
  ( (MissingZero!10722 (index!45264 (_ BitVec 32))) (Found!10722 (index!45265 (_ BitVec 32))) (Intermediate!10722 (undefined!11534 Bool) (index!45266 (_ BitVec 32)) (x!126876 (_ BitVec 32))) (Undefined!10722) (MissingVacant!10722 (index!45267 (_ BitVec 32))) )
))
(declare-fun lt!619104 () SeekEntryResult!10722)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96091 (_ BitVec 32)) SeekEntryResult!10722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405775 (= lt!619104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46389 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46389 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96092 (store (arr!46389 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46940 a!2901)) mask!2840))))

(declare-fun e!795732 () Bool)

(declare-fun b!1405776 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96091 (_ BitVec 32)) SeekEntryResult!10722)

(assert (=> b!1405776 (= e!795732 (= (seekEntryOrOpen!0 (select (arr!46389 a!2901) j!112) a!2901 mask!2840) (Found!10722 j!112)))))

(declare-fun b!1405777 () Bool)

(assert (=> b!1405777 (= e!795731 (not e!795734))))

(declare-fun res!944101 () Bool)

(assert (=> b!1405777 (=> res!944101 e!795734)))

(declare-fun lt!619103 () SeekEntryResult!10722)

(assert (=> b!1405777 (= res!944101 (or (not (is-Intermediate!10722 lt!619103)) (undefined!11534 lt!619103)))))

(assert (=> b!1405777 e!795732))

(declare-fun res!944097 () Bool)

(assert (=> b!1405777 (=> (not res!944097) (not e!795732))))

(assert (=> b!1405777 (= res!944097 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47368 0))(
  ( (Unit!47369) )
))
(declare-fun lt!619105 () Unit!47368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47368)

(assert (=> b!1405777 (= lt!619105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405777 (= lt!619103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46389 a!2901) j!112) mask!2840) (select (arr!46389 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120866 res!944098) b!1405770))

(assert (= (and b!1405770 res!944100) b!1405771))

(assert (= (and b!1405771 res!944103) b!1405772))

(assert (= (and b!1405772 res!944096) b!1405774))

(assert (= (and b!1405774 res!944099) b!1405773))

(assert (= (and b!1405773 res!944102) b!1405777))

(assert (= (and b!1405777 res!944097) b!1405776))

(assert (= (and b!1405777 (not res!944101)) b!1405775))

(declare-fun m!1294729 () Bool)

(assert (=> b!1405775 m!1294729))

(declare-fun m!1294731 () Bool)

(assert (=> b!1405775 m!1294731))

(assert (=> b!1405775 m!1294731))

(declare-fun m!1294733 () Bool)

(assert (=> b!1405775 m!1294733))

(assert (=> b!1405775 m!1294733))

(assert (=> b!1405775 m!1294731))

(declare-fun m!1294735 () Bool)

(assert (=> b!1405775 m!1294735))

(declare-fun m!1294737 () Bool)

(assert (=> b!1405771 m!1294737))

(assert (=> b!1405771 m!1294737))

(declare-fun m!1294739 () Bool)

(assert (=> b!1405771 m!1294739))

(declare-fun m!1294741 () Bool)

(assert (=> b!1405777 m!1294741))

(declare-fun m!1294743 () Bool)

(assert (=> b!1405777 m!1294743))

(assert (=> b!1405777 m!1294741))

(declare-fun m!1294745 () Bool)

(assert (=> b!1405777 m!1294745))

(assert (=> b!1405777 m!1294743))

(assert (=> b!1405777 m!1294741))

(declare-fun m!1294747 () Bool)

(assert (=> b!1405777 m!1294747))

(declare-fun m!1294749 () Bool)

(assert (=> b!1405777 m!1294749))

(declare-fun m!1294751 () Bool)

(assert (=> b!1405774 m!1294751))

(assert (=> b!1405772 m!1294741))

(assert (=> b!1405772 m!1294741))

(declare-fun m!1294753 () Bool)

(assert (=> b!1405772 m!1294753))

(declare-fun m!1294755 () Bool)

(assert (=> b!1405773 m!1294755))

(declare-fun m!1294757 () Bool)

(assert (=> start!120866 m!1294757))

(declare-fun m!1294759 () Bool)

(assert (=> start!120866 m!1294759))

(assert (=> b!1405776 m!1294741))

(assert (=> b!1405776 m!1294741))

(declare-fun m!1294761 () Bool)

(assert (=> b!1405776 m!1294761))

(push 1)

(assert (not b!1405771))

(assert (not b!1405777))

(assert (not start!120866))

(assert (not b!1405775))

(assert (not b!1405774))

(assert (not b!1405773))

(assert (not b!1405776))

(assert (not b!1405772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

