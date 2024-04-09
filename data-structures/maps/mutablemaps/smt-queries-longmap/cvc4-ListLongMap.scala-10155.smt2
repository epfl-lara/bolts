; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119738 () Bool)

(assert start!119738)

(declare-fun b!1394246 () Bool)

(declare-fun res!933768 () Bool)

(declare-fun e!789437 () Bool)

(assert (=> b!1394246 (=> res!933768 e!789437)))

(declare-datatypes ((array!95338 0))(
  ( (array!95339 (arr!46023 (Array (_ BitVec 32) (_ BitVec 64))) (size!46574 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95338)

(declare-datatypes ((SeekEntryResult!10362 0))(
  ( (MissingZero!10362 (index!43818 (_ BitVec 32))) (Found!10362 (index!43819 (_ BitVec 32))) (Intermediate!10362 (undefined!11174 Bool) (index!43820 (_ BitVec 32)) (x!125489 (_ BitVec 32))) (Undefined!10362) (MissingVacant!10362 (index!43821 (_ BitVec 32))) )
))
(declare-fun lt!612325 () SeekEntryResult!10362)

(declare-fun lt!612331 () (_ BitVec 32))

(assert (=> b!1394246 (= res!933768 (or (bvslt (x!125489 lt!612325) #b00000000000000000000000000000000) (bvsgt (x!125489 lt!612325) #b01111111111111111111111111111110) (bvslt lt!612331 #b00000000000000000000000000000000) (bvsge lt!612331 (size!46574 a!2901)) (bvslt (index!43820 lt!612325) #b00000000000000000000000000000000) (bvsge (index!43820 lt!612325) (size!46574 a!2901)) (not (= lt!612325 (Intermediate!10362 false (index!43820 lt!612325) (x!125489 lt!612325))))))))

(declare-fun b!1394247 () Bool)

(declare-fun res!933769 () Bool)

(declare-fun e!789439 () Bool)

(assert (=> b!1394247 (=> (not res!933769) (not e!789439))))

(declare-datatypes ((List!32722 0))(
  ( (Nil!32719) (Cons!32718 (h!33951 (_ BitVec 64)) (t!47423 List!32722)) )
))
(declare-fun arrayNoDuplicates!0 (array!95338 (_ BitVec 32) List!32722) Bool)

(assert (=> b!1394247 (= res!933769 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32719))))

(declare-fun b!1394248 () Bool)

(declare-fun res!933771 () Bool)

(assert (=> b!1394248 (=> (not res!933771) (not e!789439))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95338 (_ BitVec 32)) Bool)

(assert (=> b!1394248 (= res!933771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394249 () Bool)

(declare-fun res!933770 () Bool)

(assert (=> b!1394249 (=> (not res!933770) (not e!789439))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394249 (= res!933770 (validKeyInArray!0 (select (arr!46023 a!2901) j!112)))))

(declare-fun b!1394250 () Bool)

(declare-fun e!789440 () Bool)

(assert (=> b!1394250 (= e!789439 (not e!789440))))

(declare-fun res!933767 () Bool)

(assert (=> b!1394250 (=> res!933767 e!789440)))

(assert (=> b!1394250 (= res!933767 (or (not (is-Intermediate!10362 lt!612325)) (undefined!11174 lt!612325)))))

(declare-fun lt!612329 () SeekEntryResult!10362)

(assert (=> b!1394250 (= lt!612329 (Found!10362 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95338 (_ BitVec 32)) SeekEntryResult!10362)

(assert (=> b!1394250 (= lt!612329 (seekEntryOrOpen!0 (select (arr!46023 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394250 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46678 0))(
  ( (Unit!46679) )
))
(declare-fun lt!612326 () Unit!46678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46678)

(assert (=> b!1394250 (= lt!612326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95338 (_ BitVec 32)) SeekEntryResult!10362)

(assert (=> b!1394250 (= lt!612325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612331 (select (arr!46023 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394250 (= lt!612331 (toIndex!0 (select (arr!46023 a!2901) j!112) mask!2840))))

(declare-fun b!1394251 () Bool)

(assert (=> b!1394251 (= e!789437 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!612330 () array!95338)

(declare-fun lt!612327 () (_ BitVec 64))

(assert (=> b!1394251 (= lt!612329 (seekEntryOrOpen!0 lt!612327 lt!612330 mask!2840))))

(declare-fun lt!612328 () Unit!46678)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46678)

(assert (=> b!1394251 (= lt!612328 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612331 (x!125489 lt!612325) (index!43820 lt!612325) mask!2840))))

(declare-fun b!1394252 () Bool)

(assert (=> b!1394252 (= e!789440 e!789437)))

(declare-fun res!933765 () Bool)

(assert (=> b!1394252 (=> res!933765 e!789437)))

(assert (=> b!1394252 (= res!933765 (not (= lt!612325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612327 mask!2840) lt!612327 lt!612330 mask!2840))))))

(assert (=> b!1394252 (= lt!612327 (select (store (arr!46023 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394252 (= lt!612330 (array!95339 (store (arr!46023 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46574 a!2901)))))

(declare-fun res!933763 () Bool)

(assert (=> start!119738 (=> (not res!933763) (not e!789439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119738 (= res!933763 (validMask!0 mask!2840))))

(assert (=> start!119738 e!789439))

(assert (=> start!119738 true))

(declare-fun array_inv!34968 (array!95338) Bool)

(assert (=> start!119738 (array_inv!34968 a!2901)))

(declare-fun b!1394253 () Bool)

(declare-fun res!933766 () Bool)

(assert (=> b!1394253 (=> (not res!933766) (not e!789439))))

(assert (=> b!1394253 (= res!933766 (validKeyInArray!0 (select (arr!46023 a!2901) i!1037)))))

(declare-fun b!1394254 () Bool)

(declare-fun res!933764 () Bool)

(assert (=> b!1394254 (=> (not res!933764) (not e!789439))))

(assert (=> b!1394254 (= res!933764 (and (= (size!46574 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46574 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46574 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119738 res!933763) b!1394254))

(assert (= (and b!1394254 res!933764) b!1394253))

(assert (= (and b!1394253 res!933766) b!1394249))

(assert (= (and b!1394249 res!933770) b!1394248))

(assert (= (and b!1394248 res!933771) b!1394247))

(assert (= (and b!1394247 res!933769) b!1394250))

(assert (= (and b!1394250 (not res!933767)) b!1394252))

(assert (= (and b!1394252 (not res!933765)) b!1394246))

(assert (= (and b!1394246 (not res!933768)) b!1394251))

(declare-fun m!1280583 () Bool)

(assert (=> b!1394252 m!1280583))

(assert (=> b!1394252 m!1280583))

(declare-fun m!1280585 () Bool)

(assert (=> b!1394252 m!1280585))

(declare-fun m!1280587 () Bool)

(assert (=> b!1394252 m!1280587))

(declare-fun m!1280589 () Bool)

(assert (=> b!1394252 m!1280589))

(declare-fun m!1280591 () Bool)

(assert (=> b!1394248 m!1280591))

(declare-fun m!1280593 () Bool)

(assert (=> b!1394253 m!1280593))

(assert (=> b!1394253 m!1280593))

(declare-fun m!1280595 () Bool)

(assert (=> b!1394253 m!1280595))

(declare-fun m!1280597 () Bool)

(assert (=> b!1394249 m!1280597))

(assert (=> b!1394249 m!1280597))

(declare-fun m!1280599 () Bool)

(assert (=> b!1394249 m!1280599))

(declare-fun m!1280601 () Bool)

(assert (=> start!119738 m!1280601))

(declare-fun m!1280603 () Bool)

(assert (=> start!119738 m!1280603))

(assert (=> b!1394250 m!1280597))

(declare-fun m!1280605 () Bool)

(assert (=> b!1394250 m!1280605))

(assert (=> b!1394250 m!1280597))

(declare-fun m!1280607 () Bool)

(assert (=> b!1394250 m!1280607))

(declare-fun m!1280609 () Bool)

(assert (=> b!1394250 m!1280609))

(assert (=> b!1394250 m!1280597))

(declare-fun m!1280611 () Bool)

(assert (=> b!1394250 m!1280611))

(assert (=> b!1394250 m!1280597))

(declare-fun m!1280613 () Bool)

(assert (=> b!1394250 m!1280613))

(declare-fun m!1280615 () Bool)

(assert (=> b!1394247 m!1280615))

(declare-fun m!1280617 () Bool)

(assert (=> b!1394251 m!1280617))

(declare-fun m!1280619 () Bool)

(assert (=> b!1394251 m!1280619))

(push 1)

(assert (not b!1394247))

(assert (not b!1394250))

(assert (not b!1394253))

