; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121476 () Bool)

(assert start!121476)

(declare-fun b!1410823 () Bool)

(declare-fun e!798413 () Bool)

(declare-fun e!798412 () Bool)

(assert (=> b!1410823 (= e!798413 e!798412)))

(declare-fun res!948165 () Bool)

(assert (=> b!1410823 (=> res!948165 e!798412)))

(declare-datatypes ((SeekEntryResult!10865 0))(
  ( (MissingZero!10865 (index!45836 (_ BitVec 32))) (Found!10865 (index!45837 (_ BitVec 32))) (Intermediate!10865 (undefined!11677 Bool) (index!45838 (_ BitVec 32)) (x!127439 (_ BitVec 32))) (Undefined!10865) (MissingVacant!10865 (index!45839 (_ BitVec 32))) )
))
(declare-fun lt!621340 () SeekEntryResult!10865)

(declare-fun lt!621341 () SeekEntryResult!10865)

(assert (=> b!1410823 (= res!948165 (not (= lt!621340 lt!621341)))))

(assert (=> b!1410823 (= lt!621341 (Intermediate!10865 (undefined!11677 lt!621340) (index!45838 lt!621340) (x!127439 lt!621340)))))

(declare-fun b!1410824 () Bool)

(declare-fun e!798416 () Bool)

(assert (=> b!1410824 (= e!798416 e!798413)))

(declare-fun res!948164 () Bool)

(assert (=> b!1410824 (=> res!948164 e!798413)))

(declare-fun lt!621342 () SeekEntryResult!10865)

