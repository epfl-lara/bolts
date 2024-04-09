; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118496 () Bool)

(assert start!118496)

(declare-fun b!1385238 () Bool)

(declare-fun res!926598 () Bool)

(declare-fun e!784916 () Bool)

(assert (=> b!1385238 (=> (not res!926598) (not e!784916))))

(declare-datatypes ((array!94690 0))(
  ( (array!94691 (arr!45717 (Array (_ BitVec 32) (_ BitVec 64))) (size!46268 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94690)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94690 (_ BitVec 32)) Bool)

(assert (=> b!1385238 (= res!926598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385239 () Bool)

(declare-fun res!926601 () Bool)

(assert (=> b!1385239 (=> (not res!926601) (not e!784916))))

(declare-datatypes ((List!32425 0))(
  ( (Nil!32422) (Cons!32421 (h!33630 (_ BitVec 64)) (t!47126 List!32425)) )
))
(declare-fun arrayNoDuplicates!0 (array!94690 (_ BitVec 32) List!32425) Bool)

(assert (=> b!1385239 (= res!926601 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32422))))

(declare-fun res!926600 () Bool)

(assert (=> start!118496 (=> (not res!926600) (not e!784916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118496 (= res!926600 (validMask!0 mask!2987))))

(assert (=> start!118496 e!784916))

(assert (=> start!118496 true))

(declare-fun array_inv!34662 (array!94690) Bool)

(assert (=> start!118496 (array_inv!34662 a!2938)))

(declare-fun b!1385240 () Bool)

(declare-fun res!926599 () Bool)

(assert (=> b!1385240 (=> (not res!926599) (not e!784916))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385240 (= res!926599 (and (= (size!46268 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46268 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46268 a!2938))))))

(declare-fun b!1385241 () Bool)

(declare-fun res!926597 () Bool)

(assert (=> b!1385241 (=> (not res!926597) (not e!784916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385241 (= res!926597 (validKeyInArray!0 (select (arr!45717 a!2938) i!1065)))))

(declare-fun b!1385242 () Bool)

(assert (=> b!1385242 (= e!784916 (bvslt (bvsub (size!46268 a!2938) startIndex!16) #b00000000000000000000000000000000))))

(assert (= (and start!118496 res!926600) b!1385240))

(assert (= (and b!1385240 res!926599) b!1385241))

(assert (= (and b!1385241 res!926597) b!1385239))

(assert (= (and b!1385239 res!926601) b!1385238))

(assert (= (and b!1385238 res!926598) b!1385242))

(declare-fun m!1270589 () Bool)

(assert (=> b!1385238 m!1270589))

(declare-fun m!1270591 () Bool)

(assert (=> b!1385239 m!1270591))

(declare-fun m!1270593 () Bool)

(assert (=> start!118496 m!1270593))

(declare-fun m!1270595 () Bool)

(assert (=> start!118496 m!1270595))

(declare-fun m!1270597 () Bool)

(assert (=> b!1385241 m!1270597))

(assert (=> b!1385241 m!1270597))

(declare-fun m!1270599 () Bool)

(assert (=> b!1385241 m!1270599))

(push 1)

(assert (not b!1385241))

(assert (not b!1385238))

(assert (not start!118496))

(assert (not b!1385239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

