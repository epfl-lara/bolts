; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118154 () Bool)

(assert start!118154)

(declare-fun res!924381 () Bool)

(declare-fun e!783703 () Bool)

(assert (=> start!118154 (=> (not res!924381) (not e!783703))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118154 (= res!924381 (validMask!0 mask!2987))))

(assert (=> start!118154 e!783703))

(assert (=> start!118154 true))

(declare-datatypes ((array!94434 0))(
  ( (array!94435 (arr!45594 (Array (_ BitVec 32) (_ BitVec 64))) (size!46145 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94434)

(declare-fun array_inv!34539 (array!94434) Bool)

(assert (=> start!118154 (array_inv!34539 a!2938)))

(declare-fun b!1382678 () Bool)

(declare-fun res!924380 () Bool)

(assert (=> b!1382678 (=> (not res!924380) (not e!783703))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382678 (= res!924380 (and (= (size!46145 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46145 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46145 a!2938))))))

(declare-fun b!1382679 () Bool)

(declare-fun res!924379 () Bool)

(assert (=> b!1382679 (=> (not res!924379) (not e!783703))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382679 (= res!924379 (validKeyInArray!0 (select (arr!45594 a!2938) i!1065)))))

(declare-fun b!1382680 () Bool)

(assert (=> b!1382680 (= e!783703 (and (bvsle #b00000000000000000000000000000000 (size!46145 a!2938)) (bvsge (size!46145 a!2938) #b01111111111111111111111111111111)))))

(assert (= (and start!118154 res!924381) b!1382678))

(assert (= (and b!1382678 res!924380) b!1382679))

(assert (= (and b!1382679 res!924379) b!1382680))

(declare-fun m!1267867 () Bool)

(assert (=> start!118154 m!1267867))

(declare-fun m!1267869 () Bool)

(assert (=> start!118154 m!1267869))

(declare-fun m!1267871 () Bool)

(assert (=> b!1382679 m!1267871))

(assert (=> b!1382679 m!1267871))

(declare-fun m!1267873 () Bool)

(assert (=> b!1382679 m!1267873))

(push 1)

(assert (not start!118154))

(assert (not b!1382679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

