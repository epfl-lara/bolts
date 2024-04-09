; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92532 () Bool)

(assert start!92532)

(declare-fun b!1051815 () Bool)

(declare-fun e!597156 () Bool)

(declare-fun e!597158 () Bool)

(assert (=> b!1051815 (= e!597156 e!597158)))

(declare-fun res!701055 () Bool)

(assert (=> b!1051815 (=> (not res!701055) (not e!597158))))

(declare-fun lt!464451 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051815 (= res!701055 (not (= lt!464451 i!1381)))))

(declare-datatypes ((array!66281 0))(
  ( (array!66282 (arr!31876 (Array (_ BitVec 32) (_ BitVec 64))) (size!32413 (_ BitVec 32))) )
))
(declare-fun lt!464452 () array!66281)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66281 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051815 (= lt!464451 (arrayScanForKey!0 lt!464452 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051816 () Bool)

(declare-fun res!701061 () Bool)

(declare-fun e!597155 () Bool)

(assert (=> b!1051816 (=> (not res!701061) (not e!597155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051816 (= res!701061 (validKeyInArray!0 k!2747))))

(declare-fun b!1051817 () Bool)

(declare-fun e!597154 () Bool)

(assert (=> b!1051817 (= e!597158 (not e!597154))))

(declare-fun res!701057 () Bool)

(assert (=> b!1051817 (=> res!701057 e!597154)))

(assert (=> b!1051817 (= res!701057 (or (bvsgt lt!464451 i!1381) (bvsle i!1381 lt!464451)))))

(declare-fun e!597161 () Bool)

(assert (=> b!1051817 e!597161))

(declare-fun res!701050 () Bool)

(assert (=> b!1051817 (=> (not res!701050) (not e!597161))))

(declare-fun a!3488 () array!66281)

(assert (=> b!1051817 (= res!701050 (= (select (store (arr!31876 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464451) k!2747))))

(declare-fun b!1051818 () Bool)

(declare-fun res!701054 () Bool)

(assert (=> b!1051818 (=> (not res!701054) (not e!597155))))

(declare-datatypes ((List!22319 0))(
  ( (Nil!22316) (Cons!22315 (h!23524 (_ BitVec 64)) (t!31633 List!22319)) )
))
(declare-fun arrayNoDuplicates!0 (array!66281 (_ BitVec 32) List!22319) Bool)

(assert (=> b!1051818 (= res!701054 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22316))))

(declare-fun b!1051819 () Bool)

(declare-fun res!701052 () Bool)

(assert (=> b!1051819 (=> (not res!701052) (not e!597155))))

(assert (=> b!1051819 (= res!701052 (= (select (arr!31876 a!3488) i!1381) k!2747))))

(declare-fun b!1051820 () Bool)

(declare-fun e!597160 () Bool)

(assert (=> b!1051820 (= e!597160 true)))

(declare-fun lt!464450 () Bool)

(declare-fun contains!6160 (List!22319 (_ BitVec 64)) Bool)

(assert (=> b!1051820 (= lt!464450 (contains!6160 Nil!22316 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051821 () Bool)

(assert (=> b!1051821 (= e!597154 e!597160)))

(declare-fun res!701059 () Bool)

(assert (=> b!1051821 (=> res!701059 e!597160)))

(declare-fun lt!464455 () (_ BitVec 32))

(assert (=> b!1051821 (= res!701059 (or (bvslt lt!464451 #b00000000000000000000000000000000) (bvsge lt!464455 (size!32413 a!3488)) (bvsge lt!464451 (size!32413 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051821 (arrayContainsKey!0 a!3488 k!2747 lt!464455)))

(declare-datatypes ((Unit!34433 0))(
  ( (Unit!34434) )
))
(declare-fun lt!464454 () Unit!34433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66281 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34433)

(assert (=> b!1051821 (= lt!464454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464455))))

(assert (=> b!1051821 (= lt!464455 (bvadd #b00000000000000000000000000000001 lt!464451))))

(assert (=> b!1051821 (arrayNoDuplicates!0 a!3488 lt!464451 Nil!22316)))

(declare-fun lt!464453 () Unit!34433)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66281 (_ BitVec 32) (_ BitVec 32)) Unit!34433)

(assert (=> b!1051821 (= lt!464453 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464451))))

(declare-fun b!1051822 () Bool)

(declare-fun e!597157 () Bool)

(assert (=> b!1051822 (= e!597161 e!597157)))

(declare-fun res!701053 () Bool)

(assert (=> b!1051822 (=> res!701053 e!597157)))

(assert (=> b!1051822 (= res!701053 (or (bvsgt lt!464451 i!1381) (bvsle i!1381 lt!464451)))))

(declare-fun b!1051823 () Bool)

(assert (=> b!1051823 (= e!597157 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!701060 () Bool)

(assert (=> start!92532 (=> (not res!701060) (not e!597155))))

(assert (=> start!92532 (= res!701060 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32413 a!3488)) (bvslt (size!32413 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92532 e!597155))

(assert (=> start!92532 true))

(declare-fun array_inv!24498 (array!66281) Bool)

(assert (=> start!92532 (array_inv!24498 a!3488)))

(declare-fun b!1051824 () Bool)

(declare-fun res!701058 () Bool)

(assert (=> b!1051824 (=> res!701058 e!597160)))

(assert (=> b!1051824 (= res!701058 (contains!6160 Nil!22316 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051825 () Bool)

(declare-fun res!701051 () Bool)

(assert (=> b!1051825 (=> res!701051 e!597160)))

(declare-fun noDuplicate!1545 (List!22319) Bool)

(assert (=> b!1051825 (= res!701051 (not (noDuplicate!1545 Nil!22316)))))

(declare-fun b!1051826 () Bool)

(assert (=> b!1051826 (= e!597155 e!597156)))

(declare-fun res!701056 () Bool)

(assert (=> b!1051826 (=> (not res!701056) (not e!597156))))

(assert (=> b!1051826 (= res!701056 (arrayContainsKey!0 lt!464452 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051826 (= lt!464452 (array!66282 (store (arr!31876 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32413 a!3488)))))

(assert (= (and start!92532 res!701060) b!1051818))

(assert (= (and b!1051818 res!701054) b!1051816))

(assert (= (and b!1051816 res!701061) b!1051819))

(assert (= (and b!1051819 res!701052) b!1051826))

(assert (= (and b!1051826 res!701056) b!1051815))

(assert (= (and b!1051815 res!701055) b!1051817))

(assert (= (and b!1051817 res!701050) b!1051822))

(assert (= (and b!1051822 (not res!701053)) b!1051823))

(assert (= (and b!1051817 (not res!701057)) b!1051821))

(assert (= (and b!1051821 (not res!701059)) b!1051825))

(assert (= (and b!1051825 (not res!701051)) b!1051824))

(assert (= (and b!1051824 (not res!701058)) b!1051820))

(declare-fun m!972399 () Bool)

(assert (=> b!1051815 m!972399))

(declare-fun m!972401 () Bool)

(assert (=> b!1051824 m!972401))

(declare-fun m!972403 () Bool)

(assert (=> b!1051816 m!972403))

(declare-fun m!972405 () Bool)

(assert (=> b!1051826 m!972405))

(declare-fun m!972407 () Bool)

(assert (=> b!1051826 m!972407))

(declare-fun m!972409 () Bool)

(assert (=> start!92532 m!972409))

(declare-fun m!972411 () Bool)

(assert (=> b!1051820 m!972411))

(declare-fun m!972413 () Bool)

(assert (=> b!1051818 m!972413))

(declare-fun m!972415 () Bool)

(assert (=> b!1051819 m!972415))

(assert (=> b!1051817 m!972407))

(declare-fun m!972417 () Bool)

(assert (=> b!1051817 m!972417))

(declare-fun m!972419 () Bool)

(assert (=> b!1051825 m!972419))

(declare-fun m!972421 () Bool)

(assert (=> b!1051821 m!972421))

(declare-fun m!972423 () Bool)

(assert (=> b!1051821 m!972423))

(declare-fun m!972425 () Bool)

(assert (=> b!1051821 m!972425))

(declare-fun m!972427 () Bool)

(assert (=> b!1051821 m!972427))

(declare-fun m!972429 () Bool)

(assert (=> b!1051823 m!972429))

(push 1)

(assert (not b!1051818))

