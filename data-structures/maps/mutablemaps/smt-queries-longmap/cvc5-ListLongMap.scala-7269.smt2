; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92868 () Bool)

(assert start!92868)

(declare-fun b!1054149 () Bool)

(declare-fun res!703198 () Bool)

(declare-fun e!598880 () Bool)

(assert (=> b!1054149 (=> (not res!703198) (not e!598880))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054149 (= res!703198 (validKeyInArray!0 k!2747))))

(declare-fun b!1054150 () Bool)

(declare-fun e!598881 () Bool)

(assert (=> b!1054150 (= e!598880 e!598881)))

(declare-fun res!703203 () Bool)

(assert (=> b!1054150 (=> (not res!703203) (not e!598881))))

(declare-datatypes ((array!66476 0))(
  ( (array!66477 (arr!31966 (Array (_ BitVec 32) (_ BitVec 64))) (size!32503 (_ BitVec 32))) )
))
(declare-fun lt!465310 () array!66476)

(declare-fun arrayContainsKey!0 (array!66476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054150 (= res!703203 (arrayContainsKey!0 lt!465310 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66476)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054150 (= lt!465310 (array!66477 (store (arr!31966 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32503 a!3488)))))

(declare-fun b!1054151 () Bool)

(declare-fun e!598883 () Bool)

(assert (=> b!1054151 (= e!598881 e!598883)))

(declare-fun res!703205 () Bool)

(assert (=> b!1054151 (=> (not res!703205) (not e!598883))))

(declare-fun lt!465309 () (_ BitVec 32))

(assert (=> b!1054151 (= res!703205 (not (= lt!465309 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66476 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054151 (= lt!465309 (arrayScanForKey!0 lt!465310 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!598882 () Bool)

(declare-fun b!1054152 () Bool)

(assert (=> b!1054152 (= e!598882 (or (bvslt lt!465309 #b00000000000000000000000000000000) (bvsge lt!465309 (size!32503 a!3488)) (bvsge (bvadd #b00000000000000000000000000000001 i!1381) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!22409 0))(
  ( (Nil!22406) (Cons!22405 (h!23614 (_ BitVec 64)) (t!31723 List!22409)) )
))
(declare-fun arrayNoDuplicates!0 (array!66476 (_ BitVec 32) List!22409) Bool)

(assert (=> b!1054152 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22406)))

(declare-datatypes ((Unit!34499 0))(
  ( (Unit!34500) )
))
(declare-fun lt!465308 () Unit!34499)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66476 (_ BitVec 32) (_ BitVec 32)) Unit!34499)

(assert (=> b!1054152 (= lt!465308 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054153 () Bool)

(declare-fun res!703199 () Bool)

(assert (=> b!1054153 (=> (not res!703199) (not e!598880))))

(assert (=> b!1054153 (= res!703199 (= (select (arr!31966 a!3488) i!1381) k!2747))))

(declare-fun b!1054154 () Bool)

(assert (=> b!1054154 (= e!598883 (not e!598882))))

(declare-fun res!703201 () Bool)

(assert (=> b!1054154 (=> res!703201 e!598882)))

(assert (=> b!1054154 (= res!703201 (bvsle lt!465309 i!1381))))

(declare-fun e!598878 () Bool)

(assert (=> b!1054154 e!598878))

(declare-fun res!703202 () Bool)

(assert (=> b!1054154 (=> (not res!703202) (not e!598878))))

(assert (=> b!1054154 (= res!703202 (= (select (store (arr!31966 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465309) k!2747))))

(declare-fun b!1054155 () Bool)

(declare-fun res!703206 () Bool)

(assert (=> b!1054155 (=> (not res!703206) (not e!598880))))

(assert (=> b!1054155 (= res!703206 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22406))))

(declare-fun b!1054156 () Bool)

(declare-fun e!598877 () Bool)

(assert (=> b!1054156 (= e!598877 (arrayContainsKey!0 a!3488 k!2747 lt!465309))))

(declare-fun b!1054157 () Bool)

(assert (=> b!1054157 (= e!598878 e!598877)))

(declare-fun res!703204 () Bool)

(assert (=> b!1054157 (=> res!703204 e!598877)))

(assert (=> b!1054157 (= res!703204 (bvsle lt!465309 i!1381))))

(declare-fun res!703200 () Bool)

(assert (=> start!92868 (=> (not res!703200) (not e!598880))))

(assert (=> start!92868 (= res!703200 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32503 a!3488)) (bvslt (size!32503 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92868 e!598880))

(assert (=> start!92868 true))

(declare-fun array_inv!24588 (array!66476) Bool)

(assert (=> start!92868 (array_inv!24588 a!3488)))

(assert (= (and start!92868 res!703200) b!1054155))

(assert (= (and b!1054155 res!703206) b!1054149))

(assert (= (and b!1054149 res!703198) b!1054153))

(assert (= (and b!1054153 res!703199) b!1054150))

(assert (= (and b!1054150 res!703203) b!1054151))

(assert (= (and b!1054151 res!703205) b!1054154))

(assert (= (and b!1054154 res!703202) b!1054157))

(assert (= (and b!1054157 (not res!703204)) b!1054156))

(assert (= (and b!1054154 (not res!703201)) b!1054152))

(declare-fun m!974403 () Bool)

(assert (=> b!1054151 m!974403))

(declare-fun m!974405 () Bool)

(assert (=> b!1054156 m!974405))

(declare-fun m!974407 () Bool)

(assert (=> b!1054153 m!974407))

(declare-fun m!974409 () Bool)

(assert (=> b!1054150 m!974409))

(declare-fun m!974411 () Bool)

(assert (=> b!1054150 m!974411))

(assert (=> b!1054154 m!974411))

(declare-fun m!974413 () Bool)

(assert (=> b!1054154 m!974413))

(declare-fun m!974415 () Bool)

(assert (=> b!1054149 m!974415))

(declare-fun m!974417 () Bool)

(assert (=> start!92868 m!974417))

(declare-fun m!974419 () Bool)

(assert (=> b!1054155 m!974419))

(declare-fun m!974421 () Bool)

(assert (=> b!1054152 m!974421))

(declare-fun m!974423 () Bool)

(assert (=> b!1054152 m!974423))

(push 1)

