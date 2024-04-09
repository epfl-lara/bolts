; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118522 () Bool)

(assert start!118522)

(declare-fun res!926754 () Bool)

(declare-fun e!784993 () Bool)

(assert (=> start!118522 (=> (not res!926754) (not e!784993))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118522 (= res!926754 (validMask!0 mask!2987))))

(assert (=> start!118522 e!784993))

(assert (=> start!118522 true))

(declare-datatypes ((array!94716 0))(
  ( (array!94717 (arr!45730 (Array (_ BitVec 32) (_ BitVec 64))) (size!46281 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94716)

(declare-fun array_inv!34675 (array!94716) Bool)

(assert (=> start!118522 (array_inv!34675 a!2938)))

(declare-fun b!1385395 () Bool)

(declare-fun res!926756 () Bool)

(assert (=> b!1385395 (=> (not res!926756) (not e!784993))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385395 (= res!926756 (and (= (size!46281 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46281 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46281 a!2938))))))

(declare-fun b!1385397 () Bool)

(declare-fun res!926755 () Bool)

(assert (=> b!1385397 (=> (not res!926755) (not e!784993))))

(declare-datatypes ((List!32438 0))(
  ( (Nil!32435) (Cons!32434 (h!33643 (_ BitVec 64)) (t!47139 List!32438)) )
))
(declare-fun arrayNoDuplicates!0 (array!94716 (_ BitVec 32) List!32438) Bool)

(assert (=> b!1385397 (= res!926755 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32435))))

(declare-fun b!1385398 () Bool)

(assert (=> b!1385398 (= e!784993 false)))

(declare-fun lt!609193 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94716 (_ BitVec 32)) Bool)

(assert (=> b!1385398 (= lt!609193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385396 () Bool)

(declare-fun res!926757 () Bool)

(assert (=> b!1385396 (=> (not res!926757) (not e!784993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385396 (= res!926757 (validKeyInArray!0 (select (arr!45730 a!2938) i!1065)))))

(assert (= (and start!118522 res!926754) b!1385395))

(assert (= (and b!1385395 res!926756) b!1385396))

(assert (= (and b!1385396 res!926757) b!1385397))

(assert (= (and b!1385397 res!926755) b!1385398))

(declare-fun m!1270745 () Bool)

(assert (=> start!118522 m!1270745))

(declare-fun m!1270747 () Bool)

(assert (=> start!118522 m!1270747))

(declare-fun m!1270749 () Bool)

(assert (=> b!1385397 m!1270749))

(declare-fun m!1270751 () Bool)

(assert (=> b!1385398 m!1270751))

(declare-fun m!1270753 () Bool)

(assert (=> b!1385396 m!1270753))

(assert (=> b!1385396 m!1270753))

(declare-fun m!1270755 () Bool)

(assert (=> b!1385396 m!1270755))

(push 1)

(assert (not b!1385396))

(assert (not b!1385398))

(assert (not start!118522))

(assert (not b!1385397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

