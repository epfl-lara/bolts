; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120830 () Bool)

(assert start!120830)

(declare-fun b!1405366 () Bool)

(declare-fun res!943694 () Bool)

(declare-fun e!795545 () Bool)

(assert (=> b!1405366 (=> (not res!943694) (not e!795545))))

(declare-datatypes ((array!96055 0))(
  ( (array!96056 (arr!46371 (Array (_ BitVec 32) (_ BitVec 64))) (size!46922 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96055)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96055 (_ BitVec 32)) Bool)

(assert (=> b!1405366 (= res!943694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405367 () Bool)

(declare-fun res!943698 () Bool)

(assert (=> b!1405367 (=> (not res!943698) (not e!795545))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405367 (= res!943698 (and (= (size!46922 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46922 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46922 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405368 () Bool)

(declare-fun res!943695 () Bool)

(assert (=> b!1405368 (=> (not res!943695) (not e!795545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405368 (= res!943695 (validKeyInArray!0 (select (arr!46371 a!2901) i!1037)))))

(declare-fun res!943692 () Bool)

(assert (=> start!120830 (=> (not res!943692) (not e!795545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120830 (= res!943692 (validMask!0 mask!2840))))

(assert (=> start!120830 e!795545))

(assert (=> start!120830 true))

(declare-fun array_inv!35316 (array!96055) Bool)

(assert (=> start!120830 (array_inv!35316 a!2901)))

(declare-fun b!1405369 () Bool)

(assert (=> b!1405369 (= e!795545 (not true))))

(declare-fun e!795544 () Bool)

(assert (=> b!1405369 e!795544))

(declare-fun res!943693 () Bool)

(assert (=> b!1405369 (=> (not res!943693) (not e!795544))))

(assert (=> b!1405369 (= res!943693 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47332 0))(
  ( (Unit!47333) )
))
(declare-fun lt!618970 () Unit!47332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47332)

(assert (=> b!1405369 (= lt!618970 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10704 0))(
  ( (MissingZero!10704 (index!45192 (_ BitVec 32))) (Found!10704 (index!45193 (_ BitVec 32))) (Intermediate!10704 (undefined!11516 Bool) (index!45194 (_ BitVec 32)) (x!126810 (_ BitVec 32))) (Undefined!10704) (MissingVacant!10704 (index!45195 (_ BitVec 32))) )
))
(declare-fun lt!618969 () SeekEntryResult!10704)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96055 (_ BitVec 32)) SeekEntryResult!10704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405369 (= lt!618969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46371 a!2901) j!112) mask!2840) (select (arr!46371 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405370 () Bool)

(declare-fun res!943696 () Bool)

(assert (=> b!1405370 (=> (not res!943696) (not e!795545))))

(declare-datatypes ((List!33070 0))(
  ( (Nil!33067) (Cons!33066 (h!34320 (_ BitVec 64)) (t!47771 List!33070)) )
))
(declare-fun arrayNoDuplicates!0 (array!96055 (_ BitVec 32) List!33070) Bool)

(assert (=> b!1405370 (= res!943696 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33067))))

(declare-fun b!1405371 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96055 (_ BitVec 32)) SeekEntryResult!10704)

(assert (=> b!1405371 (= e!795544 (= (seekEntryOrOpen!0 (select (arr!46371 a!2901) j!112) a!2901 mask!2840) (Found!10704 j!112)))))

(declare-fun b!1405372 () Bool)

(declare-fun res!943697 () Bool)

(assert (=> b!1405372 (=> (not res!943697) (not e!795545))))

(assert (=> b!1405372 (= res!943697 (validKeyInArray!0 (select (arr!46371 a!2901) j!112)))))

(assert (= (and start!120830 res!943692) b!1405367))

(assert (= (and b!1405367 res!943698) b!1405368))

(assert (= (and b!1405368 res!943695) b!1405372))

(assert (= (and b!1405372 res!943697) b!1405366))

(assert (= (and b!1405366 res!943694) b!1405370))

(assert (= (and b!1405370 res!943696) b!1405369))

(assert (= (and b!1405369 res!943693) b!1405371))

(declare-fun m!1294209 () Bool)

(assert (=> start!120830 m!1294209))

(declare-fun m!1294211 () Bool)

(assert (=> start!120830 m!1294211))

(declare-fun m!1294213 () Bool)

(assert (=> b!1405368 m!1294213))

(assert (=> b!1405368 m!1294213))

(declare-fun m!1294215 () Bool)

(assert (=> b!1405368 m!1294215))

(declare-fun m!1294217 () Bool)

(assert (=> b!1405369 m!1294217))

(declare-fun m!1294219 () Bool)

(assert (=> b!1405369 m!1294219))

(assert (=> b!1405369 m!1294217))

(declare-fun m!1294221 () Bool)

(assert (=> b!1405369 m!1294221))

(assert (=> b!1405369 m!1294219))

(assert (=> b!1405369 m!1294217))

(declare-fun m!1294223 () Bool)

(assert (=> b!1405369 m!1294223))

(declare-fun m!1294225 () Bool)

(assert (=> b!1405369 m!1294225))

(declare-fun m!1294227 () Bool)

(assert (=> b!1405366 m!1294227))

(assert (=> b!1405372 m!1294217))

(assert (=> b!1405372 m!1294217))

(declare-fun m!1294229 () Bool)

(assert (=> b!1405372 m!1294229))

(assert (=> b!1405371 m!1294217))

(assert (=> b!1405371 m!1294217))

(declare-fun m!1294231 () Bool)

(assert (=> b!1405371 m!1294231))

(declare-fun m!1294233 () Bool)

(assert (=> b!1405370 m!1294233))

(push 1)

(assert (not b!1405366))

(assert (not b!1405371))

(assert (not b!1405369))

(assert (not b!1405370))

(assert (not start!120830))

(assert (not b!1405368))

(assert (not b!1405372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

