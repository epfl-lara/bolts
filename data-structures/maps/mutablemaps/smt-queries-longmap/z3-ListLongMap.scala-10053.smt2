; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118494 () Bool)

(assert start!118494)

(declare-fun b!1385223 () Bool)

(declare-fun res!926583 () Bool)

(declare-fun e!784910 () Bool)

(assert (=> b!1385223 (=> (not res!926583) (not e!784910))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94688 0))(
  ( (array!94689 (arr!45716 (Array (_ BitVec 32) (_ BitVec 64))) (size!46267 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94688)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385223 (= res!926583 (and (= (size!46267 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46267 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46267 a!2938))))))

(declare-fun b!1385224 () Bool)

(declare-fun res!926585 () Bool)

(assert (=> b!1385224 (=> (not res!926585) (not e!784910))))

(declare-datatypes ((List!32424 0))(
  ( (Nil!32421) (Cons!32420 (h!33629 (_ BitVec 64)) (t!47125 List!32424)) )
))
(declare-fun arrayNoDuplicates!0 (array!94688 (_ BitVec 32) List!32424) Bool)

(assert (=> b!1385224 (= res!926585 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32421))))

(declare-fun b!1385225 () Bool)

(declare-fun res!926584 () Bool)

(assert (=> b!1385225 (=> (not res!926584) (not e!784910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94688 (_ BitVec 32)) Bool)

(assert (=> b!1385225 (= res!926584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926582 () Bool)

(assert (=> start!118494 (=> (not res!926582) (not e!784910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118494 (= res!926582 (validMask!0 mask!2987))))

(assert (=> start!118494 e!784910))

(assert (=> start!118494 true))

(declare-fun array_inv!34661 (array!94688) Bool)

(assert (=> start!118494 (array_inv!34661 a!2938)))

(declare-fun b!1385226 () Bool)

(assert (=> b!1385226 (= e!784910 (bvslt (bvsub (size!46267 a!2938) startIndex!16) #b00000000000000000000000000000000))))

(declare-fun b!1385227 () Bool)

(declare-fun res!926586 () Bool)

(assert (=> b!1385227 (=> (not res!926586) (not e!784910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385227 (= res!926586 (validKeyInArray!0 (select (arr!45716 a!2938) i!1065)))))

(assert (= (and start!118494 res!926582) b!1385223))

(assert (= (and b!1385223 res!926583) b!1385227))

(assert (= (and b!1385227 res!926586) b!1385224))

(assert (= (and b!1385224 res!926585) b!1385225))

(assert (= (and b!1385225 res!926584) b!1385226))

(declare-fun m!1270577 () Bool)

(assert (=> b!1385224 m!1270577))

(declare-fun m!1270579 () Bool)

(assert (=> b!1385225 m!1270579))

(declare-fun m!1270581 () Bool)

(assert (=> start!118494 m!1270581))

(declare-fun m!1270583 () Bool)

(assert (=> start!118494 m!1270583))

(declare-fun m!1270585 () Bool)

(assert (=> b!1385227 m!1270585))

(assert (=> b!1385227 m!1270585))

(declare-fun m!1270587 () Bool)

(assert (=> b!1385227 m!1270587))

(check-sat (not start!118494) (not b!1385224) (not b!1385225) (not b!1385227))
(check-sat)
