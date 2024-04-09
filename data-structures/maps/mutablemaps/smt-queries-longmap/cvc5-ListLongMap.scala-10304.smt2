; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121186 () Bool)

(assert start!121186)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96258 0))(
  ( (array!96259 (arr!46468 (Array (_ BitVec 32) (_ BitVec 64))) (size!47019 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96258)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1408512 () Bool)

(declare-fun e!797156 () Bool)

(declare-datatypes ((SeekEntryResult!10801 0))(
  ( (MissingZero!10801 (index!45580 (_ BitVec 32))) (Found!10801 (index!45581 (_ BitVec 32))) (Intermediate!10801 (undefined!11613 Bool) (index!45582 (_ BitVec 32)) (x!127189 (_ BitVec 32))) (Undefined!10801) (MissingVacant!10801 (index!45583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96258 (_ BitVec 32)) SeekEntryResult!10801)

(assert (=> b!1408512 (= e!797156 (= (seekEntryOrOpen!0 (select (arr!46468 a!2901) j!112) a!2901 mask!2840) (Found!10801 j!112)))))

(declare-fun res!946347 () Bool)

(declare-fun e!797158 () Bool)

(assert (=> start!121186 (=> (not res!946347) (not e!797158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121186 (= res!946347 (validMask!0 mask!2840))))

(assert (=> start!121186 e!797158))

(assert (=> start!121186 true))

(declare-fun array_inv!35413 (array!96258) Bool)

(assert (=> start!121186 (array_inv!35413 a!2901)))

(declare-fun b!1408513 () Bool)

(declare-fun res!946348 () Bool)

(assert (=> b!1408513 (=> (not res!946348) (not e!797158))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408513 (= res!946348 (and (= (size!47019 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47019 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47019 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408514 () Bool)

(declare-fun res!946344 () Bool)

(assert (=> b!1408514 (=> (not res!946344) (not e!797158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96258 (_ BitVec 32)) Bool)

(assert (=> b!1408514 (= res!946344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408515 () Bool)

(declare-fun res!946350 () Bool)

(assert (=> b!1408515 (=> (not res!946350) (not e!797158))))

(declare-datatypes ((List!33167 0))(
  ( (Nil!33164) (Cons!33163 (h!34426 (_ BitVec 64)) (t!47868 List!33167)) )
))
(declare-fun arrayNoDuplicates!0 (array!96258 (_ BitVec 32) List!33167) Bool)

(assert (=> b!1408515 (= res!946350 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33164))))

(declare-fun b!1408516 () Bool)

(declare-fun res!946349 () Bool)

(assert (=> b!1408516 (=> (not res!946349) (not e!797158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408516 (= res!946349 (validKeyInArray!0 (select (arr!46468 a!2901) j!112)))))

(declare-fun b!1408517 () Bool)

(declare-fun e!797157 () Bool)

(assert (=> b!1408517 (= e!797158 (not e!797157))))

(declare-fun res!946345 () Bool)

(assert (=> b!1408517 (=> res!946345 e!797157)))

(declare-fun lt!620346 () SeekEntryResult!10801)

(assert (=> b!1408517 (= res!946345 (or (not (is-Intermediate!10801 lt!620346)) (undefined!11613 lt!620346)))))

(assert (=> b!1408517 e!797156))

(declare-fun res!946346 () Bool)

(assert (=> b!1408517 (=> (not res!946346) (not e!797156))))

(assert (=> b!1408517 (= res!946346 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47526 0))(
  ( (Unit!47527) )
))
(declare-fun lt!620347 () Unit!47526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47526)

(assert (=> b!1408517 (= lt!620347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96258 (_ BitVec 32)) SeekEntryResult!10801)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408517 (= lt!620346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46468 a!2901) j!112) mask!2840) (select (arr!46468 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408518 () Bool)

(declare-fun res!946343 () Bool)

(assert (=> b!1408518 (=> (not res!946343) (not e!797158))))

(assert (=> b!1408518 (= res!946343 (validKeyInArray!0 (select (arr!46468 a!2901) i!1037)))))

(declare-fun b!1408519 () Bool)

(assert (=> b!1408519 (= e!797157 true)))

(declare-fun lt!620345 () SeekEntryResult!10801)

(assert (=> b!1408519 (= lt!620345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46468 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46468 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96259 (store (arr!46468 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47019 a!2901)) mask!2840))))

(assert (= (and start!121186 res!946347) b!1408513))

(assert (= (and b!1408513 res!946348) b!1408518))

(assert (= (and b!1408518 res!946343) b!1408516))

(assert (= (and b!1408516 res!946349) b!1408514))

(assert (= (and b!1408514 res!946344) b!1408515))

(assert (= (and b!1408515 res!946350) b!1408517))

(assert (= (and b!1408517 res!946346) b!1408512))

(assert (= (and b!1408517 (not res!946345)) b!1408519))

(declare-fun m!1297937 () Bool)

(assert (=> b!1408516 m!1297937))

(assert (=> b!1408516 m!1297937))

(declare-fun m!1297939 () Bool)

(assert (=> b!1408516 m!1297939))

(assert (=> b!1408512 m!1297937))

(assert (=> b!1408512 m!1297937))

(declare-fun m!1297941 () Bool)

(assert (=> b!1408512 m!1297941))

(declare-fun m!1297943 () Bool)

(assert (=> b!1408514 m!1297943))

(declare-fun m!1297945 () Bool)

(assert (=> b!1408518 m!1297945))

(assert (=> b!1408518 m!1297945))

(declare-fun m!1297947 () Bool)

(assert (=> b!1408518 m!1297947))

(declare-fun m!1297949 () Bool)

(assert (=> b!1408519 m!1297949))

(declare-fun m!1297951 () Bool)

(assert (=> b!1408519 m!1297951))

(assert (=> b!1408519 m!1297951))

(declare-fun m!1297953 () Bool)

(assert (=> b!1408519 m!1297953))

(assert (=> b!1408519 m!1297953))

(assert (=> b!1408519 m!1297951))

(declare-fun m!1297955 () Bool)

(assert (=> b!1408519 m!1297955))

(assert (=> b!1408517 m!1297937))

(declare-fun m!1297957 () Bool)

(assert (=> b!1408517 m!1297957))

(assert (=> b!1408517 m!1297937))

(declare-fun m!1297959 () Bool)

(assert (=> b!1408517 m!1297959))

(assert (=> b!1408517 m!1297957))

(assert (=> b!1408517 m!1297937))

(declare-fun m!1297961 () Bool)

(assert (=> b!1408517 m!1297961))

(declare-fun m!1297963 () Bool)

(assert (=> b!1408517 m!1297963))

(declare-fun m!1297965 () Bool)

(assert (=> start!121186 m!1297965))

(declare-fun m!1297967 () Bool)

(assert (=> start!121186 m!1297967))

(declare-fun m!1297969 () Bool)

(assert (=> b!1408515 m!1297969))

(push 1)

(assert (not start!121186))

(assert (not b!1408515))

(assert (not b!1408514))

(assert (not b!1408519))

(assert (not b!1408517))

(assert (not b!1408518))

(assert (not b!1408516))

(assert (not b!1408512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

