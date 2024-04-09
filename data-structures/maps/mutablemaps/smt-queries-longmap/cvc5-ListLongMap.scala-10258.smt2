; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120640 () Bool)

(assert start!120640)

(declare-fun b!1404101 () Bool)

(declare-fun res!942726 () Bool)

(declare-fun e!794939 () Bool)

(assert (=> b!1404101 (=> (not res!942726) (not e!794939))))

(declare-datatypes ((array!95967 0))(
  ( (array!95968 (arr!46330 (Array (_ BitVec 32) (_ BitVec 64))) (size!46881 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95967)

(declare-datatypes ((List!33029 0))(
  ( (Nil!33026) (Cons!33025 (h!34273 (_ BitVec 64)) (t!47730 List!33029)) )
))
(declare-fun arrayNoDuplicates!0 (array!95967 (_ BitVec 32) List!33029) Bool)

(assert (=> b!1404101 (= res!942726 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33026))))

(declare-fun b!1404102 () Bool)

(assert (=> b!1404102 (= e!794939 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10663 0))(
  ( (MissingZero!10663 (index!45028 (_ BitVec 32))) (Found!10663 (index!45029 (_ BitVec 32))) (Intermediate!10663 (undefined!11475 Bool) (index!45030 (_ BitVec 32)) (x!126653 (_ BitVec 32))) (Undefined!10663) (MissingVacant!10663 (index!45031 (_ BitVec 32))) )
))
(declare-fun lt!618541 () SeekEntryResult!10663)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95967 (_ BitVec 32)) SeekEntryResult!10663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404102 (= lt!618541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46330 a!2901) j!112) mask!2840) (select (arr!46330 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404103 () Bool)

(declare-fun res!942724 () Bool)

(assert (=> b!1404103 (=> (not res!942724) (not e!794939))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404103 (= res!942724 (and (= (size!46881 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46881 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46881 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404104 () Bool)

(declare-fun res!942721 () Bool)

(assert (=> b!1404104 (=> (not res!942721) (not e!794939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404104 (= res!942721 (validKeyInArray!0 (select (arr!46330 a!2901) i!1037)))))

(declare-fun b!1404105 () Bool)

(declare-fun res!942722 () Bool)

(assert (=> b!1404105 (=> (not res!942722) (not e!794939))))

(assert (=> b!1404105 (= res!942722 (validKeyInArray!0 (select (arr!46330 a!2901) j!112)))))

(declare-fun b!1404106 () Bool)

(declare-fun res!942725 () Bool)

(assert (=> b!1404106 (=> (not res!942725) (not e!794939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95967 (_ BitVec 32)) Bool)

(assert (=> b!1404106 (= res!942725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942723 () Bool)

(assert (=> start!120640 (=> (not res!942723) (not e!794939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120640 (= res!942723 (validMask!0 mask!2840))))

(assert (=> start!120640 e!794939))

(assert (=> start!120640 true))

(declare-fun array_inv!35275 (array!95967) Bool)

(assert (=> start!120640 (array_inv!35275 a!2901)))

(assert (= (and start!120640 res!942723) b!1404103))

(assert (= (and b!1404103 res!942724) b!1404104))

(assert (= (and b!1404104 res!942721) b!1404105))

(assert (= (and b!1404105 res!942722) b!1404106))

(assert (= (and b!1404106 res!942725) b!1404101))

(assert (= (and b!1404101 res!942726) b!1404102))

(declare-fun m!1292969 () Bool)

(assert (=> start!120640 m!1292969))

(declare-fun m!1292971 () Bool)

(assert (=> start!120640 m!1292971))

(declare-fun m!1292973 () Bool)

(assert (=> b!1404102 m!1292973))

(assert (=> b!1404102 m!1292973))

(declare-fun m!1292975 () Bool)

(assert (=> b!1404102 m!1292975))

(assert (=> b!1404102 m!1292975))

(assert (=> b!1404102 m!1292973))

(declare-fun m!1292977 () Bool)

(assert (=> b!1404102 m!1292977))

(declare-fun m!1292979 () Bool)

(assert (=> b!1404104 m!1292979))

(assert (=> b!1404104 m!1292979))

(declare-fun m!1292981 () Bool)

(assert (=> b!1404104 m!1292981))

(declare-fun m!1292983 () Bool)

(assert (=> b!1404101 m!1292983))

(assert (=> b!1404105 m!1292973))

(assert (=> b!1404105 m!1292973))

(declare-fun m!1292985 () Bool)

(assert (=> b!1404105 m!1292985))

(declare-fun m!1292987 () Bool)

(assert (=> b!1404106 m!1292987))

(push 1)

(assert (not b!1404102))

(assert (not b!1404106))

(assert (not b!1404105))

(assert (not b!1404104))

(assert (not b!1404101))

(assert (not start!120640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

