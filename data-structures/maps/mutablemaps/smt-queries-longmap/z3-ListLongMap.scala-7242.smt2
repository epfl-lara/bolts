; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92552 () Bool)

(assert start!92552)

(declare-fun b!1052175 () Bool)

(declare-fun e!597396 () Bool)

(declare-fun e!597401 () Bool)

(assert (=> b!1052175 (= e!597396 e!597401)))

(declare-fun res!701413 () Bool)

(assert (=> b!1052175 (=> (not res!701413) (not e!597401))))

(declare-datatypes ((array!66301 0))(
  ( (array!66302 (arr!31886 (Array (_ BitVec 32) (_ BitVec 64))) (size!32423 (_ BitVec 32))) )
))
(declare-fun lt!464631 () array!66301)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052175 (= res!701413 (arrayContainsKey!0 lt!464631 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66301)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052175 (= lt!464631 (array!66302 (store (arr!31886 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32423 a!3488)))))

(declare-fun b!1052176 () Bool)

(declare-fun e!597394 () Bool)

(declare-fun e!597399 () Bool)

(assert (=> b!1052176 (= e!597394 e!597399)))

(declare-fun res!701416 () Bool)

(assert (=> b!1052176 (=> res!701416 e!597399)))

(declare-fun lt!464630 () (_ BitVec 32))

(declare-fun lt!464633 () (_ BitVec 32))

