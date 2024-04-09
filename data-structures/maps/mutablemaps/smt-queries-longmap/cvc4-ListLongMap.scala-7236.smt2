; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92518 () Bool)

(assert start!92518)

(declare-fun b!1051563 () Bool)

(declare-fun res!700808 () Bool)

(declare-fun e!596991 () Bool)

(assert (=> b!1051563 (=> res!700808 e!596991)))

(declare-datatypes ((List!22312 0))(
  ( (Nil!22309) (Cons!22308 (h!23517 (_ BitVec 64)) (t!31626 List!22312)) )
))
(declare-fun noDuplicate!1538 (List!22312) Bool)

(assert (=> b!1051563 (= res!700808 (not (noDuplicate!1538 Nil!22309)))))

(declare-fun res!700803 () Bool)

(declare-fun e!596988 () Bool)

(assert (=> start!92518 (=> (not res!700803) (not e!596988))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66267 0))(
  ( (array!66268 (arr!31869 (Array (_ BitVec 32) (_ BitVec 64))) (size!32406 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66267)

(assert (=> start!92518 (= res!700803 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32406 a!3488)) (bvslt (size!32406 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92518 e!596988))

(assert (=> start!92518 true))

(declare-fun array_inv!24491 (array!66267) Bool)

(assert (=> start!92518 (array_inv!24491 a!3488)))

(declare-fun b!1051564 () Bool)

(declare-fun res!700800 () Bool)

(assert (=> b!1051564 (=> res!700800 e!596991)))

(declare-fun contains!6153 (List!22312 (_ BitVec 64)) Bool)

(assert (=> b!1051564 (= res!700800 (contains!6153 Nil!22309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051565 () Bool)

(declare-fun e!596986 () Bool)

(assert (=> b!1051565 (= e!596988 e!596986)))

(declare-fun res!700806 () Bool)

(assert (=> b!1051565 (=> (not res!700806) (not e!596986))))

(declare-fun lt!464329 () array!66267)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051565 (= res!700806 (arrayContainsKey!0 lt!464329 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051565 (= lt!464329 (array!66268 (store (arr!31869 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32406 a!3488)))))

(declare-fun e!596992 () Bool)

(declare-fun b!1051566 () Bool)

(assert (=> b!1051566 (= e!596992 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051567 () Bool)

(declare-fun res!700799 () Bool)

(assert (=> b!1051567 (=> (not res!700799) (not e!596988))))

(assert (=> b!1051567 (= res!700799 (= (select (arr!31869 a!3488) i!1381) k!2747))))

(declare-fun b!1051568 () Bool)

(assert (=> b!1051568 (= e!596991 true)))

(declare-fun lt!464327 () Bool)

(assert (=> b!1051568 (= lt!464327 (contains!6153 Nil!22309 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051569 () Bool)

(declare-fun e!596987 () Bool)

(declare-fun e!596989 () Bool)

(assert (=> b!1051569 (= e!596987 (not e!596989))))

(declare-fun res!700804 () Bool)

(assert (=> b!1051569 (=> res!700804 e!596989)))

(declare-fun lt!464325 () (_ BitVec 32))

(assert (=> b!1051569 (= res!700804 (or (bvsgt lt!464325 i!1381) (bvsle i!1381 lt!464325)))))

(declare-fun e!596990 () Bool)

(assert (=> b!1051569 e!596990))

(declare-fun res!700801 () Bool)

(assert (=> b!1051569 (=> (not res!700801) (not e!596990))))

(assert (=> b!1051569 (= res!700801 (= (select (store (arr!31869 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464325) k!2747))))

(declare-fun b!1051570 () Bool)

(assert (=> b!1051570 (= e!596989 e!596991)))

(declare-fun res!700809 () Bool)

(assert (=> b!1051570 (=> res!700809 e!596991)))

(declare-fun lt!464324 () (_ BitVec 32))

(assert (=> b!1051570 (= res!700809 (or (bvslt lt!464325 #b00000000000000000000000000000000) (bvsge lt!464324 (size!32406 a!3488)) (bvsge lt!464325 (size!32406 a!3488))))))

(assert (=> b!1051570 (arrayContainsKey!0 a!3488 k!2747 lt!464324)))

(declare-datatypes ((Unit!34419 0))(
  ( (Unit!34420) )
))
(declare-fun lt!464326 () Unit!34419)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66267 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34419)

(assert (=> b!1051570 (= lt!464326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464324))))

(assert (=> b!1051570 (= lt!464324 (bvadd #b00000000000000000000000000000001 lt!464325))))

(declare-fun arrayNoDuplicates!0 (array!66267 (_ BitVec 32) List!22312) Bool)

(assert (=> b!1051570 (arrayNoDuplicates!0 a!3488 lt!464325 Nil!22309)))

(declare-fun lt!464328 () Unit!34419)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66267 (_ BitVec 32) (_ BitVec 32)) Unit!34419)

(assert (=> b!1051570 (= lt!464328 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464325))))

(declare-fun b!1051571 () Bool)

(declare-fun res!700802 () Bool)

(assert (=> b!1051571 (=> (not res!700802) (not e!596988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051571 (= res!700802 (validKeyInArray!0 k!2747))))

(declare-fun b!1051572 () Bool)

(assert (=> b!1051572 (= e!596990 e!596992)))

(declare-fun res!700807 () Bool)

(assert (=> b!1051572 (=> res!700807 e!596992)))

(assert (=> b!1051572 (= res!700807 (or (bvsgt lt!464325 i!1381) (bvsle i!1381 lt!464325)))))

(declare-fun b!1051573 () Bool)

(declare-fun res!700805 () Bool)

(assert (=> b!1051573 (=> (not res!700805) (not e!596988))))

(assert (=> b!1051573 (= res!700805 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22309))))

(declare-fun b!1051574 () Bool)

(assert (=> b!1051574 (= e!596986 e!596987)))

(declare-fun res!700798 () Bool)

(assert (=> b!1051574 (=> (not res!700798) (not e!596987))))

(assert (=> b!1051574 (= res!700798 (not (= lt!464325 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66267 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051574 (= lt!464325 (arrayScanForKey!0 lt!464329 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92518 res!700803) b!1051573))

(assert (= (and b!1051573 res!700805) b!1051571))

(assert (= (and b!1051571 res!700802) b!1051567))

(assert (= (and b!1051567 res!700799) b!1051565))

(assert (= (and b!1051565 res!700806) b!1051574))

(assert (= (and b!1051574 res!700798) b!1051569))

(assert (= (and b!1051569 res!700801) b!1051572))

(assert (= (and b!1051572 (not res!700807)) b!1051566))

(assert (= (and b!1051569 (not res!700804)) b!1051570))

(assert (= (and b!1051570 (not res!700809)) b!1051563))

(assert (= (and b!1051563 (not res!700808)) b!1051564))

(assert (= (and b!1051564 (not res!700800)) b!1051568))

(declare-fun m!972175 () Bool)

(assert (=> b!1051570 m!972175))

(declare-fun m!972177 () Bool)

(assert (=> b!1051570 m!972177))

(declare-fun m!972179 () Bool)

(assert (=> b!1051570 m!972179))

(declare-fun m!972181 () Bool)

(assert (=> b!1051570 m!972181))

(declare-fun m!972183 () Bool)

(assert (=> start!92518 m!972183))

(declare-fun m!972185 () Bool)

(assert (=> b!1051571 m!972185))

(declare-fun m!972187 () Bool)

(assert (=> b!1051564 m!972187))

(declare-fun m!972189 () Bool)

(assert (=> b!1051568 m!972189))

(declare-fun m!972191 () Bool)

(assert (=> b!1051569 m!972191))

(declare-fun m!972193 () Bool)

(assert (=> b!1051569 m!972193))

(declare-fun m!972195 () Bool)

(assert (=> b!1051565 m!972195))

(assert (=> b!1051565 m!972191))

(declare-fun m!972197 () Bool)

(assert (=> b!1051574 m!972197))

(declare-fun m!972199 () Bool)

(assert (=> b!1051563 m!972199))

(declare-fun m!972201 () Bool)

(assert (=> b!1051567 m!972201))

(declare-fun m!972203 () Bool)

(assert (=> b!1051566 m!972203))

(declare-fun m!972205 () Bool)

(assert (=> b!1051573 m!972205))

(push 1)

