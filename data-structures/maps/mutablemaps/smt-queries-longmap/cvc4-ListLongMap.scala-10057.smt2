; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118520 () Bool)

(assert start!118520)

(declare-fun b!1385384 () Bool)

(declare-fun res!926745 () Bool)

(declare-fun e!784987 () Bool)

(assert (=> b!1385384 (=> (not res!926745) (not e!784987))))

(declare-datatypes ((array!94714 0))(
  ( (array!94715 (arr!45729 (Array (_ BitVec 32) (_ BitVec 64))) (size!46280 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94714)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385384 (= res!926745 (validKeyInArray!0 (select (arr!45729 a!2938) i!1065)))))

(declare-fun b!1385385 () Bool)

(declare-fun res!926744 () Bool)

(assert (=> b!1385385 (=> (not res!926744) (not e!784987))))

(declare-datatypes ((List!32437 0))(
  ( (Nil!32434) (Cons!32433 (h!33642 (_ BitVec 64)) (t!47138 List!32437)) )
))
(declare-fun arrayNoDuplicates!0 (array!94714 (_ BitVec 32) List!32437) Bool)

(assert (=> b!1385385 (= res!926744 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32434))))

(declare-fun b!1385386 () Bool)

(assert (=> b!1385386 (= e!784987 false)))

(declare-fun lt!609190 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94714 (_ BitVec 32)) Bool)

(assert (=> b!1385386 (= lt!609190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385383 () Bool)

(declare-fun res!926742 () Bool)

(assert (=> b!1385383 (=> (not res!926742) (not e!784987))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385383 (= res!926742 (and (= (size!46280 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46280 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46280 a!2938))))))

(declare-fun res!926743 () Bool)

(assert (=> start!118520 (=> (not res!926743) (not e!784987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118520 (= res!926743 (validMask!0 mask!2987))))

(assert (=> start!118520 e!784987))

(assert (=> start!118520 true))

(declare-fun array_inv!34674 (array!94714) Bool)

(assert (=> start!118520 (array_inv!34674 a!2938)))

(assert (= (and start!118520 res!926743) b!1385383))

(assert (= (and b!1385383 res!926742) b!1385384))

(assert (= (and b!1385384 res!926745) b!1385385))

(assert (= (and b!1385385 res!926744) b!1385386))

(declare-fun m!1270733 () Bool)

(assert (=> b!1385384 m!1270733))

(assert (=> b!1385384 m!1270733))

(declare-fun m!1270735 () Bool)

(assert (=> b!1385384 m!1270735))

(declare-fun m!1270737 () Bool)

(assert (=> b!1385385 m!1270737))

(declare-fun m!1270739 () Bool)

(assert (=> b!1385386 m!1270739))

(declare-fun m!1270741 () Bool)

(assert (=> start!118520 m!1270741))

(declare-fun m!1270743 () Bool)

(assert (=> start!118520 m!1270743))

(push 1)

(assert (not b!1385384))

(assert (not b!1385386))

(assert (not start!118520))

(assert (not b!1385385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

