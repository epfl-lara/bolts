; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121618 () Bool)

(assert start!121618)

(declare-fun b!1412200 () Bool)

(declare-fun res!949299 () Bool)

(declare-fun e!799194 () Bool)

(assert (=> b!1412200 (=> (not res!949299) (not e!799194))))

(declare-datatypes ((array!96474 0))(
  ( (array!96475 (arr!46570 (Array (_ BitVec 32) (_ BitVec 64))) (size!47121 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96474)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412200 (= res!949299 (validKeyInArray!0 (select (arr!46570 a!2901) j!112)))))

(declare-fun b!1412201 () Bool)

(declare-fun res!949304 () Bool)

(assert (=> b!1412201 (=> (not res!949304) (not e!799194))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412201 (= res!949304 (validKeyInArray!0 (select (arr!46570 a!2901) i!1037)))))

(declare-fun b!1412202 () Bool)

(declare-fun e!799195 () Bool)

(assert (=> b!1412202 (= e!799194 (not e!799195))))

(declare-fun res!949303 () Bool)

(assert (=> b!1412202 (=> res!949303 e!799195)))

(declare-datatypes ((SeekEntryResult!10903 0))(
  ( (MissingZero!10903 (index!45991 (_ BitVec 32))) (Found!10903 (index!45992 (_ BitVec 32))) (Intermediate!10903 (undefined!11715 Bool) (index!45993 (_ BitVec 32)) (x!127593 (_ BitVec 32))) (Undefined!10903) (MissingVacant!10903 (index!45994 (_ BitVec 32))) )
))
(declare-fun lt!622165 () SeekEntryResult!10903)

(assert (=> b!1412202 (= res!949303 (or (not (is-Intermediate!10903 lt!622165)) (undefined!11715 lt!622165)))))

(declare-fun e!799196 () Bool)

(assert (=> b!1412202 e!799196))

(declare-fun res!949300 () Bool)

(assert (=> b!1412202 (=> (not res!949300) (not e!799196))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96474 (_ BitVec 32)) Bool)

(assert (=> b!1412202 (= res!949300 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47730 0))(
  ( (Unit!47731) )
))
(declare-fun lt!622167 () Unit!47730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47730)

(assert (=> b!1412202 (= lt!622167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622169 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96474 (_ BitVec 32)) SeekEntryResult!10903)

(assert (=> b!1412202 (= lt!622165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622169 (select (arr!46570 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412202 (= lt!622169 (toIndex!0 (select (arr!46570 a!2901) j!112) mask!2840))))

(declare-fun b!1412203 () Bool)

(declare-fun e!799191 () Bool)

(assert (=> b!1412203 (= e!799191 true)))

(declare-fun e!799192 () Bool)

(assert (=> b!1412203 e!799192))

(declare-fun res!949308 () Bool)

(assert (=> b!1412203 (=> (not res!949308) (not e!799192))))

(declare-fun lt!622168 () SeekEntryResult!10903)

(assert (=> b!1412203 (= res!949308 (and (not (undefined!11715 lt!622168)) (= (index!45993 lt!622168) i!1037) (bvslt (x!127593 lt!622168) (x!127593 lt!622165)) (= (select (store (arr!46570 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45993 lt!622168)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622170 () Unit!47730)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47730)

(assert (=> b!1412203 (= lt!622170 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622169 (x!127593 lt!622165) (index!45993 lt!622165) (x!127593 lt!622168) (index!45993 lt!622168) (undefined!11715 lt!622168) mask!2840))))

(declare-fun lt!622166 () array!96474)

(declare-fun lt!622171 () (_ BitVec 64))

(declare-fun b!1412204 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96474 (_ BitVec 32)) SeekEntryResult!10903)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96474 (_ BitVec 32)) SeekEntryResult!10903)

(assert (=> b!1412204 (= e!799192 (= (seekEntryOrOpen!0 lt!622171 lt!622166 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127593 lt!622168) (index!45993 lt!622168) (index!45993 lt!622168) (select (arr!46570 a!2901) j!112) lt!622166 mask!2840)))))

(declare-fun b!1412205 () Bool)

(assert (=> b!1412205 (= e!799196 (= (seekEntryOrOpen!0 (select (arr!46570 a!2901) j!112) a!2901 mask!2840) (Found!10903 j!112)))))

(declare-fun b!1412206 () Bool)

(assert (=> b!1412206 (= e!799195 e!799191)))

(declare-fun res!949307 () Bool)

(assert (=> b!1412206 (=> res!949307 e!799191)))

(assert (=> b!1412206 (= res!949307 (or (= lt!622165 lt!622168) (not (is-Intermediate!10903 lt!622168))))))

(assert (=> b!1412206 (= lt!622168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622171 mask!2840) lt!622171 lt!622166 mask!2840))))

(assert (=> b!1412206 (= lt!622171 (select (store (arr!46570 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412206 (= lt!622166 (array!96475 (store (arr!46570 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47121 a!2901)))))

(declare-fun b!1412207 () Bool)

(declare-fun res!949302 () Bool)

(assert (=> b!1412207 (=> (not res!949302) (not e!799194))))

(assert (=> b!1412207 (= res!949302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!949306 () Bool)

(assert (=> start!121618 (=> (not res!949306) (not e!799194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121618 (= res!949306 (validMask!0 mask!2840))))

(assert (=> start!121618 e!799194))

(assert (=> start!121618 true))

(declare-fun array_inv!35515 (array!96474) Bool)

(assert (=> start!121618 (array_inv!35515 a!2901)))

(declare-fun b!1412208 () Bool)

(declare-fun res!949301 () Bool)

(assert (=> b!1412208 (=> (not res!949301) (not e!799194))))

(declare-datatypes ((List!33269 0))(
  ( (Nil!33266) (Cons!33265 (h!34540 (_ BitVec 64)) (t!47970 List!33269)) )
))
(declare-fun arrayNoDuplicates!0 (array!96474 (_ BitVec 32) List!33269) Bool)

(assert (=> b!1412208 (= res!949301 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33266))))

(declare-fun b!1412209 () Bool)

(declare-fun res!949305 () Bool)

(assert (=> b!1412209 (=> (not res!949305) (not e!799194))))

(assert (=> b!1412209 (= res!949305 (and (= (size!47121 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47121 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47121 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121618 res!949306) b!1412209))

(assert (= (and b!1412209 res!949305) b!1412201))

(assert (= (and b!1412201 res!949304) b!1412200))

(assert (= (and b!1412200 res!949299) b!1412207))

(assert (= (and b!1412207 res!949302) b!1412208))

(assert (= (and b!1412208 res!949301) b!1412202))

(assert (= (and b!1412202 res!949300) b!1412205))

(assert (= (and b!1412202 (not res!949303)) b!1412206))

(assert (= (and b!1412206 (not res!949307)) b!1412203))

(assert (= (and b!1412203 res!949308) b!1412204))

(declare-fun m!1302221 () Bool)

(assert (=> b!1412204 m!1302221))

(declare-fun m!1302223 () Bool)

(assert (=> b!1412204 m!1302223))

(assert (=> b!1412204 m!1302223))

(declare-fun m!1302225 () Bool)

(assert (=> b!1412204 m!1302225))

(declare-fun m!1302227 () Bool)

(assert (=> b!1412206 m!1302227))

(assert (=> b!1412206 m!1302227))

(declare-fun m!1302229 () Bool)

(assert (=> b!1412206 m!1302229))

(declare-fun m!1302231 () Bool)

(assert (=> b!1412206 m!1302231))

(declare-fun m!1302233 () Bool)

(assert (=> b!1412206 m!1302233))

(declare-fun m!1302235 () Bool)

(assert (=> b!1412201 m!1302235))

(assert (=> b!1412201 m!1302235))

(declare-fun m!1302237 () Bool)

(assert (=> b!1412201 m!1302237))

(assert (=> b!1412203 m!1302231))

(declare-fun m!1302239 () Bool)

(assert (=> b!1412203 m!1302239))

(declare-fun m!1302241 () Bool)

(assert (=> b!1412203 m!1302241))

(declare-fun m!1302243 () Bool)

(assert (=> b!1412207 m!1302243))

(assert (=> b!1412205 m!1302223))

(assert (=> b!1412205 m!1302223))

(declare-fun m!1302245 () Bool)

(assert (=> b!1412205 m!1302245))

(assert (=> b!1412202 m!1302223))

(declare-fun m!1302247 () Bool)

(assert (=> b!1412202 m!1302247))

(assert (=> b!1412202 m!1302223))

(declare-fun m!1302249 () Bool)

(assert (=> b!1412202 m!1302249))

(assert (=> b!1412202 m!1302223))

(declare-fun m!1302251 () Bool)

(assert (=> b!1412202 m!1302251))

(declare-fun m!1302253 () Bool)

(assert (=> b!1412202 m!1302253))

(declare-fun m!1302255 () Bool)

(assert (=> b!1412208 m!1302255))

(assert (=> b!1412200 m!1302223))

(assert (=> b!1412200 m!1302223))

(declare-fun m!1302257 () Bool)

(assert (=> b!1412200 m!1302257))

(declare-fun m!1302259 () Bool)

(assert (=> start!121618 m!1302259))

(declare-fun m!1302261 () Bool)

(assert (=> start!121618 m!1302261))

(push 1)

