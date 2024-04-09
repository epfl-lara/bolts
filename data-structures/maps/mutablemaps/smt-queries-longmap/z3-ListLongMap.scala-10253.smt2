; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120612 () Bool)

(assert start!120612)

(declare-fun b!1403845 () Bool)

(declare-fun e!794841 () Bool)

(assert (=> b!1403845 (= e!794841 (not true))))

(declare-fun e!794842 () Bool)

(assert (=> b!1403845 e!794842))

(declare-fun res!942469 () Bool)

(assert (=> b!1403845 (=> (not res!942469) (not e!794842))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95939 0))(
  ( (array!95940 (arr!46316 (Array (_ BitVec 32) (_ BitVec 64))) (size!46867 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95939)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95939 (_ BitVec 32)) Bool)

(assert (=> b!1403845 (= res!942469 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47264 0))(
  ( (Unit!47265) )
))
(declare-fun lt!618486 () Unit!47264)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47264)

(assert (=> b!1403845 (= lt!618486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10655 0))(
  ( (MissingZero!10655 (index!44996 (_ BitVec 32))) (Found!10655 (index!44997 (_ BitVec 32))) (Intermediate!10655 (undefined!11467 Bool) (index!44998 (_ BitVec 32)) (x!126605 (_ BitVec 32))) (Undefined!10655) (MissingVacant!10655 (index!44999 (_ BitVec 32))) )
))
(declare-fun lt!618487 () SeekEntryResult!10655)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95939 (_ BitVec 32)) SeekEntryResult!10655)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403845 (= lt!618487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46316 a!2901) j!112) mask!2840) (select (arr!46316 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403846 () Bool)

(declare-fun res!942471 () Bool)

(assert (=> b!1403846 (=> (not res!942471) (not e!794841))))

(assert (=> b!1403846 (= res!942471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403847 () Bool)

(declare-fun res!942467 () Bool)

(assert (=> b!1403847 (=> (not res!942467) (not e!794841))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403847 (= res!942467 (and (= (size!46867 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46867 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46867 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403848 () Bool)

(declare-fun res!942466 () Bool)

(assert (=> b!1403848 (=> (not res!942466) (not e!794841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403848 (= res!942466 (validKeyInArray!0 (select (arr!46316 a!2901) i!1037)))))

(declare-fun b!1403849 () Bool)

(declare-fun res!942468 () Bool)

(assert (=> b!1403849 (=> (not res!942468) (not e!794841))))

(declare-datatypes ((List!33015 0))(
  ( (Nil!33012) (Cons!33011 (h!34259 (_ BitVec 64)) (t!47716 List!33015)) )
))
(declare-fun arrayNoDuplicates!0 (array!95939 (_ BitVec 32) List!33015) Bool)

(assert (=> b!1403849 (= res!942468 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33012))))

(declare-fun b!1403850 () Bool)

(declare-fun res!942470 () Bool)

(assert (=> b!1403850 (=> (not res!942470) (not e!794841))))

(assert (=> b!1403850 (= res!942470 (validKeyInArray!0 (select (arr!46316 a!2901) j!112)))))

(declare-fun res!942465 () Bool)

(assert (=> start!120612 (=> (not res!942465) (not e!794841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120612 (= res!942465 (validMask!0 mask!2840))))

(assert (=> start!120612 e!794841))

(assert (=> start!120612 true))

(declare-fun array_inv!35261 (array!95939) Bool)

(assert (=> start!120612 (array_inv!35261 a!2901)))

(declare-fun b!1403851 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95939 (_ BitVec 32)) SeekEntryResult!10655)

(assert (=> b!1403851 (= e!794842 (= (seekEntryOrOpen!0 (select (arr!46316 a!2901) j!112) a!2901 mask!2840) (Found!10655 j!112)))))

(assert (= (and start!120612 res!942465) b!1403847))

(assert (= (and b!1403847 res!942467) b!1403848))

(assert (= (and b!1403848 res!942466) b!1403850))

(assert (= (and b!1403850 res!942470) b!1403846))

(assert (= (and b!1403846 res!942471) b!1403849))

(assert (= (and b!1403849 res!942468) b!1403845))

(assert (= (and b!1403845 res!942469) b!1403851))

(declare-fun m!1292677 () Bool)

(assert (=> b!1403851 m!1292677))

(assert (=> b!1403851 m!1292677))

(declare-fun m!1292679 () Bool)

(assert (=> b!1403851 m!1292679))

(assert (=> b!1403850 m!1292677))

(assert (=> b!1403850 m!1292677))

(declare-fun m!1292681 () Bool)

(assert (=> b!1403850 m!1292681))

(declare-fun m!1292683 () Bool)

(assert (=> b!1403849 m!1292683))

(declare-fun m!1292685 () Bool)

(assert (=> b!1403848 m!1292685))

(assert (=> b!1403848 m!1292685))

(declare-fun m!1292687 () Bool)

(assert (=> b!1403848 m!1292687))

(declare-fun m!1292689 () Bool)

(assert (=> b!1403846 m!1292689))

(assert (=> b!1403845 m!1292677))

(declare-fun m!1292691 () Bool)

(assert (=> b!1403845 m!1292691))

(assert (=> b!1403845 m!1292677))

(declare-fun m!1292693 () Bool)

(assert (=> b!1403845 m!1292693))

(assert (=> b!1403845 m!1292691))

(assert (=> b!1403845 m!1292677))

(declare-fun m!1292695 () Bool)

(assert (=> b!1403845 m!1292695))

(declare-fun m!1292697 () Bool)

(assert (=> b!1403845 m!1292697))

(declare-fun m!1292699 () Bool)

(assert (=> start!120612 m!1292699))

(declare-fun m!1292701 () Bool)

(assert (=> start!120612 m!1292701))

(check-sat (not b!1403848) (not b!1403850) (not b!1403851) (not b!1403845) (not b!1403846) (not start!120612) (not b!1403849))
