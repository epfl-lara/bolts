; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119650 () Bool)

(assert start!119650)

(declare-fun b!1393173 () Bool)

(declare-fun e!788912 () Bool)

(declare-fun e!788910 () Bool)

(assert (=> b!1393173 (= e!788912 (not e!788910))))

(declare-fun res!932691 () Bool)

(assert (=> b!1393173 (=> res!932691 e!788910)))

(declare-datatypes ((SeekEntryResult!10318 0))(
  ( (MissingZero!10318 (index!43642 (_ BitVec 32))) (Found!10318 (index!43643 (_ BitVec 32))) (Intermediate!10318 (undefined!11130 Bool) (index!43644 (_ BitVec 32)) (x!125333 (_ BitVec 32))) (Undefined!10318) (MissingVacant!10318 (index!43645 (_ BitVec 32))) )
))
(declare-fun lt!611861 () SeekEntryResult!10318)

(assert (=> b!1393173 (= res!932691 (or (not (is-Intermediate!10318 lt!611861)) (undefined!11130 lt!611861)))))

(declare-fun e!788911 () Bool)

(assert (=> b!1393173 e!788911))

(declare-fun res!932694 () Bool)

(assert (=> b!1393173 (=> (not res!932694) (not e!788911))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95250 0))(
  ( (array!95251 (arr!45979 (Array (_ BitVec 32) (_ BitVec 64))) (size!46530 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95250)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95250 (_ BitVec 32)) Bool)

(assert (=> b!1393173 (= res!932694 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46590 0))(
  ( (Unit!46591) )
))
(declare-fun lt!611863 () Unit!46590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95250 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46590)

(assert (=> b!1393173 (= lt!611863 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95250 (_ BitVec 32)) SeekEntryResult!10318)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393173 (= lt!611861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45979 a!2901) j!112) mask!2840) (select (arr!45979 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393174 () Bool)

(declare-fun res!932696 () Bool)

(assert (=> b!1393174 (=> (not res!932696) (not e!788912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393174 (= res!932696 (validKeyInArray!0 (select (arr!45979 a!2901) j!112)))))

(declare-fun b!1393176 () Bool)

(declare-fun res!932693 () Bool)

(assert (=> b!1393176 (=> (not res!932693) (not e!788912))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393176 (= res!932693 (validKeyInArray!0 (select (arr!45979 a!2901) i!1037)))))

(declare-fun b!1393177 () Bool)

(declare-fun res!932692 () Bool)

(assert (=> b!1393177 (=> (not res!932692) (not e!788912))))

(assert (=> b!1393177 (= res!932692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393178 () Bool)

(assert (=> b!1393178 (= e!788910 true)))

(declare-fun lt!611862 () SeekEntryResult!10318)

(assert (=> b!1393178 (= lt!611862 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45979 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45979 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95251 (store (arr!45979 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46530 a!2901)) mask!2840))))

(declare-fun b!1393179 () Bool)

(declare-fun res!932690 () Bool)

(assert (=> b!1393179 (=> (not res!932690) (not e!788912))))

(declare-datatypes ((List!32678 0))(
  ( (Nil!32675) (Cons!32674 (h!33907 (_ BitVec 64)) (t!47379 List!32678)) )
))
(declare-fun arrayNoDuplicates!0 (array!95250 (_ BitVec 32) List!32678) Bool)

(assert (=> b!1393179 (= res!932690 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32675))))

(declare-fun b!1393180 () Bool)

(declare-fun res!932697 () Bool)

(assert (=> b!1393180 (=> (not res!932697) (not e!788912))))

(assert (=> b!1393180 (= res!932697 (and (= (size!46530 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46530 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46530 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!932695 () Bool)

(assert (=> start!119650 (=> (not res!932695) (not e!788912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119650 (= res!932695 (validMask!0 mask!2840))))

(assert (=> start!119650 e!788912))

(assert (=> start!119650 true))

(declare-fun array_inv!34924 (array!95250) Bool)

(assert (=> start!119650 (array_inv!34924 a!2901)))

(declare-fun b!1393175 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95250 (_ BitVec 32)) SeekEntryResult!10318)

(assert (=> b!1393175 (= e!788911 (= (seekEntryOrOpen!0 (select (arr!45979 a!2901) j!112) a!2901 mask!2840) (Found!10318 j!112)))))

(assert (= (and start!119650 res!932695) b!1393180))

(assert (= (and b!1393180 res!932697) b!1393176))

(assert (= (and b!1393176 res!932693) b!1393174))

(assert (= (and b!1393174 res!932696) b!1393177))

(assert (= (and b!1393177 res!932692) b!1393179))

(assert (= (and b!1393179 res!932690) b!1393173))

(assert (= (and b!1393173 res!932694) b!1393175))

(assert (= (and b!1393173 (not res!932691)) b!1393178))

(declare-fun m!1279067 () Bool)

(assert (=> b!1393175 m!1279067))

(assert (=> b!1393175 m!1279067))

(declare-fun m!1279069 () Bool)

(assert (=> b!1393175 m!1279069))

(declare-fun m!1279071 () Bool)

(assert (=> start!119650 m!1279071))

(declare-fun m!1279073 () Bool)

(assert (=> start!119650 m!1279073))

(declare-fun m!1279075 () Bool)

(assert (=> b!1393178 m!1279075))

(declare-fun m!1279077 () Bool)

(assert (=> b!1393178 m!1279077))

(assert (=> b!1393178 m!1279077))

(declare-fun m!1279079 () Bool)

(assert (=> b!1393178 m!1279079))

(assert (=> b!1393178 m!1279079))

(assert (=> b!1393178 m!1279077))

(declare-fun m!1279081 () Bool)

(assert (=> b!1393178 m!1279081))

(declare-fun m!1279083 () Bool)

(assert (=> b!1393177 m!1279083))

(assert (=> b!1393174 m!1279067))

(assert (=> b!1393174 m!1279067))

(declare-fun m!1279085 () Bool)

(assert (=> b!1393174 m!1279085))

(declare-fun m!1279087 () Bool)

(assert (=> b!1393179 m!1279087))

(declare-fun m!1279089 () Bool)

(assert (=> b!1393176 m!1279089))

(assert (=> b!1393176 m!1279089))

(declare-fun m!1279091 () Bool)

(assert (=> b!1393176 m!1279091))

(assert (=> b!1393173 m!1279067))

(declare-fun m!1279093 () Bool)

(assert (=> b!1393173 m!1279093))

(assert (=> b!1393173 m!1279067))

(declare-fun m!1279095 () Bool)

(assert (=> b!1393173 m!1279095))

(assert (=> b!1393173 m!1279093))

(assert (=> b!1393173 m!1279067))

(declare-fun m!1279097 () Bool)

(assert (=> b!1393173 m!1279097))

(declare-fun m!1279099 () Bool)

(assert (=> b!1393173 m!1279099))

(push 1)

(assert (not start!119650))

(assert (not b!1393176))

(assert (not b!1393175))

(assert (not b!1393178))

(assert (not b!1393174))

(assert (not b!1393179))

(assert (not b!1393173))

(assert (not b!1393177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

