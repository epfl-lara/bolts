; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120556 () Bool)

(assert start!120556)

(declare-fun b!1403232 () Bool)

(declare-fun e!794564 () Bool)

(assert (=> b!1403232 (= e!794564 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95883 0))(
  ( (array!95884 (arr!46288 (Array (_ BitVec 32) (_ BitVec 64))) (size!46839 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95883)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10627 0))(
  ( (MissingZero!10627 (index!44884 (_ BitVec 32))) (Found!10627 (index!44885 (_ BitVec 32))) (Intermediate!10627 (undefined!11439 Bool) (index!44886 (_ BitVec 32)) (x!126505 (_ BitVec 32))) (Undefined!10627) (MissingVacant!10627 (index!44887 (_ BitVec 32))) )
))
(declare-fun lt!618295 () SeekEntryResult!10627)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95883 (_ BitVec 32)) SeekEntryResult!10627)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403232 (= lt!618295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46288 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46288 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95884 (store (arr!46288 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46839 a!2901)) mask!2840))))

(declare-fun res!941857 () Bool)

(declare-fun e!794565 () Bool)

(assert (=> start!120556 (=> (not res!941857) (not e!794565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120556 (= res!941857 (validMask!0 mask!2840))))

(assert (=> start!120556 e!794565))

(assert (=> start!120556 true))

(declare-fun array_inv!35233 (array!95883) Bool)

(assert (=> start!120556 (array_inv!35233 a!2901)))

(declare-fun b!1403233 () Bool)

(declare-fun res!941852 () Bool)

(assert (=> b!1403233 (=> (not res!941852) (not e!794565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403233 (= res!941852 (validKeyInArray!0 (select (arr!46288 a!2901) j!112)))))

(declare-fun b!1403234 () Bool)

(declare-fun e!794567 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95883 (_ BitVec 32)) SeekEntryResult!10627)

(assert (=> b!1403234 (= e!794567 (= (seekEntryOrOpen!0 (select (arr!46288 a!2901) j!112) a!2901 mask!2840) (Found!10627 j!112)))))

(declare-fun b!1403235 () Bool)

(declare-fun res!941853 () Bool)

(assert (=> b!1403235 (=> (not res!941853) (not e!794565))))

(assert (=> b!1403235 (= res!941853 (validKeyInArray!0 (select (arr!46288 a!2901) i!1037)))))

(declare-fun b!1403236 () Bool)

(declare-fun res!941856 () Bool)

(assert (=> b!1403236 (=> (not res!941856) (not e!794565))))

(declare-datatypes ((List!32987 0))(
  ( (Nil!32984) (Cons!32983 (h!34231 (_ BitVec 64)) (t!47688 List!32987)) )
))
(declare-fun arrayNoDuplicates!0 (array!95883 (_ BitVec 32) List!32987) Bool)

(assert (=> b!1403236 (= res!941856 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32984))))

(declare-fun b!1403237 () Bool)

(declare-fun res!941858 () Bool)

(assert (=> b!1403237 (=> (not res!941858) (not e!794565))))

(assert (=> b!1403237 (= res!941858 (and (= (size!46839 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46839 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46839 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403238 () Bool)

(assert (=> b!1403238 (= e!794565 (not e!794564))))

(declare-fun res!941859 () Bool)

(assert (=> b!1403238 (=> res!941859 e!794564)))

(declare-fun lt!618293 () SeekEntryResult!10627)

(assert (=> b!1403238 (= res!941859 (or (not (is-Intermediate!10627 lt!618293)) (undefined!11439 lt!618293)))))

(assert (=> b!1403238 e!794567))

(declare-fun res!941855 () Bool)

(assert (=> b!1403238 (=> (not res!941855) (not e!794567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95883 (_ BitVec 32)) Bool)

(assert (=> b!1403238 (= res!941855 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47208 0))(
  ( (Unit!47209) )
))
(declare-fun lt!618294 () Unit!47208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47208)

(assert (=> b!1403238 (= lt!618294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403238 (= lt!618293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46288 a!2901) j!112) mask!2840) (select (arr!46288 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403239 () Bool)

(declare-fun res!941854 () Bool)

(assert (=> b!1403239 (=> (not res!941854) (not e!794565))))

(assert (=> b!1403239 (= res!941854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120556 res!941857) b!1403237))

(assert (= (and b!1403237 res!941858) b!1403235))

(assert (= (and b!1403235 res!941853) b!1403233))

(assert (= (and b!1403233 res!941852) b!1403239))

(assert (= (and b!1403239 res!941854) b!1403236))

(assert (= (and b!1403236 res!941856) b!1403238))

(assert (= (and b!1403238 res!941855) b!1403234))

(assert (= (and b!1403238 (not res!941859)) b!1403232))

(declare-fun m!1291877 () Bool)

(assert (=> b!1403236 m!1291877))

(declare-fun m!1291879 () Bool)

(assert (=> b!1403233 m!1291879))

(assert (=> b!1403233 m!1291879))

(declare-fun m!1291881 () Bool)

(assert (=> b!1403233 m!1291881))

(assert (=> b!1403234 m!1291879))

(assert (=> b!1403234 m!1291879))

(declare-fun m!1291883 () Bool)

(assert (=> b!1403234 m!1291883))

(declare-fun m!1291885 () Bool)

(assert (=> start!120556 m!1291885))

(declare-fun m!1291887 () Bool)

(assert (=> start!120556 m!1291887))

(declare-fun m!1291889 () Bool)

(assert (=> b!1403232 m!1291889))

(declare-fun m!1291891 () Bool)

(assert (=> b!1403232 m!1291891))

(assert (=> b!1403232 m!1291891))

(declare-fun m!1291893 () Bool)

(assert (=> b!1403232 m!1291893))

(assert (=> b!1403232 m!1291893))

(assert (=> b!1403232 m!1291891))

(declare-fun m!1291895 () Bool)

(assert (=> b!1403232 m!1291895))

(assert (=> b!1403238 m!1291879))

(declare-fun m!1291897 () Bool)

(assert (=> b!1403238 m!1291897))

(assert (=> b!1403238 m!1291879))

(declare-fun m!1291899 () Bool)

(assert (=> b!1403238 m!1291899))

(assert (=> b!1403238 m!1291897))

(assert (=> b!1403238 m!1291879))

(declare-fun m!1291901 () Bool)

(assert (=> b!1403238 m!1291901))

(declare-fun m!1291903 () Bool)

(assert (=> b!1403238 m!1291903))

(declare-fun m!1291905 () Bool)

(assert (=> b!1403235 m!1291905))

(assert (=> b!1403235 m!1291905))

(declare-fun m!1291907 () Bool)

(assert (=> b!1403235 m!1291907))

(declare-fun m!1291909 () Bool)

(assert (=> b!1403239 m!1291909))

(push 1)

(assert (not b!1403233))

(assert (not b!1403236))

(assert (not b!1403239))

(assert (not b!1403234))

(assert (not b!1403235))

(assert (not b!1403238))

(assert (not b!1403232))

(assert (not start!120556))

(check-sat)

(pop 1)

