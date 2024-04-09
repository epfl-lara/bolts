; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121158 () Bool)

(assert start!121158)

(declare-fun b!1408163 () Bool)

(declare-fun res!945999 () Bool)

(declare-fun e!796988 () Bool)

(assert (=> b!1408163 (=> (not res!945999) (not e!796988))))

(declare-datatypes ((array!96230 0))(
  ( (array!96231 (arr!46454 (Array (_ BitVec 32) (_ BitVec 64))) (size!47005 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96230)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96230 (_ BitVec 32)) Bool)

(assert (=> b!1408163 (= res!945999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408164 () Bool)

(declare-fun res!945997 () Bool)

(assert (=> b!1408164 (=> (not res!945997) (not e!796988))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408164 (= res!945997 (validKeyInArray!0 (select (arr!46454 a!2901) i!1037)))))

(declare-fun b!1408165 () Bool)

(declare-fun res!945995 () Bool)

(declare-fun e!796989 () Bool)

(assert (=> b!1408165 (=> res!945995 e!796989)))

(declare-fun lt!620171 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10787 0))(
  ( (MissingZero!10787 (index!45524 (_ BitVec 32))) (Found!10787 (index!45525 (_ BitVec 32))) (Intermediate!10787 (undefined!11599 Bool) (index!45526 (_ BitVec 32)) (x!127135 (_ BitVec 32))) (Undefined!10787) (MissingVacant!10787 (index!45527 (_ BitVec 32))) )
))
(declare-fun lt!620167 () SeekEntryResult!10787)

(assert (=> b!1408165 (= res!945995 (or (bvslt (x!127135 lt!620167) #b00000000000000000000000000000000) (bvsgt (x!127135 lt!620167) #b01111111111111111111111111111110) (bvslt lt!620171 #b00000000000000000000000000000000) (bvsge lt!620171 (size!47005 a!2901)) (bvslt (index!45526 lt!620167) #b00000000000000000000000000000000) (bvsge (index!45526 lt!620167) (size!47005 a!2901)) (not (= lt!620167 (Intermediate!10787 false (index!45526 lt!620167) (x!127135 lt!620167))))))))

(declare-fun b!1408166 () Bool)

(declare-fun res!946000 () Bool)

(assert (=> b!1408166 (=> (not res!946000) (not e!796988))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408166 (= res!946000 (validKeyInArray!0 (select (arr!46454 a!2901) j!112)))))

(declare-fun b!1408167 () Bool)

(declare-fun res!945998 () Bool)

(assert (=> b!1408167 (=> (not res!945998) (not e!796988))))

(declare-datatypes ((List!33153 0))(
  ( (Nil!33150) (Cons!33149 (h!34412 (_ BitVec 64)) (t!47854 List!33153)) )
))
(declare-fun arrayNoDuplicates!0 (array!96230 (_ BitVec 32) List!33153) Bool)

(assert (=> b!1408167 (= res!945998 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33150))))

(declare-fun b!1408168 () Bool)

(declare-fun e!796991 () Bool)

(assert (=> b!1408168 (= e!796988 (not e!796991))))

(declare-fun res!946002 () Bool)

(assert (=> b!1408168 (=> res!946002 e!796991)))

(get-info :version)

(assert (=> b!1408168 (= res!946002 (or (not ((_ is Intermediate!10787) lt!620167)) (undefined!11599 lt!620167)))))

(declare-fun lt!620170 () SeekEntryResult!10787)

(assert (=> b!1408168 (= lt!620170 (Found!10787 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96230 (_ BitVec 32)) SeekEntryResult!10787)

(assert (=> b!1408168 (= lt!620170 (seekEntryOrOpen!0 (select (arr!46454 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408168 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47498 0))(
  ( (Unit!47499) )
))
(declare-fun lt!620169 () Unit!47498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47498)

(assert (=> b!1408168 (= lt!620169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96230 (_ BitVec 32)) SeekEntryResult!10787)

(assert (=> b!1408168 (= lt!620167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620171 (select (arr!46454 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408168 (= lt!620171 (toIndex!0 (select (arr!46454 a!2901) j!112) mask!2840))))

(declare-fun b!1408169 () Bool)

(assert (=> b!1408169 (= e!796991 e!796989)))

(declare-fun res!945994 () Bool)

(assert (=> b!1408169 (=> res!945994 e!796989)))

(declare-fun lt!620173 () array!96230)

(declare-fun lt!620168 () (_ BitVec 64))

(assert (=> b!1408169 (= res!945994 (not (= lt!620167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620168 mask!2840) lt!620168 lt!620173 mask!2840))))))

(assert (=> b!1408169 (= lt!620168 (select (store (arr!46454 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408169 (= lt!620173 (array!96231 (store (arr!46454 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47005 a!2901)))))

(declare-fun b!1408170 () Bool)

(declare-fun res!945996 () Bool)

(assert (=> b!1408170 (=> (not res!945996) (not e!796988))))

(assert (=> b!1408170 (= res!945996 (and (= (size!47005 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47005 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47005 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!946001 () Bool)

(assert (=> start!121158 (=> (not res!946001) (not e!796988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121158 (= res!946001 (validMask!0 mask!2840))))

(assert (=> start!121158 e!796988))

(assert (=> start!121158 true))

(declare-fun array_inv!35399 (array!96230) Bool)

(assert (=> start!121158 (array_inv!35399 a!2901)))

(declare-fun b!1408171 () Bool)

(assert (=> b!1408171 (= e!796989 true)))

(assert (=> b!1408171 (= lt!620170 (seekEntryOrOpen!0 lt!620168 lt!620173 mask!2840))))

(declare-fun lt!620172 () Unit!47498)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47498)

(assert (=> b!1408171 (= lt!620172 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620171 (x!127135 lt!620167) (index!45526 lt!620167) mask!2840))))

(assert (= (and start!121158 res!946001) b!1408170))

(assert (= (and b!1408170 res!945996) b!1408164))

(assert (= (and b!1408164 res!945997) b!1408166))

(assert (= (and b!1408166 res!946000) b!1408163))

(assert (= (and b!1408163 res!945999) b!1408167))

(assert (= (and b!1408167 res!945998) b!1408168))

(assert (= (and b!1408168 (not res!946002)) b!1408169))

(assert (= (and b!1408169 (not res!945994)) b!1408165))

(assert (= (and b!1408165 (not res!945995)) b!1408171))

(declare-fun m!1297441 () Bool)

(assert (=> b!1408166 m!1297441))

(assert (=> b!1408166 m!1297441))

(declare-fun m!1297443 () Bool)

(assert (=> b!1408166 m!1297443))

(declare-fun m!1297445 () Bool)

(assert (=> b!1408171 m!1297445))

(declare-fun m!1297447 () Bool)

(assert (=> b!1408171 m!1297447))

(assert (=> b!1408168 m!1297441))

(declare-fun m!1297449 () Bool)

(assert (=> b!1408168 m!1297449))

(assert (=> b!1408168 m!1297441))

(declare-fun m!1297451 () Bool)

(assert (=> b!1408168 m!1297451))

(assert (=> b!1408168 m!1297441))

(declare-fun m!1297453 () Bool)

(assert (=> b!1408168 m!1297453))

(assert (=> b!1408168 m!1297441))

(declare-fun m!1297455 () Bool)

(assert (=> b!1408168 m!1297455))

(declare-fun m!1297457 () Bool)

(assert (=> b!1408168 m!1297457))

(declare-fun m!1297459 () Bool)

(assert (=> b!1408167 m!1297459))

(declare-fun m!1297461 () Bool)

(assert (=> b!1408169 m!1297461))

(assert (=> b!1408169 m!1297461))

(declare-fun m!1297463 () Bool)

(assert (=> b!1408169 m!1297463))

(declare-fun m!1297465 () Bool)

(assert (=> b!1408169 m!1297465))

(declare-fun m!1297467 () Bool)

(assert (=> b!1408169 m!1297467))

(declare-fun m!1297469 () Bool)

(assert (=> b!1408163 m!1297469))

(declare-fun m!1297471 () Bool)

(assert (=> start!121158 m!1297471))

(declare-fun m!1297473 () Bool)

(assert (=> start!121158 m!1297473))

(declare-fun m!1297475 () Bool)

(assert (=> b!1408164 m!1297475))

(assert (=> b!1408164 m!1297475))

(declare-fun m!1297477 () Bool)

(assert (=> b!1408164 m!1297477))

(check-sat (not b!1408171) (not b!1408163) (not b!1408167) (not b!1408169) (not b!1408164) (not b!1408168) (not b!1408166) (not start!121158))
(check-sat)
