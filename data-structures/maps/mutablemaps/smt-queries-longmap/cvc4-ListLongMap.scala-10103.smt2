; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119156 () Bool)

(assert start!119156)

(declare-fun res!929837 () Bool)

(declare-fun e!787094 () Bool)

(assert (=> start!119156 (=> (not res!929837) (not e!787094))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119156 (= res!929837 (validMask!0 mask!2840))))

(assert (=> start!119156 e!787094))

(assert (=> start!119156 true))

(declare-datatypes ((array!95011 0))(
  ( (array!95012 (arr!45867 (Array (_ BitVec 32) (_ BitVec 64))) (size!46418 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95011)

(declare-fun array_inv!34812 (array!95011) Bool)

(assert (=> start!119156 (array_inv!34812 a!2901)))

(declare-fun b!1389563 () Bool)

(assert (=> b!1389563 (= e!787094 false)))

(declare-datatypes ((SeekEntryResult!10206 0))(
  ( (MissingZero!10206 (index!43194 (_ BitVec 32))) (Found!10206 (index!43195 (_ BitVec 32))) (Intermediate!10206 (undefined!11018 Bool) (index!43196 (_ BitVec 32)) (x!124887 (_ BitVec 32))) (Undefined!10206) (MissingVacant!10206 (index!43197 (_ BitVec 32))) )
))
(declare-fun lt!610540 () SeekEntryResult!10206)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95011 (_ BitVec 32)) SeekEntryResult!10206)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389563 (= lt!610540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45867 a!2901) j!112) mask!2840) (select (arr!45867 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389564 () Bool)

(declare-fun res!929834 () Bool)

(assert (=> b!1389564 (=> (not res!929834) (not e!787094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389564 (= res!929834 (validKeyInArray!0 (select (arr!45867 a!2901) j!112)))))

(declare-fun b!1389565 () Bool)

(declare-fun res!929835 () Bool)

(assert (=> b!1389565 (=> (not res!929835) (not e!787094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95011 (_ BitVec 32)) Bool)

(assert (=> b!1389565 (= res!929835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389566 () Bool)

(declare-fun res!929833 () Bool)

(assert (=> b!1389566 (=> (not res!929833) (not e!787094))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389566 (= res!929833 (validKeyInArray!0 (select (arr!45867 a!2901) i!1037)))))

(declare-fun b!1389567 () Bool)

(declare-fun res!929836 () Bool)

(assert (=> b!1389567 (=> (not res!929836) (not e!787094))))

(declare-datatypes ((List!32566 0))(
  ( (Nil!32563) (Cons!32562 (h!33780 (_ BitVec 64)) (t!47267 List!32566)) )
))
(declare-fun arrayNoDuplicates!0 (array!95011 (_ BitVec 32) List!32566) Bool)

(assert (=> b!1389567 (= res!929836 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32563))))

(declare-fun b!1389568 () Bool)

(declare-fun res!929838 () Bool)

(assert (=> b!1389568 (=> (not res!929838) (not e!787094))))

(assert (=> b!1389568 (= res!929838 (and (= (size!46418 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46418 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46418 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119156 res!929837) b!1389568))

(assert (= (and b!1389568 res!929838) b!1389566))

(assert (= (and b!1389566 res!929833) b!1389564))

(assert (= (and b!1389564 res!929834) b!1389565))

(assert (= (and b!1389565 res!929835) b!1389567))

(assert (= (and b!1389567 res!929836) b!1389563))

(declare-fun m!1275279 () Bool)

(assert (=> b!1389567 m!1275279))

(declare-fun m!1275281 () Bool)

(assert (=> b!1389564 m!1275281))

(assert (=> b!1389564 m!1275281))

(declare-fun m!1275283 () Bool)

(assert (=> b!1389564 m!1275283))

(declare-fun m!1275285 () Bool)

(assert (=> b!1389566 m!1275285))

(assert (=> b!1389566 m!1275285))

(declare-fun m!1275287 () Bool)

(assert (=> b!1389566 m!1275287))

(assert (=> b!1389563 m!1275281))

(assert (=> b!1389563 m!1275281))

(declare-fun m!1275289 () Bool)

(assert (=> b!1389563 m!1275289))

(assert (=> b!1389563 m!1275289))

(assert (=> b!1389563 m!1275281))

(declare-fun m!1275291 () Bool)

(assert (=> b!1389563 m!1275291))

(declare-fun m!1275293 () Bool)

(assert (=> b!1389565 m!1275293))

(declare-fun m!1275295 () Bool)

(assert (=> start!119156 m!1275295))

(declare-fun m!1275297 () Bool)

(assert (=> start!119156 m!1275297))

(push 1)

(assert (not b!1389564))

(assert (not b!1389565))

(assert (not b!1389567))

(assert (not start!119156))

(assert (not b!1389563))

(assert (not b!1389566))

(check-sat)

(pop 1)

