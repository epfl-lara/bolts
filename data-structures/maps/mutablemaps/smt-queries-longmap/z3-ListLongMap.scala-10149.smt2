; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119700 () Bool)

(assert start!119700)

(declare-fun b!1393773 () Bool)

(declare-fun res!933297 () Bool)

(declare-fun e!789212 () Bool)

(assert (=> b!1393773 (=> (not res!933297) (not e!789212))))

(declare-datatypes ((array!95300 0))(
  ( (array!95301 (arr!46004 (Array (_ BitVec 32) (_ BitVec 64))) (size!46555 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95300)

(declare-datatypes ((List!32703 0))(
  ( (Nil!32700) (Cons!32699 (h!33932 (_ BitVec 64)) (t!47404 List!32703)) )
))
(declare-fun arrayNoDuplicates!0 (array!95300 (_ BitVec 32) List!32703) Bool)

(assert (=> b!1393773 (= res!933297 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32700))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1393774 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!789210 () Bool)

(declare-datatypes ((SeekEntryResult!10343 0))(
  ( (MissingZero!10343 (index!43742 (_ BitVec 32))) (Found!10343 (index!43743 (_ BitVec 32))) (Intermediate!10343 (undefined!11155 Bool) (index!43744 (_ BitVec 32)) (x!125422 (_ BitVec 32))) (Undefined!10343) (MissingVacant!10343 (index!43745 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95300 (_ BitVec 32)) SeekEntryResult!10343)

(assert (=> b!1393774 (= e!789210 (= (seekEntryOrOpen!0 (select (arr!46004 a!2901) j!112) a!2901 mask!2840) (Found!10343 j!112)))))

(declare-fun b!1393775 () Bool)

(declare-fun res!933296 () Bool)

(assert (=> b!1393775 (=> (not res!933296) (not e!789212))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393775 (= res!933296 (and (= (size!46555 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46555 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46555 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393776 () Bool)

(declare-fun e!789211 () Bool)

(assert (=> b!1393776 (= e!789212 (not e!789211))))

(declare-fun res!933290 () Bool)

(assert (=> b!1393776 (=> res!933290 e!789211)))

(declare-fun lt!612087 () SeekEntryResult!10343)

(get-info :version)

(assert (=> b!1393776 (= res!933290 (or (not ((_ is Intermediate!10343) lt!612087)) (undefined!11155 lt!612087)))))

(assert (=> b!1393776 e!789210))

(declare-fun res!933295 () Bool)

(assert (=> b!1393776 (=> (not res!933295) (not e!789210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95300 (_ BitVec 32)) Bool)

(assert (=> b!1393776 (= res!933295 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46640 0))(
  ( (Unit!46641) )
))
(declare-fun lt!612086 () Unit!46640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46640)

(assert (=> b!1393776 (= lt!612086 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95300 (_ BitVec 32)) SeekEntryResult!10343)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393776 (= lt!612087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46004 a!2901) j!112) mask!2840) (select (arr!46004 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393777 () Bool)

(assert (=> b!1393777 (= e!789211 true)))

(declare-fun lt!612088 () SeekEntryResult!10343)

(assert (=> b!1393777 (= lt!612088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46004 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46004 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95301 (store (arr!46004 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46555 a!2901)) mask!2840))))

(declare-fun b!1393778 () Bool)

(declare-fun res!933294 () Bool)

(assert (=> b!1393778 (=> (not res!933294) (not e!789212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393778 (= res!933294 (validKeyInArray!0 (select (arr!46004 a!2901) j!112)))))

(declare-fun res!933293 () Bool)

(assert (=> start!119700 (=> (not res!933293) (not e!789212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119700 (= res!933293 (validMask!0 mask!2840))))

(assert (=> start!119700 e!789212))

(assert (=> start!119700 true))

(declare-fun array_inv!34949 (array!95300) Bool)

(assert (=> start!119700 (array_inv!34949 a!2901)))

(declare-fun b!1393779 () Bool)

(declare-fun res!933291 () Bool)

(assert (=> b!1393779 (=> (not res!933291) (not e!789212))))

(assert (=> b!1393779 (= res!933291 (validKeyInArray!0 (select (arr!46004 a!2901) i!1037)))))

(declare-fun b!1393780 () Bool)

(declare-fun res!933292 () Bool)

(assert (=> b!1393780 (=> (not res!933292) (not e!789212))))

(assert (=> b!1393780 (= res!933292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119700 res!933293) b!1393775))

(assert (= (and b!1393775 res!933296) b!1393779))

(assert (= (and b!1393779 res!933291) b!1393778))

(assert (= (and b!1393778 res!933294) b!1393780))

(assert (= (and b!1393780 res!933292) b!1393773))

(assert (= (and b!1393773 res!933297) b!1393776))

(assert (= (and b!1393776 res!933295) b!1393774))

(assert (= (and b!1393776 (not res!933290)) b!1393777))

(declare-fun m!1279917 () Bool)

(assert (=> b!1393773 m!1279917))

(declare-fun m!1279919 () Bool)

(assert (=> b!1393774 m!1279919))

(assert (=> b!1393774 m!1279919))

(declare-fun m!1279921 () Bool)

(assert (=> b!1393774 m!1279921))

(declare-fun m!1279923 () Bool)

(assert (=> b!1393779 m!1279923))

(assert (=> b!1393779 m!1279923))

(declare-fun m!1279925 () Bool)

(assert (=> b!1393779 m!1279925))

(declare-fun m!1279927 () Bool)

(assert (=> start!119700 m!1279927))

(declare-fun m!1279929 () Bool)

(assert (=> start!119700 m!1279929))

(assert (=> b!1393776 m!1279919))

(declare-fun m!1279931 () Bool)

(assert (=> b!1393776 m!1279931))

(assert (=> b!1393776 m!1279919))

(declare-fun m!1279933 () Bool)

(assert (=> b!1393776 m!1279933))

(assert (=> b!1393776 m!1279931))

(assert (=> b!1393776 m!1279919))

(declare-fun m!1279935 () Bool)

(assert (=> b!1393776 m!1279935))

(declare-fun m!1279937 () Bool)

(assert (=> b!1393776 m!1279937))

(assert (=> b!1393778 m!1279919))

(assert (=> b!1393778 m!1279919))

(declare-fun m!1279939 () Bool)

(assert (=> b!1393778 m!1279939))

(declare-fun m!1279941 () Bool)

(assert (=> b!1393780 m!1279941))

(declare-fun m!1279943 () Bool)

(assert (=> b!1393777 m!1279943))

(declare-fun m!1279945 () Bool)

(assert (=> b!1393777 m!1279945))

(assert (=> b!1393777 m!1279945))

(declare-fun m!1279947 () Bool)

(assert (=> b!1393777 m!1279947))

(assert (=> b!1393777 m!1279947))

(assert (=> b!1393777 m!1279945))

(declare-fun m!1279949 () Bool)

(assert (=> b!1393777 m!1279949))

(check-sat (not b!1393777) (not b!1393773) (not start!119700) (not b!1393776) (not b!1393778) (not b!1393779) (not b!1393780) (not b!1393774))
