; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119736 () Bool)

(assert start!119736)

(declare-fun b!1394219 () Bool)

(declare-fun res!933744 () Bool)

(declare-fun e!789427 () Bool)

(assert (=> b!1394219 (=> (not res!933744) (not e!789427))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95336 0))(
  ( (array!95337 (arr!46022 (Array (_ BitVec 32) (_ BitVec 64))) (size!46573 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95336)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394219 (= res!933744 (and (= (size!46573 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46573 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46573 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394220 () Bool)

(declare-fun e!789428 () Bool)

(assert (=> b!1394220 (= e!789428 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!612307 () array!95336)

(declare-datatypes ((SeekEntryResult!10361 0))(
  ( (MissingZero!10361 (index!43814 (_ BitVec 32))) (Found!10361 (index!43815 (_ BitVec 32))) (Intermediate!10361 (undefined!11173 Bool) (index!43816 (_ BitVec 32)) (x!125488 (_ BitVec 32))) (Undefined!10361) (MissingVacant!10361 (index!43817 (_ BitVec 32))) )
))
(declare-fun lt!612310 () SeekEntryResult!10361)

(declare-fun lt!612304 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95336 (_ BitVec 32)) SeekEntryResult!10361)

(assert (=> b!1394220 (= lt!612310 (seekEntryOrOpen!0 lt!612304 lt!612307 mask!2840))))

(declare-fun lt!612309 () (_ BitVec 32))

(declare-fun lt!612308 () SeekEntryResult!10361)

(declare-datatypes ((Unit!46676 0))(
  ( (Unit!46677) )
))
(declare-fun lt!612306 () Unit!46676)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46676)

(assert (=> b!1394220 (= lt!612306 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612309 (x!125488 lt!612308) (index!43816 lt!612308) mask!2840))))

(declare-fun b!1394221 () Bool)

(declare-fun res!933739 () Bool)

(assert (=> b!1394221 (=> (not res!933739) (not e!789427))))

(declare-datatypes ((List!32721 0))(
  ( (Nil!32718) (Cons!32717 (h!33950 (_ BitVec 64)) (t!47422 List!32721)) )
))
(declare-fun arrayNoDuplicates!0 (array!95336 (_ BitVec 32) List!32721) Bool)

(assert (=> b!1394221 (= res!933739 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32718))))

(declare-fun b!1394222 () Bool)

(declare-fun res!933738 () Bool)

(assert (=> b!1394222 (=> (not res!933738) (not e!789427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394222 (= res!933738 (validKeyInArray!0 (select (arr!46022 a!2901) j!112)))))

(declare-fun b!1394223 () Bool)

(declare-fun res!933737 () Bool)

(assert (=> b!1394223 (=> (not res!933737) (not e!789427))))

(assert (=> b!1394223 (= res!933737 (validKeyInArray!0 (select (arr!46022 a!2901) i!1037)))))

(declare-fun b!1394224 () Bool)

(declare-fun res!933742 () Bool)

(assert (=> b!1394224 (=> (not res!933742) (not e!789427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95336 (_ BitVec 32)) Bool)

(assert (=> b!1394224 (= res!933742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394225 () Bool)

(declare-fun res!933743 () Bool)

(assert (=> b!1394225 (=> res!933743 e!789428)))

(assert (=> b!1394225 (= res!933743 (or (bvslt (x!125488 lt!612308) #b00000000000000000000000000000000) (bvsgt (x!125488 lt!612308) #b01111111111111111111111111111110) (bvslt lt!612309 #b00000000000000000000000000000000) (bvsge lt!612309 (size!46573 a!2901)) (bvslt (index!43816 lt!612308) #b00000000000000000000000000000000) (bvsge (index!43816 lt!612308) (size!46573 a!2901)) (not (= lt!612308 (Intermediate!10361 false (index!43816 lt!612308) (x!125488 lt!612308))))))))

(declare-fun res!933741 () Bool)

(assert (=> start!119736 (=> (not res!933741) (not e!789427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119736 (= res!933741 (validMask!0 mask!2840))))

(assert (=> start!119736 e!789427))

(assert (=> start!119736 true))

(declare-fun array_inv!34967 (array!95336) Bool)

(assert (=> start!119736 (array_inv!34967 a!2901)))

(declare-fun b!1394226 () Bool)

(declare-fun e!789426 () Bool)

(assert (=> b!1394226 (= e!789427 (not e!789426))))

(declare-fun res!933740 () Bool)

(assert (=> b!1394226 (=> res!933740 e!789426)))

(get-info :version)

(assert (=> b!1394226 (= res!933740 (or (not ((_ is Intermediate!10361) lt!612308)) (undefined!11173 lt!612308)))))

(assert (=> b!1394226 (= lt!612310 (Found!10361 j!112))))

(assert (=> b!1394226 (= lt!612310 (seekEntryOrOpen!0 (select (arr!46022 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394226 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612305 () Unit!46676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46676)

(assert (=> b!1394226 (= lt!612305 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95336 (_ BitVec 32)) SeekEntryResult!10361)

(assert (=> b!1394226 (= lt!612308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612309 (select (arr!46022 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394226 (= lt!612309 (toIndex!0 (select (arr!46022 a!2901) j!112) mask!2840))))

(declare-fun b!1394227 () Bool)

(assert (=> b!1394227 (= e!789426 e!789428)))

(declare-fun res!933736 () Bool)

(assert (=> b!1394227 (=> res!933736 e!789428)))

(assert (=> b!1394227 (= res!933736 (not (= lt!612308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612304 mask!2840) lt!612304 lt!612307 mask!2840))))))

(assert (=> b!1394227 (= lt!612304 (select (store (arr!46022 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394227 (= lt!612307 (array!95337 (store (arr!46022 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46573 a!2901)))))

(assert (= (and start!119736 res!933741) b!1394219))

(assert (= (and b!1394219 res!933744) b!1394223))

(assert (= (and b!1394223 res!933737) b!1394222))

(assert (= (and b!1394222 res!933738) b!1394224))

(assert (= (and b!1394224 res!933742) b!1394221))

(assert (= (and b!1394221 res!933739) b!1394226))

(assert (= (and b!1394226 (not res!933740)) b!1394227))

(assert (= (and b!1394227 (not res!933736)) b!1394225))

(assert (= (and b!1394225 (not res!933743)) b!1394220))

(declare-fun m!1280545 () Bool)

(assert (=> b!1394226 m!1280545))

(declare-fun m!1280547 () Bool)

(assert (=> b!1394226 m!1280547))

(assert (=> b!1394226 m!1280545))

(declare-fun m!1280549 () Bool)

(assert (=> b!1394226 m!1280549))

(assert (=> b!1394226 m!1280545))

(declare-fun m!1280551 () Bool)

(assert (=> b!1394226 m!1280551))

(assert (=> b!1394226 m!1280545))

(declare-fun m!1280553 () Bool)

(assert (=> b!1394226 m!1280553))

(declare-fun m!1280555 () Bool)

(assert (=> b!1394226 m!1280555))

(declare-fun m!1280557 () Bool)

(assert (=> b!1394224 m!1280557))

(declare-fun m!1280559 () Bool)

(assert (=> b!1394221 m!1280559))

(declare-fun m!1280561 () Bool)

(assert (=> start!119736 m!1280561))

(declare-fun m!1280563 () Bool)

(assert (=> start!119736 m!1280563))

(declare-fun m!1280565 () Bool)

(assert (=> b!1394223 m!1280565))

(assert (=> b!1394223 m!1280565))

(declare-fun m!1280567 () Bool)

(assert (=> b!1394223 m!1280567))

(declare-fun m!1280569 () Bool)

(assert (=> b!1394220 m!1280569))

(declare-fun m!1280571 () Bool)

(assert (=> b!1394220 m!1280571))

(assert (=> b!1394222 m!1280545))

(assert (=> b!1394222 m!1280545))

(declare-fun m!1280573 () Bool)

(assert (=> b!1394222 m!1280573))

(declare-fun m!1280575 () Bool)

(assert (=> b!1394227 m!1280575))

(assert (=> b!1394227 m!1280575))

(declare-fun m!1280577 () Bool)

(assert (=> b!1394227 m!1280577))

(declare-fun m!1280579 () Bool)

(assert (=> b!1394227 m!1280579))

(declare-fun m!1280581 () Bool)

(assert (=> b!1394227 m!1280581))

(check-sat (not b!1394221) (not start!119736) (not b!1394224) (not b!1394227) (not b!1394223) (not b!1394222) (not b!1394220) (not b!1394226))
(check-sat)
