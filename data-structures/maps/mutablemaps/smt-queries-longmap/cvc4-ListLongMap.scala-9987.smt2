; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117974 () Bool)

(assert start!117974)

(declare-fun b!1381589 () Bool)

(declare-fun res!923326 () Bool)

(declare-fun e!783191 () Bool)

(assert (=> b!1381589 (=> (not res!923326) (not e!783191))))

(declare-datatypes ((array!94281 0))(
  ( (array!94282 (arr!45519 (Array (_ BitVec 32) (_ BitVec 64))) (size!46070 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94281)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381589 (= res!923326 (validKeyInArray!0 (select (arr!45519 a!2971) i!1094)))))

(declare-fun res!923325 () Bool)

(assert (=> start!117974 (=> (not res!923325) (not e!783191))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117974 (= res!923325 (validMask!0 mask!3034))))

(assert (=> start!117974 e!783191))

(assert (=> start!117974 true))

(declare-fun array_inv!34464 (array!94281) Bool)

(assert (=> start!117974 (array_inv!34464 a!2971)))

(declare-fun b!1381590 () Bool)

(declare-fun res!923328 () Bool)

(assert (=> b!1381590 (=> (not res!923328) (not e!783191))))

(declare-datatypes ((List!32233 0))(
  ( (Nil!32230) (Cons!32229 (h!33438 (_ BitVec 64)) (t!46934 List!32233)) )
))
(declare-fun arrayNoDuplicates!0 (array!94281 (_ BitVec 32) List!32233) Bool)

(assert (=> b!1381590 (= res!923328 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32230))))

(declare-fun b!1381588 () Bool)

(declare-fun res!923327 () Bool)

(assert (=> b!1381588 (=> (not res!923327) (not e!783191))))

(assert (=> b!1381588 (= res!923327 (and (= (size!46070 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46070 a!2971))))))

(declare-fun b!1381591 () Bool)

(assert (=> b!1381591 (= e!783191 false)))

(declare-fun lt!608197 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94281 (_ BitVec 32)) Bool)

(assert (=> b!1381591 (= lt!608197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117974 res!923325) b!1381588))

(assert (= (and b!1381588 res!923327) b!1381589))

(assert (= (and b!1381589 res!923326) b!1381590))

(assert (= (and b!1381590 res!923328) b!1381591))

(declare-fun m!1266831 () Bool)

(assert (=> b!1381589 m!1266831))

(assert (=> b!1381589 m!1266831))

(declare-fun m!1266833 () Bool)

(assert (=> b!1381589 m!1266833))

(declare-fun m!1266835 () Bool)

(assert (=> start!117974 m!1266835))

(declare-fun m!1266837 () Bool)

(assert (=> start!117974 m!1266837))

(declare-fun m!1266839 () Bool)

(assert (=> b!1381590 m!1266839))

(declare-fun m!1266841 () Bool)

(assert (=> b!1381591 m!1266841))

(push 1)

(assert (not start!117974))

(assert (not b!1381590))

(assert (not b!1381591))

(assert (not b!1381589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

