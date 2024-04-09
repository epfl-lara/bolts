; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119184 () Bool)

(assert start!119184)

(declare-fun res!930090 () Bool)

(declare-fun e!787177 () Bool)

(assert (=> start!119184 (=> (not res!930090) (not e!787177))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119184 (= res!930090 (validMask!0 mask!2840))))

(assert (=> start!119184 e!787177))

(assert (=> start!119184 true))

(declare-datatypes ((array!95039 0))(
  ( (array!95040 (arr!45881 (Array (_ BitVec 32) (_ BitVec 64))) (size!46432 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95039)

(declare-fun array_inv!34826 (array!95039) Bool)

(assert (=> start!119184 (array_inv!34826 a!2901)))

(declare-fun b!1389815 () Bool)

(declare-fun res!930087 () Bool)

(assert (=> b!1389815 (=> (not res!930087) (not e!787177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95039 (_ BitVec 32)) Bool)

(assert (=> b!1389815 (= res!930087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389816 () Bool)

(assert (=> b!1389816 (= e!787177 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389816 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46394 0))(
  ( (Unit!46395) )
))
(declare-fun lt!610605 () Unit!46394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46394)

(assert (=> b!1389816 (= lt!610605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10220 0))(
  ( (MissingZero!10220 (index!43250 (_ BitVec 32))) (Found!10220 (index!43251 (_ BitVec 32))) (Intermediate!10220 (undefined!11032 Bool) (index!43252 (_ BitVec 32)) (x!124941 (_ BitVec 32))) (Undefined!10220) (MissingVacant!10220 (index!43253 (_ BitVec 32))) )
))
(declare-fun lt!610606 () SeekEntryResult!10220)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95039 (_ BitVec 32)) SeekEntryResult!10220)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389816 (= lt!610606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45881 a!2901) j!112) mask!2840) (select (arr!45881 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389817 () Bool)

(declare-fun res!930086 () Bool)

(assert (=> b!1389817 (=> (not res!930086) (not e!787177))))

(declare-datatypes ((List!32580 0))(
  ( (Nil!32577) (Cons!32576 (h!33794 (_ BitVec 64)) (t!47281 List!32580)) )
))
(declare-fun arrayNoDuplicates!0 (array!95039 (_ BitVec 32) List!32580) Bool)

(assert (=> b!1389817 (= res!930086 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32577))))

(declare-fun b!1389818 () Bool)

(declare-fun res!930085 () Bool)

(assert (=> b!1389818 (=> (not res!930085) (not e!787177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389818 (= res!930085 (validKeyInArray!0 (select (arr!45881 a!2901) j!112)))))

(declare-fun b!1389819 () Bool)

(declare-fun res!930089 () Bool)

(assert (=> b!1389819 (=> (not res!930089) (not e!787177))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389819 (= res!930089 (validKeyInArray!0 (select (arr!45881 a!2901) i!1037)))))

(declare-fun b!1389820 () Bool)

(declare-fun res!930088 () Bool)

(assert (=> b!1389820 (=> (not res!930088) (not e!787177))))

(assert (=> b!1389820 (= res!930088 (and (= (size!46432 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46432 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46432 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119184 res!930090) b!1389820))

(assert (= (and b!1389820 res!930088) b!1389819))

(assert (= (and b!1389819 res!930089) b!1389818))

(assert (= (and b!1389818 res!930085) b!1389815))

(assert (= (and b!1389815 res!930087) b!1389817))

(assert (= (and b!1389817 res!930086) b!1389816))

(declare-fun m!1275587 () Bool)

(assert (=> b!1389817 m!1275587))

(declare-fun m!1275589 () Bool)

(assert (=> b!1389815 m!1275589))

(declare-fun m!1275591 () Bool)

(assert (=> start!119184 m!1275591))

(declare-fun m!1275593 () Bool)

(assert (=> start!119184 m!1275593))

(declare-fun m!1275595 () Bool)

(assert (=> b!1389816 m!1275595))

(declare-fun m!1275597 () Bool)

(assert (=> b!1389816 m!1275597))

(assert (=> b!1389816 m!1275595))

(declare-fun m!1275599 () Bool)

(assert (=> b!1389816 m!1275599))

(assert (=> b!1389816 m!1275597))

(assert (=> b!1389816 m!1275595))

(declare-fun m!1275601 () Bool)

(assert (=> b!1389816 m!1275601))

(declare-fun m!1275603 () Bool)

(assert (=> b!1389816 m!1275603))

(declare-fun m!1275605 () Bool)

(assert (=> b!1389819 m!1275605))

(assert (=> b!1389819 m!1275605))

(declare-fun m!1275607 () Bool)

(assert (=> b!1389819 m!1275607))

(assert (=> b!1389818 m!1275595))

(assert (=> b!1389818 m!1275595))

(declare-fun m!1275609 () Bool)

(assert (=> b!1389818 m!1275609))

(check-sat (not b!1389819) (not b!1389817) (not b!1389816) (not start!119184) (not b!1389815) (not b!1389818))
