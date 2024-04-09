; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92812 () Bool)

(assert start!92812)

(declare-fun b!1053787 () Bool)

(declare-fun res!702878 () Bool)

(declare-fun e!598597 () Bool)

(assert (=> b!1053787 (=> (not res!702878) (not e!598597))))

(declare-datatypes ((array!66453 0))(
  ( (array!66454 (arr!31956 (Array (_ BitVec 32) (_ BitVec 64))) (size!32493 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66453)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053787 (= res!702878 (= (select (arr!31956 a!3488) i!1381) k!2747))))

(declare-fun b!1053788 () Bool)

(declare-fun e!598599 () Bool)

(assert (=> b!1053788 (= e!598597 e!598599)))

(declare-fun res!702885 () Bool)

(assert (=> b!1053788 (=> (not res!702885) (not e!598599))))

(declare-fun lt!465210 () array!66453)

(declare-fun arrayContainsKey!0 (array!66453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053788 (= res!702885 (arrayContainsKey!0 lt!465210 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053788 (= lt!465210 (array!66454 (store (arr!31956 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32493 a!3488)))))

(declare-fun b!1053790 () Bool)

(declare-fun res!702882 () Bool)

(assert (=> b!1053790 (=> (not res!702882) (not e!598597))))

(declare-datatypes ((List!22399 0))(
  ( (Nil!22396) (Cons!22395 (h!23604 (_ BitVec 64)) (t!31713 List!22399)) )
))
(declare-fun arrayNoDuplicates!0 (array!66453 (_ BitVec 32) List!22399) Bool)

(assert (=> b!1053790 (= res!702882 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22396))))

(declare-fun b!1053791 () Bool)

(declare-fun e!598600 () Bool)

(assert (=> b!1053791 (= e!598599 e!598600)))

(declare-fun res!702883 () Bool)

(assert (=> b!1053791 (=> (not res!702883) (not e!598600))))

(declare-fun lt!465211 () (_ BitVec 32))

(assert (=> b!1053791 (= res!702883 (not (= lt!465211 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66453 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053791 (= lt!465211 (arrayScanForKey!0 lt!465210 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!598598 () Bool)

(declare-fun b!1053792 () Bool)

(assert (=> b!1053792 (= e!598598 (arrayContainsKey!0 a!3488 k!2747 lt!465211))))

(declare-fun b!1053793 () Bool)

(declare-fun e!598601 () Bool)

(assert (=> b!1053793 (= e!598601 e!598598)))

(declare-fun res!702880 () Bool)

(assert (=> b!1053793 (=> res!702880 e!598598)))

(assert (=> b!1053793 (= res!702880 (bvsle lt!465211 i!1381))))

(declare-fun b!1053794 () Bool)

(declare-fun res!702879 () Bool)

(assert (=> b!1053794 (=> (not res!702879) (not e!598597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053794 (= res!702879 (validKeyInArray!0 k!2747))))

(declare-fun res!702881 () Bool)

(assert (=> start!92812 (=> (not res!702881) (not e!598597))))

(assert (=> start!92812 (= res!702881 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32493 a!3488)) (bvslt (size!32493 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92812 e!598597))

(assert (=> start!92812 true))

(declare-fun array_inv!24578 (array!66453) Bool)

(assert (=> start!92812 (array_inv!24578 a!3488)))

(declare-fun b!1053789 () Bool)

(assert (=> b!1053789 (= e!598600 (not (or (bvsle lt!465211 i!1381) (bvsgt #b00000000000000000000000000000000 (size!32493 a!3488)) (bvsle i!1381 (size!32493 a!3488)))))))

(assert (=> b!1053789 e!598601))

(declare-fun res!702884 () Bool)

(assert (=> b!1053789 (=> (not res!702884) (not e!598601))))

(assert (=> b!1053789 (= res!702884 (= (select (store (arr!31956 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465211) k!2747))))

(assert (= (and start!92812 res!702881) b!1053790))

(assert (= (and b!1053790 res!702882) b!1053794))

(assert (= (and b!1053794 res!702879) b!1053787))

(assert (= (and b!1053787 res!702878) b!1053788))

(assert (= (and b!1053788 res!702885) b!1053791))

(assert (= (and b!1053791 res!702883) b!1053789))

(assert (= (and b!1053789 res!702884) b!1053793))

(assert (= (and b!1053793 (not res!702880)) b!1053792))

(declare-fun m!974115 () Bool)

(assert (=> b!1053788 m!974115))

(declare-fun m!974117 () Bool)

(assert (=> b!1053788 m!974117))

(declare-fun m!974119 () Bool)

(assert (=> b!1053794 m!974119))

(declare-fun m!974121 () Bool)

(assert (=> b!1053787 m!974121))

(declare-fun m!974123 () Bool)

(assert (=> start!92812 m!974123))

(declare-fun m!974125 () Bool)

(assert (=> b!1053790 m!974125))

(declare-fun m!974127 () Bool)

(assert (=> b!1053792 m!974127))

(declare-fun m!974129 () Bool)

(assert (=> b!1053791 m!974129))

(assert (=> b!1053789 m!974117))

(declare-fun m!974131 () Bool)

(assert (=> b!1053789 m!974131))

(push 1)

(assert (not b!1053794))

(assert (not b!1053791))

(assert (not b!1053788))

(assert (not start!92812))

(assert (not b!1053790))

(assert (not b!1053792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

