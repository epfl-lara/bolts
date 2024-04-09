; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119214 () Bool)

(assert start!119214)

(declare-fun res!930393 () Bool)

(declare-fun e!787300 () Bool)

(assert (=> start!119214 (=> (not res!930393) (not e!787300))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119214 (= res!930393 (validMask!0 mask!2840))))

(assert (=> start!119214 e!787300))

(assert (=> start!119214 true))

(declare-datatypes ((array!95069 0))(
  ( (array!95070 (arr!45896 (Array (_ BitVec 32) (_ BitVec 64))) (size!46447 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95069)

(declare-fun array_inv!34841 (array!95069) Bool)

(assert (=> start!119214 (array_inv!34841 a!2901)))

(declare-fun b!1390117 () Bool)

(declare-fun res!930389 () Bool)

(assert (=> b!1390117 (=> (not res!930389) (not e!787300))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390117 (= res!930389 (and (= (size!46447 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46447 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46447 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390118 () Bool)

(declare-fun res!930392 () Bool)

(assert (=> b!1390118 (=> (not res!930392) (not e!787300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95069 (_ BitVec 32)) Bool)

(assert (=> b!1390118 (= res!930392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390119 () Bool)

(declare-fun res!930387 () Bool)

(assert (=> b!1390119 (=> (not res!930387) (not e!787300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390119 (= res!930387 (validKeyInArray!0 (select (arr!45896 a!2901) i!1037)))))

(declare-fun b!1390120 () Bool)

(declare-fun res!930390 () Bool)

(assert (=> b!1390120 (=> (not res!930390) (not e!787300))))

(assert (=> b!1390120 (= res!930390 (validKeyInArray!0 (select (arr!45896 a!2901) j!112)))))

(declare-fun b!1390121 () Bool)

(assert (=> b!1390121 (= e!787300 (not true))))

(declare-fun e!787299 () Bool)

(assert (=> b!1390121 e!787299))

(declare-fun res!930391 () Bool)

(assert (=> b!1390121 (=> (not res!930391) (not e!787299))))

(assert (=> b!1390121 (= res!930391 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46424 0))(
  ( (Unit!46425) )
))
(declare-fun lt!610695 () Unit!46424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46424)

(assert (=> b!1390121 (= lt!610695 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10235 0))(
  ( (MissingZero!10235 (index!43310 (_ BitVec 32))) (Found!10235 (index!43311 (_ BitVec 32))) (Intermediate!10235 (undefined!11047 Bool) (index!43312 (_ BitVec 32)) (x!124996 (_ BitVec 32))) (Undefined!10235) (MissingVacant!10235 (index!43313 (_ BitVec 32))) )
))
(declare-fun lt!610696 () SeekEntryResult!10235)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95069 (_ BitVec 32)) SeekEntryResult!10235)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390121 (= lt!610696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45896 a!2901) j!112) mask!2840) (select (arr!45896 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390122 () Bool)

(declare-fun res!930388 () Bool)

(assert (=> b!1390122 (=> (not res!930388) (not e!787300))))

(declare-datatypes ((List!32595 0))(
  ( (Nil!32592) (Cons!32591 (h!33809 (_ BitVec 64)) (t!47296 List!32595)) )
))
(declare-fun arrayNoDuplicates!0 (array!95069 (_ BitVec 32) List!32595) Bool)

(assert (=> b!1390122 (= res!930388 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32592))))

(declare-fun b!1390123 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95069 (_ BitVec 32)) SeekEntryResult!10235)

(assert (=> b!1390123 (= e!787299 (= (seekEntryOrOpen!0 (select (arr!45896 a!2901) j!112) a!2901 mask!2840) (Found!10235 j!112)))))

(assert (= (and start!119214 res!930393) b!1390117))

(assert (= (and b!1390117 res!930389) b!1390119))

(assert (= (and b!1390119 res!930387) b!1390120))

(assert (= (and b!1390120 res!930390) b!1390118))

(assert (= (and b!1390118 res!930392) b!1390122))

(assert (= (and b!1390122 res!930388) b!1390121))

(assert (= (and b!1390121 res!930391) b!1390123))

(declare-fun m!1275967 () Bool)

(assert (=> b!1390121 m!1275967))

(declare-fun m!1275969 () Bool)

(assert (=> b!1390121 m!1275969))

(assert (=> b!1390121 m!1275967))

(declare-fun m!1275971 () Bool)

(assert (=> b!1390121 m!1275971))

(assert (=> b!1390121 m!1275969))

(assert (=> b!1390121 m!1275967))

(declare-fun m!1275973 () Bool)

(assert (=> b!1390121 m!1275973))

(declare-fun m!1275975 () Bool)

(assert (=> b!1390121 m!1275975))

(declare-fun m!1275977 () Bool)

(assert (=> b!1390118 m!1275977))

(declare-fun m!1275979 () Bool)

(assert (=> start!119214 m!1275979))

(declare-fun m!1275981 () Bool)

(assert (=> start!119214 m!1275981))

(assert (=> b!1390120 m!1275967))

(assert (=> b!1390120 m!1275967))

(declare-fun m!1275983 () Bool)

(assert (=> b!1390120 m!1275983))

(assert (=> b!1390123 m!1275967))

(assert (=> b!1390123 m!1275967))

(declare-fun m!1275985 () Bool)

(assert (=> b!1390123 m!1275985))

(declare-fun m!1275987 () Bool)

(assert (=> b!1390119 m!1275987))

(assert (=> b!1390119 m!1275987))

(declare-fun m!1275989 () Bool)

(assert (=> b!1390119 m!1275989))

(declare-fun m!1275991 () Bool)

(assert (=> b!1390122 m!1275991))

(check-sat (not b!1390119) (not start!119214) (not b!1390122) (not b!1390121) (not b!1390123) (not b!1390120) (not b!1390118))
