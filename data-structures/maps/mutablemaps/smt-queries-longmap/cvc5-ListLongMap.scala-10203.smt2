; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120244 () Bool)

(assert start!120244)

(declare-fun b!1399082 () Bool)

(declare-fun res!937946 () Bool)

(declare-fun e!792095 () Bool)

(assert (=> b!1399082 (=> (not res!937946) (not e!792095))))

(declare-datatypes ((array!95634 0))(
  ( (array!95635 (arr!46165 (Array (_ BitVec 32) (_ BitVec 64))) (size!46716 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95634)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399082 (= res!937946 (validKeyInArray!0 (select (arr!46165 a!2901) j!112)))))

(declare-fun b!1399083 () Bool)

(declare-fun res!937947 () Bool)

(assert (=> b!1399083 (=> (not res!937947) (not e!792095))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95634 (_ BitVec 32)) Bool)

(assert (=> b!1399083 (= res!937947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399084 () Bool)

(declare-fun e!792094 () Bool)

(declare-datatypes ((SeekEntryResult!10504 0))(
  ( (MissingZero!10504 (index!44389 (_ BitVec 32))) (Found!10504 (index!44390 (_ BitVec 32))) (Intermediate!10504 (undefined!11316 Bool) (index!44391 (_ BitVec 32)) (x!126042 (_ BitVec 32))) (Undefined!10504) (MissingVacant!10504 (index!44392 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95634 (_ BitVec 32)) SeekEntryResult!10504)

(assert (=> b!1399084 (= e!792094 (= (seekEntryOrOpen!0 (select (arr!46165 a!2901) j!112) a!2901 mask!2840) (Found!10504 j!112)))))

(declare-fun b!1399085 () Bool)

(declare-fun res!937941 () Bool)

(assert (=> b!1399085 (=> (not res!937941) (not e!792095))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399085 (= res!937941 (and (= (size!46716 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46716 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46716 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399086 () Bool)

(declare-fun e!792096 () Bool)

(declare-fun e!792097 () Bool)

(assert (=> b!1399086 (= e!792096 e!792097)))

(declare-fun res!937939 () Bool)

(assert (=> b!1399086 (=> res!937939 e!792097)))

(declare-fun lt!615308 () SeekEntryResult!10504)

(declare-fun lt!615310 () SeekEntryResult!10504)

(assert (=> b!1399086 (= res!937939 (or (= lt!615308 lt!615310) (not (is-Intermediate!10504 lt!615310))))))

(declare-fun lt!615309 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95634 (_ BitVec 32)) SeekEntryResult!10504)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399086 (= lt!615310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615309 mask!2840) lt!615309 (array!95635 (store (arr!46165 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46716 a!2901)) mask!2840))))

(assert (=> b!1399086 (= lt!615309 (select (store (arr!46165 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399088 () Bool)

(declare-fun res!937945 () Bool)

(assert (=> b!1399088 (=> (not res!937945) (not e!792095))))

(declare-datatypes ((List!32864 0))(
  ( (Nil!32861) (Cons!32860 (h!34105 (_ BitVec 64)) (t!47565 List!32864)) )
))
(declare-fun arrayNoDuplicates!0 (array!95634 (_ BitVec 32) List!32864) Bool)

(assert (=> b!1399088 (= res!937945 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32861))))

(declare-fun b!1399089 () Bool)

(declare-fun res!937942 () Bool)

(assert (=> b!1399089 (=> (not res!937942) (not e!792095))))

(assert (=> b!1399089 (= res!937942 (validKeyInArray!0 (select (arr!46165 a!2901) i!1037)))))

(declare-fun b!1399090 () Bool)

(assert (=> b!1399090 (= e!792095 (not e!792096))))

(declare-fun res!937943 () Bool)

(assert (=> b!1399090 (=> res!937943 e!792096)))

(assert (=> b!1399090 (= res!937943 (or (not (is-Intermediate!10504 lt!615308)) (undefined!11316 lt!615308)))))

(assert (=> b!1399090 e!792094))

(declare-fun res!937944 () Bool)

(assert (=> b!1399090 (=> (not res!937944) (not e!792094))))

(assert (=> b!1399090 (= res!937944 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46962 0))(
  ( (Unit!46963) )
))
(declare-fun lt!615311 () Unit!46962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46962)

(assert (=> b!1399090 (= lt!615311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615313 () (_ BitVec 32))

(assert (=> b!1399090 (= lt!615308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615313 (select (arr!46165 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399090 (= lt!615313 (toIndex!0 (select (arr!46165 a!2901) j!112) mask!2840))))

(declare-fun b!1399087 () Bool)

(assert (=> b!1399087 (= e!792097 true)))

(assert (=> b!1399087 (and (not (undefined!11316 lt!615310)) (= (index!44391 lt!615310) i!1037) (bvslt (x!126042 lt!615310) (x!126042 lt!615308)) (= (select (store (arr!46165 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44391 lt!615310)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615312 () Unit!46962)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46962)

(assert (=> b!1399087 (= lt!615312 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615313 (x!126042 lt!615308) (index!44391 lt!615308) (x!126042 lt!615310) (index!44391 lt!615310) (undefined!11316 lt!615310) mask!2840))))

(declare-fun res!937940 () Bool)

(assert (=> start!120244 (=> (not res!937940) (not e!792095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120244 (= res!937940 (validMask!0 mask!2840))))

(assert (=> start!120244 e!792095))

(assert (=> start!120244 true))

(declare-fun array_inv!35110 (array!95634) Bool)

(assert (=> start!120244 (array_inv!35110 a!2901)))

(assert (= (and start!120244 res!937940) b!1399085))

(assert (= (and b!1399085 res!937941) b!1399089))

(assert (= (and b!1399089 res!937942) b!1399082))

(assert (= (and b!1399082 res!937946) b!1399083))

(assert (= (and b!1399083 res!937947) b!1399088))

(assert (= (and b!1399088 res!937945) b!1399090))

(assert (= (and b!1399090 res!937944) b!1399084))

(assert (= (and b!1399090 (not res!937943)) b!1399086))

(assert (= (and b!1399086 (not res!937939)) b!1399087))

(declare-fun m!1286369 () Bool)

(assert (=> b!1399083 m!1286369))

(declare-fun m!1286371 () Bool)

(assert (=> b!1399087 m!1286371))

(declare-fun m!1286373 () Bool)

(assert (=> b!1399087 m!1286373))

(declare-fun m!1286375 () Bool)

(assert (=> b!1399087 m!1286375))

(declare-fun m!1286377 () Bool)

(assert (=> b!1399088 m!1286377))

(declare-fun m!1286379 () Bool)

(assert (=> b!1399084 m!1286379))

(assert (=> b!1399084 m!1286379))

(declare-fun m!1286381 () Bool)

(assert (=> b!1399084 m!1286381))

(declare-fun m!1286383 () Bool)

(assert (=> start!120244 m!1286383))

(declare-fun m!1286385 () Bool)

(assert (=> start!120244 m!1286385))

(declare-fun m!1286387 () Bool)

(assert (=> b!1399089 m!1286387))

(assert (=> b!1399089 m!1286387))

(declare-fun m!1286389 () Bool)

(assert (=> b!1399089 m!1286389))

(assert (=> b!1399090 m!1286379))

(declare-fun m!1286391 () Bool)

(assert (=> b!1399090 m!1286391))

(assert (=> b!1399090 m!1286379))

(assert (=> b!1399090 m!1286379))

(declare-fun m!1286393 () Bool)

(assert (=> b!1399090 m!1286393))

(declare-fun m!1286395 () Bool)

(assert (=> b!1399090 m!1286395))

(declare-fun m!1286397 () Bool)

(assert (=> b!1399090 m!1286397))

(declare-fun m!1286399 () Bool)

(assert (=> b!1399086 m!1286399))

(assert (=> b!1399086 m!1286371))

(assert (=> b!1399086 m!1286399))

(declare-fun m!1286401 () Bool)

(assert (=> b!1399086 m!1286401))

(declare-fun m!1286403 () Bool)

(assert (=> b!1399086 m!1286403))

(assert (=> b!1399082 m!1286379))

(assert (=> b!1399082 m!1286379))

(declare-fun m!1286405 () Bool)

(assert (=> b!1399082 m!1286405))

(push 1)

