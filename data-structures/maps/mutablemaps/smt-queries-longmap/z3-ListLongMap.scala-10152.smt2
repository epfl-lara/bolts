; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119718 () Bool)

(assert start!119718)

(declare-fun b!1393989 () Bool)

(declare-fun res!933512 () Bool)

(declare-fun e!789320 () Bool)

(assert (=> b!1393989 (=> (not res!933512) (not e!789320))))

(declare-datatypes ((array!95318 0))(
  ( (array!95319 (arr!46013 (Array (_ BitVec 32) (_ BitVec 64))) (size!46564 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95318)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95318 (_ BitVec 32)) Bool)

(assert (=> b!1393989 (= res!933512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393990 () Bool)

(declare-fun res!933509 () Bool)

(assert (=> b!1393990 (=> (not res!933509) (not e!789320))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393990 (= res!933509 (validKeyInArray!0 (select (arr!46013 a!2901) i!1037)))))

(declare-fun res!933506 () Bool)

(assert (=> start!119718 (=> (not res!933506) (not e!789320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119718 (= res!933506 (validMask!0 mask!2840))))

(assert (=> start!119718 e!789320))

(assert (=> start!119718 true))

(declare-fun array_inv!34958 (array!95318) Bool)

(assert (=> start!119718 (array_inv!34958 a!2901)))

(declare-fun b!1393991 () Bool)

(declare-fun e!789319 () Bool)

(assert (=> b!1393991 (= e!789319 true)))

(declare-datatypes ((SeekEntryResult!10352 0))(
  ( (MissingZero!10352 (index!43778 (_ BitVec 32))) (Found!10352 (index!43779 (_ BitVec 32))) (Intermediate!10352 (undefined!11164 Bool) (index!43780 (_ BitVec 32)) (x!125455 (_ BitVec 32))) (Undefined!10352) (MissingVacant!10352 (index!43781 (_ BitVec 32))) )
))
(declare-fun lt!612169 () SeekEntryResult!10352)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95318 (_ BitVec 32)) SeekEntryResult!10352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393991 (= lt!612169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46013 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46013 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95319 (store (arr!46013 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46564 a!2901)) mask!2840))))

(declare-fun b!1393992 () Bool)

(declare-fun res!933507 () Bool)

(assert (=> b!1393992 (=> (not res!933507) (not e!789320))))

(declare-datatypes ((List!32712 0))(
  ( (Nil!32709) (Cons!32708 (h!33941 (_ BitVec 64)) (t!47413 List!32712)) )
))
(declare-fun arrayNoDuplicates!0 (array!95318 (_ BitVec 32) List!32712) Bool)

(assert (=> b!1393992 (= res!933507 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32709))))

(declare-fun b!1393993 () Bool)

(declare-fun res!933510 () Bool)

(assert (=> b!1393993 (=> (not res!933510) (not e!789320))))

(assert (=> b!1393993 (= res!933510 (and (= (size!46564 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46564 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46564 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393994 () Bool)

(assert (=> b!1393994 (= e!789320 (not e!789319))))

(declare-fun res!933511 () Bool)

(assert (=> b!1393994 (=> res!933511 e!789319)))

(declare-fun lt!612168 () SeekEntryResult!10352)

(get-info :version)

(assert (=> b!1393994 (= res!933511 (or (not ((_ is Intermediate!10352) lt!612168)) (undefined!11164 lt!612168)))))

(declare-fun e!789318 () Bool)

(assert (=> b!1393994 e!789318))

(declare-fun res!933513 () Bool)

(assert (=> b!1393994 (=> (not res!933513) (not e!789318))))

(assert (=> b!1393994 (= res!933513 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46658 0))(
  ( (Unit!46659) )
))
(declare-fun lt!612167 () Unit!46658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46658)

(assert (=> b!1393994 (= lt!612167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393994 (= lt!612168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46013 a!2901) j!112) mask!2840) (select (arr!46013 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393995 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95318 (_ BitVec 32)) SeekEntryResult!10352)

(assert (=> b!1393995 (= e!789318 (= (seekEntryOrOpen!0 (select (arr!46013 a!2901) j!112) a!2901 mask!2840) (Found!10352 j!112)))))

(declare-fun b!1393996 () Bool)

(declare-fun res!933508 () Bool)

(assert (=> b!1393996 (=> (not res!933508) (not e!789320))))

(assert (=> b!1393996 (= res!933508 (validKeyInArray!0 (select (arr!46013 a!2901) j!112)))))

(assert (= (and start!119718 res!933506) b!1393993))

(assert (= (and b!1393993 res!933510) b!1393990))

(assert (= (and b!1393990 res!933509) b!1393996))

(assert (= (and b!1393996 res!933508) b!1393989))

(assert (= (and b!1393989 res!933512) b!1393992))

(assert (= (and b!1393992 res!933507) b!1393994))

(assert (= (and b!1393994 res!933513) b!1393995))

(assert (= (and b!1393994 (not res!933511)) b!1393991))

(declare-fun m!1280223 () Bool)

(assert (=> start!119718 m!1280223))

(declare-fun m!1280225 () Bool)

(assert (=> start!119718 m!1280225))

(declare-fun m!1280227 () Bool)

(assert (=> b!1393994 m!1280227))

(declare-fun m!1280229 () Bool)

(assert (=> b!1393994 m!1280229))

(assert (=> b!1393994 m!1280227))

(declare-fun m!1280231 () Bool)

(assert (=> b!1393994 m!1280231))

(assert (=> b!1393994 m!1280229))

(assert (=> b!1393994 m!1280227))

(declare-fun m!1280233 () Bool)

(assert (=> b!1393994 m!1280233))

(declare-fun m!1280235 () Bool)

(assert (=> b!1393994 m!1280235))

(assert (=> b!1393995 m!1280227))

(assert (=> b!1393995 m!1280227))

(declare-fun m!1280237 () Bool)

(assert (=> b!1393995 m!1280237))

(assert (=> b!1393996 m!1280227))

(assert (=> b!1393996 m!1280227))

(declare-fun m!1280239 () Bool)

(assert (=> b!1393996 m!1280239))

(declare-fun m!1280241 () Bool)

(assert (=> b!1393992 m!1280241))

(declare-fun m!1280243 () Bool)

(assert (=> b!1393989 m!1280243))

(declare-fun m!1280245 () Bool)

(assert (=> b!1393991 m!1280245))

(declare-fun m!1280247 () Bool)

(assert (=> b!1393991 m!1280247))

(assert (=> b!1393991 m!1280247))

(declare-fun m!1280249 () Bool)

(assert (=> b!1393991 m!1280249))

(assert (=> b!1393991 m!1280249))

(assert (=> b!1393991 m!1280247))

(declare-fun m!1280251 () Bool)

(assert (=> b!1393991 m!1280251))

(declare-fun m!1280253 () Bool)

(assert (=> b!1393990 m!1280253))

(assert (=> b!1393990 m!1280253))

(declare-fun m!1280255 () Bool)

(assert (=> b!1393990 m!1280255))

(check-sat (not b!1393989) (not b!1393990) (not b!1393992) (not b!1393995) (not start!119718) (not b!1393991) (not b!1393996) (not b!1393994))
