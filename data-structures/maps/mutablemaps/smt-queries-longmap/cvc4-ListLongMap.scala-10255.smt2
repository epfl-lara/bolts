; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120626 () Bool)

(assert start!120626)

(declare-fun b!1403976 () Bool)

(declare-fun res!942599 () Bool)

(declare-fun e!794897 () Bool)

(assert (=> b!1403976 (=> (not res!942599) (not e!794897))))

(declare-datatypes ((array!95953 0))(
  ( (array!95954 (arr!46323 (Array (_ BitVec 32) (_ BitVec 64))) (size!46874 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95953)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95953 (_ BitVec 32)) Bool)

(assert (=> b!1403976 (= res!942599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403977 () Bool)

(declare-fun res!942596 () Bool)

(assert (=> b!1403977 (=> (not res!942596) (not e!794897))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403977 (= res!942596 (and (= (size!46874 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46874 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46874 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942598 () Bool)

(assert (=> start!120626 (=> (not res!942598) (not e!794897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120626 (= res!942598 (validMask!0 mask!2840))))

(assert (=> start!120626 e!794897))

(assert (=> start!120626 true))

(declare-fun array_inv!35268 (array!95953) Bool)

(assert (=> start!120626 (array_inv!35268 a!2901)))

(declare-fun b!1403978 () Bool)

(declare-fun res!942597 () Bool)

(assert (=> b!1403978 (=> (not res!942597) (not e!794897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403978 (= res!942597 (validKeyInArray!0 (select (arr!46323 a!2901) i!1037)))))

(declare-fun b!1403979 () Bool)

(assert (=> b!1403979 (= e!794897 false)))

(declare-fun lt!618520 () Bool)

(declare-datatypes ((List!33022 0))(
  ( (Nil!33019) (Cons!33018 (h!34266 (_ BitVec 64)) (t!47723 List!33022)) )
))
(declare-fun arrayNoDuplicates!0 (array!95953 (_ BitVec 32) List!33022) Bool)

(assert (=> b!1403979 (= lt!618520 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33019))))

(declare-fun b!1403980 () Bool)

(declare-fun res!942600 () Bool)

(assert (=> b!1403980 (=> (not res!942600) (not e!794897))))

(assert (=> b!1403980 (= res!942600 (validKeyInArray!0 (select (arr!46323 a!2901) j!112)))))

(assert (= (and start!120626 res!942598) b!1403977))

(assert (= (and b!1403977 res!942596) b!1403978))

(assert (= (and b!1403978 res!942597) b!1403980))

(assert (= (and b!1403980 res!942600) b!1403976))

(assert (= (and b!1403976 res!942599) b!1403979))

(declare-fun m!1292839 () Bool)

(assert (=> b!1403976 m!1292839))

(declare-fun m!1292841 () Bool)

(assert (=> start!120626 m!1292841))

(declare-fun m!1292843 () Bool)

(assert (=> start!120626 m!1292843))

(declare-fun m!1292845 () Bool)

(assert (=> b!1403979 m!1292845))

(declare-fun m!1292847 () Bool)

(assert (=> b!1403980 m!1292847))

(assert (=> b!1403980 m!1292847))

(declare-fun m!1292849 () Bool)

(assert (=> b!1403980 m!1292849))

(declare-fun m!1292851 () Bool)

(assert (=> b!1403978 m!1292851))

(assert (=> b!1403978 m!1292851))

(declare-fun m!1292853 () Bool)

(assert (=> b!1403978 m!1292853))

(push 1)

(assert (not b!1403980))

(assert (not b!1403978))

(assert (not start!120626))

(assert (not b!1403976))

(assert (not b!1403979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

