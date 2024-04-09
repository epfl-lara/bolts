; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92520 () Bool)

(assert start!92520)

(declare-fun b!1051599 () Bool)

(declare-fun e!597015 () Bool)

(declare-datatypes ((array!66269 0))(
  ( (array!66270 (arr!31870 (Array (_ BitVec 32) (_ BitVec 64))) (size!32407 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66269)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051599 (= e!597015 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051600 () Bool)

(declare-fun res!700840 () Bool)

(declare-fun e!597016 () Bool)

(assert (=> b!1051600 (=> (not res!700840) (not e!597016))))

(assert (=> b!1051600 (= res!700840 (= (select (arr!31870 a!3488) i!1381) k!2747))))

(declare-fun b!1051601 () Bool)

(declare-fun e!597014 () Bool)

(declare-fun e!597012 () Bool)

(assert (=> b!1051601 (= e!597014 e!597012)))

(declare-fun res!700845 () Bool)

(assert (=> b!1051601 (=> res!700845 e!597012)))

(declare-fun lt!464344 () (_ BitVec 32))

(declare-fun lt!464342 () (_ BitVec 32))

(assert (=> b!1051601 (= res!700845 (or (bvslt lt!464342 #b00000000000000000000000000000000) (bvsge lt!464344 (size!32407 a!3488)) (bvsge lt!464342 (size!32407 a!3488))))))

(assert (=> b!1051601 (arrayContainsKey!0 a!3488 k!2747 lt!464344)))

(declare-datatypes ((Unit!34421 0))(
  ( (Unit!34422) )
))
(declare-fun lt!464346 () Unit!34421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66269 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34421)

(assert (=> b!1051601 (= lt!464346 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464344))))

(assert (=> b!1051601 (= lt!464344 (bvadd #b00000000000000000000000000000001 lt!464342))))

(declare-datatypes ((List!22313 0))(
  ( (Nil!22310) (Cons!22309 (h!23518 (_ BitVec 64)) (t!31627 List!22313)) )
))
(declare-fun arrayNoDuplicates!0 (array!66269 (_ BitVec 32) List!22313) Bool)

(assert (=> b!1051601 (arrayNoDuplicates!0 a!3488 lt!464342 Nil!22310)))

(declare-fun lt!464343 () Unit!34421)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66269 (_ BitVec 32) (_ BitVec 32)) Unit!34421)

(assert (=> b!1051601 (= lt!464343 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464342))))

(declare-fun b!1051602 () Bool)

(declare-fun res!700837 () Bool)

(assert (=> b!1051602 (=> (not res!700837) (not e!597016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051602 (= res!700837 (validKeyInArray!0 k!2747))))

(declare-fun b!1051603 () Bool)

(assert (=> b!1051603 (= e!597012 true)))

(declare-fun lt!464345 () Bool)

(declare-fun contains!6154 (List!22313 (_ BitVec 64)) Bool)

(assert (=> b!1051603 (= lt!464345 (contains!6154 Nil!22310 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051604 () Bool)

(declare-fun res!700836 () Bool)

(assert (=> b!1051604 (=> res!700836 e!597012)))

(declare-fun noDuplicate!1539 (List!22313) Bool)

(assert (=> b!1051604 (= res!700836 (not (noDuplicate!1539 Nil!22310)))))

(declare-fun b!1051605 () Bool)

(declare-fun res!700834 () Bool)

(assert (=> b!1051605 (=> (not res!700834) (not e!597016))))

(assert (=> b!1051605 (= res!700834 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22310))))

(declare-fun b!1051606 () Bool)

(declare-fun e!597017 () Bool)

(assert (=> b!1051606 (= e!597017 (not e!597014))))

(declare-fun res!700844 () Bool)

(assert (=> b!1051606 (=> res!700844 e!597014)))

(assert (=> b!1051606 (= res!700844 (or (bvsgt lt!464342 i!1381) (bvsle i!1381 lt!464342)))))

(declare-fun e!597011 () Bool)

(assert (=> b!1051606 e!597011))

(declare-fun res!700835 () Bool)

(assert (=> b!1051606 (=> (not res!700835) (not e!597011))))

(assert (=> b!1051606 (= res!700835 (= (select (store (arr!31870 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464342) k!2747))))

(declare-fun b!1051607 () Bool)

(declare-fun e!597010 () Bool)

(assert (=> b!1051607 (= e!597016 e!597010)))

(declare-fun res!700843 () Bool)

(assert (=> b!1051607 (=> (not res!700843) (not e!597010))))

(declare-fun lt!464347 () array!66269)

(assert (=> b!1051607 (= res!700843 (arrayContainsKey!0 lt!464347 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051607 (= lt!464347 (array!66270 (store (arr!31870 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32407 a!3488)))))

(declare-fun res!700839 () Bool)

(assert (=> start!92520 (=> (not res!700839) (not e!597016))))

(assert (=> start!92520 (= res!700839 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32407 a!3488)) (bvslt (size!32407 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92520 e!597016))

(assert (=> start!92520 true))

(declare-fun array_inv!24492 (array!66269) Bool)

(assert (=> start!92520 (array_inv!24492 a!3488)))

(declare-fun b!1051608 () Bool)

(declare-fun res!700841 () Bool)

(assert (=> b!1051608 (=> res!700841 e!597012)))

(assert (=> b!1051608 (= res!700841 (contains!6154 Nil!22310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051609 () Bool)

(assert (=> b!1051609 (= e!597010 e!597017)))

(declare-fun res!700842 () Bool)

(assert (=> b!1051609 (=> (not res!700842) (not e!597017))))

(assert (=> b!1051609 (= res!700842 (not (= lt!464342 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66269 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051609 (= lt!464342 (arrayScanForKey!0 lt!464347 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051610 () Bool)

(assert (=> b!1051610 (= e!597011 e!597015)))

(declare-fun res!700838 () Bool)

(assert (=> b!1051610 (=> res!700838 e!597015)))

(assert (=> b!1051610 (= res!700838 (or (bvsgt lt!464342 i!1381) (bvsle i!1381 lt!464342)))))

(assert (= (and start!92520 res!700839) b!1051605))

(assert (= (and b!1051605 res!700834) b!1051602))

(assert (= (and b!1051602 res!700837) b!1051600))

(assert (= (and b!1051600 res!700840) b!1051607))

(assert (= (and b!1051607 res!700843) b!1051609))

(assert (= (and b!1051609 res!700842) b!1051606))

(assert (= (and b!1051606 res!700835) b!1051610))

(assert (= (and b!1051610 (not res!700838)) b!1051599))

(assert (= (and b!1051606 (not res!700844)) b!1051601))

(assert (= (and b!1051601 (not res!700845)) b!1051604))

(assert (= (and b!1051604 (not res!700836)) b!1051608))

(assert (= (and b!1051608 (not res!700841)) b!1051603))

(declare-fun m!972207 () Bool)

(assert (=> b!1051602 m!972207))

(declare-fun m!972209 () Bool)

(assert (=> b!1051603 m!972209))

(declare-fun m!972211 () Bool)

(assert (=> b!1051604 m!972211))

(declare-fun m!972213 () Bool)

(assert (=> b!1051601 m!972213))

(declare-fun m!972215 () Bool)

(assert (=> b!1051601 m!972215))

(declare-fun m!972217 () Bool)

(assert (=> b!1051601 m!972217))

(declare-fun m!972219 () Bool)

(assert (=> b!1051601 m!972219))

(declare-fun m!972221 () Bool)

(assert (=> b!1051608 m!972221))

(declare-fun m!972223 () Bool)

(assert (=> b!1051606 m!972223))

(declare-fun m!972225 () Bool)

(assert (=> b!1051606 m!972225))

(declare-fun m!972227 () Bool)

(assert (=> b!1051600 m!972227))

(declare-fun m!972229 () Bool)

(assert (=> b!1051609 m!972229))

(declare-fun m!972231 () Bool)

(assert (=> b!1051605 m!972231))

(declare-fun m!972233 () Bool)

(assert (=> b!1051599 m!972233))

(declare-fun m!972235 () Bool)

(assert (=> b!1051607 m!972235))

(assert (=> b!1051607 m!972223))

(declare-fun m!972237 () Bool)

(assert (=> start!92520 m!972237))

(push 1)

