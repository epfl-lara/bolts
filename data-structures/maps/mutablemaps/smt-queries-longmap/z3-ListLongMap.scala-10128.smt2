; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119466 () Bool)

(assert start!119466)

(declare-fun b!1391751 () Bool)

(declare-fun e!788142 () Bool)

(assert (=> b!1391751 (= e!788142 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95168 0))(
  ( (array!95169 (arr!45941 (Array (_ BitVec 32) (_ BitVec 64))) (size!46492 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95168)

(declare-fun lt!611305 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391751 (= lt!611305 (toIndex!0 (select (store (arr!45941 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun res!931580 () Bool)

(declare-fun e!788143 () Bool)

(assert (=> start!119466 (=> (not res!931580) (not e!788143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119466 (= res!931580 (validMask!0 mask!2840))))

(assert (=> start!119466 e!788143))

(assert (=> start!119466 true))

(declare-fun array_inv!34886 (array!95168) Bool)

(assert (=> start!119466 (array_inv!34886 a!2901)))

(declare-fun b!1391752 () Bool)

(declare-fun res!931583 () Bool)

(assert (=> b!1391752 (=> (not res!931583) (not e!788143))))

(declare-datatypes ((List!32640 0))(
  ( (Nil!32637) (Cons!32636 (h!33863 (_ BitVec 64)) (t!47341 List!32640)) )
))
(declare-fun arrayNoDuplicates!0 (array!95168 (_ BitVec 32) List!32640) Bool)

(assert (=> b!1391752 (= res!931583 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32637))))

(declare-fun b!1391753 () Bool)

(declare-fun res!931582 () Bool)

(assert (=> b!1391753 (=> (not res!931582) (not e!788143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95168 (_ BitVec 32)) Bool)

(assert (=> b!1391753 (= res!931582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391754 () Bool)

(declare-fun res!931584 () Bool)

(assert (=> b!1391754 (=> (not res!931584) (not e!788143))))

(assert (=> b!1391754 (= res!931584 (and (= (size!46492 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46492 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46492 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391755 () Bool)

(declare-fun res!931587 () Bool)

(assert (=> b!1391755 (=> (not res!931587) (not e!788143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391755 (= res!931587 (validKeyInArray!0 (select (arr!45941 a!2901) i!1037)))))

(declare-fun b!1391756 () Bool)

(declare-fun res!931585 () Bool)

(assert (=> b!1391756 (=> (not res!931585) (not e!788143))))

(assert (=> b!1391756 (= res!931585 (validKeyInArray!0 (select (arr!45941 a!2901) j!112)))))

(declare-fun b!1391757 () Bool)

(assert (=> b!1391757 (= e!788143 (not e!788142))))

(declare-fun res!931581 () Bool)

(assert (=> b!1391757 (=> res!931581 e!788142)))

(declare-datatypes ((SeekEntryResult!10280 0))(
  ( (MissingZero!10280 (index!43490 (_ BitVec 32))) (Found!10280 (index!43491 (_ BitVec 32))) (Intermediate!10280 (undefined!11092 Bool) (index!43492 (_ BitVec 32)) (x!125179 (_ BitVec 32))) (Undefined!10280) (MissingVacant!10280 (index!43493 (_ BitVec 32))) )
))
(declare-fun lt!611303 () SeekEntryResult!10280)

(get-info :version)

(assert (=> b!1391757 (= res!931581 (or (not ((_ is Intermediate!10280) lt!611303)) (undefined!11092 lt!611303)))))

(declare-fun e!788144 () Bool)

(assert (=> b!1391757 e!788144))

(declare-fun res!931586 () Bool)

(assert (=> b!1391757 (=> (not res!931586) (not e!788144))))

(assert (=> b!1391757 (= res!931586 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46514 0))(
  ( (Unit!46515) )
))
(declare-fun lt!611304 () Unit!46514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95168 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46514)

(assert (=> b!1391757 (= lt!611304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95168 (_ BitVec 32)) SeekEntryResult!10280)

(assert (=> b!1391757 (= lt!611303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45941 a!2901) j!112) mask!2840) (select (arr!45941 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391758 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95168 (_ BitVec 32)) SeekEntryResult!10280)

(assert (=> b!1391758 (= e!788144 (= (seekEntryOrOpen!0 (select (arr!45941 a!2901) j!112) a!2901 mask!2840) (Found!10280 j!112)))))

(assert (= (and start!119466 res!931580) b!1391754))

(assert (= (and b!1391754 res!931584) b!1391755))

(assert (= (and b!1391755 res!931587) b!1391756))

(assert (= (and b!1391756 res!931585) b!1391753))

(assert (= (and b!1391753 res!931582) b!1391752))

(assert (= (and b!1391752 res!931583) b!1391757))

(assert (= (and b!1391757 res!931586) b!1391758))

(assert (= (and b!1391757 (not res!931581)) b!1391751))

(declare-fun m!1277527 () Bool)

(assert (=> b!1391752 m!1277527))

(declare-fun m!1277529 () Bool)

(assert (=> b!1391751 m!1277529))

(declare-fun m!1277531 () Bool)

(assert (=> b!1391751 m!1277531))

(assert (=> b!1391751 m!1277531))

(declare-fun m!1277533 () Bool)

(assert (=> b!1391751 m!1277533))

(declare-fun m!1277535 () Bool)

(assert (=> b!1391755 m!1277535))

(assert (=> b!1391755 m!1277535))

(declare-fun m!1277537 () Bool)

(assert (=> b!1391755 m!1277537))

(declare-fun m!1277539 () Bool)

(assert (=> start!119466 m!1277539))

(declare-fun m!1277541 () Bool)

(assert (=> start!119466 m!1277541))

(declare-fun m!1277543 () Bool)

(assert (=> b!1391758 m!1277543))

(assert (=> b!1391758 m!1277543))

(declare-fun m!1277545 () Bool)

(assert (=> b!1391758 m!1277545))

(declare-fun m!1277547 () Bool)

(assert (=> b!1391753 m!1277547))

(assert (=> b!1391756 m!1277543))

(assert (=> b!1391756 m!1277543))

(declare-fun m!1277549 () Bool)

(assert (=> b!1391756 m!1277549))

(assert (=> b!1391757 m!1277543))

(declare-fun m!1277551 () Bool)

(assert (=> b!1391757 m!1277551))

(assert (=> b!1391757 m!1277543))

(declare-fun m!1277553 () Bool)

(assert (=> b!1391757 m!1277553))

(assert (=> b!1391757 m!1277551))

(assert (=> b!1391757 m!1277543))

(declare-fun m!1277555 () Bool)

(assert (=> b!1391757 m!1277555))

(declare-fun m!1277557 () Bool)

(assert (=> b!1391757 m!1277557))

(check-sat (not b!1391757) (not b!1391753) (not b!1391751) (not b!1391756) (not b!1391758) (not b!1391752) (not b!1391755) (not start!119466))
