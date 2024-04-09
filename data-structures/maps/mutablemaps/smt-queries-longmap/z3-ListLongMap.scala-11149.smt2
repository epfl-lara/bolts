; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130290 () Bool)

(assert start!130290)

(declare-fun res!1046929 () Bool)

(declare-fun e!852187 () Bool)

(assert (=> start!130290 (=> (not res!1046929) (not e!852187))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130290 (= res!1046929 (validMask!0 mask!2512))))

(assert (=> start!130290 e!852187))

(assert (=> start!130290 true))

(declare-datatypes ((array!101567 0))(
  ( (array!101568 (arr!49004 (Array (_ BitVec 32) (_ BitVec 64))) (size!49555 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101567)

(declare-fun array_inv!37949 (array!101567) Bool)

(assert (=> start!130290 (array_inv!37949 a!2804)))

(declare-fun b!1529081 () Bool)

(declare-fun res!1046936 () Bool)

(assert (=> b!1529081 (=> (not res!1046936) (not e!852187))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529081 (= res!1046936 (validKeyInArray!0 (select (arr!49004 a!2804) j!70)))))

(declare-fun b!1529082 () Bool)

(declare-fun e!852191 () Bool)

(assert (=> b!1529082 (= e!852187 e!852191)))

(declare-fun res!1046934 () Bool)

(assert (=> b!1529082 (=> (not res!1046934) (not e!852191))))

(declare-datatypes ((SeekEntryResult!13190 0))(
  ( (MissingZero!13190 (index!55154 (_ BitVec 32))) (Found!13190 (index!55155 (_ BitVec 32))) (Intermediate!13190 (undefined!14002 Bool) (index!55156 (_ BitVec 32)) (x!136848 (_ BitVec 32))) (Undefined!13190) (MissingVacant!13190 (index!55157 (_ BitVec 32))) )
))
(declare-fun lt!662278 () SeekEntryResult!13190)

(declare-fun lt!662281 () SeekEntryResult!13190)

(assert (=> b!1529082 (= res!1046934 (= lt!662278 lt!662281))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529082 (= lt!662281 (Intermediate!13190 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101567 (_ BitVec 32)) SeekEntryResult!13190)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529082 (= lt!662278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49004 a!2804) j!70) mask!2512) (select (arr!49004 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529083 () Bool)

(declare-fun res!1046926 () Bool)

(assert (=> b!1529083 (=> (not res!1046926) (not e!852187))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529083 (= res!1046926 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49555 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49555 a!2804))))))

(declare-fun b!1529084 () Bool)

(declare-fun res!1046931 () Bool)

(assert (=> b!1529084 (=> (not res!1046931) (not e!852191))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529084 (= res!1046931 (= lt!662278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49004 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49004 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101568 (store (arr!49004 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49555 a!2804)) mask!2512)))))

(declare-fun b!1529085 () Bool)

(declare-fun e!852190 () Bool)

(assert (=> b!1529085 (= e!852190 true)))

(declare-fun lt!662279 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529085 (= lt!662279 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529086 () Bool)

(declare-fun res!1046927 () Bool)

(assert (=> b!1529086 (=> (not res!1046927) (not e!852191))))

(assert (=> b!1529086 (= res!1046927 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49004 a!2804) j!70) a!2804 mask!2512) lt!662281))))

(declare-fun b!1529087 () Bool)

(declare-fun res!1046930 () Bool)

(assert (=> b!1529087 (=> (not res!1046930) (not e!852187))))

(assert (=> b!1529087 (= res!1046930 (validKeyInArray!0 (select (arr!49004 a!2804) i!961)))))

(declare-fun b!1529088 () Bool)

(declare-fun res!1046937 () Bool)

(assert (=> b!1529088 (=> (not res!1046937) (not e!852187))))

(declare-datatypes ((List!35667 0))(
  ( (Nil!35664) (Cons!35663 (h!37100 (_ BitVec 64)) (t!50368 List!35667)) )
))
(declare-fun arrayNoDuplicates!0 (array!101567 (_ BitVec 32) List!35667) Bool)

(assert (=> b!1529088 (= res!1046937 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35664))))

(declare-fun b!1529089 () Bool)

(declare-fun res!1046928 () Bool)

