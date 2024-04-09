; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119750 () Bool)

(assert start!119750)

(declare-fun b!1394408 () Bool)

(declare-fun e!789509 () Bool)

(declare-fun e!789511 () Bool)

(assert (=> b!1394408 (= e!789509 e!789511)))

(declare-fun res!933925 () Bool)

(assert (=> b!1394408 (=> res!933925 e!789511)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10368 0))(
  ( (MissingZero!10368 (index!43842 (_ BitVec 32))) (Found!10368 (index!43843 (_ BitVec 32))) (Intermediate!10368 (undefined!11180 Bool) (index!43844 (_ BitVec 32)) (x!125511 (_ BitVec 32))) (Undefined!10368) (MissingVacant!10368 (index!43845 (_ BitVec 32))) )
))
(declare-fun lt!612453 () SeekEntryResult!10368)

(declare-datatypes ((array!95350 0))(
  ( (array!95351 (arr!46029 (Array (_ BitVec 32) (_ BitVec 64))) (size!46580 (_ BitVec 32))) )
))
(declare-fun lt!612457 () array!95350)

(declare-fun lt!612455 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95350 (_ BitVec 32)) SeekEntryResult!10368)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394408 (= res!933925 (not (= lt!612453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612455 mask!2840) lt!612455 lt!612457 mask!2840))))))

