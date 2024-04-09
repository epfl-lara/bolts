; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92470 () Bool)

(assert start!92470)

(declare-fun res!700141 () Bool)

(declare-fun e!596486 () Bool)

(assert (=> start!92470 (=> (not res!700141) (not e!596486))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66219 0))(
  ( (array!66220 (arr!31845 (Array (_ BitVec 32) (_ BitVec 64))) (size!32382 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66219)

(assert (=> start!92470 (= res!700141 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32382 a!3488)) (bvslt (size!32382 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92470 e!596486))

(assert (=> start!92470 true))

(declare-fun array_inv!24467 (array!66219) Bool)

(assert (=> start!92470 (array_inv!24467 a!3488)))

(declare-fun b!1050901 () Bool)

(declare-fun e!596484 () Bool)

(assert (=> b!1050901 (= e!596486 e!596484)))

(declare-fun res!700140 () Bool)

(assert (=> b!1050901 (=> (not res!700140) (not e!596484))))

(declare-fun lt!464095 () array!66219)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050901 (= res!700140 (arrayContainsKey!0 lt!464095 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050901 (= lt!464095 (array!66220 (store (arr!31845 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32382 a!3488)))))

(declare-fun b!1050902 () Bool)

(declare-fun e!596485 () Bool)

(assert (=> b!1050902 (= e!596484 e!596485)))

(declare-fun res!700142 () Bool)

(assert (=> b!1050902 (=> (not res!700142) (not e!596485))))

(declare-fun lt!464094 () (_ BitVec 32))

(assert (=> b!1050902 (= res!700142 (not (= lt!464094 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66219 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050902 (= lt!464094 (arrayScanForKey!0 lt!464095 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050903 () Bool)

(declare-fun e!596489 () Bool)

(declare-fun e!596487 () Bool)

(assert (=> b!1050903 (= e!596489 e!596487)))

(declare-fun res!700136 () Bool)

(assert (=> b!1050903 (=> res!700136 e!596487)))

(assert (=> b!1050903 (= res!700136 (or (bvsgt lt!464094 i!1381) (bvsle i!1381 lt!464094)))))

(declare-fun b!1050904 () Bool)

(declare-fun res!700143 () Bool)

(assert (=> b!1050904 (=> (not res!700143) (not e!596486))))

(declare-datatypes ((List!22288 0))(
  ( (Nil!22285) (Cons!22284 (h!23493 (_ BitVec 64)) (t!31602 List!22288)) )
))
(declare-fun arrayNoDuplicates!0 (array!66219 (_ BitVec 32) List!22288) Bool)

(assert (=> b!1050904 (= res!700143 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22285))))

(declare-fun b!1050905 () Bool)

(declare-fun res!700138 () Bool)

(assert (=> b!1050905 (=> (not res!700138) (not e!596486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050905 (= res!700138 (validKeyInArray!0 k!2747))))

(declare-fun b!1050906 () Bool)

(declare-fun res!700139 () Bool)

(assert (=> b!1050906 (=> (not res!700139) (not e!596486))))

(assert (=> b!1050906 (= res!700139 (= (select (arr!31845 a!3488) i!1381) k!2747))))

(declare-fun b!1050907 () Bool)

(assert (=> b!1050907 (= e!596485 (not true))))

(assert (=> b!1050907 e!596489))

(declare-fun res!700137 () Bool)

(assert (=> b!1050907 (=> (not res!700137) (not e!596489))))

(assert (=> b!1050907 (= res!700137 (= (select (store (arr!31845 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464094) k!2747))))

(declare-fun b!1050908 () Bool)

(assert (=> b!1050908 (= e!596487 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92470 res!700141) b!1050904))

(assert (= (and b!1050904 res!700143) b!1050905))

(assert (= (and b!1050905 res!700138) b!1050906))

(assert (= (and b!1050906 res!700139) b!1050901))

(assert (= (and b!1050901 res!700140) b!1050902))

(assert (= (and b!1050902 res!700142) b!1050907))

(assert (= (and b!1050907 res!700137) b!1050903))

(assert (= (and b!1050903 (not res!700136)) b!1050908))

(declare-fun m!971643 () Bool)

(assert (=> b!1050901 m!971643))

(declare-fun m!971645 () Bool)

(assert (=> b!1050901 m!971645))

(declare-fun m!971647 () Bool)

(assert (=> start!92470 m!971647))

(declare-fun m!971649 () Bool)

(assert (=> b!1050908 m!971649))

(assert (=> b!1050907 m!971645))

(declare-fun m!971651 () Bool)

(assert (=> b!1050907 m!971651))

(declare-fun m!971653 () Bool)

(assert (=> b!1050906 m!971653))

(declare-fun m!971655 () Bool)

(assert (=> b!1050904 m!971655))

(declare-fun m!971657 () Bool)

(assert (=> b!1050905 m!971657))

(declare-fun m!971659 () Bool)

(assert (=> b!1050902 m!971659))

(push 1)

(assert (not b!1050901))

(assert (not b!1050908))

(assert (not b!1050905))

