; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118150 () Bool)

(assert start!118150)

(declare-fun res!924361 () Bool)

(declare-fun e!783692 () Bool)

(assert (=> start!118150 (=> (not res!924361) (not e!783692))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118150 (= res!924361 (validMask!0 mask!2987))))

(assert (=> start!118150 e!783692))

(assert (=> start!118150 true))

(declare-datatypes ((array!94430 0))(
  ( (array!94431 (arr!45592 (Array (_ BitVec 32) (_ BitVec 64))) (size!46143 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94430)

(declare-fun array_inv!34537 (array!94430) Bool)

(assert (=> start!118150 (array_inv!34537 a!2938)))

(declare-fun b!1382660 () Bool)

(declare-fun res!924363 () Bool)

(assert (=> b!1382660 (=> (not res!924363) (not e!783692))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382660 (= res!924363 (and (= (size!46143 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46143 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46143 a!2938))))))

(declare-fun b!1382661 () Bool)

(declare-fun res!924362 () Bool)

(assert (=> b!1382661 (=> (not res!924362) (not e!783692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382661 (= res!924362 (validKeyInArray!0 (select (arr!45592 a!2938) i!1065)))))

(declare-fun b!1382662 () Bool)

(assert (=> b!1382662 (= e!783692 (and (bvsle #b00000000000000000000000000000000 (size!46143 a!2938)) (bvsge (size!46143 a!2938) #b01111111111111111111111111111111)))))

(assert (= (and start!118150 res!924361) b!1382660))

(assert (= (and b!1382660 res!924363) b!1382661))

(assert (= (and b!1382661 res!924362) b!1382662))

(declare-fun m!1267851 () Bool)

(assert (=> start!118150 m!1267851))

(declare-fun m!1267853 () Bool)

(assert (=> start!118150 m!1267853))

(declare-fun m!1267855 () Bool)

(assert (=> b!1382661 m!1267855))

(assert (=> b!1382661 m!1267855))

(declare-fun m!1267857 () Bool)

(assert (=> b!1382661 m!1267857))

(push 1)

(assert (not b!1382661))

(assert (not start!118150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

