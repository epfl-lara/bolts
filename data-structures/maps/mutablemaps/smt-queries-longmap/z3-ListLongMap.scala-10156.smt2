; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119742 () Bool)

(assert start!119742)

(declare-fun b!1394300 () Bool)

(declare-fun res!933823 () Bool)

(declare-fun e!789464 () Bool)

(assert (=> b!1394300 (=> (not res!933823) (not e!789464))))

(declare-datatypes ((array!95342 0))(
  ( (array!95343 (arr!46025 (Array (_ BitVec 32) (_ BitVec 64))) (size!46576 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95342)

(declare-datatypes ((List!32724 0))(
  ( (Nil!32721) (Cons!32720 (h!33953 (_ BitVec 64)) (t!47425 List!32724)) )
))
(declare-fun arrayNoDuplicates!0 (array!95342 (_ BitVec 32) List!32724) Bool)

(assert (=> b!1394300 (= res!933823 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32721))))

(declare-fun b!1394301 () Bool)

(declare-fun res!933822 () Bool)

(declare-fun e!789463 () Bool)

(assert (=> b!1394301 (=> res!933822 e!789463)))

(declare-datatypes ((SeekEntryResult!10364 0))(
  ( (MissingZero!10364 (index!43826 (_ BitVec 32))) (Found!10364 (index!43827 (_ BitVec 32))) (Intermediate!10364 (undefined!11176 Bool) (index!43828 (_ BitVec 32)) (x!125499 (_ BitVec 32))) (Undefined!10364) (MissingVacant!10364 (index!43829 (_ BitVec 32))) )
))
(declare-fun lt!612373 () SeekEntryResult!10364)

(declare-fun lt!612369 () (_ BitVec 32))

(assert (=> b!1394301 (= res!933822 (or (bvslt (x!125499 lt!612373) #b00000000000000000000000000000000) (bvsgt (x!125499 lt!612373) #b01111111111111111111111111111110) (bvslt lt!612369 #b00000000000000000000000000000000) (bvsge lt!612369 (size!46576 a!2901)) (bvslt (index!43828 lt!612373) #b00000000000000000000000000000000) (bvsge (index!43828 lt!612373) (size!46576 a!2901)) (not (= lt!612373 (Intermediate!10364 false (index!43828 lt!612373) (x!125499 lt!612373))))))))

(declare-fun b!1394302 () Bool)

(declare-fun e!789462 () Bool)

(assert (=> b!1394302 (= e!789464 (not e!789462))))

(declare-fun res!933821 () Bool)

(assert (=> b!1394302 (=> res!933821 e!789462)))

(get-info :version)

(assert (=> b!1394302 (= res!933821 (or (not ((_ is Intermediate!10364) lt!612373)) (undefined!11176 lt!612373)))))

(declare-fun lt!612370 () SeekEntryResult!10364)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394302 (= lt!612370 (Found!10364 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95342 (_ BitVec 32)) SeekEntryResult!10364)

(assert (=> b!1394302 (= lt!612370 (seekEntryOrOpen!0 (select (arr!46025 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95342 (_ BitVec 32)) Bool)

(assert (=> b!1394302 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46682 0))(
  ( (Unit!46683) )
))
(declare-fun lt!612367 () Unit!46682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46682)

(assert (=> b!1394302 (= lt!612367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95342 (_ BitVec 32)) SeekEntryResult!10364)

(assert (=> b!1394302 (= lt!612373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612369 (select (arr!46025 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394302 (= lt!612369 (toIndex!0 (select (arr!46025 a!2901) j!112) mask!2840))))

(declare-fun b!1394303 () Bool)

(assert (=> b!1394303 (= e!789462 e!789463)))

(declare-fun res!933819 () Bool)

(assert (=> b!1394303 (=> res!933819 e!789463)))

(declare-fun lt!612372 () (_ BitVec 64))

(declare-fun lt!612368 () array!95342)

(assert (=> b!1394303 (= res!933819 (not (= lt!612373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612372 mask!2840) lt!612372 lt!612368 mask!2840))))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394303 (= lt!612372 (select (store (arr!46025 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394303 (= lt!612368 (array!95343 (store (arr!46025 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46576 a!2901)))))

(declare-fun res!933817 () Bool)

(assert (=> start!119742 (=> (not res!933817) (not e!789464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119742 (= res!933817 (validMask!0 mask!2840))))

(assert (=> start!119742 e!789464))

(assert (=> start!119742 true))

(declare-fun array_inv!34970 (array!95342) Bool)

(assert (=> start!119742 (array_inv!34970 a!2901)))

(declare-fun b!1394304 () Bool)

(declare-fun res!933824 () Bool)

(assert (=> b!1394304 (=> (not res!933824) (not e!789464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394304 (= res!933824 (validKeyInArray!0 (select (arr!46025 a!2901) i!1037)))))

(declare-fun b!1394305 () Bool)

(declare-fun res!933820 () Bool)

(assert (=> b!1394305 (=> (not res!933820) (not e!789464))))

(assert (=> b!1394305 (= res!933820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394306 () Bool)

(declare-fun res!933818 () Bool)

(assert (=> b!1394306 (=> (not res!933818) (not e!789464))))

(assert (=> b!1394306 (= res!933818 (validKeyInArray!0 (select (arr!46025 a!2901) j!112)))))

(declare-fun b!1394307 () Bool)

(declare-fun res!933825 () Bool)

(assert (=> b!1394307 (=> (not res!933825) (not e!789464))))

(assert (=> b!1394307 (= res!933825 (and (= (size!46576 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46576 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46576 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394308 () Bool)

(assert (=> b!1394308 (= e!789463 true)))

(assert (=> b!1394308 (= lt!612370 (seekEntryOrOpen!0 lt!612372 lt!612368 mask!2840))))

(declare-fun lt!612371 () Unit!46682)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46682)

(assert (=> b!1394308 (= lt!612371 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612369 (x!125499 lt!612373) (index!43828 lt!612373) mask!2840))))

(assert (= (and start!119742 res!933817) b!1394307))

(assert (= (and b!1394307 res!933825) b!1394304))

(assert (= (and b!1394304 res!933824) b!1394306))

(assert (= (and b!1394306 res!933818) b!1394305))

(assert (= (and b!1394305 res!933820) b!1394300))

(assert (= (and b!1394300 res!933823) b!1394302))

(assert (= (and b!1394302 (not res!933821)) b!1394303))

(assert (= (and b!1394303 (not res!933819)) b!1394301))

(assert (= (and b!1394301 (not res!933822)) b!1394308))

(declare-fun m!1280659 () Bool)

(assert (=> b!1394308 m!1280659))

(declare-fun m!1280661 () Bool)

(assert (=> b!1394308 m!1280661))

(declare-fun m!1280663 () Bool)

(assert (=> b!1394302 m!1280663))

(declare-fun m!1280665 () Bool)

(assert (=> b!1394302 m!1280665))

(assert (=> b!1394302 m!1280663))

(declare-fun m!1280667 () Bool)

(assert (=> b!1394302 m!1280667))

(assert (=> b!1394302 m!1280663))

(declare-fun m!1280669 () Bool)

(assert (=> b!1394302 m!1280669))

(assert (=> b!1394302 m!1280663))

(declare-fun m!1280671 () Bool)

(assert (=> b!1394302 m!1280671))

(declare-fun m!1280673 () Bool)

(assert (=> b!1394302 m!1280673))

(declare-fun m!1280675 () Bool)

(assert (=> b!1394303 m!1280675))

(assert (=> b!1394303 m!1280675))

(declare-fun m!1280677 () Bool)

(assert (=> b!1394303 m!1280677))

(declare-fun m!1280679 () Bool)

(assert (=> b!1394303 m!1280679))

(declare-fun m!1280681 () Bool)

(assert (=> b!1394303 m!1280681))

(declare-fun m!1280683 () Bool)

(assert (=> b!1394300 m!1280683))

(assert (=> b!1394306 m!1280663))

(assert (=> b!1394306 m!1280663))

(declare-fun m!1280685 () Bool)

(assert (=> b!1394306 m!1280685))

(declare-fun m!1280687 () Bool)

(assert (=> b!1394305 m!1280687))

(declare-fun m!1280689 () Bool)

(assert (=> start!119742 m!1280689))

(declare-fun m!1280691 () Bool)

(assert (=> start!119742 m!1280691))

(declare-fun m!1280693 () Bool)

(assert (=> b!1394304 m!1280693))

(assert (=> b!1394304 m!1280693))

(declare-fun m!1280695 () Bool)

(assert (=> b!1394304 m!1280695))

(check-sat (not b!1394308) (not b!1394300) (not b!1394305) (not b!1394306) (not start!119742) (not b!1394302) (not b!1394303) (not b!1394304))
(check-sat)
