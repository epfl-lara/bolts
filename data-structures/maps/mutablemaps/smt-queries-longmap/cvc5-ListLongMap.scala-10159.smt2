; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119758 () Bool)

(assert start!119758)

(declare-fun b!1394516 () Bool)

(declare-fun res!934033 () Bool)

(declare-fun e!789560 () Bool)

(assert (=> b!1394516 (=> (not res!934033) (not e!789560))))

(declare-datatypes ((array!95358 0))(
  ( (array!95359 (arr!46033 (Array (_ BitVec 32) (_ BitVec 64))) (size!46584 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95358)

(declare-datatypes ((List!32732 0))(
  ( (Nil!32729) (Cons!32728 (h!33961 (_ BitVec 64)) (t!47433 List!32732)) )
))
(declare-fun arrayNoDuplicates!0 (array!95358 (_ BitVec 32) List!32732) Bool)

(assert (=> b!1394516 (= res!934033 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32729))))

(declare-fun b!1394517 () Bool)

(declare-fun e!789558 () Bool)

(assert (=> b!1394517 (= e!789560 (not e!789558))))

(declare-fun res!934041 () Bool)

(assert (=> b!1394517 (=> res!934041 e!789558)))

(declare-datatypes ((SeekEntryResult!10372 0))(
  ( (MissingZero!10372 (index!43858 (_ BitVec 32))) (Found!10372 (index!43859 (_ BitVec 32))) (Intermediate!10372 (undefined!11184 Bool) (index!43860 (_ BitVec 32)) (x!125531 (_ BitVec 32))) (Undefined!10372) (MissingVacant!10372 (index!43861 (_ BitVec 32))) )
))
(declare-fun lt!612539 () SeekEntryResult!10372)

(assert (=> b!1394517 (= res!934041 (or (not (is-Intermediate!10372 lt!612539)) (undefined!11184 lt!612539)))))

(declare-fun lt!612541 () SeekEntryResult!10372)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394517 (= lt!612541 (Found!10372 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95358 (_ BitVec 32)) SeekEntryResult!10372)

(assert (=> b!1394517 (= lt!612541 (seekEntryOrOpen!0 (select (arr!46033 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95358 (_ BitVec 32)) Bool)

(assert (=> b!1394517 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46698 0))(
  ( (Unit!46699) )
))
(declare-fun lt!612537 () Unit!46698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46698)

(assert (=> b!1394517 (= lt!612537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612535 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95358 (_ BitVec 32)) SeekEntryResult!10372)

(assert (=> b!1394517 (= lt!612539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612535 (select (arr!46033 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394517 (= lt!612535 (toIndex!0 (select (arr!46033 a!2901) j!112) mask!2840))))

(declare-fun b!1394518 () Bool)

(declare-fun res!934034 () Bool)

(declare-fun e!789557 () Bool)

(assert (=> b!1394518 (=> res!934034 e!789557)))

(assert (=> b!1394518 (= res!934034 (or (bvslt (x!125531 lt!612539) #b00000000000000000000000000000000) (bvsgt (x!125531 lt!612539) #b01111111111111111111111111111110) (bvslt lt!612535 #b00000000000000000000000000000000) (bvsge lt!612535 (size!46584 a!2901)) (bvslt (index!43860 lt!612539) #b00000000000000000000000000000000) (bvsge (index!43860 lt!612539) (size!46584 a!2901)) (not (= lt!612539 (Intermediate!10372 false (index!43860 lt!612539) (x!125531 lt!612539))))))))

(declare-fun res!934038 () Bool)

(assert (=> start!119758 (=> (not res!934038) (not e!789560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119758 (= res!934038 (validMask!0 mask!2840))))

(assert (=> start!119758 e!789560))

(assert (=> start!119758 true))

(declare-fun array_inv!34978 (array!95358) Bool)

(assert (=> start!119758 (array_inv!34978 a!2901)))

(declare-fun b!1394519 () Bool)

(declare-fun res!934039 () Bool)

(assert (=> b!1394519 (=> (not res!934039) (not e!789560))))

(assert (=> b!1394519 (= res!934039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394520 () Bool)

(declare-fun res!934040 () Bool)

(assert (=> b!1394520 (=> (not res!934040) (not e!789560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394520 (= res!934040 (validKeyInArray!0 (select (arr!46033 a!2901) j!112)))))

(declare-fun b!1394521 () Bool)

(declare-fun res!934036 () Bool)

(assert (=> b!1394521 (=> (not res!934036) (not e!789560))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394521 (= res!934036 (and (= (size!46584 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46584 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46584 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394522 () Bool)

(declare-fun res!934035 () Bool)

(assert (=> b!1394522 (=> (not res!934035) (not e!789560))))

(assert (=> b!1394522 (= res!934035 (validKeyInArray!0 (select (arr!46033 a!2901) i!1037)))))

(declare-fun b!1394523 () Bool)

(assert (=> b!1394523 (= e!789558 e!789557)))

(declare-fun res!934037 () Bool)

(assert (=> b!1394523 (=> res!934037 e!789557)))

(declare-fun lt!612536 () array!95358)

(declare-fun lt!612540 () (_ BitVec 64))

(assert (=> b!1394523 (= res!934037 (not (= lt!612539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612540 mask!2840) lt!612540 lt!612536 mask!2840))))))

(assert (=> b!1394523 (= lt!612540 (select (store (arr!46033 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394523 (= lt!612536 (array!95359 (store (arr!46033 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46584 a!2901)))))

(declare-fun b!1394524 () Bool)

(assert (=> b!1394524 (= e!789557 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1394524 (= lt!612541 (seekEntryOrOpen!0 lt!612540 lt!612536 mask!2840))))

(declare-fun lt!612538 () Unit!46698)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46698)

(assert (=> b!1394524 (= lt!612538 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612535 (x!125531 lt!612539) (index!43860 lt!612539) mask!2840))))

(assert (= (and start!119758 res!934038) b!1394521))

(assert (= (and b!1394521 res!934036) b!1394522))

(assert (= (and b!1394522 res!934035) b!1394520))

(assert (= (and b!1394520 res!934040) b!1394519))

(assert (= (and b!1394519 res!934039) b!1394516))

(assert (= (and b!1394516 res!934033) b!1394517))

(assert (= (and b!1394517 (not res!934041)) b!1394523))

(assert (= (and b!1394523 (not res!934037)) b!1394518))

(assert (= (and b!1394518 (not res!934034)) b!1394524))

(declare-fun m!1280963 () Bool)

(assert (=> b!1394517 m!1280963))

(declare-fun m!1280965 () Bool)

(assert (=> b!1394517 m!1280965))

(assert (=> b!1394517 m!1280963))

(declare-fun m!1280967 () Bool)

(assert (=> b!1394517 m!1280967))

(assert (=> b!1394517 m!1280963))

(declare-fun m!1280969 () Bool)

(assert (=> b!1394517 m!1280969))

(declare-fun m!1280971 () Bool)

(assert (=> b!1394517 m!1280971))

(assert (=> b!1394517 m!1280963))

(declare-fun m!1280973 () Bool)

(assert (=> b!1394517 m!1280973))

(declare-fun m!1280975 () Bool)

(assert (=> b!1394516 m!1280975))

(declare-fun m!1280977 () Bool)

(assert (=> start!119758 m!1280977))

(declare-fun m!1280979 () Bool)

(assert (=> start!119758 m!1280979))

(assert (=> b!1394520 m!1280963))

(assert (=> b!1394520 m!1280963))

(declare-fun m!1280981 () Bool)

(assert (=> b!1394520 m!1280981))

(declare-fun m!1280983 () Bool)

(assert (=> b!1394524 m!1280983))

(declare-fun m!1280985 () Bool)

(assert (=> b!1394524 m!1280985))

(declare-fun m!1280987 () Bool)

(assert (=> b!1394519 m!1280987))

(declare-fun m!1280989 () Bool)

(assert (=> b!1394522 m!1280989))

(assert (=> b!1394522 m!1280989))

(declare-fun m!1280991 () Bool)

(assert (=> b!1394522 m!1280991))

(declare-fun m!1280993 () Bool)

(assert (=> b!1394523 m!1280993))

(assert (=> b!1394523 m!1280993))

(declare-fun m!1280995 () Bool)

(assert (=> b!1394523 m!1280995))

(declare-fun m!1280997 () Bool)

(assert (=> b!1394523 m!1280997))

(declare-fun m!1280999 () Bool)

(assert (=> b!1394523 m!1280999))

(push 1)

