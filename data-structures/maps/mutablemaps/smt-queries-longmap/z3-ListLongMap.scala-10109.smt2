; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119190 () Bool)

(assert start!119190)

(declare-fun b!1389869 () Bool)

(declare-fun e!787195 () Bool)

(assert (=> b!1389869 (= e!787195 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95045 0))(
  ( (array!95046 (arr!45884 (Array (_ BitVec 32) (_ BitVec 64))) (size!46435 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95045)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95045 (_ BitVec 32)) Bool)

(assert (=> b!1389869 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46400 0))(
  ( (Unit!46401) )
))
(declare-fun lt!610624 () Unit!46400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46400)

(assert (=> b!1389869 (= lt!610624 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10223 0))(
  ( (MissingZero!10223 (index!43262 (_ BitVec 32))) (Found!10223 (index!43263 (_ BitVec 32))) (Intermediate!10223 (undefined!11035 Bool) (index!43264 (_ BitVec 32)) (x!124952 (_ BitVec 32))) (Undefined!10223) (MissingVacant!10223 (index!43265 (_ BitVec 32))) )
))
(declare-fun lt!610623 () SeekEntryResult!10223)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95045 (_ BitVec 32)) SeekEntryResult!10223)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389869 (= lt!610623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45884 a!2901) j!112) mask!2840) (select (arr!45884 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930141 () Bool)

(assert (=> start!119190 (=> (not res!930141) (not e!787195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119190 (= res!930141 (validMask!0 mask!2840))))

(assert (=> start!119190 e!787195))

(assert (=> start!119190 true))

(declare-fun array_inv!34829 (array!95045) Bool)

(assert (=> start!119190 (array_inv!34829 a!2901)))

(declare-fun b!1389870 () Bool)

(declare-fun res!930142 () Bool)

(assert (=> b!1389870 (=> (not res!930142) (not e!787195))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389870 (= res!930142 (validKeyInArray!0 (select (arr!45884 a!2901) i!1037)))))

(declare-fun b!1389871 () Bool)

(declare-fun res!930143 () Bool)

(assert (=> b!1389871 (=> (not res!930143) (not e!787195))))

(declare-datatypes ((List!32583 0))(
  ( (Nil!32580) (Cons!32579 (h!33797 (_ BitVec 64)) (t!47284 List!32583)) )
))
(declare-fun arrayNoDuplicates!0 (array!95045 (_ BitVec 32) List!32583) Bool)

(assert (=> b!1389871 (= res!930143 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32580))))

(declare-fun b!1389872 () Bool)

(declare-fun res!930140 () Bool)

(assert (=> b!1389872 (=> (not res!930140) (not e!787195))))

(assert (=> b!1389872 (= res!930140 (validKeyInArray!0 (select (arr!45884 a!2901) j!112)))))

(declare-fun b!1389873 () Bool)

(declare-fun res!930144 () Bool)

(assert (=> b!1389873 (=> (not res!930144) (not e!787195))))

(assert (=> b!1389873 (= res!930144 (and (= (size!46435 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46435 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46435 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389874 () Bool)

(declare-fun res!930139 () Bool)

(assert (=> b!1389874 (=> (not res!930139) (not e!787195))))

(assert (=> b!1389874 (= res!930139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119190 res!930141) b!1389873))

(assert (= (and b!1389873 res!930144) b!1389870))

(assert (= (and b!1389870 res!930142) b!1389872))

(assert (= (and b!1389872 res!930140) b!1389874))

(assert (= (and b!1389874 res!930139) b!1389871))

(assert (= (and b!1389871 res!930143) b!1389869))

(declare-fun m!1275659 () Bool)

(assert (=> start!119190 m!1275659))

(declare-fun m!1275661 () Bool)

(assert (=> start!119190 m!1275661))

(declare-fun m!1275663 () Bool)

(assert (=> b!1389869 m!1275663))

(declare-fun m!1275665 () Bool)

(assert (=> b!1389869 m!1275665))

(assert (=> b!1389869 m!1275663))

(declare-fun m!1275667 () Bool)

(assert (=> b!1389869 m!1275667))

(assert (=> b!1389869 m!1275665))

(assert (=> b!1389869 m!1275663))

(declare-fun m!1275669 () Bool)

(assert (=> b!1389869 m!1275669))

(declare-fun m!1275671 () Bool)

(assert (=> b!1389869 m!1275671))

(declare-fun m!1275673 () Bool)

(assert (=> b!1389870 m!1275673))

(assert (=> b!1389870 m!1275673))

(declare-fun m!1275675 () Bool)

(assert (=> b!1389870 m!1275675))

(declare-fun m!1275677 () Bool)

(assert (=> b!1389874 m!1275677))

(assert (=> b!1389872 m!1275663))

(assert (=> b!1389872 m!1275663))

(declare-fun m!1275679 () Bool)

(assert (=> b!1389872 m!1275679))

(declare-fun m!1275681 () Bool)

(assert (=> b!1389871 m!1275681))

(check-sat (not b!1389870) (not b!1389871) (not b!1389869) (not start!119190) (not b!1389874) (not b!1389872))
