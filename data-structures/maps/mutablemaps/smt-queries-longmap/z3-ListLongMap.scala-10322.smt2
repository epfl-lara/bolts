; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121458 () Bool)

(assert start!121458)

(declare-fun b!1410597 () Bool)

(declare-fun res!947937 () Bool)

(declare-fun e!798295 () Bool)

(assert (=> b!1410597 (=> (not res!947937) (not e!798295))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96377 0))(
  ( (array!96378 (arr!46523 (Array (_ BitVec 32) (_ BitVec 64))) (size!47074 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96377)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410597 (= res!947937 (and (= (size!47074 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47074 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47074 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410598 () Bool)

(declare-fun res!947938 () Bool)

(assert (=> b!1410598 (=> (not res!947938) (not e!798295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410598 (= res!947938 (validKeyInArray!0 (select (arr!46523 a!2901) j!112)))))

(declare-fun b!1410599 () Bool)

(declare-fun lt!621225 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10856 0))(
  ( (MissingZero!10856 (index!45800 (_ BitVec 32))) (Found!10856 (index!45801 (_ BitVec 32))) (Intermediate!10856 (undefined!11668 Bool) (index!45802 (_ BitVec 32)) (x!127406 (_ BitVec 32))) (Undefined!10856) (MissingVacant!10856 (index!45803 (_ BitVec 32))) )
))
(declare-fun lt!621223 () SeekEntryResult!10856)

(declare-fun lt!621226 () SeekEntryResult!10856)

(declare-fun e!798296 () Bool)

(get-info :version)

(assert (=> b!1410599 (= e!798296 (or (= lt!621223 lt!621226) (not ((_ is Intermediate!10856) lt!621226)) (bvslt (x!127406 lt!621223) #b00000000000000000000000000000000) (bvsgt (x!127406 lt!621223) #b01111111111111111111111111111110) (bvslt lt!621225 #b00000000000000000000000000000000) (bvsge lt!621225 (size!47074 a!2901)) (bvslt (index!45802 lt!621223) #b00000000000000000000000000000000) (bvsge (index!45802 lt!621223) (size!47074 a!2901)) (= lt!621223 (Intermediate!10856 false (index!45802 lt!621223) (x!127406 lt!621223)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96377 (_ BitVec 32)) SeekEntryResult!10856)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410599 (= lt!621226 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46523 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46523 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96378 (store (arr!46523 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47074 a!2901)) mask!2840))))

(declare-fun e!798293 () Bool)

(declare-fun b!1410600 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96377 (_ BitVec 32)) SeekEntryResult!10856)

(assert (=> b!1410600 (= e!798293 (= (seekEntryOrOpen!0 (select (arr!46523 a!2901) j!112) a!2901 mask!2840) (Found!10856 j!112)))))

(declare-fun b!1410601 () Bool)

(declare-fun res!947936 () Bool)

(assert (=> b!1410601 (=> (not res!947936) (not e!798295))))

(declare-datatypes ((List!33222 0))(
  ( (Nil!33219) (Cons!33218 (h!34490 (_ BitVec 64)) (t!47923 List!33222)) )
))
(declare-fun arrayNoDuplicates!0 (array!96377 (_ BitVec 32) List!33222) Bool)

(assert (=> b!1410601 (= res!947936 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33219))))

(declare-fun b!1410602 () Bool)

(declare-fun res!947933 () Bool)

(assert (=> b!1410602 (=> (not res!947933) (not e!798295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96377 (_ BitVec 32)) Bool)

(assert (=> b!1410602 (= res!947933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410603 () Bool)

(assert (=> b!1410603 (= e!798295 (not e!798296))))

(declare-fun res!947939 () Bool)

(assert (=> b!1410603 (=> res!947939 e!798296)))

(assert (=> b!1410603 (= res!947939 (or (not ((_ is Intermediate!10856) lt!621223)) (undefined!11668 lt!621223)))))

(assert (=> b!1410603 e!798293))

(declare-fun res!947934 () Bool)

(assert (=> b!1410603 (=> (not res!947934) (not e!798293))))

(assert (=> b!1410603 (= res!947934 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47636 0))(
  ( (Unit!47637) )
))
(declare-fun lt!621224 () Unit!47636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47636)

(assert (=> b!1410603 (= lt!621224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410603 (= lt!621223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621225 (select (arr!46523 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410603 (= lt!621225 (toIndex!0 (select (arr!46523 a!2901) j!112) mask!2840))))

(declare-fun res!947940 () Bool)

(assert (=> start!121458 (=> (not res!947940) (not e!798295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121458 (= res!947940 (validMask!0 mask!2840))))

(assert (=> start!121458 e!798295))

(assert (=> start!121458 true))

(declare-fun array_inv!35468 (array!96377) Bool)

(assert (=> start!121458 (array_inv!35468 a!2901)))

(declare-fun b!1410604 () Bool)

(declare-fun res!947935 () Bool)

(assert (=> b!1410604 (=> (not res!947935) (not e!798295))))

(assert (=> b!1410604 (= res!947935 (validKeyInArray!0 (select (arr!46523 a!2901) i!1037)))))

(assert (= (and start!121458 res!947940) b!1410597))

(assert (= (and b!1410597 res!947937) b!1410604))

(assert (= (and b!1410604 res!947935) b!1410598))

(assert (= (and b!1410598 res!947938) b!1410602))

(assert (= (and b!1410602 res!947933) b!1410601))

(assert (= (and b!1410601 res!947936) b!1410603))

(assert (= (and b!1410603 res!947934) b!1410600))

(assert (= (and b!1410603 (not res!947939)) b!1410599))

(declare-fun m!1300269 () Bool)

(assert (=> b!1410598 m!1300269))

(assert (=> b!1410598 m!1300269))

(declare-fun m!1300271 () Bool)

(assert (=> b!1410598 m!1300271))

(declare-fun m!1300273 () Bool)

(assert (=> b!1410601 m!1300273))

(declare-fun m!1300275 () Bool)

(assert (=> b!1410602 m!1300275))

(assert (=> b!1410600 m!1300269))

(assert (=> b!1410600 m!1300269))

(declare-fun m!1300277 () Bool)

(assert (=> b!1410600 m!1300277))

(assert (=> b!1410603 m!1300269))

(declare-fun m!1300279 () Bool)

(assert (=> b!1410603 m!1300279))

(assert (=> b!1410603 m!1300269))

(assert (=> b!1410603 m!1300269))

(declare-fun m!1300281 () Bool)

(assert (=> b!1410603 m!1300281))

(declare-fun m!1300283 () Bool)

(assert (=> b!1410603 m!1300283))

(declare-fun m!1300285 () Bool)

(assert (=> b!1410603 m!1300285))

(declare-fun m!1300287 () Bool)

(assert (=> b!1410599 m!1300287))

(declare-fun m!1300289 () Bool)

(assert (=> b!1410599 m!1300289))

(assert (=> b!1410599 m!1300289))

(declare-fun m!1300291 () Bool)

(assert (=> b!1410599 m!1300291))

(assert (=> b!1410599 m!1300291))

(assert (=> b!1410599 m!1300289))

(declare-fun m!1300293 () Bool)

(assert (=> b!1410599 m!1300293))

(declare-fun m!1300295 () Bool)

(assert (=> b!1410604 m!1300295))

(assert (=> b!1410604 m!1300295))

(declare-fun m!1300297 () Bool)

(assert (=> b!1410604 m!1300297))

(declare-fun m!1300299 () Bool)

(assert (=> start!121458 m!1300299))

(declare-fun m!1300301 () Bool)

(assert (=> start!121458 m!1300301))

(check-sat (not b!1410600) (not b!1410602) (not b!1410601) (not b!1410598) (not b!1410604) (not b!1410599) (not b!1410603) (not start!121458))
(check-sat)
