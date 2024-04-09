; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92484 () Bool)

(assert start!92484)

(declare-fun b!1051080 () Bool)

(declare-fun e!596627 () Bool)

(declare-fun e!596624 () Bool)

(assert (=> b!1051080 (= e!596627 (not e!596624))))

(declare-fun res!700322 () Bool)

(assert (=> b!1051080 (=> res!700322 e!596624)))

(declare-fun lt!464148 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051080 (= res!700322 (or (bvsgt lt!464148 i!1381) (bvsle i!1381 lt!464148)))))

(declare-fun e!596625 () Bool)

(assert (=> b!1051080 e!596625))

(declare-fun res!700318 () Bool)

(assert (=> b!1051080 (=> (not res!700318) (not e!596625))))

(declare-datatypes ((array!66233 0))(
  ( (array!66234 (arr!31852 (Array (_ BitVec 32) (_ BitVec 64))) (size!32389 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66233)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1051080 (= res!700318 (= (select (store (arr!31852 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464148) k!2747))))

(declare-fun b!1051081 () Bool)

(declare-fun res!700320 () Bool)

(declare-fun e!596623 () Bool)

(assert (=> b!1051081 (=> (not res!700320) (not e!596623))))

(declare-datatypes ((List!22295 0))(
  ( (Nil!22292) (Cons!22291 (h!23500 (_ BitVec 64)) (t!31609 List!22295)) )
))
(declare-fun arrayNoDuplicates!0 (array!66233 (_ BitVec 32) List!22295) Bool)

(assert (=> b!1051081 (= res!700320 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22292))))

(declare-fun b!1051082 () Bool)

(declare-fun e!596621 () Bool)

(assert (=> b!1051082 (= e!596625 e!596621)))

(declare-fun res!700315 () Bool)

(assert (=> b!1051082 (=> res!700315 e!596621)))

(assert (=> b!1051082 (= res!700315 (or (bvsgt lt!464148 i!1381) (bvsle i!1381 lt!464148)))))

(declare-fun b!1051083 () Bool)

(assert (=> b!1051083 (= e!596624 true)))

(assert (=> b!1051083 (arrayNoDuplicates!0 a!3488 lt!464148 Nil!22292)))

(declare-datatypes ((Unit!34385 0))(
  ( (Unit!34386) )
))
(declare-fun lt!464149 () Unit!34385)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66233 (_ BitVec 32) (_ BitVec 32)) Unit!34385)

(assert (=> b!1051083 (= lt!464149 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464148))))

(declare-fun b!1051084 () Bool)

(declare-fun e!596626 () Bool)

(assert (=> b!1051084 (= e!596626 e!596627)))

(declare-fun res!700316 () Bool)

(assert (=> b!1051084 (=> (not res!700316) (not e!596627))))

(assert (=> b!1051084 (= res!700316 (not (= lt!464148 i!1381)))))

(declare-fun lt!464147 () array!66233)

(declare-fun arrayScanForKey!0 (array!66233 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051084 (= lt!464148 (arrayScanForKey!0 lt!464147 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!700319 () Bool)

(assert (=> start!92484 (=> (not res!700319) (not e!596623))))

(assert (=> start!92484 (= res!700319 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32389 a!3488)) (bvslt (size!32389 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92484 e!596623))

(assert (=> start!92484 true))

(declare-fun array_inv!24474 (array!66233) Bool)

(assert (=> start!92484 (array_inv!24474 a!3488)))

(declare-fun b!1051085 () Bool)

(assert (=> b!1051085 (= e!596623 e!596626)))

(declare-fun res!700323 () Bool)

(assert (=> b!1051085 (=> (not res!700323) (not e!596626))))

(declare-fun arrayContainsKey!0 (array!66233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051085 (= res!700323 (arrayContainsKey!0 lt!464147 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051085 (= lt!464147 (array!66234 (store (arr!31852 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32389 a!3488)))))

(declare-fun b!1051086 () Bool)

(declare-fun res!700321 () Bool)

(assert (=> b!1051086 (=> (not res!700321) (not e!596623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051086 (= res!700321 (validKeyInArray!0 k!2747))))

(declare-fun b!1051087 () Bool)

(assert (=> b!1051087 (= e!596621 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051088 () Bool)

(declare-fun res!700317 () Bool)

(assert (=> b!1051088 (=> (not res!700317) (not e!596623))))

(assert (=> b!1051088 (= res!700317 (= (select (arr!31852 a!3488) i!1381) k!2747))))

(assert (= (and start!92484 res!700319) b!1051081))

(assert (= (and b!1051081 res!700320) b!1051086))

(assert (= (and b!1051086 res!700321) b!1051088))

(assert (= (and b!1051088 res!700317) b!1051085))

(assert (= (and b!1051085 res!700323) b!1051084))

(assert (= (and b!1051084 res!700316) b!1051080))

(assert (= (and b!1051080 res!700318) b!1051082))

(assert (= (and b!1051082 (not res!700315)) b!1051087))

(assert (= (and b!1051080 (not res!700322)) b!1051083))

(declare-fun m!971781 () Bool)

(assert (=> start!92484 m!971781))

(declare-fun m!971783 () Bool)

(assert (=> b!1051086 m!971783))

(declare-fun m!971785 () Bool)

(assert (=> b!1051081 m!971785))

(declare-fun m!971787 () Bool)

(assert (=> b!1051088 m!971787))

(declare-fun m!971789 () Bool)

(assert (=> b!1051080 m!971789))

(declare-fun m!971791 () Bool)

(assert (=> b!1051080 m!971791))

(declare-fun m!971793 () Bool)

(assert (=> b!1051085 m!971793))

(assert (=> b!1051085 m!971789))

(declare-fun m!971795 () Bool)

(assert (=> b!1051087 m!971795))

(declare-fun m!971797 () Bool)

(assert (=> b!1051084 m!971797))

(declare-fun m!971799 () Bool)

(assert (=> b!1051083 m!971799))

(declare-fun m!971801 () Bool)

(assert (=> b!1051083 m!971801))

(push 1)