(declare-datatypes ((array!96395 0))(
  ( (array!96396 (arr!46532 (Array (_ BitVec 32) (_ BitVec 64))) (size!47083 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96395)

(declare-fun lt!621338 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1410824 (= res!948164 (or (= lt!621342 lt!621340) (not ((_ is Intermediate!10865) lt!621340)) (bvslt (x!127439 lt!621342) #b00000000000000000000000000000000) (bvsgt (x!127439 lt!621342) #b01111111111111111111111111111110) (bvslt lt!621338 #b00000000000000000000000000000000) (bvsge lt!621338 (size!47083 a!2901)) (bvslt (index!45838 lt!621342) #b00000000000000000000000000000000) (bvsge (index!45838 lt!621342) (size!47083 a!2901)) (not (= lt!621342 (Intermediate!10865 false (index!45838 lt!621342) (x!127439 lt!621342))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621343 () array!96395)

(declare-fun lt!621339 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96395 (_ BitVec 32)) SeekEntryResult!10865)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410824 (= lt!621340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621339 mask!2840) lt!621339 lt!621343 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410824 (= lt!621339 (select (store (arr!46532 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410824 (= lt!621343 (array!96396 (store (arr!46532 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47083 a!2901)))))

(declare-fun b!1410825 () Bool)

(declare-fun res!948160 () Bool)

(declare-fun e!798415 () Bool)

(assert (=> b!1410825 (=> (not res!948160) (not e!798415))))

(assert (=> b!1410825 (= res!948160 (and (= (size!47083 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47083 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47083 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410826 () Bool)

(assert (=> b!1410826 (= e!798412 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621338 lt!621339 lt!621343 mask!2840) lt!621341))))

(declare-fun res!948161 () Bool)

(assert (=> start!121476 (=> (not res!948161) (not e!798415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121476 (= res!948161 (validMask!0 mask!2840))))

(assert (=> start!121476 e!798415))

(assert (=> start!121476 true))

(declare-fun array_inv!35477 (array!96395) Bool)

(assert (=> start!121476 (array_inv!35477 a!2901)))

(declare-fun b!1410827 () Bool)

(declare-fun res!948163 () Bool)

(assert (=> b!1410827 (=> (not res!948163) (not e!798415))))

(declare-datatypes ((List!33231 0))(
  ( (Nil!33228) (Cons!33227 (h!34499 (_ BitVec 64)) (t!47932 List!33231)) )
))
(declare-fun arrayNoDuplicates!0 (array!96395 (_ BitVec 32) List!33231) Bool)

(assert (=> b!1410827 (= res!948163 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33228))))

(declare-fun b!1410828 () Bool)

(declare-fun e!798411 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96395 (_ BitVec 32)) SeekEntryResult!10865)

(assert (=> b!1410828 (= e!798411 (= (seekEntryOrOpen!0 (select (arr!46532 a!2901) j!112) a!2901 mask!2840) (Found!10865 j!112)))))

(declare-fun b!1410829 () Bool)

(declare-fun res!948168 () Bool)

(assert (=> b!1410829 (=> (not res!948168) (not e!798415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410829 (= res!948168 (validKeyInArray!0 (select (arr!46532 a!2901) j!112)))))

(declare-fun b!1410830 () Bool)

(assert (=> b!1410830 (= e!798415 (not e!798416))))

(declare-fun res!948162 () Bool)

(assert (=> b!1410830 (=> res!948162 e!798416)))

(assert (=> b!1410830 (= res!948162 (or (not ((_ is Intermediate!10865) lt!621342)) (undefined!11677 lt!621342)))))

(assert (=> b!1410830 e!798411))

(declare-fun res!948166 () Bool)

(assert (=> b!1410830 (=> (not res!948166) (not e!798411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96395 (_ BitVec 32)) Bool)

(assert (=> b!1410830 (= res!948166 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47654 0))(
  ( (Unit!47655) )
))
(declare-fun lt!621337 () Unit!47654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47654)

(assert (=> b!1410830 (= lt!621337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410830 (= lt!621342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621338 (select (arr!46532 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410830 (= lt!621338 (toIndex!0 (select (arr!46532 a!2901) j!112) mask!2840))))

(declare-fun b!1410831 () Bool)

(declare-fun res!948167 () Bool)

(assert (=> b!1410831 (=> (not res!948167) (not e!798415))))

(assert (=> b!1410831 (= res!948167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410832 () Bool)

(declare-fun res!948159 () Bool)

(assert (=> b!1410832 (=> (not res!948159) (not e!798415))))

(assert (=> b!1410832 (= res!948159 (validKeyInArray!0 (select (arr!46532 a!2901) i!1037)))))

(assert (= (and start!121476 res!948161) b!1410825))

(assert (= (and b!1410825 res!948160) b!1410832))

(assert (= (and b!1410832 res!948159) b!1410829))

(assert (= (and b!1410829 res!948168) b!1410831))

(assert (= (and b!1410831 res!948167) b!1410827))

(assert (= (and b!1410827 res!948163) b!1410830))

(assert (= (and b!1410830 res!948166) b!1410828))

(assert (= (and b!1410830 (not res!948162)) b!1410824))

(assert (= (and b!1410824 (not res!948164)) b!1410823))

(assert (= (and b!1410823 (not res!948165)) b!1410826))

(declare-fun m!1300577 () Bool)

(assert (=> b!1410824 m!1300577))

(assert (=> b!1410824 m!1300577))

(declare-fun m!1300579 () Bool)

(assert (=> b!1410824 m!1300579))

(declare-fun m!1300581 () Bool)

(assert (=> b!1410824 m!1300581))

(declare-fun m!1300583 () Bool)

(assert (=> b!1410824 m!1300583))

(declare-fun m!1300585 () Bool)

(assert (=> b!1410832 m!1300585))

(assert (=> b!1410832 m!1300585))

(declare-fun m!1300587 () Bool)

(assert (=> b!1410832 m!1300587))

(declare-fun m!1300589 () Bool)

(assert (=> b!1410826 m!1300589))

(declare-fun m!1300591 () Bool)

(assert (=> b!1410828 m!1300591))

(assert (=> b!1410828 m!1300591))

(declare-fun m!1300593 () Bool)

(assert (=> b!1410828 m!1300593))

(assert (=> b!1410830 m!1300591))

(declare-fun m!1300595 () Bool)

(assert (=> b!1410830 m!1300595))

(assert (=> b!1410830 m!1300591))

(declare-fun m!1300597 () Bool)

(assert (=> b!1410830 m!1300597))

(assert (=> b!1410830 m!1300591))

(declare-fun m!1300599 () Bool)

(assert (=> b!1410830 m!1300599))

(declare-fun m!1300601 () Bool)

(assert (=> b!1410830 m!1300601))

(assert (=> b!1410829 m!1300591))

(assert (=> b!1410829 m!1300591))

(declare-fun m!1300603 () Bool)

(assert (=> b!1410829 m!1300603))

(declare-fun m!1300605 () Bool)

(assert (=> start!121476 m!1300605))

(declare-fun m!1300607 () Bool)

(assert (=> start!121476 m!1300607))

(declare-fun m!1300609 () Bool)

(assert (=> b!1410827 m!1300609))

(declare-fun m!1300611 () Bool)

(assert (=> b!1410831 m!1300611))

(check-sat (not b!1410831) (not b!1410830) (not b!1410824) (not b!1410828) (not b!1410832) (not b!1410827) (not b!1410826) (not b!1410829) (not start!121476))
(check-sat)
