; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121168 () Bool)

(assert start!121168)

(declare-fun b!1408296 () Bool)

(declare-fun res!946131 () Bool)

(declare-fun e!797049 () Bool)

(assert (=> b!1408296 (=> (not res!946131) (not e!797049))))

(declare-datatypes ((array!96240 0))(
  ( (array!96241 (arr!46459 (Array (_ BitVec 32) (_ BitVec 64))) (size!47010 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96240)

(declare-datatypes ((List!33158 0))(
  ( (Nil!33155) (Cons!33154 (h!34417 (_ BitVec 64)) (t!47859 List!33158)) )
))
(declare-fun arrayNoDuplicates!0 (array!96240 (_ BitVec 32) List!33158) Bool)

(assert (=> b!1408296 (= res!946131 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33155))))

(declare-fun b!1408297 () Bool)

(declare-fun res!946127 () Bool)

(assert (=> b!1408297 (=> (not res!946127) (not e!797049))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408297 (= res!946127 (validKeyInArray!0 (select (arr!46459 a!2901) i!1037)))))

(declare-fun b!1408298 () Bool)

(declare-fun res!946132 () Bool)

(assert (=> b!1408298 (=> (not res!946132) (not e!797049))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96240 (_ BitVec 32)) Bool)

(assert (=> b!1408298 (= res!946132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408299 () Bool)

(declare-fun e!797051 () Bool)

(assert (=> b!1408299 (= e!797049 (not e!797051))))

(declare-fun res!946128 () Bool)

(assert (=> b!1408299 (=> res!946128 e!797051)))

(declare-datatypes ((SeekEntryResult!10792 0))(
  ( (MissingZero!10792 (index!45544 (_ BitVec 32))) (Found!10792 (index!45545 (_ BitVec 32))) (Intermediate!10792 (undefined!11604 Bool) (index!45546 (_ BitVec 32)) (x!127156 (_ BitVec 32))) (Undefined!10792) (MissingVacant!10792 (index!45547 (_ BitVec 32))) )
))
(declare-fun lt!620264 () SeekEntryResult!10792)

(assert (=> b!1408299 (= res!946128 (or (not (is-Intermediate!10792 lt!620264)) (undefined!11604 lt!620264)))))

(declare-fun e!797048 () Bool)

(assert (=> b!1408299 e!797048))

(declare-fun res!946134 () Bool)

(assert (=> b!1408299 (=> (not res!946134) (not e!797048))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408299 (= res!946134 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47508 0))(
  ( (Unit!47509) )
))
(declare-fun lt!620265 () Unit!47508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96240 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47508)

(assert (=> b!1408299 (= lt!620265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96240 (_ BitVec 32)) SeekEntryResult!10792)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408299 (= lt!620264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46459 a!2901) j!112) mask!2840) (select (arr!46459 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946129 () Bool)

(assert (=> start!121168 (=> (not res!946129) (not e!797049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121168 (= res!946129 (validMask!0 mask!2840))))

(assert (=> start!121168 e!797049))

(assert (=> start!121168 true))

(declare-fun array_inv!35404 (array!96240) Bool)

(assert (=> start!121168 (array_inv!35404 a!2901)))

(declare-fun b!1408300 () Bool)

(declare-fun res!946133 () Bool)

(assert (=> b!1408300 (=> (not res!946133) (not e!797049))))

(assert (=> b!1408300 (= res!946133 (and (= (size!47010 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47010 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47010 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408301 () Bool)

(declare-fun res!946130 () Bool)

(assert (=> b!1408301 (=> (not res!946130) (not e!797049))))

(assert (=> b!1408301 (= res!946130 (validKeyInArray!0 (select (arr!46459 a!2901) j!112)))))

(declare-fun b!1408302 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96240 (_ BitVec 32)) SeekEntryResult!10792)

(assert (=> b!1408302 (= e!797048 (= (seekEntryOrOpen!0 (select (arr!46459 a!2901) j!112) a!2901 mask!2840) (Found!10792 j!112)))))

(declare-fun b!1408303 () Bool)

(assert (=> b!1408303 (= e!797051 true)))

(declare-fun lt!620266 () SeekEntryResult!10792)

(assert (=> b!1408303 (= lt!620266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46459 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46459 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96241 (store (arr!46459 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47010 a!2901)) mask!2840))))

(assert (= (and start!121168 res!946129) b!1408300))

(assert (= (and b!1408300 res!946133) b!1408297))

(assert (= (and b!1408297 res!946127) b!1408301))

(assert (= (and b!1408301 res!946130) b!1408298))

(assert (= (and b!1408298 res!946132) b!1408296))

(assert (= (and b!1408296 res!946131) b!1408299))

(assert (= (and b!1408299 res!946134) b!1408302))

(assert (= (and b!1408299 (not res!946128)) b!1408303))

(declare-fun m!1297631 () Bool)

(assert (=> b!1408299 m!1297631))

(declare-fun m!1297633 () Bool)

(assert (=> b!1408299 m!1297633))

(assert (=> b!1408299 m!1297631))

(declare-fun m!1297635 () Bool)

(assert (=> b!1408299 m!1297635))

(assert (=> b!1408299 m!1297633))

(assert (=> b!1408299 m!1297631))

(declare-fun m!1297637 () Bool)

(assert (=> b!1408299 m!1297637))

(declare-fun m!1297639 () Bool)

(assert (=> b!1408299 m!1297639))

(declare-fun m!1297641 () Bool)

(assert (=> b!1408298 m!1297641))

(declare-fun m!1297643 () Bool)

(assert (=> start!121168 m!1297643))

(declare-fun m!1297645 () Bool)

(assert (=> start!121168 m!1297645))

(assert (=> b!1408301 m!1297631))

(assert (=> b!1408301 m!1297631))

(declare-fun m!1297647 () Bool)

(assert (=> b!1408301 m!1297647))

(declare-fun m!1297649 () Bool)

(assert (=> b!1408297 m!1297649))

(assert (=> b!1408297 m!1297649))

(declare-fun m!1297651 () Bool)

(assert (=> b!1408297 m!1297651))

(declare-fun m!1297653 () Bool)

(assert (=> b!1408296 m!1297653))

(assert (=> b!1408302 m!1297631))

(assert (=> b!1408302 m!1297631))

(declare-fun m!1297655 () Bool)

(assert (=> b!1408302 m!1297655))

(declare-fun m!1297657 () Bool)

(assert (=> b!1408303 m!1297657))

(declare-fun m!1297659 () Bool)

(assert (=> b!1408303 m!1297659))

(assert (=> b!1408303 m!1297659))

(declare-fun m!1297661 () Bool)

(assert (=> b!1408303 m!1297661))

(assert (=> b!1408303 m!1297661))

(assert (=> b!1408303 m!1297659))

(declare-fun m!1297663 () Bool)

(assert (=> b!1408303 m!1297663))

(push 1)

(assert (not start!121168))

(assert (not b!1408297))

(assert (not b!1408301))

(assert (not b!1408303))

(assert (not b!1408299))

(assert (not b!1408302))

(assert (not b!1408296))

(assert (not b!1408298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

