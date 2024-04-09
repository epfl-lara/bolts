; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119844 () Bool)

(assert start!119844)

(declare-fun b!1395207 () Bool)

(declare-fun res!934562 () Bool)

(declare-fun e!789918 () Bool)

(assert (=> b!1395207 (=> (not res!934562) (not e!789918))))

(declare-datatypes ((array!95393 0))(
  ( (array!95394 (arr!46049 (Array (_ BitVec 32) (_ BitVec 64))) (size!46600 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95393)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95393 (_ BitVec 32)) Bool)

(assert (=> b!1395207 (= res!934562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395208 () Bool)

(declare-fun e!789917 () Bool)

(assert (=> b!1395208 (= e!789918 (not e!789917))))

(declare-fun res!934563 () Bool)

(assert (=> b!1395208 (=> res!934563 e!789917)))

(declare-datatypes ((SeekEntryResult!10388 0))(
  ( (MissingZero!10388 (index!43922 (_ BitVec 32))) (Found!10388 (index!43923 (_ BitVec 32))) (Intermediate!10388 (undefined!11200 Bool) (index!43924 (_ BitVec 32)) (x!125593 (_ BitVec 32))) (Undefined!10388) (MissingVacant!10388 (index!43925 (_ BitVec 32))) )
))
(declare-fun lt!612883 () SeekEntryResult!10388)

(get-info :version)

(assert (=> b!1395208 (= res!934563 (or (not ((_ is Intermediate!10388) lt!612883)) (undefined!11200 lt!612883)))))

(declare-fun e!789919 () Bool)

(assert (=> b!1395208 e!789919))

(declare-fun res!934560 () Bool)

(assert (=> b!1395208 (=> (not res!934560) (not e!789919))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1395208 (= res!934560 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46730 0))(
  ( (Unit!46731) )
))
(declare-fun lt!612881 () Unit!46730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46730)

(assert (=> b!1395208 (= lt!612881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95393 (_ BitVec 32)) SeekEntryResult!10388)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395208 (= lt!612883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46049 a!2901) j!112) mask!2840) (select (arr!46049 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395209 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95393 (_ BitVec 32)) SeekEntryResult!10388)

(assert (=> b!1395209 (= e!789919 (= (seekEntryOrOpen!0 (select (arr!46049 a!2901) j!112) a!2901 mask!2840) (Found!10388 j!112)))))

(declare-fun b!1395210 () Bool)

(declare-fun res!934561 () Bool)

(assert (=> b!1395210 (=> (not res!934561) (not e!789918))))

(declare-datatypes ((List!32748 0))(
  ( (Nil!32745) (Cons!32744 (h!33980 (_ BitVec 64)) (t!47449 List!32748)) )
))
(declare-fun arrayNoDuplicates!0 (array!95393 (_ BitVec 32) List!32748) Bool)

(assert (=> b!1395210 (= res!934561 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32745))))

(declare-fun b!1395211 () Bool)

(declare-fun res!934564 () Bool)

(assert (=> b!1395211 (=> (not res!934564) (not e!789918))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1395211 (= res!934564 (and (= (size!46600 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46600 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46600 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395212 () Bool)

(assert (=> b!1395212 (= e!789917 true)))

(declare-fun lt!612882 () SeekEntryResult!10388)

(assert (=> b!1395212 (= lt!612882 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46049 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46049 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95394 (store (arr!46049 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46600 a!2901)) mask!2840))))

(declare-fun res!934566 () Bool)

(assert (=> start!119844 (=> (not res!934566) (not e!789918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119844 (= res!934566 (validMask!0 mask!2840))))

(assert (=> start!119844 e!789918))

(assert (=> start!119844 true))

(declare-fun array_inv!34994 (array!95393) Bool)

(assert (=> start!119844 (array_inv!34994 a!2901)))

(declare-fun b!1395213 () Bool)

(declare-fun res!934565 () Bool)

(assert (=> b!1395213 (=> (not res!934565) (not e!789918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395213 (= res!934565 (validKeyInArray!0 (select (arr!46049 a!2901) i!1037)))))

(declare-fun b!1395214 () Bool)

(declare-fun res!934559 () Bool)

(assert (=> b!1395214 (=> (not res!934559) (not e!789918))))

(assert (=> b!1395214 (= res!934559 (validKeyInArray!0 (select (arr!46049 a!2901) j!112)))))

(assert (= (and start!119844 res!934566) b!1395211))

(assert (= (and b!1395211 res!934564) b!1395213))

(assert (= (and b!1395213 res!934565) b!1395214))

(assert (= (and b!1395214 res!934559) b!1395207))

(assert (= (and b!1395207 res!934562) b!1395210))

(assert (= (and b!1395210 res!934561) b!1395208))

(assert (= (and b!1395208 res!934560) b!1395209))

(assert (= (and b!1395208 (not res!934563)) b!1395212))

(declare-fun m!1281699 () Bool)

(assert (=> b!1395209 m!1281699))

(assert (=> b!1395209 m!1281699))

(declare-fun m!1281701 () Bool)

(assert (=> b!1395209 m!1281701))

(declare-fun m!1281703 () Bool)

(assert (=> b!1395210 m!1281703))

(assert (=> b!1395214 m!1281699))

(assert (=> b!1395214 m!1281699))

(declare-fun m!1281705 () Bool)

(assert (=> b!1395214 m!1281705))

(declare-fun m!1281707 () Bool)

(assert (=> b!1395212 m!1281707))

(declare-fun m!1281709 () Bool)

(assert (=> b!1395212 m!1281709))

(assert (=> b!1395212 m!1281709))

(declare-fun m!1281711 () Bool)

(assert (=> b!1395212 m!1281711))

(assert (=> b!1395212 m!1281711))

(assert (=> b!1395212 m!1281709))

(declare-fun m!1281713 () Bool)

(assert (=> b!1395212 m!1281713))

(declare-fun m!1281715 () Bool)

(assert (=> b!1395207 m!1281715))

(declare-fun m!1281717 () Bool)

(assert (=> start!119844 m!1281717))

(declare-fun m!1281719 () Bool)

(assert (=> start!119844 m!1281719))

(assert (=> b!1395208 m!1281699))

(declare-fun m!1281721 () Bool)

(assert (=> b!1395208 m!1281721))

(assert (=> b!1395208 m!1281699))

(declare-fun m!1281723 () Bool)

(assert (=> b!1395208 m!1281723))

(assert (=> b!1395208 m!1281721))

(assert (=> b!1395208 m!1281699))

(declare-fun m!1281725 () Bool)

(assert (=> b!1395208 m!1281725))

(declare-fun m!1281727 () Bool)

(assert (=> b!1395208 m!1281727))

(declare-fun m!1281729 () Bool)

(assert (=> b!1395213 m!1281729))

(assert (=> b!1395213 m!1281729))

(declare-fun m!1281731 () Bool)

(assert (=> b!1395213 m!1281731))

(check-sat (not b!1395210) (not b!1395209) (not start!119844) (not b!1395208) (not b!1395213) (not b!1395212) (not b!1395207) (not b!1395214))
