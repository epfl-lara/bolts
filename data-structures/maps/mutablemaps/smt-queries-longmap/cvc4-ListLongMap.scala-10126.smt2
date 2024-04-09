; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119402 () Bool)

(assert start!119402)

(declare-fun b!1391413 () Bool)

(declare-fun res!931389 () Bool)

(declare-fun e!787949 () Bool)

(assert (=> b!1391413 (=> (not res!931389) (not e!787949))))

(declare-datatypes ((array!95155 0))(
  ( (array!95156 (arr!45936 (Array (_ BitVec 32) (_ BitVec 64))) (size!46487 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95155)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391413 (= res!931389 (validKeyInArray!0 (select (arr!45936 a!2901) i!1037)))))

(declare-fun res!931394 () Bool)

(assert (=> start!119402 (=> (not res!931394) (not e!787949))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119402 (= res!931394 (validMask!0 mask!2840))))

(assert (=> start!119402 e!787949))

(assert (=> start!119402 true))

(declare-fun array_inv!34881 (array!95155) Bool)

(assert (=> start!119402 (array_inv!34881 a!2901)))

(declare-fun b!1391414 () Bool)

(declare-fun res!931395 () Bool)

(assert (=> b!1391414 (=> (not res!931395) (not e!787949))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1391414 (= res!931395 (validKeyInArray!0 (select (arr!45936 a!2901) j!112)))))

(declare-fun b!1391415 () Bool)

(declare-fun e!787948 () Bool)

(declare-datatypes ((SeekEntryResult!10275 0))(
  ( (MissingZero!10275 (index!43470 (_ BitVec 32))) (Found!10275 (index!43471 (_ BitVec 32))) (Intermediate!10275 (undefined!11087 Bool) (index!43472 (_ BitVec 32)) (x!125152 (_ BitVec 32))) (Undefined!10275) (MissingVacant!10275 (index!43473 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95155 (_ BitVec 32)) SeekEntryResult!10275)

(assert (=> b!1391415 (= e!787948 (= (seekEntryOrOpen!0 (select (arr!45936 a!2901) j!112) a!2901 mask!2840) (Found!10275 j!112)))))

(declare-fun b!1391416 () Bool)

(declare-fun res!931390 () Bool)

(assert (=> b!1391416 (=> (not res!931390) (not e!787949))))

(declare-datatypes ((List!32635 0))(
  ( (Nil!32632) (Cons!32631 (h!33855 (_ BitVec 64)) (t!47336 List!32635)) )
))
(declare-fun arrayNoDuplicates!0 (array!95155 (_ BitVec 32) List!32635) Bool)

(assert (=> b!1391416 (= res!931390 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32632))))

(declare-fun b!1391417 () Bool)

(declare-fun res!931393 () Bool)

(assert (=> b!1391417 (=> (not res!931393) (not e!787949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95155 (_ BitVec 32)) Bool)

(assert (=> b!1391417 (= res!931393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391418 () Bool)

(declare-fun res!931391 () Bool)

(assert (=> b!1391418 (=> (not res!931391) (not e!787949))))

(assert (=> b!1391418 (= res!931391 (and (= (size!46487 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46487 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46487 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391419 () Bool)

(declare-fun lt!611160 () SeekEntryResult!10275)

(assert (=> b!1391419 (= e!787949 (not (or (not (is-Intermediate!10275 lt!611160)) (undefined!11087 lt!611160) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(assert (=> b!1391419 e!787948))

(declare-fun res!931392 () Bool)

(assert (=> b!1391419 (=> (not res!931392) (not e!787948))))

(assert (=> b!1391419 (= res!931392 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46504 0))(
  ( (Unit!46505) )
))
(declare-fun lt!611161 () Unit!46504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46504)

(assert (=> b!1391419 (= lt!611161 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95155 (_ BitVec 32)) SeekEntryResult!10275)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391419 (= lt!611160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45936 a!2901) j!112) mask!2840) (select (arr!45936 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119402 res!931394) b!1391418))

(assert (= (and b!1391418 res!931391) b!1391413))

(assert (= (and b!1391413 res!931389) b!1391414))

(assert (= (and b!1391414 res!931395) b!1391417))

(assert (= (and b!1391417 res!931393) b!1391416))

(assert (= (and b!1391416 res!931390) b!1391419))

(assert (= (and b!1391419 res!931392) b!1391415))

(declare-fun m!1277265 () Bool)

(assert (=> b!1391414 m!1277265))

(assert (=> b!1391414 m!1277265))

(declare-fun m!1277267 () Bool)

(assert (=> b!1391414 m!1277267))

(assert (=> b!1391415 m!1277265))

(assert (=> b!1391415 m!1277265))

(declare-fun m!1277269 () Bool)

(assert (=> b!1391415 m!1277269))

(assert (=> b!1391419 m!1277265))

(declare-fun m!1277271 () Bool)

(assert (=> b!1391419 m!1277271))

(assert (=> b!1391419 m!1277265))

(declare-fun m!1277273 () Bool)

(assert (=> b!1391419 m!1277273))

(assert (=> b!1391419 m!1277271))

(assert (=> b!1391419 m!1277265))

(declare-fun m!1277275 () Bool)

(assert (=> b!1391419 m!1277275))

(declare-fun m!1277277 () Bool)

(assert (=> b!1391419 m!1277277))

(declare-fun m!1277279 () Bool)

(assert (=> start!119402 m!1277279))

(declare-fun m!1277281 () Bool)

(assert (=> start!119402 m!1277281))

(declare-fun m!1277283 () Bool)

(assert (=> b!1391413 m!1277283))

(assert (=> b!1391413 m!1277283))

(declare-fun m!1277285 () Bool)

(assert (=> b!1391413 m!1277285))

(declare-fun m!1277287 () Bool)

(assert (=> b!1391416 m!1277287))

(declare-fun m!1277289 () Bool)

(assert (=> b!1391417 m!1277289))

(push 1)

(assert (not b!1391416))

(assert (not b!1391413))

(assert (not b!1391414))

(assert (not start!119402))

(assert (not b!1391417))

(assert (not b!1391419))

(assert (not b!1391415))