(assert (=> b!1052176 (= res!701416 (or (bvslt lt!464633 #b00000000000000000000000000000000) (bvsge lt!464630 (size!32423 a!3488)) (bvsge lt!464633 (size!32423 a!3488))))))

(assert (=> b!1052176 (arrayContainsKey!0 a!3488 k0!2747 lt!464630)))

(declare-datatypes ((Unit!34453 0))(
  ( (Unit!34454) )
))
(declare-fun lt!464635 () Unit!34453)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66301 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34453)

(assert (=> b!1052176 (= lt!464635 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464630))))

(assert (=> b!1052176 (= lt!464630 (bvadd #b00000000000000000000000000000001 lt!464633))))

(declare-datatypes ((List!22329 0))(
  ( (Nil!22326) (Cons!22325 (h!23534 (_ BitVec 64)) (t!31643 List!22329)) )
))
(declare-fun arrayNoDuplicates!0 (array!66301 (_ BitVec 32) List!22329) Bool)

(assert (=> b!1052176 (arrayNoDuplicates!0 a!3488 lt!464633 Nil!22326)))

(declare-fun lt!464634 () Unit!34453)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66301 (_ BitVec 32) (_ BitVec 32)) Unit!34453)

(assert (=> b!1052176 (= lt!464634 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464633))))

(declare-fun b!1052177 () Bool)

(declare-fun e!597400 () Bool)

(assert (=> b!1052177 (= e!597400 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1052178 () Bool)

(declare-fun e!597398 () Bool)

(assert (=> b!1052178 (= e!597398 e!597400)))

(declare-fun res!701417 () Bool)

(assert (=> b!1052178 (=> res!701417 e!597400)))

(assert (=> b!1052178 (= res!701417 (or (bvsgt lt!464633 i!1381) (bvsle i!1381 lt!464633)))))

(declare-fun b!1052179 () Bool)

(declare-fun e!597397 () Bool)

(assert (=> b!1052179 (= e!597401 e!597397)))

(declare-fun res!701421 () Bool)

(assert (=> b!1052179 (=> (not res!701421) (not e!597397))))

(assert (=> b!1052179 (= res!701421 (not (= lt!464633 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66301 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052179 (= lt!464633 (arrayScanForKey!0 lt!464631 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052180 () Bool)

(assert (=> b!1052180 (= e!597397 (not e!597394))))

(declare-fun res!701410 () Bool)

(assert (=> b!1052180 (=> res!701410 e!597394)))

(assert (=> b!1052180 (= res!701410 (or (bvsgt lt!464633 i!1381) (bvsle i!1381 lt!464633)))))

(assert (=> b!1052180 e!597398))

(declare-fun res!701415 () Bool)

(assert (=> b!1052180 (=> (not res!701415) (not e!597398))))

(assert (=> b!1052180 (= res!701415 (= (select (store (arr!31886 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464633) k0!2747))))

(declare-fun b!1052181 () Bool)

(declare-fun res!701418 () Bool)

(assert (=> b!1052181 (=> (not res!701418) (not e!597396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052181 (= res!701418 (validKeyInArray!0 k0!2747))))

(declare-fun res!701419 () Bool)

(assert (=> start!92552 (=> (not res!701419) (not e!597396))))

(assert (=> start!92552 (= res!701419 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32423 a!3488)) (bvslt (size!32423 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92552 e!597396))

(assert (=> start!92552 true))

(declare-fun array_inv!24508 (array!66301) Bool)

(assert (=> start!92552 (array_inv!24508 a!3488)))

(declare-fun b!1052182 () Bool)

(declare-fun res!701414 () Bool)

(assert (=> b!1052182 (=> (not res!701414) (not e!597396))))

(assert (=> b!1052182 (= res!701414 (= (select (arr!31886 a!3488) i!1381) k0!2747))))

(declare-fun b!1052183 () Bool)

(declare-fun res!701412 () Bool)

(assert (=> b!1052183 (=> (not res!701412) (not e!597396))))

(assert (=> b!1052183 (= res!701412 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22326))))

(declare-fun b!1052184 () Bool)

(declare-fun res!701420 () Bool)

(assert (=> b!1052184 (=> res!701420 e!597399)))

(declare-fun contains!6170 (List!22329 (_ BitVec 64)) Bool)

(assert (=> b!1052184 (= res!701420 (contains!6170 Nil!22326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052185 () Bool)

(assert (=> b!1052185 (= e!597399 true)))

(declare-fun lt!464632 () Bool)

(assert (=> b!1052185 (= lt!464632 (contains!6170 Nil!22326 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052186 () Bool)

(declare-fun res!701411 () Bool)

(assert (=> b!1052186 (=> res!701411 e!597399)))

(declare-fun noDuplicate!1555 (List!22329) Bool)

(assert (=> b!1052186 (= res!701411 (not (noDuplicate!1555 Nil!22326)))))

(assert (= (and start!92552 res!701419) b!1052183))

(assert (= (and b!1052183 res!701412) b!1052181))

(assert (= (and b!1052181 res!701418) b!1052182))

(assert (= (and b!1052182 res!701414) b!1052175))

(assert (= (and b!1052175 res!701413) b!1052179))

(assert (= (and b!1052179 res!701421) b!1052180))

(assert (= (and b!1052180 res!701415) b!1052178))

(assert (= (and b!1052178 (not res!701417)) b!1052177))

(assert (= (and b!1052180 (not res!701410)) b!1052176))

(assert (= (and b!1052176 (not res!701416)) b!1052186))

(assert (= (and b!1052186 (not res!701411)) b!1052184))

(assert (= (and b!1052184 (not res!701420)) b!1052185))

(declare-fun m!972719 () Bool)

(assert (=> b!1052177 m!972719))

(declare-fun m!972721 () Bool)

(assert (=> b!1052184 m!972721))

(declare-fun m!972723 () Bool)

(assert (=> b!1052186 m!972723))

(declare-fun m!972725 () Bool)

(assert (=> b!1052176 m!972725))

(declare-fun m!972727 () Bool)

(assert (=> b!1052176 m!972727))

(declare-fun m!972729 () Bool)

(assert (=> b!1052176 m!972729))

(declare-fun m!972731 () Bool)

(assert (=> b!1052176 m!972731))

(declare-fun m!972733 () Bool)

(assert (=> b!1052180 m!972733))

(declare-fun m!972735 () Bool)

(assert (=> b!1052180 m!972735))

(declare-fun m!972737 () Bool)

(assert (=> b!1052185 m!972737))

(declare-fun m!972739 () Bool)

(assert (=> start!92552 m!972739))

(declare-fun m!972741 () Bool)

(assert (=> b!1052181 m!972741))

(declare-fun m!972743 () Bool)

(assert (=> b!1052182 m!972743))

(declare-fun m!972745 () Bool)

(assert (=> b!1052179 m!972745))

(declare-fun m!972747 () Bool)

(assert (=> b!1052175 m!972747))

(assert (=> b!1052175 m!972733))

(declare-fun m!972749 () Bool)

(assert (=> b!1052183 m!972749))

(check-sat (not b!1052179) (not b!1052184) (not b!1052177) (not b!1052186) (not b!1052175) (not start!92552) (not b!1052183) (not b!1052176) (not b!1052181) (not b!1052185))
(check-sat)
