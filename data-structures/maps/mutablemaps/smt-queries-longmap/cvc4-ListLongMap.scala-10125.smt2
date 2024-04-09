; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119396 () Bool)

(assert start!119396)

(declare-fun b!1391350 () Bool)

(declare-fun e!787921 () Bool)

(assert (=> b!1391350 (= e!787921 (not true))))

(declare-fun e!787922 () Bool)

(assert (=> b!1391350 e!787922))

(declare-fun res!931332 () Bool)

(assert (=> b!1391350 (=> (not res!931332) (not e!787922))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95149 0))(
  ( (array!95150 (arr!45933 (Array (_ BitVec 32) (_ BitVec 64))) (size!46484 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95149)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95149 (_ BitVec 32)) Bool)

(assert (=> b!1391350 (= res!931332 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46498 0))(
  ( (Unit!46499) )
))
(declare-fun lt!611142 () Unit!46498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46498)

(assert (=> b!1391350 (= lt!611142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10272 0))(
  ( (MissingZero!10272 (index!43458 (_ BitVec 32))) (Found!10272 (index!43459 (_ BitVec 32))) (Intermediate!10272 (undefined!11084 Bool) (index!43460 (_ BitVec 32)) (x!125141 (_ BitVec 32))) (Undefined!10272) (MissingVacant!10272 (index!43461 (_ BitVec 32))) )
))
(declare-fun lt!611143 () SeekEntryResult!10272)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95149 (_ BitVec 32)) SeekEntryResult!10272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391350 (= lt!611143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45933 a!2901) j!112) mask!2840) (select (arr!45933 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391351 () Bool)

(declare-fun res!931330 () Bool)

(assert (=> b!1391351 (=> (not res!931330) (not e!787921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391351 (= res!931330 (validKeyInArray!0 (select (arr!45933 a!2901) j!112)))))

(declare-fun b!1391352 () Bool)

(declare-fun res!931329 () Bool)

(assert (=> b!1391352 (=> (not res!931329) (not e!787921))))

(declare-datatypes ((List!32632 0))(
  ( (Nil!32629) (Cons!32628 (h!33852 (_ BitVec 64)) (t!47333 List!32632)) )
))
(declare-fun arrayNoDuplicates!0 (array!95149 (_ BitVec 32) List!32632) Bool)

(assert (=> b!1391352 (= res!931329 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32629))))

(declare-fun b!1391353 () Bool)

(declare-fun res!931328 () Bool)

(assert (=> b!1391353 (=> (not res!931328) (not e!787921))))

(assert (=> b!1391353 (= res!931328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391354 () Bool)

(declare-fun res!931327 () Bool)

(assert (=> b!1391354 (=> (not res!931327) (not e!787921))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391354 (= res!931327 (and (= (size!46484 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46484 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46484 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391355 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95149 (_ BitVec 32)) SeekEntryResult!10272)

(assert (=> b!1391355 (= e!787922 (= (seekEntryOrOpen!0 (select (arr!45933 a!2901) j!112) a!2901 mask!2840) (Found!10272 j!112)))))

(declare-fun b!1391356 () Bool)

(declare-fun res!931326 () Bool)

(assert (=> b!1391356 (=> (not res!931326) (not e!787921))))

(assert (=> b!1391356 (= res!931326 (validKeyInArray!0 (select (arr!45933 a!2901) i!1037)))))

(declare-fun res!931331 () Bool)

(assert (=> start!119396 (=> (not res!931331) (not e!787921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119396 (= res!931331 (validMask!0 mask!2840))))

(assert (=> start!119396 e!787921))

(assert (=> start!119396 true))

(declare-fun array_inv!34878 (array!95149) Bool)

(assert (=> start!119396 (array_inv!34878 a!2901)))

(assert (= (and start!119396 res!931331) b!1391354))

(assert (= (and b!1391354 res!931327) b!1391356))

(assert (= (and b!1391356 res!931326) b!1391351))

(assert (= (and b!1391351 res!931330) b!1391353))

(assert (= (and b!1391353 res!931328) b!1391352))

(assert (= (and b!1391352 res!931329) b!1391350))

(assert (= (and b!1391350 res!931332) b!1391355))

(declare-fun m!1277187 () Bool)

(assert (=> b!1391350 m!1277187))

(declare-fun m!1277189 () Bool)

(assert (=> b!1391350 m!1277189))

(assert (=> b!1391350 m!1277187))

(declare-fun m!1277191 () Bool)

(assert (=> b!1391350 m!1277191))

(assert (=> b!1391350 m!1277189))

(assert (=> b!1391350 m!1277187))

(declare-fun m!1277193 () Bool)

(assert (=> b!1391350 m!1277193))

(declare-fun m!1277195 () Bool)

(assert (=> b!1391350 m!1277195))

(assert (=> b!1391355 m!1277187))

(assert (=> b!1391355 m!1277187))

(declare-fun m!1277197 () Bool)

(assert (=> b!1391355 m!1277197))

(declare-fun m!1277199 () Bool)

(assert (=> start!119396 m!1277199))

(declare-fun m!1277201 () Bool)

(assert (=> start!119396 m!1277201))

(assert (=> b!1391351 m!1277187))

(assert (=> b!1391351 m!1277187))

(declare-fun m!1277203 () Bool)

(assert (=> b!1391351 m!1277203))

(declare-fun m!1277205 () Bool)

(assert (=> b!1391352 m!1277205))

(declare-fun m!1277207 () Bool)

(assert (=> b!1391353 m!1277207))

(declare-fun m!1277209 () Bool)

(assert (=> b!1391356 m!1277209))

(assert (=> b!1391356 m!1277209))

(declare-fun m!1277211 () Bool)

(assert (=> b!1391356 m!1277211))

(push 1)

(assert (not start!119396))

(assert (not b!1391350))

(assert (not b!1391353))

(assert (not b!1391351))

(assert (not b!1391352))

(assert (not b!1391356))

(assert (not b!1391355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

