; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92482 () Bool)

(assert start!92482)

(declare-fun b!1051053 () Bool)

(declare-fun res!700294 () Bool)

(declare-fun e!596606 () Bool)

(assert (=> b!1051053 (=> (not res!700294) (not e!596606))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051053 (= res!700294 (validKeyInArray!0 k!2747))))

(declare-fun b!1051054 () Bool)

(declare-fun e!596604 () Bool)

(declare-fun e!596600 () Bool)

(assert (=> b!1051054 (= e!596604 e!596600)))

(declare-fun res!700293 () Bool)

(assert (=> b!1051054 (=> (not res!700293) (not e!596600))))

(declare-fun lt!464138 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051054 (= res!700293 (not (= lt!464138 i!1381)))))

(declare-datatypes ((array!66231 0))(
  ( (array!66232 (arr!31851 (Array (_ BitVec 32) (_ BitVec 64))) (size!32388 (_ BitVec 32))) )
))
(declare-fun lt!464140 () array!66231)

(declare-fun arrayScanForKey!0 (array!66231 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051054 (= lt!464138 (arrayScanForKey!0 lt!464140 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051055 () Bool)

(declare-fun res!700288 () Bool)

(assert (=> b!1051055 (=> (not res!700288) (not e!596606))))

(declare-fun a!3488 () array!66231)

(declare-datatypes ((List!22294 0))(
  ( (Nil!22291) (Cons!22290 (h!23499 (_ BitVec 64)) (t!31608 List!22294)) )
))
(declare-fun arrayNoDuplicates!0 (array!66231 (_ BitVec 32) List!22294) Bool)

(assert (=> b!1051055 (= res!700288 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22291))))

(declare-fun b!1051056 () Bool)

(declare-fun e!596601 () Bool)

(assert (=> b!1051056 (= e!596600 (not e!596601))))

(declare-fun res!700291 () Bool)

(assert (=> b!1051056 (=> res!700291 e!596601)))

(assert (=> b!1051056 (= res!700291 (or (bvsgt lt!464138 i!1381) (bvsle i!1381 lt!464138)))))

(declare-fun e!596605 () Bool)

(assert (=> b!1051056 e!596605))

(declare-fun res!700289 () Bool)

(assert (=> b!1051056 (=> (not res!700289) (not e!596605))))

(assert (=> b!1051056 (= res!700289 (= (select (store (arr!31851 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464138) k!2747))))

(declare-fun res!700290 () Bool)

(assert (=> start!92482 (=> (not res!700290) (not e!596606))))

(assert (=> start!92482 (= res!700290 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32388 a!3488)) (bvslt (size!32388 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92482 e!596606))

(assert (=> start!92482 true))

(declare-fun array_inv!24473 (array!66231) Bool)

(assert (=> start!92482 (array_inv!24473 a!3488)))

(declare-fun b!1051057 () Bool)

(assert (=> b!1051057 (= e!596606 e!596604)))

(declare-fun res!700292 () Bool)

(assert (=> b!1051057 (=> (not res!700292) (not e!596604))))

(declare-fun arrayContainsKey!0 (array!66231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051057 (= res!700292 (arrayContainsKey!0 lt!464140 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051057 (= lt!464140 (array!66232 (store (arr!31851 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32388 a!3488)))))

(declare-fun b!1051058 () Bool)

(assert (=> b!1051058 (= e!596601 true)))

(assert (=> b!1051058 (arrayNoDuplicates!0 a!3488 lt!464138 Nil!22291)))

(declare-datatypes ((Unit!34383 0))(
  ( (Unit!34384) )
))
(declare-fun lt!464139 () Unit!34383)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66231 (_ BitVec 32) (_ BitVec 32)) Unit!34383)

(assert (=> b!1051058 (= lt!464139 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464138))))

(declare-fun b!1051059 () Bool)

(declare-fun res!700295 () Bool)

(assert (=> b!1051059 (=> (not res!700295) (not e!596606))))

(assert (=> b!1051059 (= res!700295 (= (select (arr!31851 a!3488) i!1381) k!2747))))

(declare-fun b!1051060 () Bool)

(declare-fun e!596603 () Bool)

(assert (=> b!1051060 (= e!596603 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051061 () Bool)

(assert (=> b!1051061 (= e!596605 e!596603)))

(declare-fun res!700296 () Bool)

(assert (=> b!1051061 (=> res!700296 e!596603)))

(assert (=> b!1051061 (= res!700296 (or (bvsgt lt!464138 i!1381) (bvsle i!1381 lt!464138)))))

(assert (= (and start!92482 res!700290) b!1051055))

(assert (= (and b!1051055 res!700288) b!1051053))

(assert (= (and b!1051053 res!700294) b!1051059))

(assert (= (and b!1051059 res!700295) b!1051057))

(assert (= (and b!1051057 res!700292) b!1051054))

(assert (= (and b!1051054 res!700293) b!1051056))

(assert (= (and b!1051056 res!700289) b!1051061))

(assert (= (and b!1051061 (not res!700296)) b!1051060))

(assert (= (and b!1051056 (not res!700291)) b!1051058))

(declare-fun m!971759 () Bool)

(assert (=> b!1051059 m!971759))

(declare-fun m!971761 () Bool)

(assert (=> b!1051058 m!971761))

(declare-fun m!971763 () Bool)

(assert (=> b!1051058 m!971763))

(declare-fun m!971765 () Bool)

(assert (=> b!1051055 m!971765))

(declare-fun m!971767 () Bool)

(assert (=> b!1051056 m!971767))

(declare-fun m!971769 () Bool)

(assert (=> b!1051056 m!971769))

(declare-fun m!971771 () Bool)

(assert (=> b!1051053 m!971771))

(declare-fun m!971773 () Bool)

(assert (=> start!92482 m!971773))

(declare-fun m!971775 () Bool)

(assert (=> b!1051060 m!971775))

(declare-fun m!971777 () Bool)

(assert (=> b!1051057 m!971777))

(assert (=> b!1051057 m!971767))

(declare-fun m!971779 () Bool)

(assert (=> b!1051054 m!971779))

(push 1)

(assert (not b!1051060))

