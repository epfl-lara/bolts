; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114226 () Bool)

(assert start!114226)

(declare-fun b!1356490 () Bool)

(declare-fun res!901367 () Bool)

(declare-fun e!770086 () Bool)

(assert (=> b!1356490 (=> (not res!901367) (not e!770086))))

(declare-datatypes ((List!31830 0))(
  ( (Nil!31827) (Cons!31826 (h!33035 (_ BitVec 64)) (t!46495 List!31830)) )
))
(declare-fun acc!759 () List!31830)

(declare-fun contains!9395 (List!31830 (_ BitVec 64)) Bool)

(assert (=> b!1356490 (= res!901367 (not (contains!9395 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356491 () Bool)

(assert (=> b!1356491 (= e!770086 false)))

(declare-fun lt!598991 () Bool)

(declare-datatypes ((array!92331 0))(
  ( (array!92332 (arr!44609 (Array (_ BitVec 32) (_ BitVec 64))) (size!45160 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92331)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92331 (_ BitVec 32) List!31830) Bool)

(assert (=> b!1356491 (= lt!598991 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356492 () Bool)

(declare-fun res!901369 () Bool)

(assert (=> b!1356492 (=> (not res!901369) (not e!770086))))

(declare-fun noDuplicate!2274 (List!31830) Bool)

(assert (=> b!1356492 (= res!901369 (noDuplicate!2274 acc!759))))

(declare-fun b!1356493 () Bool)

(declare-fun res!901368 () Bool)

(assert (=> b!1356493 (=> (not res!901368) (not e!770086))))

(assert (=> b!1356493 (= res!901368 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31827))))

(declare-fun res!901371 () Bool)

(assert (=> start!114226 (=> (not res!901371) (not e!770086))))

(assert (=> start!114226 (= res!901371 (and (bvslt (size!45160 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45160 a!3742))))))

(assert (=> start!114226 e!770086))

(declare-fun array_inv!33554 (array!92331) Bool)

(assert (=> start!114226 (array_inv!33554 a!3742)))

(assert (=> start!114226 true))

(declare-fun b!1356494 () Bool)

(declare-fun res!901370 () Bool)

(assert (=> b!1356494 (=> (not res!901370) (not e!770086))))

(assert (=> b!1356494 (= res!901370 (not (contains!9395 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114226 res!901371) b!1356492))

(assert (= (and b!1356492 res!901369) b!1356494))

(assert (= (and b!1356494 res!901370) b!1356490))

(assert (= (and b!1356490 res!901367) b!1356493))

(assert (= (and b!1356493 res!901368) b!1356491))

(declare-fun m!1242499 () Bool)

(assert (=> start!114226 m!1242499))

(declare-fun m!1242501 () Bool)

(assert (=> b!1356492 m!1242501))

(declare-fun m!1242503 () Bool)

(assert (=> b!1356494 m!1242503))

(declare-fun m!1242505 () Bool)

(assert (=> b!1356491 m!1242505))

(declare-fun m!1242507 () Bool)

(assert (=> b!1356493 m!1242507))

(declare-fun m!1242509 () Bool)

(assert (=> b!1356490 m!1242509))

(check-sat (not b!1356492) (not b!1356491) (not b!1356494) (not start!114226) (not b!1356490) (not b!1356493))
(check-sat)
