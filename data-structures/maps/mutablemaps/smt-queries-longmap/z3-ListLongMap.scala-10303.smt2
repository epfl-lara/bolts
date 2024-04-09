; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121182 () Bool)

(assert start!121182)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96254 0))(
  ( (array!96255 (arr!46466 (Array (_ BitVec 32) (_ BitVec 64))) (size!47017 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96254)

(declare-fun e!797132 () Bool)

(declare-fun b!1408464 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10799 0))(
  ( (MissingZero!10799 (index!45572 (_ BitVec 32))) (Found!10799 (index!45573 (_ BitVec 32))) (Intermediate!10799 (undefined!11611 Bool) (index!45574 (_ BitVec 32)) (x!127179 (_ BitVec 32))) (Undefined!10799) (MissingVacant!10799 (index!45575 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96254 (_ BitVec 32)) SeekEntryResult!10799)

(assert (=> b!1408464 (= e!797132 (= (seekEntryOrOpen!0 (select (arr!46466 a!2901) j!112) a!2901 mask!2840) (Found!10799 j!112)))))

(declare-fun b!1408465 () Bool)

(declare-fun res!946298 () Bool)

(declare-fun e!797135 () Bool)

(assert (=> b!1408465 (=> (not res!946298) (not e!797135))))

(declare-datatypes ((List!33165 0))(
  ( (Nil!33162) (Cons!33161 (h!34424 (_ BitVec 64)) (t!47866 List!33165)) )
))
(declare-fun arrayNoDuplicates!0 (array!96254 (_ BitVec 32) List!33165) Bool)

(assert (=> b!1408465 (= res!946298 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33162))))

(declare-fun b!1408466 () Bool)

(declare-fun res!946297 () Bool)

(assert (=> b!1408466 (=> (not res!946297) (not e!797135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408466 (= res!946297 (validKeyInArray!0 (select (arr!46466 a!2901) j!112)))))

(declare-fun b!1408467 () Bool)

(declare-fun e!797133 () Bool)

(assert (=> b!1408467 (= e!797133 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620328 () SeekEntryResult!10799)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96254 (_ BitVec 32)) SeekEntryResult!10799)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408467 (= lt!620328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46466 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46466 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96255 (store (arr!46466 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47017 a!2901)) mask!2840))))

(declare-fun b!1408468 () Bool)

(declare-fun res!946300 () Bool)

(assert (=> b!1408468 (=> (not res!946300) (not e!797135))))

(assert (=> b!1408468 (= res!946300 (validKeyInArray!0 (select (arr!46466 a!2901) i!1037)))))

(declare-fun res!946299 () Bool)

(assert (=> start!121182 (=> (not res!946299) (not e!797135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121182 (= res!946299 (validMask!0 mask!2840))))

(assert (=> start!121182 e!797135))

(assert (=> start!121182 true))

(declare-fun array_inv!35411 (array!96254) Bool)

(assert (=> start!121182 (array_inv!35411 a!2901)))

(declare-fun b!1408469 () Bool)

(assert (=> b!1408469 (= e!797135 (not e!797133))))

(declare-fun res!946296 () Bool)

(assert (=> b!1408469 (=> res!946296 e!797133)))

(declare-fun lt!620327 () SeekEntryResult!10799)

(get-info :version)

(assert (=> b!1408469 (= res!946296 (or (not ((_ is Intermediate!10799) lt!620327)) (undefined!11611 lt!620327)))))

(assert (=> b!1408469 e!797132))

(declare-fun res!946302 () Bool)

(assert (=> b!1408469 (=> (not res!946302) (not e!797132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96254 (_ BitVec 32)) Bool)

(assert (=> b!1408469 (= res!946302 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47522 0))(
  ( (Unit!47523) )
))
(declare-fun lt!620329 () Unit!47522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96254 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47522)

(assert (=> b!1408469 (= lt!620329 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408469 (= lt!620327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46466 a!2901) j!112) mask!2840) (select (arr!46466 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408470 () Bool)

(declare-fun res!946295 () Bool)

(assert (=> b!1408470 (=> (not res!946295) (not e!797135))))

(assert (=> b!1408470 (= res!946295 (and (= (size!47017 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47017 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47017 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408471 () Bool)

(declare-fun res!946301 () Bool)

(assert (=> b!1408471 (=> (not res!946301) (not e!797135))))

(assert (=> b!1408471 (= res!946301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121182 res!946299) b!1408470))

(assert (= (and b!1408470 res!946295) b!1408468))

(assert (= (and b!1408468 res!946300) b!1408466))

(assert (= (and b!1408466 res!946297) b!1408471))

(assert (= (and b!1408471 res!946301) b!1408465))

(assert (= (and b!1408465 res!946298) b!1408469))

(assert (= (and b!1408469 res!946302) b!1408464))

(assert (= (and b!1408469 (not res!946296)) b!1408467))

(declare-fun m!1297869 () Bool)

(assert (=> b!1408468 m!1297869))

(assert (=> b!1408468 m!1297869))

(declare-fun m!1297871 () Bool)

(assert (=> b!1408468 m!1297871))

(declare-fun m!1297873 () Bool)

(assert (=> b!1408466 m!1297873))

(assert (=> b!1408466 m!1297873))

(declare-fun m!1297875 () Bool)

(assert (=> b!1408466 m!1297875))

(declare-fun m!1297877 () Bool)

(assert (=> b!1408471 m!1297877))

(assert (=> b!1408464 m!1297873))

(assert (=> b!1408464 m!1297873))

(declare-fun m!1297879 () Bool)

(assert (=> b!1408464 m!1297879))

(declare-fun m!1297881 () Bool)

(assert (=> start!121182 m!1297881))

(declare-fun m!1297883 () Bool)

(assert (=> start!121182 m!1297883))

(assert (=> b!1408469 m!1297873))

(declare-fun m!1297885 () Bool)

(assert (=> b!1408469 m!1297885))

(assert (=> b!1408469 m!1297873))

(declare-fun m!1297887 () Bool)

(assert (=> b!1408469 m!1297887))

(assert (=> b!1408469 m!1297885))

(assert (=> b!1408469 m!1297873))

(declare-fun m!1297889 () Bool)

(assert (=> b!1408469 m!1297889))

(declare-fun m!1297891 () Bool)

(assert (=> b!1408469 m!1297891))

(declare-fun m!1297893 () Bool)

(assert (=> b!1408465 m!1297893))

(declare-fun m!1297895 () Bool)

(assert (=> b!1408467 m!1297895))

(declare-fun m!1297897 () Bool)

(assert (=> b!1408467 m!1297897))

(assert (=> b!1408467 m!1297897))

(declare-fun m!1297899 () Bool)

(assert (=> b!1408467 m!1297899))

(assert (=> b!1408467 m!1297899))

(assert (=> b!1408467 m!1297897))

(declare-fun m!1297901 () Bool)

(assert (=> b!1408467 m!1297901))

(check-sat (not start!121182) (not b!1408465) (not b!1408466) (not b!1408471) (not b!1408468) (not b!1408467) (not b!1408464) (not b!1408469))
(check-sat)
