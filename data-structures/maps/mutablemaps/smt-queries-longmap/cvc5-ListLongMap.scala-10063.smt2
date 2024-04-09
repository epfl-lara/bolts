; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118552 () Bool)

(assert start!118552)

(declare-fun b!1385576 () Bool)

(declare-fun res!926936 () Bool)

(declare-fun e!785083 () Bool)

(assert (=> b!1385576 (=> (not res!926936) (not e!785083))))

(declare-datatypes ((array!94746 0))(
  ( (array!94747 (arr!45745 (Array (_ BitVec 32) (_ BitVec 64))) (size!46296 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94746)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385576 (= res!926936 (validKeyInArray!0 (select (arr!45745 a!2938) i!1065)))))

(declare-fun b!1385577 () Bool)

(declare-fun res!926935 () Bool)

(assert (=> b!1385577 (=> (not res!926935) (not e!785083))))

(declare-datatypes ((List!32453 0))(
  ( (Nil!32450) (Cons!32449 (h!33658 (_ BitVec 64)) (t!47154 List!32453)) )
))
(declare-fun arrayNoDuplicates!0 (array!94746 (_ BitVec 32) List!32453) Bool)

(assert (=> b!1385577 (= res!926935 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32450))))

(declare-fun b!1385578 () Bool)

(assert (=> b!1385578 (= e!785083 false)))

(declare-fun lt!609238 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94746 (_ BitVec 32)) Bool)

(assert (=> b!1385578 (= lt!609238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385575 () Bool)

(declare-fun res!926937 () Bool)

(assert (=> b!1385575 (=> (not res!926937) (not e!785083))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385575 (= res!926937 (and (= (size!46296 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46296 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46296 a!2938))))))

(declare-fun res!926934 () Bool)

(assert (=> start!118552 (=> (not res!926934) (not e!785083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118552 (= res!926934 (validMask!0 mask!2987))))

(assert (=> start!118552 e!785083))

(assert (=> start!118552 true))

(declare-fun array_inv!34690 (array!94746) Bool)

(assert (=> start!118552 (array_inv!34690 a!2938)))

(assert (= (and start!118552 res!926934) b!1385575))

(assert (= (and b!1385575 res!926937) b!1385576))

(assert (= (and b!1385576 res!926936) b!1385577))

(assert (= (and b!1385577 res!926935) b!1385578))

(declare-fun m!1270925 () Bool)

(assert (=> b!1385576 m!1270925))

(assert (=> b!1385576 m!1270925))

(declare-fun m!1270927 () Bool)

(assert (=> b!1385576 m!1270927))

(declare-fun m!1270929 () Bool)

(assert (=> b!1385577 m!1270929))

(declare-fun m!1270931 () Bool)

(assert (=> b!1385578 m!1270931))

(declare-fun m!1270933 () Bool)

(assert (=> start!118552 m!1270933))

(declare-fun m!1270935 () Bool)

(assert (=> start!118552 m!1270935))

(push 1)

(assert (not b!1385578))

(assert (not b!1385576))

(assert (not start!118552))

(assert (not b!1385577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

