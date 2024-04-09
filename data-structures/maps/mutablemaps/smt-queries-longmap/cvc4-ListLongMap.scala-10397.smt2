; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122546 () Bool)

(assert start!122546)

(declare-fun b!1419108 () Bool)

(declare-fun res!954738 () Bool)

(declare-fun e!802984 () Bool)

(assert (=> b!1419108 (=> (not res!954738) (not e!802984))))

(declare-datatypes ((array!96868 0))(
  ( (array!96869 (arr!46749 (Array (_ BitVec 32) (_ BitVec 64))) (size!47300 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96868)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96868 (_ BitVec 32)) Bool)

(assert (=> b!1419108 (= res!954738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!954740 () Bool)

(assert (=> start!122546 (=> (not res!954740) (not e!802984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122546 (= res!954740 (validMask!0 mask!2608))))

(assert (=> start!122546 e!802984))

(assert (=> start!122546 true))

(declare-fun array_inv!35694 (array!96868) Bool)

(assert (=> start!122546 (array_inv!35694 a!2831)))

(declare-fun b!1419109 () Bool)

(assert (=> b!1419109 (= e!802984 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!625678 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419109 (= lt!625678 (toIndex!0 (select (store (arr!46749 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419110 () Bool)

(declare-fun res!954737 () Bool)

(assert (=> b!1419110 (=> (not res!954737) (not e!802984))))

(declare-datatypes ((List!33439 0))(
  ( (Nil!33436) (Cons!33435 (h!34734 (_ BitVec 64)) (t!48140 List!33439)) )
))
(declare-fun arrayNoDuplicates!0 (array!96868 (_ BitVec 32) List!33439) Bool)

(assert (=> b!1419110 (= res!954737 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33436))))

(declare-fun b!1419111 () Bool)

(declare-fun res!954743 () Bool)

(assert (=> b!1419111 (=> (not res!954743) (not e!802984))))

(assert (=> b!1419111 (= res!954743 (and (= (size!47300 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47300 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47300 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419112 () Bool)

(declare-fun res!954744 () Bool)

(assert (=> b!1419112 (=> (not res!954744) (not e!802984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419112 (= res!954744 (validKeyInArray!0 (select (arr!46749 a!2831) j!81)))))

(declare-fun b!1419113 () Bool)

(declare-fun res!954741 () Bool)

(assert (=> b!1419113 (=> (not res!954741) (not e!802984))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11056 0))(
  ( (MissingZero!11056 (index!46615 (_ BitVec 32))) (Found!11056 (index!46616 (_ BitVec 32))) (Intermediate!11056 (undefined!11868 Bool) (index!46617 (_ BitVec 32)) (x!128287 (_ BitVec 32))) (Undefined!11056) (MissingVacant!11056 (index!46618 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96868 (_ BitVec 32)) SeekEntryResult!11056)

(assert (=> b!1419113 (= res!954741 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46749 a!2831) j!81) mask!2608) (select (arr!46749 a!2831) j!81) a!2831 mask!2608) (Intermediate!11056 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419114 () Bool)

(declare-fun res!954739 () Bool)

(assert (=> b!1419114 (=> (not res!954739) (not e!802984))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419114 (= res!954739 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47300 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47300 a!2831))))))

(declare-fun b!1419115 () Bool)

(declare-fun res!954742 () Bool)

(assert (=> b!1419115 (=> (not res!954742) (not e!802984))))

(assert (=> b!1419115 (= res!954742 (validKeyInArray!0 (select (arr!46749 a!2831) i!982)))))

(assert (= (and start!122546 res!954740) b!1419111))

(assert (= (and b!1419111 res!954743) b!1419115))

(assert (= (and b!1419115 res!954742) b!1419112))

(assert (= (and b!1419112 res!954744) b!1419108))

(assert (= (and b!1419108 res!954738) b!1419110))

(assert (= (and b!1419110 res!954737) b!1419114))

(assert (= (and b!1419114 res!954739) b!1419113))

(assert (= (and b!1419113 res!954741) b!1419109))

(declare-fun m!1309677 () Bool)

(assert (=> b!1419115 m!1309677))

(assert (=> b!1419115 m!1309677))

(declare-fun m!1309679 () Bool)

(assert (=> b!1419115 m!1309679))

(declare-fun m!1309681 () Bool)

(assert (=> b!1419110 m!1309681))

(declare-fun m!1309683 () Bool)

(assert (=> b!1419109 m!1309683))

(declare-fun m!1309685 () Bool)

(assert (=> b!1419109 m!1309685))

(assert (=> b!1419109 m!1309685))

(declare-fun m!1309687 () Bool)

(assert (=> b!1419109 m!1309687))

(declare-fun m!1309689 () Bool)

(assert (=> start!122546 m!1309689))

(declare-fun m!1309691 () Bool)

(assert (=> start!122546 m!1309691))

(declare-fun m!1309693 () Bool)

(assert (=> b!1419113 m!1309693))

(assert (=> b!1419113 m!1309693))

(declare-fun m!1309695 () Bool)

(assert (=> b!1419113 m!1309695))

(assert (=> b!1419113 m!1309695))

(assert (=> b!1419113 m!1309693))

(declare-fun m!1309697 () Bool)

(assert (=> b!1419113 m!1309697))

(assert (=> b!1419112 m!1309693))

(assert (=> b!1419112 m!1309693))

(declare-fun m!1309699 () Bool)

(assert (=> b!1419112 m!1309699))

(declare-fun m!1309701 () Bool)

(assert (=> b!1419108 m!1309701))

(push 1)

(assert (not start!122546))

(assert (not b!1419110))

(assert (not b!1419115))

(assert (not b!1419108))

(assert (not b!1419113))

(assert (not b!1419109))

(assert (not b!1419112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

