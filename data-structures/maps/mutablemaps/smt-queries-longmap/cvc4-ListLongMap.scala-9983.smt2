; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117950 () Bool)

(assert start!117950)

(declare-fun b!1381445 () Bool)

(declare-fun res!923184 () Bool)

(declare-fun e!783119 () Bool)

(assert (=> b!1381445 (=> (not res!923184) (not e!783119))))

(declare-datatypes ((array!94257 0))(
  ( (array!94258 (arr!45507 (Array (_ BitVec 32) (_ BitVec 64))) (size!46058 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94257)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381445 (= res!923184 (validKeyInArray!0 (select (arr!45507 a!2971) i!1094)))))

(declare-fun b!1381444 () Bool)

(declare-fun res!923183 () Bool)

(assert (=> b!1381444 (=> (not res!923183) (not e!783119))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381444 (= res!923183 (and (= (size!46058 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46058 a!2971))))))

(declare-fun res!923181 () Bool)

(assert (=> start!117950 (=> (not res!923181) (not e!783119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117950 (= res!923181 (validMask!0 mask!3034))))

(assert (=> start!117950 e!783119))

(assert (=> start!117950 true))

(declare-fun array_inv!34452 (array!94257) Bool)

(assert (=> start!117950 (array_inv!34452 a!2971)))

(declare-fun b!1381447 () Bool)

(assert (=> b!1381447 (= e!783119 (bvsgt #b00000000000000000000000000000000 (size!46058 a!2971)))))

(declare-fun b!1381446 () Bool)

(declare-fun res!923182 () Bool)

(assert (=> b!1381446 (=> (not res!923182) (not e!783119))))

(declare-datatypes ((List!32221 0))(
  ( (Nil!32218) (Cons!32217 (h!33426 (_ BitVec 64)) (t!46922 List!32221)) )
))
(declare-fun arrayNoDuplicates!0 (array!94257 (_ BitVec 32) List!32221) Bool)

(assert (=> b!1381446 (= res!923182 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32218))))

(assert (= (and start!117950 res!923181) b!1381444))

(assert (= (and b!1381444 res!923183) b!1381445))

(assert (= (and b!1381445 res!923184) b!1381446))

(assert (= (and b!1381446 res!923182) b!1381447))

(declare-fun m!1266689 () Bool)

(assert (=> b!1381445 m!1266689))

(assert (=> b!1381445 m!1266689))

(declare-fun m!1266691 () Bool)

(assert (=> b!1381445 m!1266691))

(declare-fun m!1266693 () Bool)

(assert (=> start!117950 m!1266693))

(declare-fun m!1266695 () Bool)

(assert (=> start!117950 m!1266695))

(declare-fun m!1266697 () Bool)

(assert (=> b!1381446 m!1266697))

(push 1)

(assert (not b!1381445))

(assert (not start!117950))

(assert (not b!1381446))

(check-sat)

