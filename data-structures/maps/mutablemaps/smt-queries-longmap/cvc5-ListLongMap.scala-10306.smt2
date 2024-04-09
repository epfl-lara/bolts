; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121198 () Bool)

(assert start!121198)

(declare-fun b!1408656 () Bool)

(declare-fun e!797228 () Bool)

(declare-fun e!797229 () Bool)

(assert (=> b!1408656 (= e!797228 (not e!797229))))

(declare-fun res!946492 () Bool)

(assert (=> b!1408656 (=> res!946492 e!797229)))

(declare-datatypes ((SeekEntryResult!10807 0))(
  ( (MissingZero!10807 (index!45604 (_ BitVec 32))) (Found!10807 (index!45605 (_ BitVec 32))) (Intermediate!10807 (undefined!11619 Bool) (index!45606 (_ BitVec 32)) (x!127211 (_ BitVec 32))) (Undefined!10807) (MissingVacant!10807 (index!45607 (_ BitVec 32))) )
))
(declare-fun lt!620400 () SeekEntryResult!10807)

(assert (=> b!1408656 (= res!946492 (or (not (is-Intermediate!10807 lt!620400)) (undefined!11619 lt!620400)))))

(declare-fun e!797230 () Bool)

(assert (=> b!1408656 e!797230))

(declare-fun res!946488 () Bool)

(assert (=> b!1408656 (=> (not res!946488) (not e!797230))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96270 0))(
  ( (array!96271 (arr!46474 (Array (_ BitVec 32) (_ BitVec 64))) (size!47025 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96270)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96270 (_ BitVec 32)) Bool)

(assert (=> b!1408656 (= res!946488 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47538 0))(
  ( (Unit!47539) )
))
(declare-fun lt!620401 () Unit!47538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47538)

(assert (=> b!1408656 (= lt!620401 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96270 (_ BitVec 32)) SeekEntryResult!10807)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408656 (= lt!620400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46474 a!2901) j!112) mask!2840) (select (arr!46474 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946493 () Bool)

(assert (=> start!121198 (=> (not res!946493) (not e!797228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121198 (= res!946493 (validMask!0 mask!2840))))

(assert (=> start!121198 e!797228))

(assert (=> start!121198 true))

(declare-fun array_inv!35419 (array!96270) Bool)

(assert (=> start!121198 (array_inv!35419 a!2901)))

(declare-fun b!1408657 () Bool)

(assert (=> b!1408657 (= e!797229 true)))

(declare-fun lt!620399 () SeekEntryResult!10807)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408657 (= lt!620399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46474 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46474 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96271 (store (arr!46474 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47025 a!2901)) mask!2840))))

(declare-fun b!1408658 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96270 (_ BitVec 32)) SeekEntryResult!10807)

(assert (=> b!1408658 (= e!797230 (= (seekEntryOrOpen!0 (select (arr!46474 a!2901) j!112) a!2901 mask!2840) (Found!10807 j!112)))))

(declare-fun b!1408659 () Bool)

(declare-fun res!946491 () Bool)

(assert (=> b!1408659 (=> (not res!946491) (not e!797228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408659 (= res!946491 (validKeyInArray!0 (select (arr!46474 a!2901) i!1037)))))

(declare-fun b!1408660 () Bool)

(declare-fun res!946487 () Bool)

(assert (=> b!1408660 (=> (not res!946487) (not e!797228))))

(assert (=> b!1408660 (= res!946487 (and (= (size!47025 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47025 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47025 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408661 () Bool)

(declare-fun res!946490 () Bool)

(assert (=> b!1408661 (=> (not res!946490) (not e!797228))))

(declare-datatypes ((List!33173 0))(
  ( (Nil!33170) (Cons!33169 (h!34432 (_ BitVec 64)) (t!47874 List!33173)) )
))
(declare-fun arrayNoDuplicates!0 (array!96270 (_ BitVec 32) List!33173) Bool)

(assert (=> b!1408661 (= res!946490 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33170))))

(declare-fun b!1408662 () Bool)

(declare-fun res!946489 () Bool)

(assert (=> b!1408662 (=> (not res!946489) (not e!797228))))

(assert (=> b!1408662 (= res!946489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408663 () Bool)

(declare-fun res!946494 () Bool)

(assert (=> b!1408663 (=> (not res!946494) (not e!797228))))

(assert (=> b!1408663 (= res!946494 (validKeyInArray!0 (select (arr!46474 a!2901) j!112)))))

(assert (= (and start!121198 res!946493) b!1408660))

(assert (= (and b!1408660 res!946487) b!1408659))

(assert (= (and b!1408659 res!946491) b!1408663))

(assert (= (and b!1408663 res!946494) b!1408662))

(assert (= (and b!1408662 res!946489) b!1408661))

(assert (= (and b!1408661 res!946490) b!1408656))

(assert (= (and b!1408656 res!946488) b!1408658))

(assert (= (and b!1408656 (not res!946492)) b!1408657))

(declare-fun m!1298141 () Bool)

(assert (=> b!1408662 m!1298141))

(declare-fun m!1298143 () Bool)

(assert (=> b!1408659 m!1298143))

(assert (=> b!1408659 m!1298143))

(declare-fun m!1298145 () Bool)

(assert (=> b!1408659 m!1298145))

(declare-fun m!1298147 () Bool)

(assert (=> b!1408656 m!1298147))

(declare-fun m!1298149 () Bool)

(assert (=> b!1408656 m!1298149))

(assert (=> b!1408656 m!1298147))

(declare-fun m!1298151 () Bool)

(assert (=> b!1408656 m!1298151))

(assert (=> b!1408656 m!1298149))

(assert (=> b!1408656 m!1298147))

(declare-fun m!1298153 () Bool)

(assert (=> b!1408656 m!1298153))

(declare-fun m!1298155 () Bool)

(assert (=> b!1408656 m!1298155))

(assert (=> b!1408663 m!1298147))

(assert (=> b!1408663 m!1298147))

(declare-fun m!1298157 () Bool)

(assert (=> b!1408663 m!1298157))

(declare-fun m!1298159 () Bool)

(assert (=> b!1408657 m!1298159))

(declare-fun m!1298161 () Bool)

(assert (=> b!1408657 m!1298161))

(assert (=> b!1408657 m!1298161))

(declare-fun m!1298163 () Bool)

(assert (=> b!1408657 m!1298163))

(assert (=> b!1408657 m!1298163))

(assert (=> b!1408657 m!1298161))

(declare-fun m!1298165 () Bool)

(assert (=> b!1408657 m!1298165))

(assert (=> b!1408658 m!1298147))

(assert (=> b!1408658 m!1298147))

(declare-fun m!1298167 () Bool)

(assert (=> b!1408658 m!1298167))

(declare-fun m!1298169 () Bool)

(assert (=> b!1408661 m!1298169))

(declare-fun m!1298171 () Bool)

(assert (=> start!121198 m!1298171))

(declare-fun m!1298173 () Bool)

(assert (=> start!121198 m!1298173))

(push 1)

(assert (not b!1408663))

(assert (not start!121198))

(assert (not b!1408658))

(assert (not b!1408661))

(assert (not b!1408659))

(assert (not b!1408656))

(assert (not b!1408657))

(assert (not b!1408662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

