; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119632 () Bool)

(assert start!119632)

(declare-fun b!1392957 () Bool)

(declare-fun e!788801 () Bool)

(assert (=> b!1392957 (= e!788801 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95232 0))(
  ( (array!95233 (arr!45970 (Array (_ BitVec 32) (_ BitVec 64))) (size!46521 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95232)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10309 0))(
  ( (MissingZero!10309 (index!43606 (_ BitVec 32))) (Found!10309 (index!43607 (_ BitVec 32))) (Intermediate!10309 (undefined!11121 Bool) (index!43608 (_ BitVec 32)) (x!125300 (_ BitVec 32))) (Undefined!10309) (MissingVacant!10309 (index!43609 (_ BitVec 32))) )
))
(declare-fun lt!611782 () SeekEntryResult!10309)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95232 (_ BitVec 32)) SeekEntryResult!10309)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392957 (= lt!611782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45970 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45970 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95233 (store (arr!45970 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46521 a!2901)) mask!2840))))

(declare-fun b!1392959 () Bool)

(declare-fun res!932481 () Bool)

(declare-fun e!788803 () Bool)

(assert (=> b!1392959 (=> (not res!932481) (not e!788803))))

(declare-datatypes ((List!32669 0))(
  ( (Nil!32666) (Cons!32665 (h!33898 (_ BitVec 64)) (t!47370 List!32669)) )
))
(declare-fun arrayNoDuplicates!0 (array!95232 (_ BitVec 32) List!32669) Bool)

(assert (=> b!1392959 (= res!932481 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32666))))

(declare-fun b!1392960 () Bool)

(declare-fun res!932476 () Bool)

(assert (=> b!1392960 (=> (not res!932476) (not e!788803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392960 (= res!932476 (validKeyInArray!0 (select (arr!45970 a!2901) j!112)))))

(declare-fun b!1392961 () Bool)

(assert (=> b!1392961 (= e!788803 (not e!788801))))

(declare-fun res!932475 () Bool)

(assert (=> b!1392961 (=> res!932475 e!788801)))

(declare-fun lt!611781 () SeekEntryResult!10309)

(assert (=> b!1392961 (= res!932475 (or (not (is-Intermediate!10309 lt!611781)) (undefined!11121 lt!611781)))))

(declare-fun e!788802 () Bool)

(assert (=> b!1392961 e!788802))

(declare-fun res!932479 () Bool)

(assert (=> b!1392961 (=> (not res!932479) (not e!788802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95232 (_ BitVec 32)) Bool)

(assert (=> b!1392961 (= res!932479 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46572 0))(
  ( (Unit!46573) )
))
(declare-fun lt!611780 () Unit!46572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46572)

(assert (=> b!1392961 (= lt!611780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1392961 (= lt!611781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45970 a!2901) j!112) mask!2840) (select (arr!45970 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392962 () Bool)

(declare-fun res!932474 () Bool)

(assert (=> b!1392962 (=> (not res!932474) (not e!788803))))

(assert (=> b!1392962 (= res!932474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!932477 () Bool)

(assert (=> start!119632 (=> (not res!932477) (not e!788803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119632 (= res!932477 (validMask!0 mask!2840))))

(assert (=> start!119632 e!788803))

(assert (=> start!119632 true))

(declare-fun array_inv!34915 (array!95232) Bool)

(assert (=> start!119632 (array_inv!34915 a!2901)))

(declare-fun b!1392958 () Bool)

(declare-fun res!932478 () Bool)

(assert (=> b!1392958 (=> (not res!932478) (not e!788803))))

(assert (=> b!1392958 (= res!932478 (validKeyInArray!0 (select (arr!45970 a!2901) i!1037)))))

(declare-fun b!1392963 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95232 (_ BitVec 32)) SeekEntryResult!10309)

(assert (=> b!1392963 (= e!788802 (= (seekEntryOrOpen!0 (select (arr!45970 a!2901) j!112) a!2901 mask!2840) (Found!10309 j!112)))))

(declare-fun b!1392964 () Bool)

(declare-fun res!932480 () Bool)

(assert (=> b!1392964 (=> (not res!932480) (not e!788803))))

(assert (=> b!1392964 (= res!932480 (and (= (size!46521 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46521 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46521 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119632 res!932477) b!1392964))

(assert (= (and b!1392964 res!932480) b!1392958))

(assert (= (and b!1392958 res!932478) b!1392960))

(assert (= (and b!1392960 res!932476) b!1392962))

(assert (= (and b!1392962 res!932474) b!1392959))

(assert (= (and b!1392959 res!932481) b!1392961))

(assert (= (and b!1392961 res!932479) b!1392963))

(assert (= (and b!1392961 (not res!932475)) b!1392957))

(declare-fun m!1278761 () Bool)

(assert (=> b!1392962 m!1278761))

(declare-fun m!1278763 () Bool)

(assert (=> start!119632 m!1278763))

(declare-fun m!1278765 () Bool)

(assert (=> start!119632 m!1278765))

(declare-fun m!1278767 () Bool)

(assert (=> b!1392963 m!1278767))

(assert (=> b!1392963 m!1278767))

(declare-fun m!1278769 () Bool)

(assert (=> b!1392963 m!1278769))

(assert (=> b!1392960 m!1278767))

(assert (=> b!1392960 m!1278767))

(declare-fun m!1278771 () Bool)

(assert (=> b!1392960 m!1278771))

(declare-fun m!1278773 () Bool)

(assert (=> b!1392957 m!1278773))

(declare-fun m!1278775 () Bool)

(assert (=> b!1392957 m!1278775))

(assert (=> b!1392957 m!1278775))

(declare-fun m!1278777 () Bool)

(assert (=> b!1392957 m!1278777))

(assert (=> b!1392957 m!1278777))

(assert (=> b!1392957 m!1278775))

(declare-fun m!1278779 () Bool)

(assert (=> b!1392957 m!1278779))

(declare-fun m!1278781 () Bool)

(assert (=> b!1392959 m!1278781))

(assert (=> b!1392961 m!1278767))

(declare-fun m!1278783 () Bool)

(assert (=> b!1392961 m!1278783))

(assert (=> b!1392961 m!1278767))

(declare-fun m!1278785 () Bool)

(assert (=> b!1392961 m!1278785))

(assert (=> b!1392961 m!1278783))

(assert (=> b!1392961 m!1278767))

(declare-fun m!1278787 () Bool)

(assert (=> b!1392961 m!1278787))

(declare-fun m!1278789 () Bool)

(assert (=> b!1392961 m!1278789))

(declare-fun m!1278791 () Bool)

(assert (=> b!1392958 m!1278791))

(assert (=> b!1392958 m!1278791))

(declare-fun m!1278793 () Bool)

(assert (=> b!1392958 m!1278793))

(push 1)

(assert (not b!1392962))

(assert (not b!1392960))

(assert (not b!1392961))

(assert (not b!1392957))

(assert (not start!119632))

(assert (not b!1392963))

(assert (not b!1392959))

(assert (not b!1392958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

