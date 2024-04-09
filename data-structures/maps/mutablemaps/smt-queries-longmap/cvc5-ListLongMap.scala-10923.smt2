; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127846 () Bool)

(assert start!127846)

(declare-fun b!1501866 () Bool)

(declare-fun res!1023014 () Bool)

(declare-fun e!840116 () Bool)

(assert (=> b!1501866 (=> (not res!1023014) (not e!840116))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100140 0))(
  ( (array!100141 (arr!48325 (Array (_ BitVec 32) (_ BitVec 64))) (size!48876 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100140)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501866 (= res!1023014 (and (= (size!48876 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48876 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48876 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1023015 () Bool)

(assert (=> start!127846 (=> (not res!1023015) (not e!840116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127846 (= res!1023015 (validMask!0 mask!2661))))

(assert (=> start!127846 e!840116))

(assert (=> start!127846 true))

(declare-fun array_inv!37270 (array!100140) Bool)

(assert (=> start!127846 (array_inv!37270 a!2850)))

(declare-fun b!1501867 () Bool)

(assert (=> b!1501867 (= e!840116 false)))

(declare-fun lt!653248 () Bool)

(declare-datatypes ((List!34997 0))(
  ( (Nil!34994) (Cons!34993 (h!36391 (_ BitVec 64)) (t!49698 List!34997)) )
))
(declare-fun arrayNoDuplicates!0 (array!100140 (_ BitVec 32) List!34997) Bool)

(assert (=> b!1501867 (= lt!653248 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34994))))

(declare-fun b!1501868 () Bool)

(declare-fun res!1023017 () Bool)

(assert (=> b!1501868 (=> (not res!1023017) (not e!840116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100140 (_ BitVec 32)) Bool)

(assert (=> b!1501868 (= res!1023017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501869 () Bool)

(declare-fun res!1023018 () Bool)

(assert (=> b!1501869 (=> (not res!1023018) (not e!840116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501869 (= res!1023018 (validKeyInArray!0 (select (arr!48325 a!2850) i!996)))))

(declare-fun b!1501870 () Bool)

(declare-fun res!1023016 () Bool)

(assert (=> b!1501870 (=> (not res!1023016) (not e!840116))))

(assert (=> b!1501870 (= res!1023016 (validKeyInArray!0 (select (arr!48325 a!2850) j!87)))))

(assert (= (and start!127846 res!1023015) b!1501866))

(assert (= (and b!1501866 res!1023014) b!1501869))

(assert (= (and b!1501869 res!1023018) b!1501870))

(assert (= (and b!1501870 res!1023016) b!1501868))

(assert (= (and b!1501868 res!1023017) b!1501867))

(declare-fun m!1385205 () Bool)

(assert (=> b!1501870 m!1385205))

(assert (=> b!1501870 m!1385205))

(declare-fun m!1385207 () Bool)

(assert (=> b!1501870 m!1385207))

(declare-fun m!1385209 () Bool)

(assert (=> start!127846 m!1385209))

(declare-fun m!1385211 () Bool)

(assert (=> start!127846 m!1385211))

(declare-fun m!1385213 () Bool)

(assert (=> b!1501868 m!1385213))

(declare-fun m!1385215 () Bool)

(assert (=> b!1501867 m!1385215))

(declare-fun m!1385217 () Bool)

(assert (=> b!1501869 m!1385217))

(assert (=> b!1501869 m!1385217))

(declare-fun m!1385219 () Bool)

(assert (=> b!1501869 m!1385219))

(push 1)

(assert (not b!1501870))

(assert (not b!1501867))

(assert (not start!127846))

(assert (not b!1501869))

(assert (not b!1501868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

