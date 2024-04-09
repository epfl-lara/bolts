; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120622 () Bool)

(assert start!120622)

(declare-fun b!1403946 () Bool)

(declare-fun res!942570 () Bool)

(declare-fun e!794884 () Bool)

(assert (=> b!1403946 (=> (not res!942570) (not e!794884))))

(declare-datatypes ((array!95949 0))(
  ( (array!95950 (arr!46321 (Array (_ BitVec 32) (_ BitVec 64))) (size!46872 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95949)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403946 (= res!942570 (validKeyInArray!0 (select (arr!46321 a!2901) i!1037)))))

(declare-fun b!1403947 () Bool)

(declare-fun res!942569 () Bool)

(assert (=> b!1403947 (=> (not res!942569) (not e!794884))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95949 (_ BitVec 32)) Bool)

(assert (=> b!1403947 (= res!942569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403948 () Bool)

(assert (=> b!1403948 (= e!794884 false)))

(declare-fun lt!618514 () Bool)

(declare-datatypes ((List!33020 0))(
  ( (Nil!33017) (Cons!33016 (h!34264 (_ BitVec 64)) (t!47721 List!33020)) )
))
(declare-fun arrayNoDuplicates!0 (array!95949 (_ BitVec 32) List!33020) Bool)

(assert (=> b!1403948 (= lt!618514 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33017))))

(declare-fun res!942566 () Bool)

(assert (=> start!120622 (=> (not res!942566) (not e!794884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120622 (= res!942566 (validMask!0 mask!2840))))

(assert (=> start!120622 e!794884))

(assert (=> start!120622 true))

(declare-fun array_inv!35266 (array!95949) Bool)

(assert (=> start!120622 (array_inv!35266 a!2901)))

(declare-fun b!1403949 () Bool)

(declare-fun res!942567 () Bool)

(assert (=> b!1403949 (=> (not res!942567) (not e!794884))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403949 (= res!942567 (validKeyInArray!0 (select (arr!46321 a!2901) j!112)))))

(declare-fun b!1403950 () Bool)

(declare-fun res!942568 () Bool)

(assert (=> b!1403950 (=> (not res!942568) (not e!794884))))

(assert (=> b!1403950 (= res!942568 (and (= (size!46872 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46872 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46872 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120622 res!942566) b!1403950))

(assert (= (and b!1403950 res!942568) b!1403946))

(assert (= (and b!1403946 res!942570) b!1403949))

(assert (= (and b!1403949 res!942567) b!1403947))

(assert (= (and b!1403947 res!942569) b!1403948))

(declare-fun m!1292807 () Bool)

(assert (=> b!1403946 m!1292807))

(assert (=> b!1403946 m!1292807))

(declare-fun m!1292809 () Bool)

(assert (=> b!1403946 m!1292809))

(declare-fun m!1292811 () Bool)

(assert (=> b!1403948 m!1292811))

(declare-fun m!1292813 () Bool)

(assert (=> start!120622 m!1292813))

(declare-fun m!1292815 () Bool)

(assert (=> start!120622 m!1292815))

(declare-fun m!1292817 () Bool)

(assert (=> b!1403947 m!1292817))

(declare-fun m!1292819 () Bool)

(assert (=> b!1403949 m!1292819))

(assert (=> b!1403949 m!1292819))

(declare-fun m!1292821 () Bool)

(assert (=> b!1403949 m!1292821))

(push 1)

(assert (not start!120622))

(assert (not b!1403947))

(assert (not b!1403948))

(assert (not b!1403949))

(assert (not b!1403946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

