; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119708 () Bool)

(assert start!119708)

(declare-fun res!933392 () Bool)

(declare-fun e!789258 () Bool)

(assert (=> start!119708 (=> (not res!933392) (not e!789258))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119708 (= res!933392 (validMask!0 mask!2840))))

(assert (=> start!119708 e!789258))

(assert (=> start!119708 true))

(declare-datatypes ((array!95308 0))(
  ( (array!95309 (arr!46008 (Array (_ BitVec 32) (_ BitVec 64))) (size!46559 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95308)

(declare-fun array_inv!34953 (array!95308) Bool)

(assert (=> start!119708 (array_inv!34953 a!2901)))

(declare-fun b!1393869 () Bool)

(declare-fun res!933388 () Bool)

(assert (=> b!1393869 (=> (not res!933388) (not e!789258))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393869 (= res!933388 (validKeyInArray!0 (select (arr!46008 a!2901) j!112)))))

(declare-fun b!1393870 () Bool)

(declare-fun e!789260 () Bool)

(assert (=> b!1393870 (= e!789258 (not e!789260))))

(declare-fun res!933393 () Bool)

(assert (=> b!1393870 (=> res!933393 e!789260)))

(declare-datatypes ((SeekEntryResult!10347 0))(
  ( (MissingZero!10347 (index!43758 (_ BitVec 32))) (Found!10347 (index!43759 (_ BitVec 32))) (Intermediate!10347 (undefined!11159 Bool) (index!43760 (_ BitVec 32)) (x!125434 (_ BitVec 32))) (Undefined!10347) (MissingVacant!10347 (index!43761 (_ BitVec 32))) )
))
(declare-fun lt!612124 () SeekEntryResult!10347)

(assert (=> b!1393870 (= res!933393 (or (not (is-Intermediate!10347 lt!612124)) (undefined!11159 lt!612124)))))

(declare-fun e!789259 () Bool)

(assert (=> b!1393870 e!789259))

(declare-fun res!933390 () Bool)

(assert (=> b!1393870 (=> (not res!933390) (not e!789259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95308 (_ BitVec 32)) Bool)

(assert (=> b!1393870 (= res!933390 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46648 0))(
  ( (Unit!46649) )
))
(declare-fun lt!612123 () Unit!46648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46648)

(assert (=> b!1393870 (= lt!612123 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95308 (_ BitVec 32)) SeekEntryResult!10347)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393870 (= lt!612124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46008 a!2901) j!112) mask!2840) (select (arr!46008 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393871 () Bool)

(declare-fun res!933387 () Bool)

(assert (=> b!1393871 (=> (not res!933387) (not e!789258))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393871 (= res!933387 (and (= (size!46559 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46559 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46559 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393872 () Bool)

(declare-fun res!933389 () Bool)

(assert (=> b!1393872 (=> (not res!933389) (not e!789258))))

(assert (=> b!1393872 (= res!933389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393873 () Bool)

(declare-fun res!933391 () Bool)

(assert (=> b!1393873 (=> (not res!933391) (not e!789258))))

(declare-datatypes ((List!32707 0))(
  ( (Nil!32704) (Cons!32703 (h!33936 (_ BitVec 64)) (t!47408 List!32707)) )
))
(declare-fun arrayNoDuplicates!0 (array!95308 (_ BitVec 32) List!32707) Bool)

(assert (=> b!1393873 (= res!933391 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32704))))

(declare-fun b!1393874 () Bool)

(assert (=> b!1393874 (= e!789260 true)))

(declare-fun lt!612122 () SeekEntryResult!10347)

(assert (=> b!1393874 (= lt!612122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46008 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46008 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95309 (store (arr!46008 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46559 a!2901)) mask!2840))))

(declare-fun b!1393875 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95308 (_ BitVec 32)) SeekEntryResult!10347)

(assert (=> b!1393875 (= e!789259 (= (seekEntryOrOpen!0 (select (arr!46008 a!2901) j!112) a!2901 mask!2840) (Found!10347 j!112)))))

(declare-fun b!1393876 () Bool)

(declare-fun res!933386 () Bool)

(assert (=> b!1393876 (=> (not res!933386) (not e!789258))))

(assert (=> b!1393876 (= res!933386 (validKeyInArray!0 (select (arr!46008 a!2901) i!1037)))))

(assert (= (and start!119708 res!933392) b!1393871))

(assert (= (and b!1393871 res!933387) b!1393876))

(assert (= (and b!1393876 res!933386) b!1393869))

(assert (= (and b!1393869 res!933388) b!1393872))

(assert (= (and b!1393872 res!933389) b!1393873))

(assert (= (and b!1393873 res!933391) b!1393870))

(assert (= (and b!1393870 res!933390) b!1393875))

(assert (= (and b!1393870 (not res!933393)) b!1393874))

(declare-fun m!1280053 () Bool)

(assert (=> b!1393869 m!1280053))

(assert (=> b!1393869 m!1280053))

(declare-fun m!1280055 () Bool)

(assert (=> b!1393869 m!1280055))

(declare-fun m!1280057 () Bool)

(assert (=> b!1393874 m!1280057))

(declare-fun m!1280059 () Bool)

(assert (=> b!1393874 m!1280059))

(assert (=> b!1393874 m!1280059))

(declare-fun m!1280061 () Bool)

(assert (=> b!1393874 m!1280061))

(assert (=> b!1393874 m!1280061))

(assert (=> b!1393874 m!1280059))

(declare-fun m!1280063 () Bool)

(assert (=> b!1393874 m!1280063))

(assert (=> b!1393875 m!1280053))

(assert (=> b!1393875 m!1280053))

(declare-fun m!1280065 () Bool)

(assert (=> b!1393875 m!1280065))

(assert (=> b!1393870 m!1280053))

(declare-fun m!1280067 () Bool)

(assert (=> b!1393870 m!1280067))

(assert (=> b!1393870 m!1280053))

(declare-fun m!1280069 () Bool)

(assert (=> b!1393870 m!1280069))

(assert (=> b!1393870 m!1280067))

(assert (=> b!1393870 m!1280053))

(declare-fun m!1280071 () Bool)

(assert (=> b!1393870 m!1280071))

(declare-fun m!1280073 () Bool)

(assert (=> b!1393870 m!1280073))

(declare-fun m!1280075 () Bool)

(assert (=> start!119708 m!1280075))

(declare-fun m!1280077 () Bool)

(assert (=> start!119708 m!1280077))

(declare-fun m!1280079 () Bool)

(assert (=> b!1393873 m!1280079))

(declare-fun m!1280081 () Bool)

(assert (=> b!1393872 m!1280081))

(declare-fun m!1280083 () Bool)

(assert (=> b!1393876 m!1280083))

(assert (=> b!1393876 m!1280083))

(declare-fun m!1280085 () Bool)

(assert (=> b!1393876 m!1280085))

(push 1)

(assert (not start!119708))

(assert (not b!1393875))

(assert (not b!1393869))

(assert (not b!1393870))

(assert (not b!1393874))

(assert (not b!1393876))

(assert (not b!1393873))

(assert (not b!1393872))

(check-sat)

(pop 1)

