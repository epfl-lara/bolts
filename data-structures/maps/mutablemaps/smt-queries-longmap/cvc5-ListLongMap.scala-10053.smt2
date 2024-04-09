; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118492 () Bool)

(assert start!118492)

(declare-fun b!1385208 () Bool)

(declare-fun res!926568 () Bool)

(declare-fun e!784903 () Bool)

(assert (=> b!1385208 (=> (not res!926568) (not e!784903))))

(declare-datatypes ((array!94686 0))(
  ( (array!94687 (arr!45715 (Array (_ BitVec 32) (_ BitVec 64))) (size!46266 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94686)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94686 (_ BitVec 32)) Bool)

(assert (=> b!1385208 (= res!926568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385209 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385209 (= e!784903 (bvslt (bvsub (size!46266 a!2938) startIndex!16) #b00000000000000000000000000000000))))

(declare-fun res!926571 () Bool)

(assert (=> start!118492 (=> (not res!926571) (not e!784903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118492 (= res!926571 (validMask!0 mask!2987))))

(assert (=> start!118492 e!784903))

(assert (=> start!118492 true))

(declare-fun array_inv!34660 (array!94686) Bool)

(assert (=> start!118492 (array_inv!34660 a!2938)))

(declare-fun b!1385210 () Bool)

(declare-fun res!926570 () Bool)

(assert (=> b!1385210 (=> (not res!926570) (not e!784903))))

(declare-datatypes ((List!32423 0))(
  ( (Nil!32420) (Cons!32419 (h!33628 (_ BitVec 64)) (t!47124 List!32423)) )
))
(declare-fun arrayNoDuplicates!0 (array!94686 (_ BitVec 32) List!32423) Bool)

(assert (=> b!1385210 (= res!926570 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32420))))

(declare-fun b!1385211 () Bool)

(declare-fun res!926569 () Bool)

(assert (=> b!1385211 (=> (not res!926569) (not e!784903))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385211 (= res!926569 (validKeyInArray!0 (select (arr!45715 a!2938) i!1065)))))

(declare-fun b!1385212 () Bool)

(declare-fun res!926567 () Bool)

(assert (=> b!1385212 (=> (not res!926567) (not e!784903))))

(assert (=> b!1385212 (= res!926567 (and (= (size!46266 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46266 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46266 a!2938))))))

(assert (= (and start!118492 res!926571) b!1385212))

(assert (= (and b!1385212 res!926567) b!1385211))

(assert (= (and b!1385211 res!926569) b!1385210))

(assert (= (and b!1385210 res!926570) b!1385208))

(assert (= (and b!1385208 res!926568) b!1385209))

(declare-fun m!1270565 () Bool)

(assert (=> b!1385208 m!1270565))

(declare-fun m!1270567 () Bool)

(assert (=> start!118492 m!1270567))

(declare-fun m!1270569 () Bool)

(assert (=> start!118492 m!1270569))

(declare-fun m!1270571 () Bool)

(assert (=> b!1385210 m!1270571))

(declare-fun m!1270573 () Bool)

(assert (=> b!1385211 m!1270573))

(assert (=> b!1385211 m!1270573))

(declare-fun m!1270575 () Bool)

(assert (=> b!1385211 m!1270575))

(push 1)

(assert (not b!1385210))

(assert (not b!1385211))

(assert (not b!1385208))

(assert (not start!118492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

