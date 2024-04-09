; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120592 () Bool)

(assert start!120592)

(declare-fun b!1403635 () Bool)

(declare-fun res!942255 () Bool)

(declare-fun e!794751 () Bool)

(assert (=> b!1403635 (=> (not res!942255) (not e!794751))))

(declare-datatypes ((array!95919 0))(
  ( (array!95920 (arr!46306 (Array (_ BitVec 32) (_ BitVec 64))) (size!46857 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95919)

(declare-datatypes ((List!33005 0))(
  ( (Nil!33002) (Cons!33001 (h!34249 (_ BitVec 64)) (t!47706 List!33005)) )
))
(declare-fun arrayNoDuplicates!0 (array!95919 (_ BitVec 32) List!33005) Bool)

(assert (=> b!1403635 (= res!942255 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33002))))

(declare-fun b!1403636 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!794752 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10645 0))(
  ( (MissingZero!10645 (index!44956 (_ BitVec 32))) (Found!10645 (index!44957 (_ BitVec 32))) (Intermediate!10645 (undefined!11457 Bool) (index!44958 (_ BitVec 32)) (x!126571 (_ BitVec 32))) (Undefined!10645) (MissingVacant!10645 (index!44959 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95919 (_ BitVec 32)) SeekEntryResult!10645)

(assert (=> b!1403636 (= e!794752 (= (seekEntryOrOpen!0 (select (arr!46306 a!2901) j!112) a!2901 mask!2840) (Found!10645 j!112)))))

(declare-fun b!1403637 () Bool)

(declare-fun res!942259 () Bool)

(assert (=> b!1403637 (=> (not res!942259) (not e!794751))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403637 (= res!942259 (and (= (size!46857 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46857 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46857 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403638 () Bool)

(declare-fun res!942260 () Bool)

(assert (=> b!1403638 (=> (not res!942260) (not e!794751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95919 (_ BitVec 32)) Bool)

(assert (=> b!1403638 (= res!942260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403639 () Bool)

(assert (=> b!1403639 (= e!794751 (not true))))

(assert (=> b!1403639 e!794752))

(declare-fun res!942261 () Bool)

(assert (=> b!1403639 (=> (not res!942261) (not e!794752))))

(assert (=> b!1403639 (= res!942261 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47244 0))(
  ( (Unit!47245) )
))
(declare-fun lt!618427 () Unit!47244)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47244)

(assert (=> b!1403639 (= lt!618427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618426 () SeekEntryResult!10645)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95919 (_ BitVec 32)) SeekEntryResult!10645)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403639 (= lt!618426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46306 a!2901) j!112) mask!2840) (select (arr!46306 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942257 () Bool)

(assert (=> start!120592 (=> (not res!942257) (not e!794751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120592 (= res!942257 (validMask!0 mask!2840))))

(assert (=> start!120592 e!794751))

(assert (=> start!120592 true))

(declare-fun array_inv!35251 (array!95919) Bool)

(assert (=> start!120592 (array_inv!35251 a!2901)))

(declare-fun b!1403640 () Bool)

(declare-fun res!942256 () Bool)

(assert (=> b!1403640 (=> (not res!942256) (not e!794751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403640 (= res!942256 (validKeyInArray!0 (select (arr!46306 a!2901) j!112)))))

(declare-fun b!1403641 () Bool)

(declare-fun res!942258 () Bool)

(assert (=> b!1403641 (=> (not res!942258) (not e!794751))))

(assert (=> b!1403641 (= res!942258 (validKeyInArray!0 (select (arr!46306 a!2901) i!1037)))))

(assert (= (and start!120592 res!942257) b!1403637))

(assert (= (and b!1403637 res!942259) b!1403641))

(assert (= (and b!1403641 res!942258) b!1403640))

(assert (= (and b!1403640 res!942256) b!1403638))

(assert (= (and b!1403638 res!942260) b!1403635))

(assert (= (and b!1403635 res!942255) b!1403639))

(assert (= (and b!1403639 res!942261) b!1403636))

(declare-fun m!1292417 () Bool)

(assert (=> b!1403640 m!1292417))

(assert (=> b!1403640 m!1292417))

(declare-fun m!1292419 () Bool)

(assert (=> b!1403640 m!1292419))

(declare-fun m!1292421 () Bool)

(assert (=> b!1403638 m!1292421))

(assert (=> b!1403639 m!1292417))

(declare-fun m!1292423 () Bool)

(assert (=> b!1403639 m!1292423))

(assert (=> b!1403639 m!1292417))

(declare-fun m!1292425 () Bool)

(assert (=> b!1403639 m!1292425))

(assert (=> b!1403639 m!1292423))

(assert (=> b!1403639 m!1292417))

(declare-fun m!1292427 () Bool)

(assert (=> b!1403639 m!1292427))

(declare-fun m!1292429 () Bool)

(assert (=> b!1403639 m!1292429))

(declare-fun m!1292431 () Bool)

(assert (=> start!120592 m!1292431))

(declare-fun m!1292433 () Bool)

(assert (=> start!120592 m!1292433))

(declare-fun m!1292435 () Bool)

(assert (=> b!1403641 m!1292435))

(assert (=> b!1403641 m!1292435))

(declare-fun m!1292437 () Bool)

(assert (=> b!1403641 m!1292437))

(assert (=> b!1403636 m!1292417))

(assert (=> b!1403636 m!1292417))

(declare-fun m!1292439 () Bool)

(assert (=> b!1403636 m!1292439))

(declare-fun m!1292441 () Bool)

(assert (=> b!1403635 m!1292441))

(push 1)

(assert (not b!1403635))

(assert (not b!1403639))

(assert (not b!1403636))

(assert (not b!1403641))

(assert (not start!120592))

(assert (not b!1403638))

(assert (not b!1403640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

