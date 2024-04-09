; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92494 () Bool)

(assert start!92494)

(declare-fun b!1051215 () Bool)

(declare-fun e!596732 () Bool)

(declare-fun e!596730 () Bool)

(assert (=> b!1051215 (= e!596732 e!596730)))

(declare-fun res!700452 () Bool)

(assert (=> b!1051215 (=> res!700452 e!596730)))

(declare-fun lt!464193 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051215 (= res!700452 (or (bvsgt lt!464193 i!1381) (bvsle i!1381 lt!464193)))))

(declare-fun b!1051216 () Bool)

(declare-fun e!596727 () Bool)

(declare-fun e!596726 () Bool)

(assert (=> b!1051216 (= e!596727 e!596726)))

(declare-fun res!700457 () Bool)

(assert (=> b!1051216 (=> (not res!700457) (not e!596726))))

(assert (=> b!1051216 (= res!700457 (not (= lt!464193 i!1381)))))

(declare-datatypes ((array!66243 0))(
  ( (array!66244 (arr!31857 (Array (_ BitVec 32) (_ BitVec 64))) (size!32394 (_ BitVec 32))) )
))
(declare-fun lt!464194 () array!66243)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66243 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051216 (= lt!464193 (arrayScanForKey!0 lt!464194 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051217 () Bool)

(declare-fun res!700456 () Bool)

(declare-fun e!596728 () Bool)

(assert (=> b!1051217 (=> (not res!700456) (not e!596728))))

(declare-fun a!3488 () array!66243)

(declare-datatypes ((List!22300 0))(
  ( (Nil!22297) (Cons!22296 (h!23505 (_ BitVec 64)) (t!31614 List!22300)) )
))
(declare-fun arrayNoDuplicates!0 (array!66243 (_ BitVec 32) List!22300) Bool)

(assert (=> b!1051217 (= res!700456 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22297))))

(declare-fun res!700458 () Bool)

(assert (=> start!92494 (=> (not res!700458) (not e!596728))))

(assert (=> start!92494 (= res!700458 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32394 a!3488)) (bvslt (size!32394 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92494 e!596728))

(assert (=> start!92494 true))

(declare-fun array_inv!24479 (array!66243) Bool)

(assert (=> start!92494 (array_inv!24479 a!3488)))

(declare-fun b!1051218 () Bool)

(declare-fun res!700453 () Bool)

(assert (=> b!1051218 (=> (not res!700453) (not e!596728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051218 (= res!700453 (validKeyInArray!0 k!2747))))

(declare-fun b!1051219 () Bool)

(declare-fun arrayContainsKey!0 (array!66243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051219 (= e!596730 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051220 () Bool)

(declare-fun e!596729 () Bool)

(assert (=> b!1051220 (= e!596726 (not e!596729))))

(declare-fun res!700451 () Bool)

(assert (=> b!1051220 (=> res!700451 e!596729)))

(assert (=> b!1051220 (= res!700451 (or (bvsgt lt!464193 i!1381) (bvsle i!1381 lt!464193)))))

(assert (=> b!1051220 e!596732))

(declare-fun res!700450 () Bool)

(assert (=> b!1051220 (=> (not res!700450) (not e!596732))))

(assert (=> b!1051220 (= res!700450 (= (select (store (arr!31857 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464193) k!2747))))

(declare-fun b!1051221 () Bool)

(assert (=> b!1051221 (= e!596729 true)))

(assert (=> b!1051221 (arrayNoDuplicates!0 a!3488 lt!464193 Nil!22297)))

(declare-datatypes ((Unit!34395 0))(
  ( (Unit!34396) )
))
(declare-fun lt!464192 () Unit!34395)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66243 (_ BitVec 32) (_ BitVec 32)) Unit!34395)

(assert (=> b!1051221 (= lt!464192 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464193))))

(declare-fun b!1051222 () Bool)

(assert (=> b!1051222 (= e!596728 e!596727)))

(declare-fun res!700455 () Bool)

(assert (=> b!1051222 (=> (not res!700455) (not e!596727))))

(assert (=> b!1051222 (= res!700455 (arrayContainsKey!0 lt!464194 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051222 (= lt!464194 (array!66244 (store (arr!31857 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32394 a!3488)))))

(declare-fun b!1051223 () Bool)

(declare-fun res!700454 () Bool)

(assert (=> b!1051223 (=> (not res!700454) (not e!596728))))

(assert (=> b!1051223 (= res!700454 (= (select (arr!31857 a!3488) i!1381) k!2747))))

(assert (= (and start!92494 res!700458) b!1051217))

(assert (= (and b!1051217 res!700456) b!1051218))

(assert (= (and b!1051218 res!700453) b!1051223))

(assert (= (and b!1051223 res!700454) b!1051222))

(assert (= (and b!1051222 res!700455) b!1051216))

(assert (= (and b!1051216 res!700457) b!1051220))

(assert (= (and b!1051220 res!700450) b!1051215))

(assert (= (and b!1051215 (not res!700452)) b!1051219))

(assert (= (and b!1051220 (not res!700451)) b!1051221))

(declare-fun m!971891 () Bool)

(assert (=> b!1051218 m!971891))

(declare-fun m!971893 () Bool)

(assert (=> b!1051219 m!971893))

(declare-fun m!971895 () Bool)

(assert (=> start!92494 m!971895))

(declare-fun m!971897 () Bool)

(assert (=> b!1051216 m!971897))

(declare-fun m!971899 () Bool)

(assert (=> b!1051222 m!971899))

(declare-fun m!971901 () Bool)

(assert (=> b!1051222 m!971901))

(declare-fun m!971903 () Bool)

(assert (=> b!1051221 m!971903))

(declare-fun m!971905 () Bool)

(assert (=> b!1051221 m!971905))

(declare-fun m!971907 () Bool)

(assert (=> b!1051217 m!971907))

(declare-fun m!971909 () Bool)

(assert (=> b!1051223 m!971909))

(assert (=> b!1051220 m!971901))

(declare-fun m!971911 () Bool)

(assert (=> b!1051220 m!971911))

(push 1)

(assert (not b!1051218))

(assert (not 