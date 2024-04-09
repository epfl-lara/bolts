; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121506 () Bool)

(assert start!121506)

(declare-fun b!1411250 () Bool)

(declare-fun e!798653 () Bool)

(declare-datatypes ((SeekEntryResult!10880 0))(
  ( (MissingZero!10880 (index!45896 (_ BitVec 32))) (Found!10880 (index!45897 (_ BitVec 32))) (Intermediate!10880 (undefined!11692 Bool) (index!45898 (_ BitVec 32)) (x!127494 (_ BitVec 32))) (Undefined!10880) (MissingVacant!10880 (index!45899 (_ BitVec 32))) )
))
(declare-fun lt!621591 () SeekEntryResult!10880)

(declare-datatypes ((array!96425 0))(
  ( (array!96426 (arr!46547 (Array (_ BitVec 32) (_ BitVec 64))) (size!47098 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96425)

(assert (=> b!1411250 (= e!798653 (and (bvsge (index!45898 lt!621591) #b00000000000000000000000000000000) (bvslt (index!45898 lt!621591) (size!47098 a!2901))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!621590 () SeekEntryResult!10880)

(assert (=> b!1411250 (and (not (undefined!11692 lt!621591)) (= (index!45898 lt!621591) i!1037) (bvslt (x!127494 lt!621591) (x!127494 lt!621590)))))

(declare-datatypes ((Unit!47684 0))(
  ( (Unit!47685) )
))
(declare-fun lt!621592 () Unit!47684)

(declare-fun lt!621589 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47684)

(assert (=> b!1411250 (= lt!621592 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621589 (x!127494 lt!621590) (index!45898 lt!621590) (x!127494 lt!621591) (index!45898 lt!621591) (undefined!11692 lt!621591) mask!2840))))

(declare-fun b!1411251 () Bool)

(declare-fun e!798649 () Bool)

(declare-fun e!798650 () Bool)

(assert (=> b!1411251 (= e!798649 (not e!798650))))

(declare-fun res!948586 () Bool)

(assert (=> b!1411251 (=> res!948586 e!798650)))

(get-info :version)

(assert (=> b!1411251 (= res!948586 (or (not ((_ is Intermediate!10880) lt!621590)) (undefined!11692 lt!621590)))))

(declare-fun e!798652 () Bool)

(assert (=> b!1411251 e!798652))

(declare-fun res!948589 () Bool)

(assert (=> b!1411251 (=> (not res!948589) (not e!798652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96425 (_ BitVec 32)) Bool)

(assert (=> b!1411251 (= res!948589 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621588 () Unit!47684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47684)

(assert (=> b!1411251 (= lt!621588 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96425 (_ BitVec 32)) SeekEntryResult!10880)

(assert (=> b!1411251 (= lt!621590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621589 (select (arr!46547 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411251 (= lt!621589 (toIndex!0 (select (arr!46547 a!2901) j!112) mask!2840))))

(declare-fun b!1411252 () Bool)

(declare-fun res!948594 () Bool)

(assert (=> b!1411252 (=> (not res!948594) (not e!798649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411252 (= res!948594 (validKeyInArray!0 (select (arr!46547 a!2901) j!112)))))

(declare-fun b!1411253 () Bool)

(declare-fun res!948593 () Bool)

(assert (=> b!1411253 (=> (not res!948593) (not e!798649))))

(declare-datatypes ((List!33246 0))(
  ( (Nil!33243) (Cons!33242 (h!34514 (_ BitVec 64)) (t!47947 List!33246)) )
))
(declare-fun arrayNoDuplicates!0 (array!96425 (_ BitVec 32) List!33246) Bool)

(assert (=> b!1411253 (= res!948593 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33243))))

(declare-fun b!1411254 () Bool)

(declare-fun res!948587 () Bool)

(assert (=> b!1411254 (=> (not res!948587) (not e!798649))))

(assert (=> b!1411254 (= res!948587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411255 () Bool)

(assert (=> b!1411255 (= e!798650 e!798653)))

(declare-fun res!948590 () Bool)

(assert (=> b!1411255 (=> res!948590 e!798653)))

(assert (=> b!1411255 (= res!948590 (or (= lt!621590 lt!621591) (not ((_ is Intermediate!10880) lt!621591))))))

(assert (=> b!1411255 (= lt!621591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46547 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46547 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96426 (store (arr!46547 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47098 a!2901)) mask!2840))))

(declare-fun res!948592 () Bool)

(assert (=> start!121506 (=> (not res!948592) (not e!798649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121506 (= res!948592 (validMask!0 mask!2840))))

(assert (=> start!121506 e!798649))

(assert (=> start!121506 true))

(declare-fun array_inv!35492 (array!96425) Bool)

(assert (=> start!121506 (array_inv!35492 a!2901)))

(declare-fun b!1411256 () Bool)

(declare-fun res!948591 () Bool)

(assert (=> b!1411256 (=> (not res!948591) (not e!798649))))

(assert (=> b!1411256 (= res!948591 (and (= (size!47098 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47098 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47098 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411257 () Bool)

(declare-fun res!948588 () Bool)

(assert (=> b!1411257 (=> (not res!948588) (not e!798649))))

(assert (=> b!1411257 (= res!948588 (validKeyInArray!0 (select (arr!46547 a!2901) i!1037)))))

(declare-fun b!1411258 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96425 (_ BitVec 32)) SeekEntryResult!10880)

(assert (=> b!1411258 (= e!798652 (= (seekEntryOrOpen!0 (select (arr!46547 a!2901) j!112) a!2901 mask!2840) (Found!10880 j!112)))))

(assert (= (and start!121506 res!948592) b!1411256))

(assert (= (and b!1411256 res!948591) b!1411257))

(assert (= (and b!1411257 res!948588) b!1411252))

(assert (= (and b!1411252 res!948594) b!1411254))

(assert (= (and b!1411254 res!948587) b!1411253))

(assert (= (and b!1411253 res!948593) b!1411251))

(assert (= (and b!1411251 res!948589) b!1411258))

(assert (= (and b!1411251 (not res!948586)) b!1411255))

(assert (= (and b!1411255 (not res!948590)) b!1411250))

(declare-fun m!1301117 () Bool)

(assert (=> b!1411253 m!1301117))

(declare-fun m!1301119 () Bool)

(assert (=> b!1411257 m!1301119))

(assert (=> b!1411257 m!1301119))

(declare-fun m!1301121 () Bool)

(assert (=> b!1411257 m!1301121))

(declare-fun m!1301123 () Bool)

(assert (=> b!1411250 m!1301123))

(declare-fun m!1301125 () Bool)

(assert (=> b!1411258 m!1301125))

(assert (=> b!1411258 m!1301125))

(declare-fun m!1301127 () Bool)

(assert (=> b!1411258 m!1301127))

(declare-fun m!1301129 () Bool)

(assert (=> start!121506 m!1301129))

(declare-fun m!1301131 () Bool)

(assert (=> start!121506 m!1301131))

(declare-fun m!1301133 () Bool)

(assert (=> b!1411255 m!1301133))

(declare-fun m!1301135 () Bool)

(assert (=> b!1411255 m!1301135))

(assert (=> b!1411255 m!1301135))

(declare-fun m!1301137 () Bool)

(assert (=> b!1411255 m!1301137))

(assert (=> b!1411255 m!1301137))

(assert (=> b!1411255 m!1301135))

(declare-fun m!1301139 () Bool)

(assert (=> b!1411255 m!1301139))

(assert (=> b!1411252 m!1301125))

(assert (=> b!1411252 m!1301125))

(declare-fun m!1301141 () Bool)

(assert (=> b!1411252 m!1301141))

(declare-fun m!1301143 () Bool)

(assert (=> b!1411254 m!1301143))

(assert (=> b!1411251 m!1301125))

(declare-fun m!1301145 () Bool)

(assert (=> b!1411251 m!1301145))

(assert (=> b!1411251 m!1301125))

(declare-fun m!1301147 () Bool)

(assert (=> b!1411251 m!1301147))

(assert (=> b!1411251 m!1301125))

(declare-fun m!1301149 () Bool)

(assert (=> b!1411251 m!1301149))

(declare-fun m!1301151 () Bool)

(assert (=> b!1411251 m!1301151))

(check-sat (not b!1411255) (not b!1411250) (not b!1411254) (not start!121506) (not b!1411257) (not b!1411253) (not b!1411252) (not b!1411258) (not b!1411251))
(check-sat)
