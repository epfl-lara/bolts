; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120884 () Bool)

(assert start!120884)

(declare-fun b!1405986 () Bool)

(declare-fun res!944313 () Bool)

(declare-fun e!795841 () Bool)

(assert (=> b!1405986 (=> (not res!944313) (not e!795841))))

(declare-datatypes ((array!96109 0))(
  ( (array!96110 (arr!46398 (Array (_ BitVec 32) (_ BitVec 64))) (size!46949 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96109)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405986 (= res!944313 (validKeyInArray!0 (select (arr!46398 a!2901) j!112)))))

(declare-fun res!944317 () Bool)

(assert (=> start!120884 (=> (not res!944317) (not e!795841))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120884 (= res!944317 (validMask!0 mask!2840))))

(assert (=> start!120884 e!795841))

(assert (=> start!120884 true))

(declare-fun array_inv!35343 (array!96109) Bool)

(assert (=> start!120884 (array_inv!35343 a!2901)))

(declare-fun b!1405987 () Bool)

(declare-fun res!944315 () Bool)

(assert (=> b!1405987 (=> (not res!944315) (not e!795841))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405987 (= res!944315 (validKeyInArray!0 (select (arr!46398 a!2901) i!1037)))))

(declare-fun b!1405988 () Bool)

(declare-fun res!944314 () Bool)

(assert (=> b!1405988 (=> (not res!944314) (not e!795841))))

(assert (=> b!1405988 (= res!944314 (and (= (size!46949 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46949 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46949 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405989 () Bool)

(declare-fun e!795839 () Bool)

(assert (=> b!1405989 (= e!795839 true)))

(declare-datatypes ((SeekEntryResult!10731 0))(
  ( (MissingZero!10731 (index!45300 (_ BitVec 32))) (Found!10731 (index!45301 (_ BitVec 32))) (Intermediate!10731 (undefined!11543 Bool) (index!45302 (_ BitVec 32)) (x!126909 (_ BitVec 32))) (Undefined!10731) (MissingVacant!10731 (index!45303 (_ BitVec 32))) )
))
(declare-fun lt!619185 () SeekEntryResult!10731)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96109 (_ BitVec 32)) SeekEntryResult!10731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405989 (= lt!619185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46398 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46398 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96110 (store (arr!46398 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46949 a!2901)) mask!2840))))

(declare-fun b!1405990 () Bool)

(declare-fun e!795842 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96109 (_ BitVec 32)) SeekEntryResult!10731)

(assert (=> b!1405990 (= e!795842 (= (seekEntryOrOpen!0 (select (arr!46398 a!2901) j!112) a!2901 mask!2840) (Found!10731 j!112)))))

(declare-fun b!1405991 () Bool)

(assert (=> b!1405991 (= e!795841 (not e!795839))))

(declare-fun res!944316 () Bool)

(assert (=> b!1405991 (=> res!944316 e!795839)))

(declare-fun lt!619184 () SeekEntryResult!10731)

(assert (=> b!1405991 (= res!944316 (or (not (is-Intermediate!10731 lt!619184)) (undefined!11543 lt!619184)))))

(assert (=> b!1405991 e!795842))

(declare-fun res!944319 () Bool)

(assert (=> b!1405991 (=> (not res!944319) (not e!795842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96109 (_ BitVec 32)) Bool)

(assert (=> b!1405991 (= res!944319 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47386 0))(
  ( (Unit!47387) )
))
(declare-fun lt!619186 () Unit!47386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47386)

(assert (=> b!1405991 (= lt!619186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405991 (= lt!619184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46398 a!2901) j!112) mask!2840) (select (arr!46398 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405992 () Bool)

(declare-fun res!944312 () Bool)

(assert (=> b!1405992 (=> (not res!944312) (not e!795841))))

(declare-datatypes ((List!33097 0))(
  ( (Nil!33094) (Cons!33093 (h!34347 (_ BitVec 64)) (t!47798 List!33097)) )
))
(declare-fun arrayNoDuplicates!0 (array!96109 (_ BitVec 32) List!33097) Bool)

(assert (=> b!1405992 (= res!944312 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33094))))

(declare-fun b!1405993 () Bool)

(declare-fun res!944318 () Bool)

(assert (=> b!1405993 (=> (not res!944318) (not e!795841))))

(assert (=> b!1405993 (= res!944318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120884 res!944317) b!1405988))

(assert (= (and b!1405988 res!944314) b!1405987))

(assert (= (and b!1405987 res!944315) b!1405986))

(assert (= (and b!1405986 res!944313) b!1405993))

(assert (= (and b!1405993 res!944318) b!1405992))

(assert (= (and b!1405992 res!944312) b!1405991))

(assert (= (and b!1405991 res!944319) b!1405990))

(assert (= (and b!1405991 (not res!944316)) b!1405989))

(declare-fun m!1295035 () Bool)

(assert (=> b!1405989 m!1295035))

(declare-fun m!1295037 () Bool)

(assert (=> b!1405989 m!1295037))

(assert (=> b!1405989 m!1295037))

(declare-fun m!1295039 () Bool)

(assert (=> b!1405989 m!1295039))

(assert (=> b!1405989 m!1295039))

(assert (=> b!1405989 m!1295037))

(declare-fun m!1295041 () Bool)

(assert (=> b!1405989 m!1295041))

(declare-fun m!1295043 () Bool)

(assert (=> start!120884 m!1295043))

(declare-fun m!1295045 () Bool)

(assert (=> start!120884 m!1295045))

(declare-fun m!1295047 () Bool)

(assert (=> b!1405993 m!1295047))

(declare-fun m!1295049 () Bool)

(assert (=> b!1405990 m!1295049))

(assert (=> b!1405990 m!1295049))

(declare-fun m!1295051 () Bool)

(assert (=> b!1405990 m!1295051))

(declare-fun m!1295053 () Bool)

(assert (=> b!1405987 m!1295053))

(assert (=> b!1405987 m!1295053))

(declare-fun m!1295055 () Bool)

(assert (=> b!1405987 m!1295055))

(declare-fun m!1295057 () Bool)

(assert (=> b!1405992 m!1295057))

(assert (=> b!1405991 m!1295049))

(declare-fun m!1295059 () Bool)

(assert (=> b!1405991 m!1295059))

(assert (=> b!1405991 m!1295049))

(declare-fun m!1295061 () Bool)

(assert (=> b!1405991 m!1295061))

(assert (=> b!1405991 m!1295059))

(assert (=> b!1405991 m!1295049))

(declare-fun m!1295063 () Bool)

(assert (=> b!1405991 m!1295063))

(declare-fun m!1295065 () Bool)

(assert (=> b!1405991 m!1295065))

(assert (=> b!1405986 m!1295049))

(assert (=> b!1405986 m!1295049))

(declare-fun m!1295067 () Bool)

(assert (=> b!1405986 m!1295067))

(push 1)

(assert (not b!1405992))

(assert (not b!1405990))

(assert (not b!1405991))

(assert (not start!120884))

(assert (not b!1405987))

(assert (not b!1405989))

(assert (not b!1405993))

(assert (not b!1405986))

(check-sat)

