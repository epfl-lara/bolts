; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119764 () Bool)

(assert start!119764)

(declare-fun b!1394597 () Bool)

(declare-fun res!934115 () Bool)

(declare-fun e!789593 () Bool)

(assert (=> b!1394597 (=> res!934115 e!789593)))

(declare-datatypes ((array!95364 0))(
  ( (array!95365 (arr!46036 (Array (_ BitVec 32) (_ BitVec 64))) (size!46587 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95364)

(declare-datatypes ((SeekEntryResult!10375 0))(
  ( (MissingZero!10375 (index!43870 (_ BitVec 32))) (Found!10375 (index!43871 (_ BitVec 32))) (Intermediate!10375 (undefined!11187 Bool) (index!43872 (_ BitVec 32)) (x!125542 (_ BitVec 32))) (Undefined!10375) (MissingVacant!10375 (index!43873 (_ BitVec 32))) )
))
(declare-fun lt!612604 () SeekEntryResult!10375)

(declare-fun lt!612601 () (_ BitVec 32))

(assert (=> b!1394597 (= res!934115 (or (bvslt (x!125542 lt!612604) #b00000000000000000000000000000000) (bvsgt (x!125542 lt!612604) #b01111111111111111111111111111110) (bvslt lt!612601 #b00000000000000000000000000000000) (bvsge lt!612601 (size!46587 a!2901)) (bvslt (index!43872 lt!612604) #b00000000000000000000000000000000) (bvsge (index!43872 lt!612604) (size!46587 a!2901)) (not (= lt!612604 (Intermediate!10375 false (index!43872 lt!612604) (x!125542 lt!612604))))))))

(declare-fun b!1394598 () Bool)

(declare-fun e!789595 () Bool)

(declare-fun e!789594 () Bool)

(assert (=> b!1394598 (= e!789595 (not e!789594))))

(declare-fun res!934116 () Bool)

(assert (=> b!1394598 (=> res!934116 e!789594)))

(assert (=> b!1394598 (= res!934116 (or (not (is-Intermediate!10375 lt!612604)) (undefined!11187 lt!612604)))))

(declare-fun lt!612598 () SeekEntryResult!10375)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394598 (= lt!612598 (Found!10375 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95364 (_ BitVec 32)) SeekEntryResult!10375)

(assert (=> b!1394598 (= lt!612598 (seekEntryOrOpen!0 (select (arr!46036 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95364 (_ BitVec 32)) Bool)

(assert (=> b!1394598 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46704 0))(
  ( (Unit!46705) )
))
(declare-fun lt!612602 () Unit!46704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46704)

(assert (=> b!1394598 (= lt!612602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95364 (_ BitVec 32)) SeekEntryResult!10375)

(assert (=> b!1394598 (= lt!612604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612601 (select (arr!46036 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394598 (= lt!612601 (toIndex!0 (select (arr!46036 a!2901) j!112) mask!2840))))

(declare-fun b!1394599 () Bool)

(declare-fun res!934120 () Bool)

(assert (=> b!1394599 (=> (not res!934120) (not e!789595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394599 (= res!934120 (validKeyInArray!0 (select (arr!46036 a!2901) j!112)))))

(declare-fun b!1394600 () Bool)

(declare-fun res!934114 () Bool)

(assert (=> b!1394600 (=> (not res!934114) (not e!789595))))

(declare-datatypes ((List!32735 0))(
  ( (Nil!32732) (Cons!32731 (h!33964 (_ BitVec 64)) (t!47436 List!32735)) )
))
(declare-fun arrayNoDuplicates!0 (array!95364 (_ BitVec 32) List!32735) Bool)

(assert (=> b!1394600 (= res!934114 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32732))))

(declare-fun b!1394601 () Bool)

(declare-fun res!934122 () Bool)

(assert (=> b!1394601 (=> (not res!934122) (not e!789595))))

(assert (=> b!1394601 (= res!934122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394602 () Bool)

(declare-fun res!934121 () Bool)

(assert (=> b!1394602 (=> (not res!934121) (not e!789595))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394602 (= res!934121 (validKeyInArray!0 (select (arr!46036 a!2901) i!1037)))))

(declare-fun b!1394603 () Bool)

(declare-fun res!934117 () Bool)

(assert (=> b!1394603 (=> (not res!934117) (not e!789595))))

(assert (=> b!1394603 (= res!934117 (and (= (size!46587 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46587 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46587 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!934119 () Bool)

(assert (=> start!119764 (=> (not res!934119) (not e!789595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119764 (= res!934119 (validMask!0 mask!2840))))

(assert (=> start!119764 e!789595))

(assert (=> start!119764 true))

(declare-fun array_inv!34981 (array!95364) Bool)

(assert (=> start!119764 (array_inv!34981 a!2901)))

(declare-fun b!1394604 () Bool)

(assert (=> b!1394604 (= e!789594 e!789593)))

(declare-fun res!934118 () Bool)

(assert (=> b!1394604 (=> res!934118 e!789593)))

(declare-fun lt!612599 () (_ BitVec 64))

(declare-fun lt!612600 () array!95364)

(assert (=> b!1394604 (= res!934118 (not (= lt!612604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612599 mask!2840) lt!612599 lt!612600 mask!2840))))))

(assert (=> b!1394604 (= lt!612599 (select (store (arr!46036 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394604 (= lt!612600 (array!95365 (store (arr!46036 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46587 a!2901)))))

(declare-fun b!1394605 () Bool)

(assert (=> b!1394605 (= e!789593 true)))

(assert (=> b!1394605 (= lt!612598 (seekEntryOrOpen!0 lt!612599 lt!612600 mask!2840))))

(declare-fun lt!612603 () Unit!46704)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46704)

(assert (=> b!1394605 (= lt!612603 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612601 (x!125542 lt!612604) (index!43872 lt!612604) mask!2840))))

(assert (= (and start!119764 res!934119) b!1394603))

(assert (= (and b!1394603 res!934117) b!1394602))

(assert (= (and b!1394602 res!934121) b!1394599))

(assert (= (and b!1394599 res!934120) b!1394601))

(assert (= (and b!1394601 res!934122) b!1394600))

(assert (= (and b!1394600 res!934114) b!1394598))

(assert (= (and b!1394598 (not res!934116)) b!1394604))

(assert (= (and b!1394604 (not res!934118)) b!1394597))

(assert (= (and b!1394597 (not res!934115)) b!1394605))

(declare-fun m!1281077 () Bool)

(assert (=> b!1394599 m!1281077))

(assert (=> b!1394599 m!1281077))

(declare-fun m!1281079 () Bool)

(assert (=> b!1394599 m!1281079))

(declare-fun m!1281081 () Bool)

(assert (=> b!1394602 m!1281081))

(assert (=> b!1394602 m!1281081))

(declare-fun m!1281083 () Bool)

(assert (=> b!1394602 m!1281083))

(declare-fun m!1281085 () Bool)

(assert (=> b!1394600 m!1281085))

(declare-fun m!1281087 () Bool)

(assert (=> start!119764 m!1281087))

(declare-fun m!1281089 () Bool)

(assert (=> start!119764 m!1281089))

(declare-fun m!1281091 () Bool)

(assert (=> b!1394604 m!1281091))

(assert (=> b!1394604 m!1281091))

(declare-fun m!1281093 () Bool)

(assert (=> b!1394604 m!1281093))

(declare-fun m!1281095 () Bool)

(assert (=> b!1394604 m!1281095))

(declare-fun m!1281097 () Bool)

(assert (=> b!1394604 m!1281097))

(declare-fun m!1281099 () Bool)

(assert (=> b!1394605 m!1281099))

(declare-fun m!1281101 () Bool)

(assert (=> b!1394605 m!1281101))

(declare-fun m!1281103 () Bool)

(assert (=> b!1394601 m!1281103))

(assert (=> b!1394598 m!1281077))

(declare-fun m!1281105 () Bool)

(assert (=> b!1394598 m!1281105))

(assert (=> b!1394598 m!1281077))

(assert (=> b!1394598 m!1281077))

(declare-fun m!1281107 () Bool)

(assert (=> b!1394598 m!1281107))

(declare-fun m!1281109 () Bool)

(assert (=> b!1394598 m!1281109))

(assert (=> b!1394598 m!1281077))

(declare-fun m!1281111 () Bool)

(assert (=> b!1394598 m!1281111))

(declare-fun m!1281113 () Bool)

(assert (=> b!1394598 m!1281113))

(push 1)

