; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92550 () Bool)

(assert start!92550)

(declare-fun b!1052139 () Bool)

(declare-fun res!701382 () Bool)

(declare-fun e!597376 () Bool)

(assert (=> b!1052139 (=> (not res!701382) (not e!597376))))

(declare-datatypes ((array!66299 0))(
  ( (array!66300 (arr!31885 (Array (_ BitVec 32) (_ BitVec 64))) (size!32422 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66299)

(declare-datatypes ((List!22328 0))(
  ( (Nil!22325) (Cons!22324 (h!23533 (_ BitVec 64)) (t!31642 List!22328)) )
))
(declare-fun arrayNoDuplicates!0 (array!66299 (_ BitVec 32) List!22328) Bool)

(assert (=> b!1052139 (= res!701382 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22325))))

(declare-fun b!1052140 () Bool)

(declare-fun e!597375 () Bool)

(declare-fun e!597373 () Bool)

(assert (=> b!1052140 (= e!597375 e!597373)))

(declare-fun res!701377 () Bool)

(assert (=> b!1052140 (=> (not res!701377) (not e!597373))))

(declare-fun lt!464617 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052140 (= res!701377 (not (= lt!464617 i!1381)))))

(declare-fun lt!464615 () array!66299)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66299 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052140 (= lt!464617 (arrayScanForKey!0 lt!464615 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052141 () Bool)

(declare-fun res!701374 () Bool)

(declare-fun e!597377 () Bool)

(assert (=> b!1052141 (=> res!701374 e!597377)))

(declare-fun contains!6169 (List!22328 (_ BitVec 64)) Bool)

(assert (=> b!1052141 (= res!701374 (contains!6169 Nil!22325 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052142 () Bool)

(declare-fun res!701380 () Bool)

(assert (=> b!1052142 (=> (not res!701380) (not e!597376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052142 (= res!701380 (validKeyInArray!0 k!2747))))

(declare-fun b!1052143 () Bool)

(declare-fun e!597372 () Bool)

(declare-fun arrayContainsKey!0 (array!66299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052143 (= e!597372 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052144 () Bool)

(declare-fun res!701376 () Bool)

(assert (=> b!1052144 (=> res!701376 e!597377)))

(declare-fun noDuplicate!1554 (List!22328) Bool)

(assert (=> b!1052144 (= res!701376 (not (noDuplicate!1554 Nil!22325)))))

(declare-fun b!1052145 () Bool)

(assert (=> b!1052145 (= e!597376 e!597375)))

(declare-fun res!701375 () Bool)

(assert (=> b!1052145 (=> (not res!701375) (not e!597375))))

(assert (=> b!1052145 (= res!701375 (arrayContainsKey!0 lt!464615 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052145 (= lt!464615 (array!66300 (store (arr!31885 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32422 a!3488)))))

(declare-fun b!1052146 () Bool)

(declare-fun e!597374 () Bool)

(assert (=> b!1052146 (= e!597374 e!597372)))

(declare-fun res!701379 () Bool)

(assert (=> b!1052146 (=> res!701379 e!597372)))

(assert (=> b!1052146 (= res!701379 (or (bvsgt lt!464617 i!1381) (bvsle i!1381 lt!464617)))))

(declare-fun res!701383 () Bool)

(assert (=> start!92550 (=> (not res!701383) (not e!597376))))

(assert (=> start!92550 (= res!701383 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32422 a!3488)) (bvslt (size!32422 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92550 e!597376))

(assert (=> start!92550 true))

(declare-fun array_inv!24507 (array!66299) Bool)

(assert (=> start!92550 (array_inv!24507 a!3488)))

(declare-fun b!1052147 () Bool)

(declare-fun e!597371 () Bool)

(assert (=> b!1052147 (= e!597373 (not e!597371))))

(declare-fun res!701381 () Bool)

(assert (=> b!1052147 (=> res!701381 e!597371)))

(assert (=> b!1052147 (= res!701381 (or (bvsgt lt!464617 i!1381) (bvsle i!1381 lt!464617)))))

(assert (=> b!1052147 e!597374))

(declare-fun res!701384 () Bool)

(assert (=> b!1052147 (=> (not res!701384) (not e!597374))))

(assert (=> b!1052147 (= res!701384 (= (select (store (arr!31885 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464617) k!2747))))

(declare-fun b!1052148 () Bool)

(assert (=> b!1052148 (= e!597371 e!597377)))

(declare-fun res!701385 () Bool)

(assert (=> b!1052148 (=> res!701385 e!597377)))

(declare-fun lt!464612 () (_ BitVec 32))

(assert (=> b!1052148 (= res!701385 (or (bvslt lt!464617 #b00000000000000000000000000000000) (bvsge lt!464612 (size!32422 a!3488)) (bvsge lt!464617 (size!32422 a!3488))))))

(assert (=> b!1052148 (arrayContainsKey!0 a!3488 k!2747 lt!464612)))

(declare-datatypes ((Unit!34451 0))(
  ( (Unit!34452) )
))
(declare-fun lt!464613 () Unit!34451)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66299 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34451)

(assert (=> b!1052148 (= lt!464613 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464612))))

(assert (=> b!1052148 (= lt!464612 (bvadd #b00000000000000000000000000000001 lt!464617))))

(assert (=> b!1052148 (arrayNoDuplicates!0 a!3488 lt!464617 Nil!22325)))

(declare-fun lt!464616 () Unit!34451)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66299 (_ BitVec 32) (_ BitVec 32)) Unit!34451)

(assert (=> b!1052148 (= lt!464616 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464617))))

(declare-fun b!1052149 () Bool)

(assert (=> b!1052149 (= e!597377 true)))

(declare-fun lt!464614 () Bool)

(assert (=> b!1052149 (= lt!464614 (contains!6169 Nil!22325 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052150 () Bool)

(declare-fun res!701378 () Bool)

(assert (=> b!1052150 (=> (not res!701378) (not e!597376))))

(assert (=> b!1052150 (= res!701378 (= (select (arr!31885 a!3488) i!1381) k!2747))))

(assert (= (and start!92550 res!701383) b!1052139))

(assert (= (and b!1052139 res!701382) b!1052142))

(assert (= (and b!1052142 res!701380) b!1052150))

(assert (= (and b!1052150 res!701378) b!1052145))

(assert (= (and b!1052145 res!701375) b!1052140))

(assert (= (and b!1052140 res!701377) b!1052147))

(assert (= (and b!1052147 res!701384) b!1052146))

(assert (= (and b!1052146 (not res!701379)) b!1052143))

(assert (= (and b!1052147 (not res!701381)) b!1052148))

(assert (= (and b!1052148 (not res!701385)) b!1052144))

(assert (= (and b!1052144 (not res!701376)) b!1052141))

(assert (= (and b!1052141 (not res!701374)) b!1052149))

(declare-fun m!972687 () Bool)

(assert (=> b!1052140 m!972687))

(declare-fun m!972689 () Bool)

(assert (=> b!1052149 m!972689))

(declare-fun m!972691 () Bool)

(assert (=> b!1052142 m!972691))

(declare-fun m!972693 () Bool)

(assert (=> start!92550 m!972693))

(declare-fun m!972695 () Bool)

(assert (=> b!1052148 m!972695))

(declare-fun m!972697 () Bool)

(assert (=> b!1052148 m!972697))

(declare-fun m!972699 () Bool)

(assert (=> b!1052148 m!972699))

(declare-fun m!972701 () Bool)

(assert (=> b!1052148 m!972701))

(declare-fun m!972703 () Bool)

(assert (=> b!1052147 m!972703))

(declare-fun m!972705 () Bool)

(assert (=> b!1052147 m!972705))

(declare-fun m!972707 () Bool)

(assert (=> b!1052141 m!972707))

(declare-fun m!972709 () Bool)

(assert (=> b!1052139 m!972709))

(declare-fun m!972711 () Bool)

(assert (=> b!1052144 m!972711))

(declare-fun m!972713 () Bool)

(assert (=> b!1052150 m!972713))

(declare-fun m!972715 () Bool)

(assert (=> b!1052145 m!972715))

(assert (=> b!1052145 m!972703))

(declare-fun m!972717 () Bool)

(assert (=> b!1052143 m!972717))

(push 1)

