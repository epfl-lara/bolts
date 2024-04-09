; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120880 () Bool)

(assert start!120880)

(declare-fun res!944265 () Bool)

(declare-fun e!795818 () Bool)

(assert (=> start!120880 (=> (not res!944265) (not e!795818))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120880 (= res!944265 (validMask!0 mask!2840))))

(assert (=> start!120880 e!795818))

(assert (=> start!120880 true))

(declare-datatypes ((array!96105 0))(
  ( (array!96106 (arr!46396 (Array (_ BitVec 32) (_ BitVec 64))) (size!46947 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96105)

(declare-fun array_inv!35341 (array!96105) Bool)

(assert (=> start!120880 (array_inv!35341 a!2901)))

(declare-fun b!1405938 () Bool)

(declare-fun res!944270 () Bool)

(assert (=> b!1405938 (=> (not res!944270) (not e!795818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96105 (_ BitVec 32)) Bool)

(assert (=> b!1405938 (= res!944270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405939 () Bool)

(declare-fun e!795817 () Bool)

(assert (=> b!1405939 (= e!795818 (not e!795817))))

(declare-fun res!944271 () Bool)

(assert (=> b!1405939 (=> res!944271 e!795817)))

(declare-datatypes ((SeekEntryResult!10729 0))(
  ( (MissingZero!10729 (index!45292 (_ BitVec 32))) (Found!10729 (index!45293 (_ BitVec 32))) (Intermediate!10729 (undefined!11541 Bool) (index!45294 (_ BitVec 32)) (x!126907 (_ BitVec 32))) (Undefined!10729) (MissingVacant!10729 (index!45295 (_ BitVec 32))) )
))
(declare-fun lt!619168 () SeekEntryResult!10729)

(assert (=> b!1405939 (= res!944271 (or (not (is-Intermediate!10729 lt!619168)) (undefined!11541 lt!619168)))))

(declare-fun e!795815 () Bool)

(assert (=> b!1405939 e!795815))

(declare-fun res!944264 () Bool)

(assert (=> b!1405939 (=> (not res!944264) (not e!795815))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405939 (= res!944264 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47382 0))(
  ( (Unit!47383) )
))
(declare-fun lt!619166 () Unit!47382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47382)

(assert (=> b!1405939 (= lt!619166 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96105 (_ BitVec 32)) SeekEntryResult!10729)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405939 (= lt!619168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46396 a!2901) j!112) mask!2840) (select (arr!46396 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405940 () Bool)

(declare-fun res!944266 () Bool)

(assert (=> b!1405940 (=> (not res!944266) (not e!795818))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405940 (= res!944266 (and (= (size!46947 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46947 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46947 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405941 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96105 (_ BitVec 32)) SeekEntryResult!10729)

(assert (=> b!1405941 (= e!795815 (= (seekEntryOrOpen!0 (select (arr!46396 a!2901) j!112) a!2901 mask!2840) (Found!10729 j!112)))))

(declare-fun b!1405942 () Bool)

(declare-fun res!944269 () Bool)

(assert (=> b!1405942 (=> (not res!944269) (not e!795818))))

(declare-datatypes ((List!33095 0))(
  ( (Nil!33092) (Cons!33091 (h!34345 (_ BitVec 64)) (t!47796 List!33095)) )
))
(declare-fun arrayNoDuplicates!0 (array!96105 (_ BitVec 32) List!33095) Bool)

(assert (=> b!1405942 (= res!944269 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33092))))

(declare-fun b!1405943 () Bool)

(declare-fun res!944268 () Bool)

(assert (=> b!1405943 (=> (not res!944268) (not e!795818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405943 (= res!944268 (validKeyInArray!0 (select (arr!46396 a!2901) j!112)))))

(declare-fun b!1405944 () Bool)

(declare-fun res!944267 () Bool)

(assert (=> b!1405944 (=> (not res!944267) (not e!795818))))

(assert (=> b!1405944 (= res!944267 (validKeyInArray!0 (select (arr!46396 a!2901) i!1037)))))

(declare-fun b!1405945 () Bool)

(assert (=> b!1405945 (= e!795817 true)))

(declare-fun lt!619167 () SeekEntryResult!10729)

(assert (=> b!1405945 (= lt!619167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46396 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46396 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96106 (store (arr!46396 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46947 a!2901)) mask!2840))))

(assert (= (and start!120880 res!944265) b!1405940))

(assert (= (and b!1405940 res!944266) b!1405944))

(assert (= (and b!1405944 res!944267) b!1405943))

(assert (= (and b!1405943 res!944268) b!1405938))

(assert (= (and b!1405938 res!944270) b!1405942))

(assert (= (and b!1405942 res!944269) b!1405939))

(assert (= (and b!1405939 res!944264) b!1405941))

(assert (= (and b!1405939 (not res!944271)) b!1405945))

(declare-fun m!1294967 () Bool)

(assert (=> b!1405942 m!1294967))

(declare-fun m!1294969 () Bool)

(assert (=> b!1405938 m!1294969))

(declare-fun m!1294971 () Bool)

(assert (=> b!1405941 m!1294971))

(assert (=> b!1405941 m!1294971))

(declare-fun m!1294973 () Bool)

(assert (=> b!1405941 m!1294973))

(declare-fun m!1294975 () Bool)

(assert (=> b!1405945 m!1294975))

(declare-fun m!1294977 () Bool)

(assert (=> b!1405945 m!1294977))

(assert (=> b!1405945 m!1294977))

(declare-fun m!1294979 () Bool)

(assert (=> b!1405945 m!1294979))

(assert (=> b!1405945 m!1294979))

(assert (=> b!1405945 m!1294977))

(declare-fun m!1294981 () Bool)

(assert (=> b!1405945 m!1294981))

(assert (=> b!1405943 m!1294971))

(assert (=> b!1405943 m!1294971))

(declare-fun m!1294983 () Bool)

(assert (=> b!1405943 m!1294983))

(declare-fun m!1294985 () Bool)

(assert (=> start!120880 m!1294985))

(declare-fun m!1294987 () Bool)

(assert (=> start!120880 m!1294987))

(declare-fun m!1294989 () Bool)

(assert (=> b!1405944 m!1294989))

(assert (=> b!1405944 m!1294989))

(declare-fun m!1294991 () Bool)

(assert (=> b!1405944 m!1294991))

(assert (=> b!1405939 m!1294971))

(declare-fun m!1294993 () Bool)

(assert (=> b!1405939 m!1294993))

(assert (=> b!1405939 m!1294971))

(declare-fun m!1294995 () Bool)

(assert (=> b!1405939 m!1294995))

(assert (=> b!1405939 m!1294993))

(assert (=> b!1405939 m!1294971))

(declare-fun m!1294997 () Bool)

(assert (=> b!1405939 m!1294997))

(declare-fun m!1294999 () Bool)

(assert (=> b!1405939 m!1294999))

(push 1)

(assert (not b!1405943))

(assert (not b!1405942))

(assert (not b!1405939))

(assert (not b!1405938))

(assert (not b!1405945))

(assert (not b!1405944))

(assert (not start!120880))

(assert (not b!1405941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

