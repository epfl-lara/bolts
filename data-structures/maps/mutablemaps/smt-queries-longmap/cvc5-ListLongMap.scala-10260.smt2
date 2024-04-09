; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120652 () Bool)

(assert start!120652)

(declare-fun b!1404209 () Bool)

(declare-fun res!942834 () Bool)

(declare-fun e!794974 () Bool)

(assert (=> b!1404209 (=> (not res!942834) (not e!794974))))

(declare-datatypes ((array!95979 0))(
  ( (array!95980 (arr!46336 (Array (_ BitVec 32) (_ BitVec 64))) (size!46887 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95979)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404209 (= res!942834 (validKeyInArray!0 (select (arr!46336 a!2901) i!1037)))))

(declare-fun b!1404210 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404210 (= e!794974 (and (bvsle #b00000000000000000000000000000000 (size!46887 a!2901)) (bvsgt j!112 (size!46887 a!2901))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10669 0))(
  ( (MissingZero!10669 (index!45052 (_ BitVec 32))) (Found!10669 (index!45053 (_ BitVec 32))) (Intermediate!10669 (undefined!11481 Bool) (index!45054 (_ BitVec 32)) (x!126675 (_ BitVec 32))) (Undefined!10669) (MissingVacant!10669 (index!45055 (_ BitVec 32))) )
))
(declare-fun lt!618559 () SeekEntryResult!10669)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95979 (_ BitVec 32)) SeekEntryResult!10669)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404210 (= lt!618559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46336 a!2901) j!112) mask!2840) (select (arr!46336 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404211 () Bool)

(declare-fun res!942830 () Bool)

(assert (=> b!1404211 (=> (not res!942830) (not e!794974))))

(assert (=> b!1404211 (= res!942830 (validKeyInArray!0 (select (arr!46336 a!2901) j!112)))))

(declare-fun b!1404212 () Bool)

(declare-fun res!942833 () Bool)

(assert (=> b!1404212 (=> (not res!942833) (not e!794974))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95979 (_ BitVec 32)) Bool)

(assert (=> b!1404212 (= res!942833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404213 () Bool)

(declare-fun res!942831 () Bool)

(assert (=> b!1404213 (=> (not res!942831) (not e!794974))))

(declare-datatypes ((List!33035 0))(
  ( (Nil!33032) (Cons!33031 (h!34279 (_ BitVec 64)) (t!47736 List!33035)) )
))
(declare-fun arrayNoDuplicates!0 (array!95979 (_ BitVec 32) List!33035) Bool)

(assert (=> b!1404213 (= res!942831 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33032))))

(declare-fun res!942829 () Bool)

(assert (=> start!120652 (=> (not res!942829) (not e!794974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120652 (= res!942829 (validMask!0 mask!2840))))

(assert (=> start!120652 e!794974))

(assert (=> start!120652 true))

(declare-fun array_inv!35281 (array!95979) Bool)

(assert (=> start!120652 (array_inv!35281 a!2901)))

(declare-fun b!1404214 () Bool)

(declare-fun res!942832 () Bool)

(assert (=> b!1404214 (=> (not res!942832) (not e!794974))))

(assert (=> b!1404214 (= res!942832 (and (= (size!46887 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46887 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46887 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120652 res!942829) b!1404214))

(assert (= (and b!1404214 res!942832) b!1404209))

(assert (= (and b!1404209 res!942834) b!1404211))

(assert (= (and b!1404211 res!942830) b!1404212))

(assert (= (and b!1404212 res!942833) b!1404213))

(assert (= (and b!1404213 res!942831) b!1404210))

(declare-fun m!1293089 () Bool)

(assert (=> start!120652 m!1293089))

(declare-fun m!1293091 () Bool)

(assert (=> start!120652 m!1293091))

(declare-fun m!1293093 () Bool)

(assert (=> b!1404211 m!1293093))

(assert (=> b!1404211 m!1293093))

(declare-fun m!1293095 () Bool)

(assert (=> b!1404211 m!1293095))

(declare-fun m!1293097 () Bool)

(assert (=> b!1404209 m!1293097))

(assert (=> b!1404209 m!1293097))

(declare-fun m!1293099 () Bool)

(assert (=> b!1404209 m!1293099))

(declare-fun m!1293101 () Bool)

(assert (=> b!1404213 m!1293101))

(assert (=> b!1404210 m!1293093))

(assert (=> b!1404210 m!1293093))

(declare-fun m!1293103 () Bool)

(assert (=> b!1404210 m!1293103))

(assert (=> b!1404210 m!1293103))

(assert (=> b!1404210 m!1293093))

(declare-fun m!1293105 () Bool)

(assert (=> b!1404210 m!1293105))

(declare-fun m!1293107 () Bool)

(assert (=> b!1404212 m!1293107))

(push 1)

(assert (not b!1404212))

(assert (not b!1404209))

(assert (not start!120652))

(assert (not b!1404211))

(assert (not b!1404213))

(assert (not b!1404210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

