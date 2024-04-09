; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127832 () Bool)

(assert start!127832)

(declare-fun b!1501761 () Bool)

(declare-fun res!1022909 () Bool)

(declare-fun e!840073 () Bool)

(assert (=> b!1501761 (=> (not res!1022909) (not e!840073))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100126 0))(
  ( (array!100127 (arr!48318 (Array (_ BitVec 32) (_ BitVec 64))) (size!48869 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100126)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501761 (= res!1022909 (and (= (size!48869 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48869 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48869 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501762 () Bool)

(declare-fun res!1022910 () Bool)

(assert (=> b!1501762 (=> (not res!1022910) (not e!840073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100126 (_ BitVec 32)) Bool)

(assert (=> b!1501762 (= res!1022910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501763 () Bool)

(declare-fun res!1022911 () Bool)

(assert (=> b!1501763 (=> (not res!1022911) (not e!840073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501763 (= res!1022911 (validKeyInArray!0 (select (arr!48318 a!2850) j!87)))))

(declare-fun res!1022912 () Bool)

(assert (=> start!127832 (=> (not res!1022912) (not e!840073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127832 (= res!1022912 (validMask!0 mask!2661))))

(assert (=> start!127832 e!840073))

(assert (=> start!127832 true))

(declare-fun array_inv!37263 (array!100126) Bool)

(assert (=> start!127832 (array_inv!37263 a!2850)))

(declare-fun b!1501764 () Bool)

(declare-fun res!1022913 () Bool)

(assert (=> b!1501764 (=> (not res!1022913) (not e!840073))))

(assert (=> b!1501764 (= res!1022913 (validKeyInArray!0 (select (arr!48318 a!2850) i!996)))))

(declare-fun b!1501765 () Bool)

(assert (=> b!1501765 (= e!840073 false)))

(declare-fun lt!653227 () Bool)

(declare-datatypes ((List!34990 0))(
  ( (Nil!34987) (Cons!34986 (h!36384 (_ BitVec 64)) (t!49691 List!34990)) )
))
(declare-fun arrayNoDuplicates!0 (array!100126 (_ BitVec 32) List!34990) Bool)

(assert (=> b!1501765 (= lt!653227 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34987))))

(assert (= (and start!127832 res!1022912) b!1501761))

(assert (= (and b!1501761 res!1022909) b!1501764))

(assert (= (and b!1501764 res!1022913) b!1501763))

(assert (= (and b!1501763 res!1022911) b!1501762))

(assert (= (and b!1501762 res!1022910) b!1501765))

(declare-fun m!1385093 () Bool)

(assert (=> start!127832 m!1385093))

(declare-fun m!1385095 () Bool)

(assert (=> start!127832 m!1385095))

(declare-fun m!1385097 () Bool)

(assert (=> b!1501762 m!1385097))

(declare-fun m!1385099 () Bool)

(assert (=> b!1501763 m!1385099))

(assert (=> b!1501763 m!1385099))

(declare-fun m!1385101 () Bool)

(assert (=> b!1501763 m!1385101))

(declare-fun m!1385103 () Bool)

(assert (=> b!1501765 m!1385103))

(declare-fun m!1385105 () Bool)

(assert (=> b!1501764 m!1385105))

(assert (=> b!1501764 m!1385105))

(declare-fun m!1385107 () Bool)

(assert (=> b!1501764 m!1385107))

(push 1)

(assert (not b!1501764))

(assert (not b!1501763))

(assert (not b!1501762))

(assert (not start!127832))

(assert (not b!1501765))

(check-sat)

