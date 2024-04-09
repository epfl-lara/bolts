; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119746 () Bool)

(assert start!119746)

(declare-fun b!1394354 () Bool)

(declare-fun res!933878 () Bool)

(declare-fun e!789485 () Bool)

(assert (=> b!1394354 (=> (not res!933878) (not e!789485))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95346 0))(
  ( (array!95347 (arr!46027 (Array (_ BitVec 32) (_ BitVec 64))) (size!46578 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95346)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394354 (= res!933878 (and (= (size!46578 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46578 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46578 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394355 () Bool)

(declare-fun e!789487 () Bool)

(assert (=> b!1394355 (= e!789487 true)))

(declare-fun lt!612412 () (_ BitVec 64))

(declare-fun lt!612410 () array!95346)

(declare-datatypes ((SeekEntryResult!10366 0))(
  ( (MissingZero!10366 (index!43834 (_ BitVec 32))) (Found!10366 (index!43835 (_ BitVec 32))) (Intermediate!10366 (undefined!11178 Bool) (index!43836 (_ BitVec 32)) (x!125509 (_ BitVec 32))) (Undefined!10366) (MissingVacant!10366 (index!43837 (_ BitVec 32))) )
))
(declare-fun lt!612409 () SeekEntryResult!10366)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95346 (_ BitVec 32)) SeekEntryResult!10366)

(assert (=> b!1394355 (= lt!612409 (seekEntryOrOpen!0 lt!612412 lt!612410 mask!2840))))

(declare-datatypes ((Unit!46686 0))(
  ( (Unit!46687) )
))
(declare-fun lt!612411 () Unit!46686)

(declare-fun lt!612415 () (_ BitVec 32))

(declare-fun lt!612413 () SeekEntryResult!10366)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46686)

(assert (=> b!1394355 (= lt!612411 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612415 (x!125509 lt!612413) (index!43836 lt!612413) mask!2840))))

(declare-fun b!1394356 () Bool)

(declare-fun e!789488 () Bool)

(assert (=> b!1394356 (= e!789485 (not e!789488))))

(declare-fun res!933875 () Bool)

(assert (=> b!1394356 (=> res!933875 e!789488)))

(assert (=> b!1394356 (= res!933875 (or (not (is-Intermediate!10366 lt!612413)) (undefined!11178 lt!612413)))))

(assert (=> b!1394356 (= lt!612409 (Found!10366 j!112))))

(assert (=> b!1394356 (= lt!612409 (seekEntryOrOpen!0 (select (arr!46027 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95346 (_ BitVec 32)) Bool)

(assert (=> b!1394356 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612414 () Unit!46686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46686)

(assert (=> b!1394356 (= lt!612414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95346 (_ BitVec 32)) SeekEntryResult!10366)

(assert (=> b!1394356 (= lt!612413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612415 (select (arr!46027 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394356 (= lt!612415 (toIndex!0 (select (arr!46027 a!2901) j!112) mask!2840))))

(declare-fun b!1394357 () Bool)

(declare-fun res!933879 () Bool)

(assert (=> b!1394357 (=> (not res!933879) (not e!789485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394357 (= res!933879 (validKeyInArray!0 (select (arr!46027 a!2901) j!112)))))

(declare-fun b!1394358 () Bool)

(declare-fun res!933876 () Bool)

(assert (=> b!1394358 (=> (not res!933876) (not e!789485))))

(declare-datatypes ((List!32726 0))(
  ( (Nil!32723) (Cons!32722 (h!33955 (_ BitVec 64)) (t!47427 List!32726)) )
))
(declare-fun arrayNoDuplicates!0 (array!95346 (_ BitVec 32) List!32726) Bool)

(assert (=> b!1394358 (= res!933876 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32723))))

(declare-fun b!1394359 () Bool)

(assert (=> b!1394359 (= e!789488 e!789487)))

(declare-fun res!933877 () Bool)

(assert (=> b!1394359 (=> res!933877 e!789487)))

(assert (=> b!1394359 (= res!933877 (not (= lt!612413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612412 mask!2840) lt!612412 lt!612410 mask!2840))))))

(assert (=> b!1394359 (= lt!612412 (select (store (arr!46027 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394359 (= lt!612410 (array!95347 (store (arr!46027 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46578 a!2901)))))

(declare-fun b!1394360 () Bool)

(declare-fun res!933872 () Bool)

(assert (=> b!1394360 (=> (not res!933872) (not e!789485))))

(assert (=> b!1394360 (= res!933872 (validKeyInArray!0 (select (arr!46027 a!2901) i!1037)))))

(declare-fun b!1394361 () Bool)

(declare-fun res!933871 () Bool)

(assert (=> b!1394361 (=> res!933871 e!789487)))

(assert (=> b!1394361 (= res!933871 (or (bvslt (x!125509 lt!612413) #b00000000000000000000000000000000) (bvsgt (x!125509 lt!612413) #b01111111111111111111111111111110) (bvslt lt!612415 #b00000000000000000000000000000000) (bvsge lt!612415 (size!46578 a!2901)) (bvslt (index!43836 lt!612413) #b00000000000000000000000000000000) (bvsge (index!43836 lt!612413) (size!46578 a!2901)) (not (= lt!612413 (Intermediate!10366 false (index!43836 lt!612413) (x!125509 lt!612413))))))))

(declare-fun res!933874 () Bool)

(assert (=> start!119746 (=> (not res!933874) (not e!789485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119746 (= res!933874 (validMask!0 mask!2840))))

(assert (=> start!119746 e!789485))

(assert (=> start!119746 true))

(declare-fun array_inv!34972 (array!95346) Bool)

(assert (=> start!119746 (array_inv!34972 a!2901)))

(declare-fun b!1394362 () Bool)

(declare-fun res!933873 () Bool)

(assert (=> b!1394362 (=> (not res!933873) (not e!789485))))

(assert (=> b!1394362 (= res!933873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119746 res!933874) b!1394354))

(assert (= (and b!1394354 res!933878) b!1394360))

(assert (= (and b!1394360 res!933872) b!1394357))

(assert (= (and b!1394357 res!933879) b!1394362))

(assert (= (and b!1394362 res!933873) b!1394358))

(assert (= (and b!1394358 res!933876) b!1394356))

(assert (= (and b!1394356 (not res!933875)) b!1394359))

(assert (= (and b!1394359 (not res!933877)) b!1394361))

(assert (= (and b!1394361 (not res!933871)) b!1394355))

(declare-fun m!1280735 () Bool)

(assert (=> b!1394362 m!1280735))

(declare-fun m!1280737 () Bool)

(assert (=> b!1394358 m!1280737))

(declare-fun m!1280739 () Bool)

(assert (=> b!1394357 m!1280739))

(assert (=> b!1394357 m!1280739))

(declare-fun m!1280741 () Bool)

(assert (=> b!1394357 m!1280741))

(declare-fun m!1280743 () Bool)

(assert (=> b!1394355 m!1280743))

(declare-fun m!1280745 () Bool)

(assert (=> b!1394355 m!1280745))

(declare-fun m!1280747 () Bool)

(assert (=> b!1394360 m!1280747))

(assert (=> b!1394360 m!1280747))

(declare-fun m!1280749 () Bool)

(assert (=> b!1394360 m!1280749))

(declare-fun m!1280751 () Bool)

(assert (=> b!1394359 m!1280751))

(assert (=> b!1394359 m!1280751))

(declare-fun m!1280753 () Bool)

(assert (=> b!1394359 m!1280753))

(declare-fun m!1280755 () Bool)

(assert (=> b!1394359 m!1280755))

(declare-fun m!1280757 () Bool)

(assert (=> b!1394359 m!1280757))

(declare-fun m!1280759 () Bool)

(assert (=> start!119746 m!1280759))

(declare-fun m!1280761 () Bool)

(assert (=> start!119746 m!1280761))

(assert (=> b!1394356 m!1280739))

(declare-fun m!1280763 () Bool)

(assert (=> b!1394356 m!1280763))

(assert (=> b!1394356 m!1280739))

(declare-fun m!1280765 () Bool)

(assert (=> b!1394356 m!1280765))

(assert (=> b!1394356 m!1280739))

(declare-fun m!1280767 () Bool)

(assert (=> b!1394356 m!1280767))

(declare-fun m!1280769 () Bool)

(assert (=> b!1394356 m!1280769))

(assert (=> b!1394356 m!1280739))

(declare-fun m!1280771 () Bool)

(assert (=> b!1394356 m!1280771))

(push 1)

