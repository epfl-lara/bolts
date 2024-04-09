; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119676 () Bool)

(assert start!119676)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95276 0))(
  ( (array!95277 (arr!45992 (Array (_ BitVec 32) (_ BitVec 64))) (size!46543 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95276)

(declare-fun e!789067 () Bool)

(declare-fun b!1393485 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10331 0))(
  ( (MissingZero!10331 (index!43694 (_ BitVec 32))) (Found!10331 (index!43695 (_ BitVec 32))) (Intermediate!10331 (undefined!11143 Bool) (index!43696 (_ BitVec 32)) (x!125378 (_ BitVec 32))) (Undefined!10331) (MissingVacant!10331 (index!43697 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95276 (_ BitVec 32)) SeekEntryResult!10331)

(assert (=> b!1393485 (= e!789067 (= (seekEntryOrOpen!0 (select (arr!45992 a!2901) j!112) a!2901 mask!2840) (Found!10331 j!112)))))

(declare-fun b!1393486 () Bool)

(declare-fun res!933007 () Bool)

(declare-fun e!789065 () Bool)

(assert (=> b!1393486 (=> (not res!933007) (not e!789065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95276 (_ BitVec 32)) Bool)

(assert (=> b!1393486 (= res!933007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393487 () Bool)

(declare-fun res!933004 () Bool)

(assert (=> b!1393487 (=> (not res!933004) (not e!789065))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393487 (= res!933004 (validKeyInArray!0 (select (arr!45992 a!2901) i!1037)))))

(declare-fun b!1393488 () Bool)

(declare-fun e!789066 () Bool)

(assert (=> b!1393488 (= e!789066 true)))

(declare-fun lt!611978 () SeekEntryResult!10331)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95276 (_ BitVec 32)) SeekEntryResult!10331)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393488 (= lt!611978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45992 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45992 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95277 (store (arr!45992 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46543 a!2901)) mask!2840))))

(declare-fun b!1393489 () Bool)

(declare-fun res!933008 () Bool)

(assert (=> b!1393489 (=> (not res!933008) (not e!789065))))

(assert (=> b!1393489 (= res!933008 (and (= (size!46543 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46543 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46543 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!933002 () Bool)

(assert (=> start!119676 (=> (not res!933002) (not e!789065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119676 (= res!933002 (validMask!0 mask!2840))))

(assert (=> start!119676 e!789065))

(assert (=> start!119676 true))

(declare-fun array_inv!34937 (array!95276) Bool)

(assert (=> start!119676 (array_inv!34937 a!2901)))

(declare-fun b!1393490 () Bool)

(declare-fun res!933006 () Bool)

(assert (=> b!1393490 (=> (not res!933006) (not e!789065))))

(assert (=> b!1393490 (= res!933006 (validKeyInArray!0 (select (arr!45992 a!2901) j!112)))))

(declare-fun b!1393491 () Bool)

(declare-fun res!933009 () Bool)

(assert (=> b!1393491 (=> (not res!933009) (not e!789065))))

(declare-datatypes ((List!32691 0))(
  ( (Nil!32688) (Cons!32687 (h!33920 (_ BitVec 64)) (t!47392 List!32691)) )
))
(declare-fun arrayNoDuplicates!0 (array!95276 (_ BitVec 32) List!32691) Bool)

(assert (=> b!1393491 (= res!933009 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32688))))

(declare-fun b!1393492 () Bool)

(assert (=> b!1393492 (= e!789065 (not e!789066))))

(declare-fun res!933003 () Bool)

(assert (=> b!1393492 (=> res!933003 e!789066)))

(declare-fun lt!611979 () SeekEntryResult!10331)

(get-info :version)

(assert (=> b!1393492 (= res!933003 (or (not ((_ is Intermediate!10331) lt!611979)) (undefined!11143 lt!611979)))))

(assert (=> b!1393492 e!789067))

(declare-fun res!933005 () Bool)

(assert (=> b!1393492 (=> (not res!933005) (not e!789067))))

(assert (=> b!1393492 (= res!933005 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46616 0))(
  ( (Unit!46617) )
))
(declare-fun lt!611980 () Unit!46616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46616)

(assert (=> b!1393492 (= lt!611980 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393492 (= lt!611979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45992 a!2901) j!112) mask!2840) (select (arr!45992 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119676 res!933002) b!1393489))

(assert (= (and b!1393489 res!933008) b!1393487))

(assert (= (and b!1393487 res!933004) b!1393490))

(assert (= (and b!1393490 res!933006) b!1393486))

(assert (= (and b!1393486 res!933007) b!1393491))

(assert (= (and b!1393491 res!933009) b!1393492))

(assert (= (and b!1393492 res!933005) b!1393485))

(assert (= (and b!1393492 (not res!933003)) b!1393488))

(declare-fun m!1279509 () Bool)

(assert (=> start!119676 m!1279509))

(declare-fun m!1279511 () Bool)

(assert (=> start!119676 m!1279511))

(declare-fun m!1279513 () Bool)

(assert (=> b!1393488 m!1279513))

(declare-fun m!1279515 () Bool)

(assert (=> b!1393488 m!1279515))

(assert (=> b!1393488 m!1279515))

(declare-fun m!1279517 () Bool)

(assert (=> b!1393488 m!1279517))

(assert (=> b!1393488 m!1279517))

(assert (=> b!1393488 m!1279515))

(declare-fun m!1279519 () Bool)

(assert (=> b!1393488 m!1279519))

(declare-fun m!1279521 () Bool)

(assert (=> b!1393492 m!1279521))

(declare-fun m!1279523 () Bool)

(assert (=> b!1393492 m!1279523))

(assert (=> b!1393492 m!1279521))

(declare-fun m!1279525 () Bool)

(assert (=> b!1393492 m!1279525))

(assert (=> b!1393492 m!1279523))

(assert (=> b!1393492 m!1279521))

(declare-fun m!1279527 () Bool)

(assert (=> b!1393492 m!1279527))

(declare-fun m!1279529 () Bool)

(assert (=> b!1393492 m!1279529))

(assert (=> b!1393485 m!1279521))

(assert (=> b!1393485 m!1279521))

(declare-fun m!1279531 () Bool)

(assert (=> b!1393485 m!1279531))

(assert (=> b!1393490 m!1279521))

(assert (=> b!1393490 m!1279521))

(declare-fun m!1279533 () Bool)

(assert (=> b!1393490 m!1279533))

(declare-fun m!1279535 () Bool)

(assert (=> b!1393486 m!1279535))

(declare-fun m!1279537 () Bool)

(assert (=> b!1393491 m!1279537))

(declare-fun m!1279539 () Bool)

(assert (=> b!1393487 m!1279539))

(assert (=> b!1393487 m!1279539))

(declare-fun m!1279541 () Bool)

(assert (=> b!1393487 m!1279541))

(check-sat (not b!1393492) (not b!1393490) (not b!1393485) (not b!1393488) (not b!1393487) (not start!119676) (not b!1393491) (not b!1393486))
