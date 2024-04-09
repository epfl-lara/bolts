; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119628 () Bool)

(assert start!119628)

(declare-fun b!1392909 () Bool)

(declare-fun res!932428 () Bool)

(declare-fun e!788778 () Bool)

(assert (=> b!1392909 (=> (not res!932428) (not e!788778))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95228 0))(
  ( (array!95229 (arr!45968 (Array (_ BitVec 32) (_ BitVec 64))) (size!46519 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95228)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1392909 (= res!932428 (and (= (size!46519 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46519 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46519 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392910 () Bool)

(declare-fun res!932433 () Bool)

(assert (=> b!1392910 (=> (not res!932433) (not e!788778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392910 (= res!932433 (validKeyInArray!0 (select (arr!45968 a!2901) i!1037)))))

(declare-fun b!1392911 () Bool)

(declare-fun res!932432 () Bool)

(assert (=> b!1392911 (=> (not res!932432) (not e!788778))))

(declare-datatypes ((List!32667 0))(
  ( (Nil!32664) (Cons!32663 (h!33896 (_ BitVec 64)) (t!47368 List!32667)) )
))
(declare-fun arrayNoDuplicates!0 (array!95228 (_ BitVec 32) List!32667) Bool)

(assert (=> b!1392911 (= res!932432 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32664))))

(declare-fun e!788777 () Bool)

(declare-fun b!1392912 () Bool)

(declare-datatypes ((SeekEntryResult!10307 0))(
  ( (MissingZero!10307 (index!43598 (_ BitVec 32))) (Found!10307 (index!43599 (_ BitVec 32))) (Intermediate!10307 (undefined!11119 Bool) (index!43600 (_ BitVec 32)) (x!125290 (_ BitVec 32))) (Undefined!10307) (MissingVacant!10307 (index!43601 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95228 (_ BitVec 32)) SeekEntryResult!10307)

(assert (=> b!1392912 (= e!788777 (= (seekEntryOrOpen!0 (select (arr!45968 a!2901) j!112) a!2901 mask!2840) (Found!10307 j!112)))))

(declare-fun b!1392913 () Bool)

(declare-fun res!932426 () Bool)

(assert (=> b!1392913 (=> (not res!932426) (not e!788778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95228 (_ BitVec 32)) Bool)

(assert (=> b!1392913 (= res!932426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!932430 () Bool)

(assert (=> start!119628 (=> (not res!932430) (not e!788778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119628 (= res!932430 (validMask!0 mask!2840))))

(assert (=> start!119628 e!788778))

(assert (=> start!119628 true))

(declare-fun array_inv!34913 (array!95228) Bool)

(assert (=> start!119628 (array_inv!34913 a!2901)))

(declare-fun b!1392914 () Bool)

(declare-fun res!932427 () Bool)

(assert (=> b!1392914 (=> (not res!932427) (not e!788778))))

(assert (=> b!1392914 (= res!932427 (validKeyInArray!0 (select (arr!45968 a!2901) j!112)))))

(declare-fun b!1392915 () Bool)

(declare-fun e!788780 () Bool)

(assert (=> b!1392915 (= e!788778 (not e!788780))))

(declare-fun res!932429 () Bool)

(assert (=> b!1392915 (=> res!932429 e!788780)))

(declare-fun lt!611764 () SeekEntryResult!10307)

(get-info :version)

(assert (=> b!1392915 (= res!932429 (or (not ((_ is Intermediate!10307) lt!611764)) (undefined!11119 lt!611764)))))

(assert (=> b!1392915 e!788777))

(declare-fun res!932431 () Bool)

(assert (=> b!1392915 (=> (not res!932431) (not e!788777))))

(assert (=> b!1392915 (= res!932431 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46568 0))(
  ( (Unit!46569) )
))
(declare-fun lt!611763 () Unit!46568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46568)

(assert (=> b!1392915 (= lt!611763 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95228 (_ BitVec 32)) SeekEntryResult!10307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392915 (= lt!611764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45968 a!2901) j!112) mask!2840) (select (arr!45968 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392916 () Bool)

(assert (=> b!1392916 (= e!788780 true)))

(declare-fun lt!611762 () SeekEntryResult!10307)

(assert (=> b!1392916 (= lt!611762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45968 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45968 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95229 (store (arr!45968 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46519 a!2901)) mask!2840))))

(assert (= (and start!119628 res!932430) b!1392909))

(assert (= (and b!1392909 res!932428) b!1392910))

(assert (= (and b!1392910 res!932433) b!1392914))

(assert (= (and b!1392914 res!932427) b!1392913))

(assert (= (and b!1392913 res!932426) b!1392911))

(assert (= (and b!1392911 res!932432) b!1392915))

(assert (= (and b!1392915 res!932431) b!1392912))

(assert (= (and b!1392915 (not res!932429)) b!1392916))

(declare-fun m!1278693 () Bool)

(assert (=> b!1392911 m!1278693))

(declare-fun m!1278695 () Bool)

(assert (=> b!1392916 m!1278695))

(declare-fun m!1278697 () Bool)

(assert (=> b!1392916 m!1278697))

(assert (=> b!1392916 m!1278697))

(declare-fun m!1278699 () Bool)

(assert (=> b!1392916 m!1278699))

(assert (=> b!1392916 m!1278699))

(assert (=> b!1392916 m!1278697))

(declare-fun m!1278701 () Bool)

(assert (=> b!1392916 m!1278701))

(declare-fun m!1278703 () Bool)

(assert (=> b!1392912 m!1278703))

(assert (=> b!1392912 m!1278703))

(declare-fun m!1278705 () Bool)

(assert (=> b!1392912 m!1278705))

(declare-fun m!1278707 () Bool)

(assert (=> b!1392913 m!1278707))

(declare-fun m!1278709 () Bool)

(assert (=> start!119628 m!1278709))

(declare-fun m!1278711 () Bool)

(assert (=> start!119628 m!1278711))

(assert (=> b!1392914 m!1278703))

(assert (=> b!1392914 m!1278703))

(declare-fun m!1278713 () Bool)

(assert (=> b!1392914 m!1278713))

(declare-fun m!1278715 () Bool)

(assert (=> b!1392910 m!1278715))

(assert (=> b!1392910 m!1278715))

(declare-fun m!1278717 () Bool)

(assert (=> b!1392910 m!1278717))

(assert (=> b!1392915 m!1278703))

(declare-fun m!1278719 () Bool)

(assert (=> b!1392915 m!1278719))

(assert (=> b!1392915 m!1278703))

(declare-fun m!1278721 () Bool)

(assert (=> b!1392915 m!1278721))

(assert (=> b!1392915 m!1278719))

(assert (=> b!1392915 m!1278703))

(declare-fun m!1278723 () Bool)

(assert (=> b!1392915 m!1278723))

(declare-fun m!1278725 () Bool)

(assert (=> b!1392915 m!1278725))

(check-sat (not b!1392913) (not start!119628) (not b!1392914) (not b!1392916) (not b!1392912) (not b!1392910) (not b!1392915) (not b!1392911))
