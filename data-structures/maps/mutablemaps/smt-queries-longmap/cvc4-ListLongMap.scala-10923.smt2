; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127850 () Bool)

(assert start!127850)

(declare-fun b!1501896 () Bool)

(declare-fun res!1023047 () Bool)

(declare-fun e!840127 () Bool)

(assert (=> b!1501896 (=> (not res!1023047) (not e!840127))))

(declare-datatypes ((array!100144 0))(
  ( (array!100145 (arr!48327 (Array (_ BitVec 32) (_ BitVec 64))) (size!48878 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100144)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100144 (_ BitVec 32)) Bool)

(assert (=> b!1501896 (= res!1023047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501897 () Bool)

(declare-fun res!1023048 () Bool)

(assert (=> b!1501897 (=> (not res!1023048) (not e!840127))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501897 (= res!1023048 (validKeyInArray!0 (select (arr!48327 a!2850) i!996)))))

(declare-fun b!1501898 () Bool)

(declare-fun res!1023046 () Bool)

(assert (=> b!1501898 (=> (not res!1023046) (not e!840127))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501898 (= res!1023046 (validKeyInArray!0 (select (arr!48327 a!2850) j!87)))))

(declare-fun res!1023045 () Bool)

(assert (=> start!127850 (=> (not res!1023045) (not e!840127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127850 (= res!1023045 (validMask!0 mask!2661))))

(assert (=> start!127850 e!840127))

(assert (=> start!127850 true))

(declare-fun array_inv!37272 (array!100144) Bool)

(assert (=> start!127850 (array_inv!37272 a!2850)))

(declare-fun b!1501899 () Bool)

(assert (=> b!1501899 (= e!840127 false)))

(declare-fun lt!653254 () Bool)

(declare-datatypes ((List!34999 0))(
  ( (Nil!34996) (Cons!34995 (h!36393 (_ BitVec 64)) (t!49700 List!34999)) )
))
(declare-fun arrayNoDuplicates!0 (array!100144 (_ BitVec 32) List!34999) Bool)

(assert (=> b!1501899 (= lt!653254 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34996))))

(declare-fun b!1501900 () Bool)

(declare-fun res!1023044 () Bool)

(assert (=> b!1501900 (=> (not res!1023044) (not e!840127))))

(assert (=> b!1501900 (= res!1023044 (and (= (size!48878 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48878 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48878 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127850 res!1023045) b!1501900))

(assert (= (and b!1501900 res!1023044) b!1501897))

(assert (= (and b!1501897 res!1023048) b!1501898))

(assert (= (and b!1501898 res!1023046) b!1501896))

(assert (= (and b!1501896 res!1023047) b!1501899))

(declare-fun m!1385237 () Bool)

(assert (=> b!1501898 m!1385237))

(assert (=> b!1501898 m!1385237))

(declare-fun m!1385239 () Bool)

(assert (=> b!1501898 m!1385239))

(declare-fun m!1385241 () Bool)

(assert (=> b!1501897 m!1385241))

(assert (=> b!1501897 m!1385241))

(declare-fun m!1385243 () Bool)

(assert (=> b!1501897 m!1385243))

(declare-fun m!1385245 () Bool)

(assert (=> start!127850 m!1385245))

(declare-fun m!1385247 () Bool)

(assert (=> start!127850 m!1385247))

(declare-fun m!1385249 () Bool)

(assert (=> b!1501899 m!1385249))

(declare-fun m!1385251 () Bool)

(assert (=> b!1501896 m!1385251))

(push 1)

(assert (not b!1501897))

(assert (not start!127850))

(assert (not b!1501899))

(assert (not b!1501896))

(assert (not b!1501898))

(check-sat)

