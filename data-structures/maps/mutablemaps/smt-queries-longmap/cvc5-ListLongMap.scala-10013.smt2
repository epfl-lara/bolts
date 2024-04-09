; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118168 () Bool)

(assert start!118168)

(declare-fun b!1382691 () Bool)

(declare-fun res!924390 () Bool)

(declare-fun e!783710 () Bool)

(assert (=> b!1382691 (=> (not res!924390) (not e!783710))))

(declare-datatypes ((array!94437 0))(
  ( (array!94438 (arr!45595 (Array (_ BitVec 32) (_ BitVec 64))) (size!46146 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94437)

(assert (=> b!1382691 (= res!924390 (and (bvsle #b00000000000000000000000000000000 (size!46146 a!2938)) (bvslt (size!46146 a!2938) #b01111111111111111111111111111111)))))

(declare-fun b!1382689 () Bool)

(declare-fun res!924393 () Bool)

(assert (=> b!1382689 (=> (not res!924393) (not e!783710))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382689 (= res!924393 (and (= (size!46146 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46146 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46146 a!2938))))))

(declare-fun b!1382690 () Bool)

(declare-fun res!924392 () Bool)

(assert (=> b!1382690 (=> (not res!924392) (not e!783710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382690 (= res!924392 (validKeyInArray!0 (select (arr!45595 a!2938) i!1065)))))

(declare-fun b!1382692 () Bool)

(declare-datatypes ((List!32303 0))(
  ( (Nil!32300) (Cons!32299 (h!33508 (_ BitVec 64)) (t!47004 List!32303)) )
))
(declare-fun noDuplicate!2627 (List!32303) Bool)

(assert (=> b!1382692 (= e!783710 (not (noDuplicate!2627 Nil!32300)))))

(declare-fun res!924391 () Bool)

(assert (=> start!118168 (=> (not res!924391) (not e!783710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118168 (= res!924391 (validMask!0 mask!2987))))

(assert (=> start!118168 e!783710))

(assert (=> start!118168 true))

(declare-fun array_inv!34540 (array!94437) Bool)

(assert (=> start!118168 (array_inv!34540 a!2938)))

(assert (= (and start!118168 res!924391) b!1382689))

(assert (= (and b!1382689 res!924393) b!1382690))

(assert (= (and b!1382690 res!924392) b!1382691))

(assert (= (and b!1382691 res!924390) b!1382692))

(declare-fun m!1267875 () Bool)

(assert (=> b!1382690 m!1267875))

(assert (=> b!1382690 m!1267875))

(declare-fun m!1267877 () Bool)

(assert (=> b!1382690 m!1267877))

(declare-fun m!1267879 () Bool)

(assert (=> b!1382692 m!1267879))

(declare-fun m!1267881 () Bool)

(assert (=> start!118168 m!1267881))

(declare-fun m!1267883 () Bool)

(assert (=> start!118168 m!1267883))

(push 1)

(assert (not b!1382690))

(assert (not start!118168))

(assert (not b!1382692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149153 () Bool)

(assert (=> d!149153 (= (validKeyInArray!0 (select (arr!45595 a!2938) i!1065)) (and (not (= (select (arr!45595 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45595 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382690 d!149153))

(declare-fun d!149155 () Bool)