(declare-fun a!2901 () array!95350)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394408 (= lt!612455 (select (store (arr!46029 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394408 (= lt!612457 (array!95351 (store (arr!46029 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46580 a!2901)))))

(declare-fun b!1394409 () Bool)

(declare-fun res!933932 () Bool)

(declare-fun e!789512 () Bool)

(assert (=> b!1394409 (=> (not res!933932) (not e!789512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95350 (_ BitVec 32)) Bool)

(assert (=> b!1394409 (= res!933932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394410 () Bool)

(declare-fun res!933926 () Bool)

(assert (=> b!1394410 (=> (not res!933926) (not e!789512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394410 (= res!933926 (validKeyInArray!0 (select (arr!46029 a!2901) i!1037)))))

(declare-fun b!1394411 () Bool)

(declare-fun res!933929 () Bool)

(assert (=> b!1394411 (=> res!933929 e!789511)))

(declare-fun lt!612454 () (_ BitVec 32))

(assert (=> b!1394411 (= res!933929 (or (bvslt (x!125511 lt!612453) #b00000000000000000000000000000000) (bvsgt (x!125511 lt!612453) #b01111111111111111111111111111110) (bvslt lt!612454 #b00000000000000000000000000000000) (bvsge lt!612454 (size!46580 a!2901)) (bvslt (index!43844 lt!612453) #b00000000000000000000000000000000) (bvsge (index!43844 lt!612453) (size!46580 a!2901)) (not (= lt!612453 (Intermediate!10368 false (index!43844 lt!612453) (x!125511 lt!612453))))))))

(declare-fun res!933930 () Bool)

(assert (=> start!119750 (=> (not res!933930) (not e!789512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119750 (= res!933930 (validMask!0 mask!2840))))

(assert (=> start!119750 e!789512))

(assert (=> start!119750 true))

(declare-fun array_inv!34974 (array!95350) Bool)

(assert (=> start!119750 (array_inv!34974 a!2901)))

(declare-fun b!1394412 () Bool)

(declare-fun res!933928 () Bool)

(assert (=> b!1394412 (=> (not res!933928) (not e!789512))))

(assert (=> b!1394412 (= res!933928 (validKeyInArray!0 (select (arr!46029 a!2901) j!112)))))

(declare-fun b!1394413 () Bool)

(assert (=> b!1394413 (= e!789512 (not e!789509))))

(declare-fun res!933927 () Bool)

(assert (=> b!1394413 (=> res!933927 e!789509)))

(assert (=> b!1394413 (= res!933927 (or (not (is-Intermediate!10368 lt!612453)) (undefined!11180 lt!612453)))))

(declare-fun lt!612451 () SeekEntryResult!10368)

(assert (=> b!1394413 (= lt!612451 (Found!10368 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95350 (_ BitVec 32)) SeekEntryResult!10368)

(assert (=> b!1394413 (= lt!612451 (seekEntryOrOpen!0 (select (arr!46029 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394413 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46690 0))(
  ( (Unit!46691) )
))
(declare-fun lt!612452 () Unit!46690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46690)

(assert (=> b!1394413 (= lt!612452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394413 (= lt!612453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612454 (select (arr!46029 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394413 (= lt!612454 (toIndex!0 (select (arr!46029 a!2901) j!112) mask!2840))))

(declare-fun b!1394414 () Bool)

(declare-fun res!933933 () Bool)

(assert (=> b!1394414 (=> (not res!933933) (not e!789512))))

(assert (=> b!1394414 (= res!933933 (and (= (size!46580 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46580 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46580 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394415 () Bool)

(assert (=> b!1394415 (= e!789511 true)))

(assert (=> b!1394415 (= lt!612451 (seekEntryOrOpen!0 lt!612455 lt!612457 mask!2840))))

(declare-fun lt!612456 () Unit!46690)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46690)

(assert (=> b!1394415 (= lt!612456 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612454 (x!125511 lt!612453) (index!43844 lt!612453) mask!2840))))

(declare-fun b!1394416 () Bool)

(declare-fun res!933931 () Bool)

(assert (=> b!1394416 (=> (not res!933931) (not e!789512))))

(declare-datatypes ((List!32728 0))(
  ( (Nil!32725) (Cons!32724 (h!33957 (_ BitVec 64)) (t!47429 List!32728)) )
))
(declare-fun arrayNoDuplicates!0 (array!95350 (_ BitVec 32) List!32728) Bool)

(assert (=> b!1394416 (= res!933931 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32725))))

(assert (= (and start!119750 res!933930) b!1394414))

(assert (= (and b!1394414 res!933933) b!1394410))

(assert (= (and b!1394410 res!933926) b!1394412))

(assert (= (and b!1394412 res!933928) b!1394409))

(assert (= (and b!1394409 res!933932) b!1394416))

(assert (= (and b!1394416 res!933931) b!1394413))

(assert (= (and b!1394413 (not res!933927)) b!1394408))

(assert (= (and b!1394408 (not res!933925)) b!1394411))

(assert (= (and b!1394411 (not res!933929)) b!1394415))

(declare-fun m!1280811 () Bool)

(assert (=> start!119750 m!1280811))

(declare-fun m!1280813 () Bool)

(assert (=> start!119750 m!1280813))

(declare-fun m!1280815 () Bool)

(assert (=> b!1394410 m!1280815))

(assert (=> b!1394410 m!1280815))

(declare-fun m!1280817 () Bool)

(assert (=> b!1394410 m!1280817))

(declare-fun m!1280819 () Bool)

(assert (=> b!1394409 m!1280819))

(declare-fun m!1280821 () Bool)

(assert (=> b!1394408 m!1280821))

(assert (=> b!1394408 m!1280821))

(declare-fun m!1280823 () Bool)

(assert (=> b!1394408 m!1280823))

(declare-fun m!1280825 () Bool)

(assert (=> b!1394408 m!1280825))

(declare-fun m!1280827 () Bool)

(assert (=> b!1394408 m!1280827))

(declare-fun m!1280829 () Bool)

(assert (=> b!1394412 m!1280829))

(assert (=> b!1394412 m!1280829))

(declare-fun m!1280831 () Bool)

(assert (=> b!1394412 m!1280831))

(assert (=> b!1394413 m!1280829))

(declare-fun m!1280833 () Bool)

(assert (=> b!1394413 m!1280833))

(assert (=> b!1394413 m!1280829))

(declare-fun m!1280835 () Bool)

(assert (=> b!1394413 m!1280835))

(assert (=> b!1394413 m!1280829))

(declare-fun m!1280837 () Bool)

(assert (=> b!1394413 m!1280837))

(assert (=> b!1394413 m!1280829))

(declare-fun m!1280839 () Bool)

(assert (=> b!1394413 m!1280839))

(declare-fun m!1280841 () Bool)

(assert (=> b!1394413 m!1280841))

(declare-fun m!1280843 () Bool)

(assert (=> b!1394415 m!1280843))

(declare-fun m!1280845 () Bool)

(assert (=> b!1394415 m!1280845))

(declare-fun m!1280847 () Bool)

(assert (=> b!1394416 m!1280847))

(push 1)

