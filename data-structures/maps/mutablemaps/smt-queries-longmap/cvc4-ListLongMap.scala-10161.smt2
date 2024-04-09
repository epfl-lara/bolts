; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119774 () Bool)

(assert start!119774)

(declare-fun b!1394740 () Bool)

(declare-fun res!934264 () Bool)

(declare-fun e!789663 () Bool)

(assert (=> b!1394740 (=> (not res!934264) (not e!789663))))

(declare-datatypes ((array!95374 0))(
  ( (array!95375 (arr!46041 (Array (_ BitVec 32) (_ BitVec 64))) (size!46592 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95374)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394740 (= res!934264 (validKeyInArray!0 (select (arr!46041 a!2901) j!112)))))

(declare-fun b!1394741 () Bool)

(declare-fun res!934266 () Bool)

(assert (=> b!1394741 (=> (not res!934266) (not e!789663))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394741 (= res!934266 (and (= (size!46592 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46592 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46592 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394742 () Bool)

(declare-fun e!789664 () Bool)

(declare-fun e!789665 () Bool)

(assert (=> b!1394742 (= e!789664 e!789665)))

(declare-fun res!934263 () Bool)

(assert (=> b!1394742 (=> res!934263 e!789665)))

(assert (=> b!1394742 (= res!934263 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!612703 () array!95374)

(declare-datatypes ((SeekEntryResult!10380 0))(
  ( (MissingZero!10380 (index!43890 (_ BitVec 32))) (Found!10380 (index!43891 (_ BitVec 32))) (Intermediate!10380 (undefined!11192 Bool) (index!43892 (_ BitVec 32)) (x!125555 (_ BitVec 32))) (Undefined!10380) (MissingVacant!10380 (index!43893 (_ BitVec 32))) )
))
(declare-fun lt!612704 () SeekEntryResult!10380)

(declare-fun lt!612707 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95374 (_ BitVec 32)) SeekEntryResult!10380)

(assert (=> b!1394742 (= lt!612704 (seekEntryOrOpen!0 lt!612707 lt!612703 mask!2840))))

(declare-fun lt!612709 () (_ BitVec 32))

(declare-fun lt!612705 () SeekEntryResult!10380)

(declare-datatypes ((Unit!46714 0))(
  ( (Unit!46715) )
))
(declare-fun lt!612706 () Unit!46714)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46714)

(assert (=> b!1394742 (= lt!612706 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612709 (x!125555 lt!612705) (index!43892 lt!612705) mask!2840))))

(declare-fun res!934261 () Bool)

(assert (=> start!119774 (=> (not res!934261) (not e!789663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119774 (= res!934261 (validMask!0 mask!2840))))

(assert (=> start!119774 e!789663))

(assert (=> start!119774 true))

(declare-fun array_inv!34986 (array!95374) Bool)

(assert (=> start!119774 (array_inv!34986 a!2901)))

(declare-fun b!1394743 () Bool)

(declare-fun res!934265 () Bool)

(assert (=> b!1394743 (=> (not res!934265) (not e!789663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95374 (_ BitVec 32)) Bool)

(assert (=> b!1394743 (= res!934265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394744 () Bool)

(declare-fun res!934259 () Bool)

(assert (=> b!1394744 (=> res!934259 e!789664)))

(assert (=> b!1394744 (= res!934259 (or (bvslt (x!125555 lt!612705) #b00000000000000000000000000000000) (bvsgt (x!125555 lt!612705) #b01111111111111111111111111111110) (bvslt lt!612709 #b00000000000000000000000000000000) (bvsge lt!612709 (size!46592 a!2901)) (bvslt (index!43892 lt!612705) #b00000000000000000000000000000000) (bvsge (index!43892 lt!612705) (size!46592 a!2901)) (not (= lt!612705 (Intermediate!10380 false (index!43892 lt!612705) (x!125555 lt!612705))))))))

(declare-fun b!1394745 () Bool)

(declare-fun e!789661 () Bool)

(assert (=> b!1394745 (= e!789663 (not e!789661))))

(declare-fun res!934258 () Bool)

(assert (=> b!1394745 (=> res!934258 e!789661)))

(assert (=> b!1394745 (= res!934258 (or (not (is-Intermediate!10380 lt!612705)) (undefined!11192 lt!612705)))))

(assert (=> b!1394745 (= lt!612704 (Found!10380 j!112))))

(assert (=> b!1394745 (= lt!612704 (seekEntryOrOpen!0 (select (arr!46041 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394745 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612708 () Unit!46714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46714)

(assert (=> b!1394745 (= lt!612708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95374 (_ BitVec 32)) SeekEntryResult!10380)

(assert (=> b!1394745 (= lt!612705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612709 (select (arr!46041 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394745 (= lt!612709 (toIndex!0 (select (arr!46041 a!2901) j!112) mask!2840))))

(declare-fun b!1394746 () Bool)

(assert (=> b!1394746 (= e!789661 e!789664)))

(declare-fun res!934260 () Bool)

(assert (=> b!1394746 (=> res!934260 e!789664)))

(assert (=> b!1394746 (= res!934260 (not (= lt!612705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612707 mask!2840) lt!612707 lt!612703 mask!2840))))))

(assert (=> b!1394746 (= lt!612707 (select (store (arr!46041 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394746 (= lt!612703 (array!95375 (store (arr!46041 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46592 a!2901)))))

(declare-fun b!1394747 () Bool)

(declare-fun res!934257 () Bool)

(assert (=> b!1394747 (=> (not res!934257) (not e!789663))))

(declare-datatypes ((List!32740 0))(
  ( (Nil!32737) (Cons!32736 (h!33969 (_ BitVec 64)) (t!47441 List!32740)) )
))
(declare-fun arrayNoDuplicates!0 (array!95374 (_ BitVec 32) List!32740) Bool)

(assert (=> b!1394747 (= res!934257 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32737))))

(declare-fun b!1394748 () Bool)

(declare-fun res!934262 () Bool)

(assert (=> b!1394748 (=> (not res!934262) (not e!789663))))

(assert (=> b!1394748 (= res!934262 (validKeyInArray!0 (select (arr!46041 a!2901) i!1037)))))

(declare-fun b!1394749 () Bool)

(assert (=> b!1394749 (= e!789665 (validKeyInArray!0 lt!612707))))

(assert (= (and start!119774 res!934261) b!1394741))

(assert (= (and b!1394741 res!934266) b!1394748))

(assert (= (and b!1394748 res!934262) b!1394740))

(assert (= (and b!1394740 res!934264) b!1394743))

(assert (= (and b!1394743 res!934265) b!1394747))

(assert (= (and b!1394747 res!934257) b!1394745))

(assert (= (and b!1394745 (not res!934258)) b!1394746))

(assert (= (and b!1394746 (not res!934260)) b!1394744))

(assert (= (and b!1394744 (not res!934259)) b!1394742))

(assert (= (and b!1394742 (not res!934263)) b!1394749))

(declare-fun m!1281271 () Bool)

(assert (=> b!1394746 m!1281271))

(assert (=> b!1394746 m!1281271))

(declare-fun m!1281273 () Bool)

(assert (=> b!1394746 m!1281273))

(declare-fun m!1281275 () Bool)

(assert (=> b!1394746 m!1281275))

(declare-fun m!1281277 () Bool)

(assert (=> b!1394746 m!1281277))

(declare-fun m!1281279 () Bool)

(assert (=> b!1394743 m!1281279))

(declare-fun m!1281281 () Bool)

(assert (=> b!1394747 m!1281281))

(declare-fun m!1281283 () Bool)

(assert (=> b!1394740 m!1281283))

(assert (=> b!1394740 m!1281283))

(declare-fun m!1281285 () Bool)

(assert (=> b!1394740 m!1281285))

(declare-fun m!1281287 () Bool)

(assert (=> start!119774 m!1281287))

(declare-fun m!1281289 () Bool)

(assert (=> start!119774 m!1281289))

(declare-fun m!1281291 () Bool)

(assert (=> b!1394749 m!1281291))

(declare-fun m!1281293 () Bool)

(assert (=> b!1394748 m!1281293))

(assert (=> b!1394748 m!1281293))

(declare-fun m!1281295 () Bool)

(assert (=> b!1394748 m!1281295))

(assert (=> b!1394745 m!1281283))

(declare-fun m!1281297 () Bool)

(assert (=> b!1394745 m!1281297))

(assert (=> b!1394745 m!1281283))

(assert (=> b!1394745 m!1281283))

(declare-fun m!1281299 () Bool)

(assert (=> b!1394745 m!1281299))

(declare-fun m!1281301 () Bool)

(assert (=> b!1394745 m!1281301))

(assert (=> b!1394745 m!1281283))

(declare-fun m!1281303 () Bool)

(assert (=> b!1394745 m!1281303))

(declare-fun m!1281305 () Bool)

(assert (=> b!1394745 m!1281305))

(declare-fun m!1281307 () Bool)

(assert (=> b!1394742 m!1281307))

(declare-fun m!1281309 () Bool)

(assert (=> b!1394742 m!1281309))

(push 1)

(assert (not b!1394748))

(assert (not b!1394746))

(assert (not b!1394743))

(assert (not b!1394742))

(assert (not b!1394745))

(assert (not b!1394747))

(assert (not b!1394740))

(assert (not b!1394749))

(assert (not start!119774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

