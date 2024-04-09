; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119640 () Bool)

(assert start!119640)

(declare-fun b!1393054 () Bool)

(declare-fun res!932572 () Bool)

(declare-fun e!788849 () Bool)

(assert (=> b!1393054 (=> (not res!932572) (not e!788849))))

(declare-datatypes ((array!95240 0))(
  ( (array!95241 (arr!45974 (Array (_ BitVec 32) (_ BitVec 64))) (size!46525 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95240)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95240 (_ BitVec 32)) Bool)

(assert (=> b!1393054 (= res!932572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393055 () Bool)

(declare-fun e!788850 () Bool)

(assert (=> b!1393055 (= e!788849 (not e!788850))))

(declare-fun res!932576 () Bool)

(assert (=> b!1393055 (=> res!932576 e!788850)))

(declare-datatypes ((SeekEntryResult!10313 0))(
  ( (MissingZero!10313 (index!43622 (_ BitVec 32))) (Found!10313 (index!43623 (_ BitVec 32))) (Intermediate!10313 (undefined!11125 Bool) (index!43624 (_ BitVec 32)) (x!125312 (_ BitVec 32))) (Undefined!10313) (MissingVacant!10313 (index!43625 (_ BitVec 32))) )
))
(declare-fun lt!611816 () SeekEntryResult!10313)

(get-info :version)

(assert (=> b!1393055 (= res!932576 (or (not ((_ is Intermediate!10313) lt!611816)) (undefined!11125 lt!611816)))))

(declare-fun e!788852 () Bool)

(assert (=> b!1393055 e!788852))

(declare-fun res!932570 () Bool)

(assert (=> b!1393055 (=> (not res!932570) (not e!788852))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393055 (= res!932570 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46580 0))(
  ( (Unit!46581) )
))
(declare-fun lt!611818 () Unit!46580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95240 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46580)

(assert (=> b!1393055 (= lt!611818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95240 (_ BitVec 32)) SeekEntryResult!10313)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393055 (= lt!611816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45974 a!2901) j!112) mask!2840) (select (arr!45974 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393056 () Bool)

(assert (=> b!1393056 (= e!788850 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611817 () SeekEntryResult!10313)

(assert (=> b!1393056 (= lt!611817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45974 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45974 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95241 (store (arr!45974 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46525 a!2901)) mask!2840))))

(declare-fun b!1393057 () Bool)

(declare-fun res!932574 () Bool)

(assert (=> b!1393057 (=> (not res!932574) (not e!788849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393057 (= res!932574 (validKeyInArray!0 (select (arr!45974 a!2901) j!112)))))

(declare-fun b!1393058 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95240 (_ BitVec 32)) SeekEntryResult!10313)

(assert (=> b!1393058 (= e!788852 (= (seekEntryOrOpen!0 (select (arr!45974 a!2901) j!112) a!2901 mask!2840) (Found!10313 j!112)))))

(declare-fun b!1393053 () Bool)

(declare-fun res!932573 () Bool)

(assert (=> b!1393053 (=> (not res!932573) (not e!788849))))

(declare-datatypes ((List!32673 0))(
  ( (Nil!32670) (Cons!32669 (h!33902 (_ BitVec 64)) (t!47374 List!32673)) )
))
(declare-fun arrayNoDuplicates!0 (array!95240 (_ BitVec 32) List!32673) Bool)

(assert (=> b!1393053 (= res!932573 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32670))))

(declare-fun res!932577 () Bool)

(assert (=> start!119640 (=> (not res!932577) (not e!788849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119640 (= res!932577 (validMask!0 mask!2840))))

(assert (=> start!119640 e!788849))

(assert (=> start!119640 true))

(declare-fun array_inv!34919 (array!95240) Bool)

(assert (=> start!119640 (array_inv!34919 a!2901)))

(declare-fun b!1393059 () Bool)

(declare-fun res!932575 () Bool)

(assert (=> b!1393059 (=> (not res!932575) (not e!788849))))

(assert (=> b!1393059 (= res!932575 (and (= (size!46525 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46525 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46525 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393060 () Bool)

(declare-fun res!932571 () Bool)

(assert (=> b!1393060 (=> (not res!932571) (not e!788849))))

(assert (=> b!1393060 (= res!932571 (validKeyInArray!0 (select (arr!45974 a!2901) i!1037)))))

(assert (= (and start!119640 res!932577) b!1393059))

(assert (= (and b!1393059 res!932575) b!1393060))

(assert (= (and b!1393060 res!932571) b!1393057))

(assert (= (and b!1393057 res!932574) b!1393054))

(assert (= (and b!1393054 res!932572) b!1393053))

(assert (= (and b!1393053 res!932573) b!1393055))

(assert (= (and b!1393055 res!932570) b!1393058))

(assert (= (and b!1393055 (not res!932576)) b!1393056))

(declare-fun m!1278897 () Bool)

(assert (=> b!1393053 m!1278897))

(declare-fun m!1278899 () Bool)

(assert (=> start!119640 m!1278899))

(declare-fun m!1278901 () Bool)

(assert (=> start!119640 m!1278901))

(declare-fun m!1278903 () Bool)

(assert (=> b!1393057 m!1278903))

(assert (=> b!1393057 m!1278903))

(declare-fun m!1278905 () Bool)

(assert (=> b!1393057 m!1278905))

(declare-fun m!1278907 () Bool)

(assert (=> b!1393060 m!1278907))

(assert (=> b!1393060 m!1278907))

(declare-fun m!1278909 () Bool)

(assert (=> b!1393060 m!1278909))

(declare-fun m!1278911 () Bool)

(assert (=> b!1393056 m!1278911))

(declare-fun m!1278913 () Bool)

(assert (=> b!1393056 m!1278913))

(assert (=> b!1393056 m!1278913))

(declare-fun m!1278915 () Bool)

(assert (=> b!1393056 m!1278915))

(assert (=> b!1393056 m!1278915))

(assert (=> b!1393056 m!1278913))

(declare-fun m!1278917 () Bool)

(assert (=> b!1393056 m!1278917))

(declare-fun m!1278919 () Bool)

(assert (=> b!1393054 m!1278919))

(assert (=> b!1393058 m!1278903))

(assert (=> b!1393058 m!1278903))

(declare-fun m!1278921 () Bool)

(assert (=> b!1393058 m!1278921))

(assert (=> b!1393055 m!1278903))

(declare-fun m!1278923 () Bool)

(assert (=> b!1393055 m!1278923))

(assert (=> b!1393055 m!1278903))

(declare-fun m!1278925 () Bool)

(assert (=> b!1393055 m!1278925))

(assert (=> b!1393055 m!1278923))

(assert (=> b!1393055 m!1278903))

(declare-fun m!1278927 () Bool)

(assert (=> b!1393055 m!1278927))

(declare-fun m!1278929 () Bool)

(assert (=> b!1393055 m!1278929))

(check-sat (not b!1393060) (not b!1393058) (not b!1393056) (not b!1393053) (not b!1393054) (not b!1393055) (not b!1393057) (not start!119640))
