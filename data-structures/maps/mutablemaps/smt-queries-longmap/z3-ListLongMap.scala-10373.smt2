; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122148 () Bool)

(assert start!122148)

(declare-fun b!1416888 () Bool)

(declare-fun res!952879 () Bool)

(declare-fun e!801941 () Bool)

(assert (=> b!1416888 (=> (not res!952879) (not e!801941))))

(declare-datatypes ((array!96701 0))(
  ( (array!96702 (arr!46676 (Array (_ BitVec 32) (_ BitVec 64))) (size!47227 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96701)

(declare-datatypes ((List!33375 0))(
  ( (Nil!33372) (Cons!33371 (h!34661 (_ BitVec 64)) (t!48076 List!33375)) )
))
(declare-fun arrayNoDuplicates!0 (array!96701 (_ BitVec 32) List!33375) Bool)

(assert (=> b!1416888 (= res!952879 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33372))))

(declare-fun b!1416889 () Bool)

(declare-fun res!952874 () Bool)

(assert (=> b!1416889 (=> (not res!952874) (not e!801941))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416889 (= res!952874 (validKeyInArray!0 (select (arr!46676 a!2901) j!112)))))

(declare-fun b!1416890 () Bool)

(declare-fun e!801939 () Bool)

(assert (=> b!1416890 (= e!801941 (not e!801939))))

(declare-fun res!952880 () Bool)

(assert (=> b!1416890 (=> res!952880 e!801939)))

(declare-datatypes ((SeekEntryResult!11009 0))(
  ( (MissingZero!11009 (index!46427 (_ BitVec 32))) (Found!11009 (index!46428 (_ BitVec 32))) (Intermediate!11009 (undefined!11821 Bool) (index!46429 (_ BitVec 32)) (x!128033 (_ BitVec 32))) (Undefined!11009) (MissingVacant!11009 (index!46430 (_ BitVec 32))) )
))
(declare-fun lt!625125 () SeekEntryResult!11009)

(get-info :version)

(assert (=> b!1416890 (= res!952880 (or (not ((_ is Intermediate!11009) lt!625125)) (undefined!11821 lt!625125)))))

(declare-fun e!801938 () Bool)

(assert (=> b!1416890 e!801938))

(declare-fun res!952878 () Bool)

(assert (=> b!1416890 (=> (not res!952878) (not e!801938))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96701 (_ BitVec 32)) Bool)

(assert (=> b!1416890 (= res!952878 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47942 0))(
  ( (Unit!47943) )
))
(declare-fun lt!625124 () Unit!47942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47942)

(assert (=> b!1416890 (= lt!625124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96701 (_ BitVec 32)) SeekEntryResult!11009)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416890 (= lt!625125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46676 a!2901) j!112) mask!2840) (select (arr!46676 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416891 () Bool)

(declare-fun res!952881 () Bool)

(assert (=> b!1416891 (=> (not res!952881) (not e!801941))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416891 (= res!952881 (validKeyInArray!0 (select (arr!46676 a!2901) i!1037)))))

(declare-fun res!952876 () Bool)

(assert (=> start!122148 (=> (not res!952876) (not e!801941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122148 (= res!952876 (validMask!0 mask!2840))))

(assert (=> start!122148 e!801941))

(assert (=> start!122148 true))

(declare-fun array_inv!35621 (array!96701) Bool)

(assert (=> start!122148 (array_inv!35621 a!2901)))

(declare-fun b!1416892 () Bool)

(declare-fun res!952875 () Bool)

(assert (=> b!1416892 (=> (not res!952875) (not e!801941))))

(assert (=> b!1416892 (= res!952875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416893 () Bool)

(declare-fun res!952877 () Bool)

(assert (=> b!1416893 (=> (not res!952877) (not e!801941))))

(assert (=> b!1416893 (= res!952877 (and (= (size!47227 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47227 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47227 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416894 () Bool)

(assert (=> b!1416894 (= e!801939 true)))

(declare-fun lt!625126 () SeekEntryResult!11009)

(assert (=> b!1416894 (= lt!625126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46676 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46676 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96702 (store (arr!46676 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47227 a!2901)) mask!2840))))

(declare-fun b!1416895 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96701 (_ BitVec 32)) SeekEntryResult!11009)

(assert (=> b!1416895 (= e!801938 (= (seekEntryOrOpen!0 (select (arr!46676 a!2901) j!112) a!2901 mask!2840) (Found!11009 j!112)))))

(assert (= (and start!122148 res!952876) b!1416893))

(assert (= (and b!1416893 res!952877) b!1416891))

(assert (= (and b!1416891 res!952881) b!1416889))

(assert (= (and b!1416889 res!952874) b!1416892))

(assert (= (and b!1416892 res!952875) b!1416888))

(assert (= (and b!1416888 res!952879) b!1416890))

(assert (= (and b!1416890 res!952878) b!1416895))

(assert (= (and b!1416890 (not res!952880)) b!1416894))

(declare-fun m!1307685 () Bool)

(assert (=> b!1416888 m!1307685))

(declare-fun m!1307687 () Bool)

(assert (=> b!1416891 m!1307687))

(assert (=> b!1416891 m!1307687))

(declare-fun m!1307689 () Bool)

(assert (=> b!1416891 m!1307689))

(declare-fun m!1307691 () Bool)

(assert (=> b!1416894 m!1307691))

(declare-fun m!1307693 () Bool)

(assert (=> b!1416894 m!1307693))

(assert (=> b!1416894 m!1307693))

(declare-fun m!1307695 () Bool)

(assert (=> b!1416894 m!1307695))

(assert (=> b!1416894 m!1307695))

(assert (=> b!1416894 m!1307693))

(declare-fun m!1307697 () Bool)

(assert (=> b!1416894 m!1307697))

(declare-fun m!1307699 () Bool)

(assert (=> b!1416889 m!1307699))

(assert (=> b!1416889 m!1307699))

(declare-fun m!1307701 () Bool)

(assert (=> b!1416889 m!1307701))

(assert (=> b!1416895 m!1307699))

(assert (=> b!1416895 m!1307699))

(declare-fun m!1307703 () Bool)

(assert (=> b!1416895 m!1307703))

(assert (=> b!1416890 m!1307699))

(declare-fun m!1307705 () Bool)

(assert (=> b!1416890 m!1307705))

(assert (=> b!1416890 m!1307699))

(declare-fun m!1307707 () Bool)

(assert (=> b!1416890 m!1307707))

(assert (=> b!1416890 m!1307705))

(assert (=> b!1416890 m!1307699))

(declare-fun m!1307709 () Bool)

(assert (=> b!1416890 m!1307709))

(declare-fun m!1307711 () Bool)

(assert (=> b!1416890 m!1307711))

(declare-fun m!1307713 () Bool)

(assert (=> start!122148 m!1307713))

(declare-fun m!1307715 () Bool)

(assert (=> start!122148 m!1307715))

(declare-fun m!1307717 () Bool)

(assert (=> b!1416892 m!1307717))

(check-sat (not b!1416895) (not b!1416891) (not b!1416888) (not b!1416894) (not start!122148) (not b!1416892) (not b!1416889) (not b!1416890))
