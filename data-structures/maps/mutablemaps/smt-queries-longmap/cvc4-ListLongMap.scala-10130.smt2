; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119480 () Bool)

(assert start!119480)

(declare-fun b!1391919 () Bool)

(declare-fun res!931752 () Bool)

(declare-fun e!788228 () Bool)

(assert (=> b!1391919 (=> (not res!931752) (not e!788228))))

(declare-datatypes ((array!95182 0))(
  ( (array!95183 (arr!45948 (Array (_ BitVec 32) (_ BitVec 64))) (size!46499 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95182)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391919 (= res!931752 (validKeyInArray!0 (select (arr!45948 a!2901) j!112)))))

(declare-fun b!1391920 () Bool)

(declare-fun res!931750 () Bool)

(assert (=> b!1391920 (=> (not res!931750) (not e!788228))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391920 (= res!931750 (validKeyInArray!0 (select (arr!45948 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1391921 () Bool)

(declare-fun e!788227 () Bool)

(declare-datatypes ((SeekEntryResult!10287 0))(
  ( (MissingZero!10287 (index!43518 (_ BitVec 32))) (Found!10287 (index!43519 (_ BitVec 32))) (Intermediate!10287 (undefined!11099 Bool) (index!43520 (_ BitVec 32)) (x!125202 (_ BitVec 32))) (Undefined!10287) (MissingVacant!10287 (index!43521 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95182 (_ BitVec 32)) SeekEntryResult!10287)

(assert (=> b!1391921 (= e!788227 (= (seekEntryOrOpen!0 (select (arr!45948 a!2901) j!112) a!2901 mask!2840) (Found!10287 j!112)))))

(declare-fun res!931748 () Bool)

(assert (=> start!119480 (=> (not res!931748) (not e!788228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119480 (= res!931748 (validMask!0 mask!2840))))

(assert (=> start!119480 e!788228))

(assert (=> start!119480 true))

(declare-fun array_inv!34893 (array!95182) Bool)

(assert (=> start!119480 (array_inv!34893 a!2901)))

(declare-fun b!1391922 () Bool)

(declare-fun res!931749 () Bool)

(assert (=> b!1391922 (=> (not res!931749) (not e!788228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95182 (_ BitVec 32)) Bool)

(assert (=> b!1391922 (= res!931749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391923 () Bool)

(declare-fun res!931754 () Bool)

(assert (=> b!1391923 (=> (not res!931754) (not e!788228))))

(declare-datatypes ((List!32647 0))(
  ( (Nil!32644) (Cons!32643 (h!33870 (_ BitVec 64)) (t!47348 List!32647)) )
))
(declare-fun arrayNoDuplicates!0 (array!95182 (_ BitVec 32) List!32647) Bool)

(assert (=> b!1391923 (= res!931754 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32644))))

(declare-fun b!1391924 () Bool)

(declare-fun e!788225 () Bool)

(assert (=> b!1391924 (= e!788225 true)))

(declare-fun lt!611367 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391924 (= lt!611367 (toIndex!0 (select (store (arr!45948 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391925 () Bool)

(declare-fun res!931753 () Bool)

(assert (=> b!1391925 (=> (not res!931753) (not e!788228))))

(assert (=> b!1391925 (= res!931753 (and (= (size!46499 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46499 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46499 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391926 () Bool)

(assert (=> b!1391926 (= e!788228 (not e!788225))))

(declare-fun res!931751 () Bool)

(assert (=> b!1391926 (=> res!931751 e!788225)))

(declare-fun lt!611368 () SeekEntryResult!10287)

(assert (=> b!1391926 (= res!931751 (or (not (is-Intermediate!10287 lt!611368)) (undefined!11099 lt!611368)))))

(assert (=> b!1391926 e!788227))

(declare-fun res!931755 () Bool)

(assert (=> b!1391926 (=> (not res!931755) (not e!788227))))

(assert (=> b!1391926 (= res!931755 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46528 0))(
  ( (Unit!46529) )
))
(declare-fun lt!611366 () Unit!46528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46528)

(assert (=> b!1391926 (= lt!611366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95182 (_ BitVec 32)) SeekEntryResult!10287)

(assert (=> b!1391926 (= lt!611368 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45948 a!2901) j!112) mask!2840) (select (arr!45948 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119480 res!931748) b!1391925))

(assert (= (and b!1391925 res!931753) b!1391920))

(assert (= (and b!1391920 res!931750) b!1391919))

(assert (= (and b!1391919 res!931752) b!1391922))

(assert (= (and b!1391922 res!931749) b!1391923))

(assert (= (and b!1391923 res!931754) b!1391926))

(assert (= (and b!1391926 res!931755) b!1391921))

(assert (= (and b!1391926 (not res!931751)) b!1391924))

(declare-fun m!1277751 () Bool)

(assert (=> b!1391919 m!1277751))

(assert (=> b!1391919 m!1277751))

(declare-fun m!1277753 () Bool)

(assert (=> b!1391919 m!1277753))

(declare-fun m!1277755 () Bool)

(assert (=> b!1391923 m!1277755))

(assert (=> b!1391926 m!1277751))

(declare-fun m!1277757 () Bool)

(assert (=> b!1391926 m!1277757))

(assert (=> b!1391926 m!1277751))

(declare-fun m!1277759 () Bool)

(assert (=> b!1391926 m!1277759))

(assert (=> b!1391926 m!1277757))

(assert (=> b!1391926 m!1277751))

(declare-fun m!1277761 () Bool)

(assert (=> b!1391926 m!1277761))

(declare-fun m!1277763 () Bool)

(assert (=> b!1391926 m!1277763))

(declare-fun m!1277765 () Bool)

(assert (=> b!1391924 m!1277765))

(declare-fun m!1277767 () Bool)

(assert (=> b!1391924 m!1277767))

(assert (=> b!1391924 m!1277767))

(declare-fun m!1277769 () Bool)

(assert (=> b!1391924 m!1277769))

(declare-fun m!1277771 () Bool)

(assert (=> start!119480 m!1277771))

(declare-fun m!1277773 () Bool)

(assert (=> start!119480 m!1277773))

(declare-fun m!1277775 () Bool)

(assert (=> b!1391920 m!1277775))

(assert (=> b!1391920 m!1277775))

(declare-fun m!1277777 () Bool)

(assert (=> b!1391920 m!1277777))

(assert (=> b!1391921 m!1277751))

(assert (=> b!1391921 m!1277751))

(declare-fun m!1277779 () Bool)

(assert (=> b!1391921 m!1277779))

(declare-fun m!1277781 () Bool)

(assert (=> b!1391922 m!1277781))

(push 1)

(assert (not start!119480))

(assert (not b!1391922))

(assert (not b!1391921))

(assert (not b!1391919))

(assert (not b!1391926))

(assert (not b!1391920))

(assert (not b!1391924))

(assert (not b!1391923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

