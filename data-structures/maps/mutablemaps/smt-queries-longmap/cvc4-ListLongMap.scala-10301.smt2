; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121172 () Bool)

(assert start!121172)

(declare-fun b!1408344 () Bool)

(declare-fun res!946181 () Bool)

(declare-fun e!797074 () Bool)

(assert (=> b!1408344 (=> (not res!946181) (not e!797074))))

(declare-datatypes ((array!96244 0))(
  ( (array!96245 (arr!46461 (Array (_ BitVec 32) (_ BitVec 64))) (size!47012 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96244)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408344 (= res!946181 (validKeyInArray!0 (select (arr!46461 a!2901) i!1037)))))

(declare-fun b!1408345 () Bool)

(declare-fun e!797073 () Bool)

(assert (=> b!1408345 (= e!797073 true)))

(declare-datatypes ((SeekEntryResult!10794 0))(
  ( (MissingZero!10794 (index!45552 (_ BitVec 32))) (Found!10794 (index!45553 (_ BitVec 32))) (Intermediate!10794 (undefined!11606 Bool) (index!45554 (_ BitVec 32)) (x!127158 (_ BitVec 32))) (Undefined!10794) (MissingVacant!10794 (index!45555 (_ BitVec 32))) )
))
(declare-fun lt!620282 () SeekEntryResult!10794)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96244 (_ BitVec 32)) SeekEntryResult!10794)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408345 (= lt!620282 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46461 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46461 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96245 (store (arr!46461 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47012 a!2901)) mask!2840))))

(declare-fun b!1408346 () Bool)

(declare-fun res!946177 () Bool)

(assert (=> b!1408346 (=> (not res!946177) (not e!797074))))

(declare-datatypes ((List!33160 0))(
  ( (Nil!33157) (Cons!33156 (h!34419 (_ BitVec 64)) (t!47861 List!33160)) )
))
(declare-fun arrayNoDuplicates!0 (array!96244 (_ BitVec 32) List!33160) Bool)

(assert (=> b!1408346 (= res!946177 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33157))))

(declare-fun b!1408347 () Bool)

(declare-fun res!946176 () Bool)

(assert (=> b!1408347 (=> (not res!946176) (not e!797074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96244 (_ BitVec 32)) Bool)

(assert (=> b!1408347 (= res!946176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408348 () Bool)

(declare-fun res!946178 () Bool)

(assert (=> b!1408348 (=> (not res!946178) (not e!797074))))

(assert (=> b!1408348 (= res!946178 (and (= (size!47012 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47012 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47012 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!946182 () Bool)

(assert (=> start!121172 (=> (not res!946182) (not e!797074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121172 (= res!946182 (validMask!0 mask!2840))))

(assert (=> start!121172 e!797074))

(assert (=> start!121172 true))

(declare-fun array_inv!35406 (array!96244) Bool)

(assert (=> start!121172 (array_inv!35406 a!2901)))

(declare-fun b!1408349 () Bool)

(assert (=> b!1408349 (= e!797074 (not e!797073))))

(declare-fun res!946179 () Bool)

(assert (=> b!1408349 (=> res!946179 e!797073)))

(declare-fun lt!620283 () SeekEntryResult!10794)

(assert (=> b!1408349 (= res!946179 (or (not (is-Intermediate!10794 lt!620283)) (undefined!11606 lt!620283)))))

(declare-fun e!797075 () Bool)

(assert (=> b!1408349 e!797075))

(declare-fun res!946175 () Bool)

(assert (=> b!1408349 (=> (not res!946175) (not e!797075))))

(assert (=> b!1408349 (= res!946175 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47512 0))(
  ( (Unit!47513) )
))
(declare-fun lt!620284 () Unit!47512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96244 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47512)

(assert (=> b!1408349 (= lt!620284 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408349 (= lt!620283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46461 a!2901) j!112) mask!2840) (select (arr!46461 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408350 () Bool)

(declare-fun res!946180 () Bool)

(assert (=> b!1408350 (=> (not res!946180) (not e!797074))))

(assert (=> b!1408350 (= res!946180 (validKeyInArray!0 (select (arr!46461 a!2901) j!112)))))

(declare-fun b!1408351 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96244 (_ BitVec 32)) SeekEntryResult!10794)

(assert (=> b!1408351 (= e!797075 (= (seekEntryOrOpen!0 (select (arr!46461 a!2901) j!112) a!2901 mask!2840) (Found!10794 j!112)))))

(assert (= (and start!121172 res!946182) b!1408348))

(assert (= (and b!1408348 res!946178) b!1408344))

(assert (= (and b!1408344 res!946181) b!1408350))

(assert (= (and b!1408350 res!946180) b!1408347))

(assert (= (and b!1408347 res!946176) b!1408346))

(assert (= (and b!1408346 res!946177) b!1408349))

(assert (= (and b!1408349 res!946175) b!1408351))

(assert (= (and b!1408349 (not res!946179)) b!1408345))

(declare-fun m!1297699 () Bool)

(assert (=> b!1408345 m!1297699))

(declare-fun m!1297701 () Bool)

(assert (=> b!1408345 m!1297701))

(assert (=> b!1408345 m!1297701))

(declare-fun m!1297703 () Bool)

(assert (=> b!1408345 m!1297703))

(assert (=> b!1408345 m!1297703))

(assert (=> b!1408345 m!1297701))

(declare-fun m!1297705 () Bool)

(assert (=> b!1408345 m!1297705))

(declare-fun m!1297707 () Bool)

(assert (=> start!121172 m!1297707))

(declare-fun m!1297709 () Bool)

(assert (=> start!121172 m!1297709))

(declare-fun m!1297711 () Bool)

(assert (=> b!1408349 m!1297711))

(declare-fun m!1297713 () Bool)

(assert (=> b!1408349 m!1297713))

(assert (=> b!1408349 m!1297711))

(declare-fun m!1297715 () Bool)

(assert (=> b!1408349 m!1297715))

(assert (=> b!1408349 m!1297713))

(assert (=> b!1408349 m!1297711))

(declare-fun m!1297717 () Bool)

(assert (=> b!1408349 m!1297717))

(declare-fun m!1297719 () Bool)

(assert (=> b!1408349 m!1297719))

(assert (=> b!1408350 m!1297711))

(assert (=> b!1408350 m!1297711))

(declare-fun m!1297721 () Bool)

(assert (=> b!1408350 m!1297721))

(assert (=> b!1408351 m!1297711))

(assert (=> b!1408351 m!1297711))

(declare-fun m!1297723 () Bool)

(assert (=> b!1408351 m!1297723))

(declare-fun m!1297725 () Bool)

(assert (=> b!1408346 m!1297725))

(declare-fun m!1297727 () Bool)

(assert (=> b!1408347 m!1297727))

(declare-fun m!1297729 () Bool)

(assert (=> b!1408344 m!1297729))

(assert (=> b!1408344 m!1297729))

(declare-fun m!1297731 () Bool)

(assert (=> b!1408344 m!1297731))

(push 1)

(assert (not start!121172))

(assert (not b!1408345))

(assert (not b!1408351))

(assert (not b!1408346))

(assert (not b!1408347))

(assert (not b!1408344))

(assert (not b!1408350))

(assert (not b!1408349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

