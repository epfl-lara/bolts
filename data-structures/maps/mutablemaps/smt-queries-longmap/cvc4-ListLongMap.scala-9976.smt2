; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117840 () Bool)

(assert start!117840)

(declare-fun res!922890 () Bool)

(declare-fun e!782924 () Bool)

(assert (=> start!117840 (=> (not res!922890) (not e!782924))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117840 (= res!922890 (validMask!0 mask!3034))))

(assert (=> start!117840 e!782924))

(assert (=> start!117840 true))

(declare-datatypes ((array!94208 0))(
  ( (array!94209 (arr!45486 (Array (_ BitVec 32) (_ BitVec 64))) (size!46037 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94208)

(declare-fun array_inv!34431 (array!94208) Bool)

(assert (=> start!117840 (array_inv!34431 a!2971)))

(declare-fun b!1381151 () Bool)

(declare-fun res!922888 () Bool)

(assert (=> b!1381151 (=> (not res!922888) (not e!782924))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381151 (= res!922888 (and (= (size!46037 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46037 a!2971))))))

(declare-fun b!1381152 () Bool)

(declare-fun res!922889 () Bool)

(assert (=> b!1381152 (=> (not res!922889) (not e!782924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381152 (= res!922889 (validKeyInArray!0 (select (arr!45486 a!2971) i!1094)))))

(declare-fun b!1381153 () Bool)

(assert (=> b!1381153 (= e!782924 (bvsgt #b00000000000000000000000000000000 (size!46037 a!2971)))))

(assert (= (and start!117840 res!922890) b!1381151))

(assert (= (and b!1381151 res!922888) b!1381152))

(assert (= (and b!1381152 res!922889) b!1381153))

(declare-fun m!1266421 () Bool)

(assert (=> start!117840 m!1266421))

(declare-fun m!1266423 () Bool)

(assert (=> start!117840 m!1266423))

(declare-fun m!1266425 () Bool)

(assert (=> b!1381152 m!1266425))

(assert (=> b!1381152 m!1266425))

(declare-fun m!1266427 () Bool)

(assert (=> b!1381152 m!1266427))

(push 1)

(assert (not b!1381152))

(assert (not start!117840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

