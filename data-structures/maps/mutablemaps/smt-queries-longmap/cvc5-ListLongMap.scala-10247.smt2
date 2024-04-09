; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120574 () Bool)

(assert start!120574)

(declare-fun b!1403446 () Bool)

(declare-fun e!794670 () Bool)

(assert (=> b!1403446 (= e!794670 (not true))))

(declare-fun e!794672 () Bool)

(assert (=> b!1403446 e!794672))

(declare-fun res!942066 () Bool)

(assert (=> b!1403446 (=> (not res!942066) (not e!794672))))

(declare-datatypes ((array!95901 0))(
  ( (array!95902 (arr!46297 (Array (_ BitVec 32) (_ BitVec 64))) (size!46848 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95901)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95901 (_ BitVec 32)) Bool)

(assert (=> b!1403446 (= res!942066 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47226 0))(
  ( (Unit!47227) )
))
(declare-fun lt!618373 () Unit!47226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95901 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47226)

(assert (=> b!1403446 (= lt!618373 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10636 0))(
  ( (MissingZero!10636 (index!44920 (_ BitVec 32))) (Found!10636 (index!44921 (_ BitVec 32))) (Intermediate!10636 (undefined!11448 Bool) (index!44922 (_ BitVec 32)) (x!126538 (_ BitVec 32))) (Undefined!10636) (MissingVacant!10636 (index!44923 (_ BitVec 32))) )
))
(declare-fun lt!618372 () SeekEntryResult!10636)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95901 (_ BitVec 32)) SeekEntryResult!10636)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403446 (= lt!618372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46297 a!2901) j!112) mask!2840) (select (arr!46297 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403448 () Bool)

(declare-fun res!942068 () Bool)

(assert (=> b!1403448 (=> (not res!942068) (not e!794670))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403448 (= res!942068 (and (= (size!46848 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46848 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46848 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942069 () Bool)

(assert (=> start!120574 (=> (not res!942069) (not e!794670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120574 (= res!942069 (validMask!0 mask!2840))))

(assert (=> start!120574 e!794670))

(assert (=> start!120574 true))

(declare-fun array_inv!35242 (array!95901) Bool)

(assert (=> start!120574 (array_inv!35242 a!2901)))

(declare-fun b!1403447 () Bool)

(declare-fun res!942070 () Bool)

(assert (=> b!1403447 (=> (not res!942070) (not e!794670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403447 (= res!942070 (validKeyInArray!0 (select (arr!46297 a!2901) j!112)))))

(declare-fun b!1403449 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95901 (_ BitVec 32)) SeekEntryResult!10636)

(assert (=> b!1403449 (= e!794672 (= (seekEntryOrOpen!0 (select (arr!46297 a!2901) j!112) a!2901 mask!2840) (Found!10636 j!112)))))

(declare-fun b!1403450 () Bool)

(declare-fun res!942072 () Bool)

(assert (=> b!1403450 (=> (not res!942072) (not e!794670))))

(assert (=> b!1403450 (= res!942072 (validKeyInArray!0 (select (arr!46297 a!2901) i!1037)))))

(declare-fun b!1403451 () Bool)

(declare-fun res!942071 () Bool)

(assert (=> b!1403451 (=> (not res!942071) (not e!794670))))

(declare-datatypes ((List!32996 0))(
  ( (Nil!32993) (Cons!32992 (h!34240 (_ BitVec 64)) (t!47697 List!32996)) )
))
(declare-fun arrayNoDuplicates!0 (array!95901 (_ BitVec 32) List!32996) Bool)

(assert (=> b!1403451 (= res!942071 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32993))))

(declare-fun b!1403452 () Bool)

(declare-fun res!942067 () Bool)

(assert (=> b!1403452 (=> (not res!942067) (not e!794670))))

(assert (=> b!1403452 (= res!942067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120574 res!942069) b!1403448))

(assert (= (and b!1403448 res!942068) b!1403450))

(assert (= (and b!1403450 res!942072) b!1403447))

(assert (= (and b!1403447 res!942070) b!1403452))

(assert (= (and b!1403452 res!942067) b!1403451))

(assert (= (and b!1403451 res!942071) b!1403446))

(assert (= (and b!1403446 res!942066) b!1403449))

(declare-fun m!1292183 () Bool)

(assert (=> start!120574 m!1292183))

(declare-fun m!1292185 () Bool)

(assert (=> start!120574 m!1292185))

(declare-fun m!1292187 () Bool)

(assert (=> b!1403452 m!1292187))

(declare-fun m!1292189 () Bool)

(assert (=> b!1403446 m!1292189))

(declare-fun m!1292191 () Bool)

(assert (=> b!1403446 m!1292191))

(assert (=> b!1403446 m!1292189))

(declare-fun m!1292193 () Bool)

(assert (=> b!1403446 m!1292193))

(assert (=> b!1403446 m!1292191))

(assert (=> b!1403446 m!1292189))

(declare-fun m!1292195 () Bool)

(assert (=> b!1403446 m!1292195))

(declare-fun m!1292197 () Bool)

(assert (=> b!1403446 m!1292197))

(assert (=> b!1403449 m!1292189))

(assert (=> b!1403449 m!1292189))

(declare-fun m!1292199 () Bool)

(assert (=> b!1403449 m!1292199))

(declare-fun m!1292201 () Bool)

(assert (=> b!1403450 m!1292201))

(assert (=> b!1403450 m!1292201))

(declare-fun m!1292203 () Bool)

(assert (=> b!1403450 m!1292203))

(declare-fun m!1292205 () Bool)

(assert (=> b!1403451 m!1292205))

(assert (=> b!1403447 m!1292189))

(assert (=> b!1403447 m!1292189))

(declare-fun m!1292207 () Bool)

(assert (=> b!1403447 m!1292207))

(push 1)

(assert (not b!1403446))

(assert (not b!1403447))

(assert (not start!120574))

(assert (not b!1403449))

(assert (not b!1403451))

(assert (not b!1403450))

(assert (not b!1403452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

