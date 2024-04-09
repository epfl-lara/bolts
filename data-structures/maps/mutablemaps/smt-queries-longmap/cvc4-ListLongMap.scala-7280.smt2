; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93082 () Bool)

(assert start!93082)

(declare-fun b!1055538 () Bool)

(declare-fun res!704461 () Bool)

(declare-fun e!599974 () Bool)

(assert (=> b!1055538 (=> (not res!704461) (not e!599974))))

(declare-datatypes ((array!66555 0))(
  ( (array!66556 (arr!32001 (Array (_ BitVec 32) (_ BitVec 64))) (size!32538 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66555)

(declare-datatypes ((List!22444 0))(
  ( (Nil!22441) (Cons!22440 (h!23649 (_ BitVec 64)) (t!31758 List!22444)) )
))
(declare-fun arrayNoDuplicates!0 (array!66555 (_ BitVec 32) List!22444) Bool)

(assert (=> b!1055538 (= res!704461 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22441))))

(declare-fun b!1055539 () Bool)

(declare-fun res!704464 () Bool)

(declare-fun e!599971 () Bool)

(assert (=> b!1055539 (=> res!704464 e!599971)))

(declare-fun contains!6202 (List!22444 (_ BitVec 64)) Bool)

(assert (=> b!1055539 (= res!704464 (contains!6202 Nil!22441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055540 () Bool)

(declare-fun res!704467 () Bool)

(assert (=> b!1055540 (=> res!704467 e!599971)))

(declare-fun noDuplicate!1571 (List!22444) Bool)

(assert (=> b!1055540 (= res!704467 (not (noDuplicate!1571 Nil!22441)))))

(declare-fun b!1055541 () Bool)

(declare-fun e!599973 () Bool)

(assert (=> b!1055541 (= e!599973 e!599971)))

(declare-fun res!704465 () Bool)

(assert (=> b!1055541 (=> res!704465 e!599971)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055541 (= res!704465 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32538 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055541 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34569 0))(
  ( (Unit!34570) )
))
(declare-fun lt!465796 () Unit!34569)

(declare-fun lt!465795 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34569)

(assert (=> b!1055541 (= lt!465796 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465795 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055541 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22441)))

(declare-fun lt!465798 () Unit!34569)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66555 (_ BitVec 32) (_ BitVec 32)) Unit!34569)

(assert (=> b!1055541 (= lt!465798 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055542 () Bool)

(declare-fun res!704471 () Bool)

(assert (=> b!1055542 (=> (not res!704471) (not e!599974))))

(assert (=> b!1055542 (= res!704471 (= (select (arr!32001 a!3488) i!1381) k!2747))))

(declare-fun b!1055543 () Bool)

(declare-fun e!599972 () Bool)

(declare-fun e!599968 () Bool)

(assert (=> b!1055543 (= e!599972 e!599968)))

(declare-fun res!704469 () Bool)

(assert (=> b!1055543 (=> (not res!704469) (not e!599968))))

(assert (=> b!1055543 (= res!704469 (not (= lt!465795 i!1381)))))

(declare-fun lt!465797 () array!66555)

(declare-fun arrayScanForKey!0 (array!66555 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055543 (= lt!465795 (arrayScanForKey!0 lt!465797 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!704472 () Bool)

(assert (=> start!93082 (=> (not res!704472) (not e!599974))))

(assert (=> start!93082 (= res!704472 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32538 a!3488)) (bvslt (size!32538 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93082 e!599974))

(assert (=> start!93082 true))

(declare-fun array_inv!24623 (array!66555) Bool)

(assert (=> start!93082 (array_inv!24623 a!3488)))

(declare-fun b!1055544 () Bool)

(assert (=> b!1055544 (= e!599971 true)))

(declare-fun lt!465799 () Bool)

(assert (=> b!1055544 (= lt!465799 (contains!6202 Nil!22441 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055545 () Bool)

(declare-fun res!704468 () Bool)

(assert (=> b!1055545 (=> (not res!704468) (not e!599974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055545 (= res!704468 (validKeyInArray!0 k!2747))))

(declare-fun b!1055546 () Bool)

(declare-fun e!599969 () Bool)

(assert (=> b!1055546 (= e!599969 (arrayContainsKey!0 a!3488 k!2747 lt!465795))))

(declare-fun b!1055547 () Bool)

(assert (=> b!1055547 (= e!599968 (not e!599973))))

(declare-fun res!704462 () Bool)

(assert (=> b!1055547 (=> res!704462 e!599973)))

(assert (=> b!1055547 (= res!704462 (bvsle lt!465795 i!1381))))

(declare-fun e!599975 () Bool)

(assert (=> b!1055547 e!599975))

(declare-fun res!704470 () Bool)

(assert (=> b!1055547 (=> (not res!704470) (not e!599975))))

(assert (=> b!1055547 (= res!704470 (= (select (store (arr!32001 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465795) k!2747))))

(declare-fun b!1055548 () Bool)

(assert (=> b!1055548 (= e!599974 e!599972)))

(declare-fun res!704466 () Bool)

(assert (=> b!1055548 (=> (not res!704466) (not e!599972))))

(assert (=> b!1055548 (= res!704466 (arrayContainsKey!0 lt!465797 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055548 (= lt!465797 (array!66556 (store (arr!32001 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32538 a!3488)))))

(declare-fun b!1055549 () Bool)

(assert (=> b!1055549 (= e!599975 e!599969)))

(declare-fun res!704463 () Bool)

(assert (=> b!1055549 (=> res!704463 e!599969)))

(assert (=> b!1055549 (= res!704463 (bvsle lt!465795 i!1381))))

(assert (= (and start!93082 res!704472) b!1055538))

(assert (= (and b!1055538 res!704461) b!1055545))

(assert (= (and b!1055545 res!704468) b!1055542))

(assert (= (and b!1055542 res!704471) b!1055548))

(assert (= (and b!1055548 res!704466) b!1055543))

(assert (= (and b!1055543 res!704469) b!1055547))

(assert (= (and b!1055547 res!704470) b!1055549))

(assert (= (and b!1055549 (not res!704463)) b!1055546))

(assert (= (and b!1055547 (not res!704462)) b!1055541))

(assert (= (and b!1055541 (not res!704465)) b!1055540))

(assert (= (and b!1055540 (not res!704467)) b!1055539))

(assert (= (and b!1055539 (not res!704464)) b!1055544))

(declare-fun m!975661 () Bool)

(assert (=> b!1055548 m!975661))

(declare-fun m!975663 () Bool)

(assert (=> b!1055548 m!975663))

(declare-fun m!975665 () Bool)

(assert (=> b!1055538 m!975665))

(declare-fun m!975667 () Bool)

(assert (=> b!1055545 m!975667))

(declare-fun m!975669 () Bool)

(assert (=> start!93082 m!975669))

(assert (=> b!1055547 m!975663))

(declare-fun m!975671 () Bool)

(assert (=> b!1055547 m!975671))

(declare-fun m!975673 () Bool)

(assert (=> b!1055542 m!975673))

(declare-fun m!975675 () Bool)

(assert (=> b!1055541 m!975675))

(declare-fun m!975677 () Bool)

(assert (=> b!1055541 m!975677))

(declare-fun m!975679 () Bool)

(assert (=> b!1055541 m!975679))

(declare-fun m!975681 () Bool)

(assert (=> b!1055541 m!975681))

(declare-fun m!975683 () Bool)

(assert (=> b!1055540 m!975683))

(declare-fun m!975685 () Bool)

(assert (=> b!1055546 m!975685))

(declare-fun m!975687 () Bool)

(assert (=> b!1055544 m!975687))

(declare-fun m!975689 () Bool)

(assert (=> b!1055539 m!975689))

(declare-fun m!975691 () Bool)

(assert (=> b!1055543 m!975691))

(push 1)

(assert (not b!1055548))

(assert (not b!1055546))

(assert (not b!1055545))

(assert (not b!1055538))

