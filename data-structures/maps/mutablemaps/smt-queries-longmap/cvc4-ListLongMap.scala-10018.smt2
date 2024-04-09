; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118256 () Bool)

(assert start!118256)

(declare-fun b!1382944 () Bool)

(declare-fun res!924645 () Bool)

(declare-fun e!783881 () Bool)

(assert (=> b!1382944 (=> (not res!924645) (not e!783881))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94477 0))(
  ( (array!94478 (arr!45612 (Array (_ BitVec 32) (_ BitVec 64))) (size!46163 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94477)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382944 (= res!924645 (and (= (size!46163 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46163 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46163 a!2938))))))

(declare-fun res!924647 () Bool)

(assert (=> start!118256 (=> (not res!924647) (not e!783881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118256 (= res!924647 (validMask!0 mask!2987))))

(assert (=> start!118256 e!783881))

(assert (=> start!118256 true))

(declare-fun array_inv!34557 (array!94477) Bool)

(assert (=> start!118256 (array_inv!34557 a!2938)))

(declare-fun b!1382945 () Bool)

(declare-fun res!924646 () Bool)

(assert (=> b!1382945 (=> (not res!924646) (not e!783881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382945 (= res!924646 (validKeyInArray!0 (select (arr!45612 a!2938) i!1065)))))

(declare-fun b!1382946 () Bool)

(declare-fun res!924648 () Bool)

(assert (=> b!1382946 (=> (not res!924648) (not e!783881))))

(declare-datatypes ((List!32320 0))(
  ( (Nil!32317) (Cons!32316 (h!33525 (_ BitVec 64)) (t!47021 List!32320)) )
))
(declare-fun arrayNoDuplicates!0 (array!94477 (_ BitVec 32) List!32320) Bool)

(assert (=> b!1382946 (= res!924648 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32317))))

(declare-fun b!1382947 () Bool)

(assert (=> b!1382947 (= e!783881 (bvsgt #b00000000000000000000000000000000 (size!46163 a!2938)))))

(assert (= (and start!118256 res!924647) b!1382944))

(assert (= (and b!1382944 res!924645) b!1382945))

(assert (= (and b!1382945 res!924646) b!1382946))

(assert (= (and b!1382946 res!924648) b!1382947))

(declare-fun m!1268107 () Bool)

(assert (=> start!118256 m!1268107))

(declare-fun m!1268109 () Bool)

(assert (=> start!118256 m!1268109))

(declare-fun m!1268111 () Bool)

(assert (=> b!1382945 m!1268111))

(assert (=> b!1382945 m!1268111))

(declare-fun m!1268113 () Bool)

(assert (=> b!1382945 m!1268113))

(declare-fun m!1268115 () Bool)

(assert (=> b!1382946 m!1268115))

(push 1)

(assert (not b!1382945))

(assert (not b!1382946))

(assert (not start!118256))

(check-sat)

(pop 1)

