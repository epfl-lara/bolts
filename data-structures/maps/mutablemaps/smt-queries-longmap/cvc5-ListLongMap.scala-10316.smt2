; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121258 () Bool)

(assert start!121258)

(declare-fun b!1409376 () Bool)

(declare-fun e!797589 () Bool)

(assert (=> b!1409376 (= e!797589 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96330 0))(
  ( (array!96331 (arr!46504 (Array (_ BitVec 32) (_ BitVec 64))) (size!47055 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96330)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10837 0))(
  ( (MissingZero!10837 (index!45724 (_ BitVec 32))) (Found!10837 (index!45725 (_ BitVec 32))) (Intermediate!10837 (undefined!11649 Bool) (index!45726 (_ BitVec 32)) (x!127321 (_ BitVec 32))) (Undefined!10837) (MissingVacant!10837 (index!45727 (_ BitVec 32))) )
))
(declare-fun lt!620670 () SeekEntryResult!10837)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96330 (_ BitVec 32)) SeekEntryResult!10837)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409376 (= lt!620670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46504 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46504 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96331 (store (arr!46504 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47055 a!2901)) mask!2840))))

(declare-fun b!1409377 () Bool)

(declare-fun res!947210 () Bool)

(declare-fun e!797590 () Bool)

(assert (=> b!1409377 (=> (not res!947210) (not e!797590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96330 (_ BitVec 32)) Bool)

(assert (=> b!1409377 (= res!947210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!947211 () Bool)

(assert (=> start!121258 (=> (not res!947211) (not e!797590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121258 (= res!947211 (validMask!0 mask!2840))))

(assert (=> start!121258 e!797590))

(assert (=> start!121258 true))

(declare-fun array_inv!35449 (array!96330) Bool)

(assert (=> start!121258 (array_inv!35449 a!2901)))

(declare-fun b!1409378 () Bool)

(declare-fun res!947213 () Bool)

(assert (=> b!1409378 (=> (not res!947213) (not e!797590))))

(declare-datatypes ((List!33203 0))(
  ( (Nil!33200) (Cons!33199 (h!34462 (_ BitVec 64)) (t!47904 List!33203)) )
))
(declare-fun arrayNoDuplicates!0 (array!96330 (_ BitVec 32) List!33203) Bool)

(assert (=> b!1409378 (= res!947213 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33200))))

(declare-fun b!1409379 () Bool)

(declare-fun res!947208 () Bool)

(assert (=> b!1409379 (=> (not res!947208) (not e!797590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409379 (= res!947208 (validKeyInArray!0 (select (arr!46504 a!2901) j!112)))))

(declare-fun b!1409380 () Bool)

(declare-fun res!947214 () Bool)

(assert (=> b!1409380 (=> (not res!947214) (not e!797590))))

(assert (=> b!1409380 (= res!947214 (validKeyInArray!0 (select (arr!46504 a!2901) i!1037)))))

(declare-fun b!1409381 () Bool)

(assert (=> b!1409381 (= e!797590 (not e!797589))))

(declare-fun res!947212 () Bool)

(assert (=> b!1409381 (=> res!947212 e!797589)))

(declare-fun lt!620671 () SeekEntryResult!10837)

(assert (=> b!1409381 (= res!947212 (or (not (is-Intermediate!10837 lt!620671)) (undefined!11649 lt!620671)))))

(declare-fun e!797591 () Bool)

(assert (=> b!1409381 e!797591))

(declare-fun res!947207 () Bool)

(assert (=> b!1409381 (=> (not res!947207) (not e!797591))))

(assert (=> b!1409381 (= res!947207 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47598 0))(
  ( (Unit!47599) )
))
(declare-fun lt!620669 () Unit!47598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47598)

(assert (=> b!1409381 (= lt!620669 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409381 (= lt!620671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46504 a!2901) j!112) mask!2840) (select (arr!46504 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409382 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96330 (_ BitVec 32)) SeekEntryResult!10837)

(assert (=> b!1409382 (= e!797591 (= (seekEntryOrOpen!0 (select (arr!46504 a!2901) j!112) a!2901 mask!2840) (Found!10837 j!112)))))

(declare-fun b!1409383 () Bool)

(declare-fun res!947209 () Bool)

(assert (=> b!1409383 (=> (not res!947209) (not e!797590))))

(assert (=> b!1409383 (= res!947209 (and (= (size!47055 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47055 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47055 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121258 res!947211) b!1409383))

(assert (= (and b!1409383 res!947209) b!1409380))

(assert (= (and b!1409380 res!947214) b!1409379))

(assert (= (and b!1409379 res!947208) b!1409377))

(assert (= (and b!1409377 res!947210) b!1409378))

(assert (= (and b!1409378 res!947213) b!1409381))

(assert (= (and b!1409381 res!947207) b!1409382))

(assert (= (and b!1409381 (not res!947212)) b!1409376))

(declare-fun m!1299161 () Bool)

(assert (=> b!1409381 m!1299161))

(declare-fun m!1299163 () Bool)

(assert (=> b!1409381 m!1299163))

(assert (=> b!1409381 m!1299161))

(declare-fun m!1299165 () Bool)

(assert (=> b!1409381 m!1299165))

(assert (=> b!1409381 m!1299163))

(assert (=> b!1409381 m!1299161))

(declare-fun m!1299167 () Bool)

(assert (=> b!1409381 m!1299167))

(declare-fun m!1299169 () Bool)

(assert (=> b!1409381 m!1299169))

(declare-fun m!1299171 () Bool)

(assert (=> b!1409377 m!1299171))

(declare-fun m!1299173 () Bool)

(assert (=> b!1409380 m!1299173))

(assert (=> b!1409380 m!1299173))

(declare-fun m!1299175 () Bool)

(assert (=> b!1409380 m!1299175))

(declare-fun m!1299177 () Bool)

(assert (=> start!121258 m!1299177))

(declare-fun m!1299179 () Bool)

(assert (=> start!121258 m!1299179))

(declare-fun m!1299181 () Bool)

(assert (=> b!1409378 m!1299181))

(assert (=> b!1409379 m!1299161))

(assert (=> b!1409379 m!1299161))

(declare-fun m!1299183 () Bool)

(assert (=> b!1409379 m!1299183))

(declare-fun m!1299185 () Bool)

(assert (=> b!1409376 m!1299185))

(declare-fun m!1299187 () Bool)

(assert (=> b!1409376 m!1299187))

(assert (=> b!1409376 m!1299187))

(declare-fun m!1299189 () Bool)

(assert (=> b!1409376 m!1299189))

(assert (=> b!1409376 m!1299189))

(assert (=> b!1409376 m!1299187))

(declare-fun m!1299191 () Bool)

(assert (=> b!1409376 m!1299191))

(assert (=> b!1409382 m!1299161))

(assert (=> b!1409382 m!1299161))

(declare-fun m!1299193 () Bool)

(assert (=> b!1409382 m!1299193))

(push 1)

(assert (not start!121258))

(assert (not b!1409381))

(assert (not b!1409379))

(assert (not b!1409380))

(assert (not b!1409378))

(assert (not b!1409382))

(assert (not b!1409377))

(assert (not b!1409376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

