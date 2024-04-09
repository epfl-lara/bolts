; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117978 () Bool)

(assert start!117978)

(declare-fun b!1381613 () Bool)

(declare-fun res!923351 () Bool)

(declare-fun e!783202 () Bool)

(assert (=> b!1381613 (=> (not res!923351) (not e!783202))))

(declare-datatypes ((array!94285 0))(
  ( (array!94286 (arr!45521 (Array (_ BitVec 32) (_ BitVec 64))) (size!46072 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94285)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381613 (= res!923351 (validKeyInArray!0 (select (arr!45521 a!2971) i!1094)))))

(declare-fun b!1381615 () Bool)

(assert (=> b!1381615 (= e!783202 false)))

(declare-fun lt!608203 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94285 (_ BitVec 32)) Bool)

(assert (=> b!1381615 (= lt!608203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381612 () Bool)

(declare-fun res!923352 () Bool)

(assert (=> b!1381612 (=> (not res!923352) (not e!783202))))

(assert (=> b!1381612 (= res!923352 (and (= (size!46072 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46072 a!2971))))))

(declare-fun b!1381614 () Bool)

(declare-fun res!923349 () Bool)

(assert (=> b!1381614 (=> (not res!923349) (not e!783202))))

(declare-datatypes ((List!32235 0))(
  ( (Nil!32232) (Cons!32231 (h!33440 (_ BitVec 64)) (t!46936 List!32235)) )
))
(declare-fun arrayNoDuplicates!0 (array!94285 (_ BitVec 32) List!32235) Bool)

(assert (=> b!1381614 (= res!923349 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32232))))

(declare-fun res!923350 () Bool)

(assert (=> start!117978 (=> (not res!923350) (not e!783202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117978 (= res!923350 (validMask!0 mask!3034))))

(assert (=> start!117978 e!783202))

(assert (=> start!117978 true))

(declare-fun array_inv!34466 (array!94285) Bool)

(assert (=> start!117978 (array_inv!34466 a!2971)))

(assert (= (and start!117978 res!923350) b!1381612))

(assert (= (and b!1381612 res!923352) b!1381613))

(assert (= (and b!1381613 res!923351) b!1381614))

(assert (= (and b!1381614 res!923349) b!1381615))

(declare-fun m!1266855 () Bool)

(assert (=> b!1381613 m!1266855))

(assert (=> b!1381613 m!1266855))

(declare-fun m!1266857 () Bool)

(assert (=> b!1381613 m!1266857))

(declare-fun m!1266859 () Bool)

(assert (=> b!1381615 m!1266859))

(declare-fun m!1266861 () Bool)

(assert (=> b!1381614 m!1266861))

(declare-fun m!1266863 () Bool)

(assert (=> start!117978 m!1266863))

(declare-fun m!1266865 () Bool)

(assert (=> start!117978 m!1266865))

(check-sat (not b!1381615) (not b!1381613) (not start!117978) (not b!1381614))
(check-sat)