(assert (=> b!1529089 (=> (not res!1046928) (not e!852187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101567 (_ BitVec 32)) Bool)

(assert (=> b!1529089 (= res!1046928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529090 () Bool)

(assert (=> b!1529090 (= e!852191 (not e!852190))))

(declare-fun res!1046932 () Bool)

(assert (=> b!1529090 (=> res!1046932 e!852190)))

(assert (=> b!1529090 (= res!1046932 (or (not (= (select (arr!49004 a!2804) j!70) (select (store (arr!49004 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852188 () Bool)

(assert (=> b!1529090 e!852188))

(declare-fun res!1046935 () Bool)

(assert (=> b!1529090 (=> (not res!1046935) (not e!852188))))

(assert (=> b!1529090 (= res!1046935 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51120 0))(
  ( (Unit!51121) )
))
(declare-fun lt!662280 () Unit!51120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101567 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51120)

(assert (=> b!1529090 (= lt!662280 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529091 () Bool)

(declare-fun res!1046933 () Bool)

(assert (=> b!1529091 (=> (not res!1046933) (not e!852187))))

(assert (=> b!1529091 (= res!1046933 (and (= (size!49555 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49555 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49555 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529092 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101567 (_ BitVec 32)) SeekEntryResult!13190)

(assert (=> b!1529092 (= e!852188 (= (seekEntry!0 (select (arr!49004 a!2804) j!70) a!2804 mask!2512) (Found!13190 j!70)))))

(assert (= (and start!130290 res!1046929) b!1529091))

(assert (= (and b!1529091 res!1046933) b!1529087))

(assert (= (and b!1529087 res!1046930) b!1529081))

(assert (= (and b!1529081 res!1046936) b!1529089))

(assert (= (and b!1529089 res!1046928) b!1529088))

(assert (= (and b!1529088 res!1046937) b!1529083))

(assert (= (and b!1529083 res!1046926) b!1529082))

(assert (= (and b!1529082 res!1046934) b!1529086))

(assert (= (and b!1529086 res!1046927) b!1529084))

(assert (= (and b!1529084 res!1046931) b!1529090))

(assert (= (and b!1529090 res!1046935) b!1529092))

(assert (= (and b!1529090 (not res!1046932)) b!1529085))

(declare-fun m!1412063 () Bool)

(assert (=> b!1529092 m!1412063))

(assert (=> b!1529092 m!1412063))

(declare-fun m!1412065 () Bool)

(assert (=> b!1529092 m!1412065))

(declare-fun m!1412067 () Bool)

(assert (=> b!1529085 m!1412067))

(declare-fun m!1412069 () Bool)

(assert (=> b!1529084 m!1412069))

(declare-fun m!1412071 () Bool)

(assert (=> b!1529084 m!1412071))

(assert (=> b!1529084 m!1412071))

(declare-fun m!1412073 () Bool)

(assert (=> b!1529084 m!1412073))

(assert (=> b!1529084 m!1412073))

(assert (=> b!1529084 m!1412071))

(declare-fun m!1412075 () Bool)

(assert (=> b!1529084 m!1412075))

(assert (=> b!1529082 m!1412063))

(assert (=> b!1529082 m!1412063))

(declare-fun m!1412077 () Bool)

(assert (=> b!1529082 m!1412077))

(assert (=> b!1529082 m!1412077))

(assert (=> b!1529082 m!1412063))

(declare-fun m!1412079 () Bool)

(assert (=> b!1529082 m!1412079))

(declare-fun m!1412081 () Bool)

(assert (=> b!1529088 m!1412081))

(assert (=> b!1529090 m!1412063))

(declare-fun m!1412083 () Bool)

(assert (=> b!1529090 m!1412083))

(assert (=> b!1529090 m!1412069))

(assert (=> b!1529090 m!1412071))

(declare-fun m!1412085 () Bool)

(assert (=> b!1529090 m!1412085))

(declare-fun m!1412087 () Bool)

(assert (=> start!130290 m!1412087))

(declare-fun m!1412089 () Bool)

(assert (=> start!130290 m!1412089))

(assert (=> b!1529086 m!1412063))

(assert (=> b!1529086 m!1412063))

(declare-fun m!1412091 () Bool)

(assert (=> b!1529086 m!1412091))

(declare-fun m!1412093 () Bool)

(assert (=> b!1529087 m!1412093))

(assert (=> b!1529087 m!1412093))

(declare-fun m!1412095 () Bool)

(assert (=> b!1529087 m!1412095))

(declare-fun m!1412097 () Bool)

(assert (=> b!1529089 m!1412097))

(assert (=> b!1529081 m!1412063))

(assert (=> b!1529081 m!1412063))

(declare-fun m!1412099 () Bool)

(assert (=> b!1529081 m!1412099))

(check-sat (not start!130290) (not b!1529092) (not b!1529084) (not b!1529088) (not b!1529087) (not b!1529089) (not b!1529081) (not b!1529082) (not b!1529086) (not b!1529090) (not b!1529085))
(check-sat)
