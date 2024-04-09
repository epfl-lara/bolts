; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121482 () Bool)

(assert start!121482)

(declare-fun res!948263 () Bool)

(declare-fun e!798468 () Bool)

(assert (=> start!121482 (=> (not res!948263) (not e!798468))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121482 (= res!948263 (validMask!0 mask!2840))))

(assert (=> start!121482 e!798468))

(assert (=> start!121482 true))

(declare-datatypes ((array!96401 0))(
  ( (array!96402 (arr!46535 (Array (_ BitVec 32) (_ BitVec 64))) (size!47086 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96401)

(declare-fun array_inv!35480 (array!96401) Bool)

(assert (=> start!121482 (array_inv!35480 a!2901)))

(declare-fun b!1410918 () Bool)

(declare-fun res!948260 () Bool)

(assert (=> b!1410918 (=> (not res!948260) (not e!798468))))

(declare-datatypes ((List!33234 0))(
  ( (Nil!33231) (Cons!33230 (h!34502 (_ BitVec 64)) (t!47935 List!33234)) )
))
(declare-fun arrayNoDuplicates!0 (array!96401 (_ BitVec 32) List!33234) Bool)

(assert (=> b!1410918 (= res!948260 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33231))))

(declare-fun b!1410919 () Bool)

(declare-fun res!948259 () Bool)

(assert (=> b!1410919 (=> (not res!948259) (not e!798468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96401 (_ BitVec 32)) Bool)

(assert (=> b!1410919 (= res!948259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410920 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!798470 () Bool)

(declare-datatypes ((SeekEntryResult!10868 0))(
  ( (MissingZero!10868 (index!45848 (_ BitVec 32))) (Found!10868 (index!45849 (_ BitVec 32))) (Intermediate!10868 (undefined!11680 Bool) (index!45850 (_ BitVec 32)) (x!127450 (_ BitVec 32))) (Undefined!10868) (MissingVacant!10868 (index!45851 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96401 (_ BitVec 32)) SeekEntryResult!10868)

(assert (=> b!1410920 (= e!798470 (= (seekEntryOrOpen!0 (select (arr!46535 a!2901) j!112) a!2901 mask!2840) (Found!10868 j!112)))))

(declare-fun b!1410921 () Bool)

(declare-fun e!798467 () Bool)

(declare-fun lt!621401 () SeekEntryResult!10868)

(declare-fun lt!621400 () SeekEntryResult!10868)

(assert (=> b!1410921 (= e!798467 (or (undefined!11680 lt!621401) (not (= (index!45850 lt!621400) (index!45850 lt!621401))) (not (= (x!127450 lt!621400) (x!127450 lt!621401)))))))

(declare-fun b!1410922 () Bool)

(declare-fun e!798469 () Bool)

(assert (=> b!1410922 (= e!798468 (not e!798469))))

(declare-fun res!948264 () Bool)

(assert (=> b!1410922 (=> res!948264 e!798469)))

(get-info :version)

(assert (=> b!1410922 (= res!948264 (or (not ((_ is Intermediate!10868) lt!621400)) (undefined!11680 lt!621400)))))

(assert (=> b!1410922 e!798470))

(declare-fun res!948255 () Bool)

(assert (=> b!1410922 (=> (not res!948255) (not e!798470))))

(assert (=> b!1410922 (= res!948255 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47660 0))(
  ( (Unit!47661) )
))
(declare-fun lt!621403 () Unit!47660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47660)

(assert (=> b!1410922 (= lt!621403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621405 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96401 (_ BitVec 32)) SeekEntryResult!10868)

(assert (=> b!1410922 (= lt!621400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621405 (select (arr!46535 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410922 (= lt!621405 (toIndex!0 (select (arr!46535 a!2901) j!112) mask!2840))))

(declare-fun b!1410923 () Bool)

(declare-fun res!948256 () Bool)

(assert (=> b!1410923 (=> (not res!948256) (not e!798468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410923 (= res!948256 (validKeyInArray!0 (select (arr!46535 a!2901) j!112)))))

(declare-fun b!1410924 () Bool)

(declare-fun e!798465 () Bool)

(assert (=> b!1410924 (= e!798465 e!798467)))

(declare-fun res!948261 () Bool)

(assert (=> b!1410924 (=> res!948261 e!798467)))

(declare-fun lt!621406 () SeekEntryResult!10868)

(assert (=> b!1410924 (= res!948261 (not (= lt!621401 lt!621406)))))

(assert (=> b!1410924 (= lt!621406 (Intermediate!10868 (undefined!11680 lt!621401) (index!45850 lt!621401) (x!127450 lt!621401)))))

(declare-fun b!1410925 () Bool)

(declare-fun res!948258 () Bool)

(assert (=> b!1410925 (=> res!948258 e!798467)))

(declare-fun lt!621404 () array!96401)

(declare-fun lt!621402 () (_ BitVec 64))

(assert (=> b!1410925 (= res!948258 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621405 lt!621402 lt!621404 mask!2840) lt!621406)))))

(declare-fun b!1410926 () Bool)

(declare-fun res!948262 () Bool)

(assert (=> b!1410926 (=> (not res!948262) (not e!798468))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410926 (= res!948262 (and (= (size!47086 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47086 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47086 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410927 () Bool)

(declare-fun res!948257 () Bool)

(assert (=> b!1410927 (=> (not res!948257) (not e!798468))))

(assert (=> b!1410927 (= res!948257 (validKeyInArray!0 (select (arr!46535 a!2901) i!1037)))))

(declare-fun b!1410928 () Bool)

(assert (=> b!1410928 (= e!798469 e!798465)))

(declare-fun res!948254 () Bool)

(assert (=> b!1410928 (=> res!948254 e!798465)))

(assert (=> b!1410928 (= res!948254 (or (= lt!621400 lt!621401) (not ((_ is Intermediate!10868) lt!621401)) (bvslt (x!127450 lt!621400) #b00000000000000000000000000000000) (bvsgt (x!127450 lt!621400) #b01111111111111111111111111111110) (bvslt lt!621405 #b00000000000000000000000000000000) (bvsge lt!621405 (size!47086 a!2901)) (bvslt (index!45850 lt!621400) #b00000000000000000000000000000000) (bvsge (index!45850 lt!621400) (size!47086 a!2901)) (not (= lt!621400 (Intermediate!10868 false (index!45850 lt!621400) (x!127450 lt!621400))))))))

(assert (=> b!1410928 (= lt!621401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621402 mask!2840) lt!621402 lt!621404 mask!2840))))

(assert (=> b!1410928 (= lt!621402 (select (store (arr!46535 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410928 (= lt!621404 (array!96402 (store (arr!46535 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47086 a!2901)))))

(assert (= (and start!121482 res!948263) b!1410926))

(assert (= (and b!1410926 res!948262) b!1410927))

(assert (= (and b!1410927 res!948257) b!1410923))

(assert (= (and b!1410923 res!948256) b!1410919))

(assert (= (and b!1410919 res!948259) b!1410918))

(assert (= (and b!1410918 res!948260) b!1410922))

(assert (= (and b!1410922 res!948255) b!1410920))

(assert (= (and b!1410922 (not res!948264)) b!1410928))

(assert (= (and b!1410928 (not res!948254)) b!1410924))

(assert (= (and b!1410924 (not res!948261)) b!1410925))

(assert (= (and b!1410925 (not res!948258)) b!1410921))

(declare-fun m!1300685 () Bool)

(assert (=> b!1410923 m!1300685))

(assert (=> b!1410923 m!1300685))

(declare-fun m!1300687 () Bool)

(assert (=> b!1410923 m!1300687))

(declare-fun m!1300689 () Bool)

(assert (=> b!1410927 m!1300689))

(assert (=> b!1410927 m!1300689))

(declare-fun m!1300691 () Bool)

(assert (=> b!1410927 m!1300691))

(assert (=> b!1410922 m!1300685))

(declare-fun m!1300693 () Bool)

(assert (=> b!1410922 m!1300693))

(assert (=> b!1410922 m!1300685))

(declare-fun m!1300695 () Bool)

(assert (=> b!1410922 m!1300695))

(assert (=> b!1410922 m!1300685))

(declare-fun m!1300697 () Bool)

(assert (=> b!1410922 m!1300697))

(declare-fun m!1300699 () Bool)

(assert (=> b!1410922 m!1300699))

(assert (=> b!1410920 m!1300685))

(assert (=> b!1410920 m!1300685))

(declare-fun m!1300701 () Bool)

(assert (=> b!1410920 m!1300701))

(declare-fun m!1300703 () Bool)

(assert (=> start!121482 m!1300703))

(declare-fun m!1300705 () Bool)

(assert (=> start!121482 m!1300705))

(declare-fun m!1300707 () Bool)

(assert (=> b!1410928 m!1300707))

(assert (=> b!1410928 m!1300707))

(declare-fun m!1300709 () Bool)

(assert (=> b!1410928 m!1300709))

(declare-fun m!1300711 () Bool)

(assert (=> b!1410928 m!1300711))

(declare-fun m!1300713 () Bool)

(assert (=> b!1410928 m!1300713))

(declare-fun m!1300715 () Bool)

(assert (=> b!1410919 m!1300715))

(declare-fun m!1300717 () Bool)

(assert (=> b!1410918 m!1300717))

(declare-fun m!1300719 () Bool)

(assert (=> b!1410925 m!1300719))

(check-sat (not b!1410927) (not b!1410923) (not b!1410928) (not b!1410919) (not start!121482) (not b!1410925) (not b!1410922) (not b!1410918) (not b!1410920))
(check-sat)
