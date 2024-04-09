; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92524 () Bool)

(assert start!92524)

(declare-fun b!1051671 () Bool)

(declare-fun e!597060 () Bool)

(declare-fun e!597062 () Bool)

(assert (=> b!1051671 (= e!597060 e!597062)))

(declare-fun res!700910 () Bool)

(assert (=> b!1051671 (=> (not res!700910) (not e!597062))))

(declare-fun lt!464379 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051671 (= res!700910 (not (= lt!464379 i!1381)))))

(declare-datatypes ((array!66273 0))(
  ( (array!66274 (arr!31872 (Array (_ BitVec 32) (_ BitVec 64))) (size!32409 (_ BitVec 32))) )
))
(declare-fun lt!464378 () array!66273)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66273 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051671 (= lt!464379 (arrayScanForKey!0 lt!464378 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051672 () Bool)

(declare-fun e!597065 () Bool)

(assert (=> b!1051672 (= e!597065 e!597060)))

(declare-fun res!700917 () Bool)

(assert (=> b!1051672 (=> (not res!700917) (not e!597060))))

(declare-fun arrayContainsKey!0 (array!66273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051672 (= res!700917 (arrayContainsKey!0 lt!464378 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66273)

(assert (=> b!1051672 (= lt!464378 (array!66274 (store (arr!31872 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32409 a!3488)))))

(declare-fun b!1051673 () Bool)

(declare-fun e!597063 () Bool)

(declare-fun e!597064 () Bool)

(assert (=> b!1051673 (= e!597063 e!597064)))

(declare-fun res!700908 () Bool)

(assert (=> b!1051673 (=> res!700908 e!597064)))

(declare-fun lt!464381 () (_ BitVec 32))

(assert (=> b!1051673 (= res!700908 (or (bvslt lt!464379 #b00000000000000000000000000000000) (bvsge lt!464381 (size!32409 a!3488)) (bvsge lt!464379 (size!32409 a!3488))))))

(assert (=> b!1051673 (arrayContainsKey!0 a!3488 k!2747 lt!464381)))

(declare-datatypes ((Unit!34425 0))(
  ( (Unit!34426) )
))
(declare-fun lt!464383 () Unit!34425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66273 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34425)

(assert (=> b!1051673 (= lt!464383 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464381))))

(assert (=> b!1051673 (= lt!464381 (bvadd #b00000000000000000000000000000001 lt!464379))))

(declare-datatypes ((List!22315 0))(
  ( (Nil!22312) (Cons!22311 (h!23520 (_ BitVec 64)) (t!31629 List!22315)) )
))
(declare-fun arrayNoDuplicates!0 (array!66273 (_ BitVec 32) List!22315) Bool)

(assert (=> b!1051673 (arrayNoDuplicates!0 a!3488 lt!464379 Nil!22312)))

(declare-fun lt!464380 () Unit!34425)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66273 (_ BitVec 32) (_ BitVec 32)) Unit!34425)

(assert (=> b!1051673 (= lt!464380 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464379))))

(declare-fun b!1051674 () Bool)

(assert (=> b!1051674 (= e!597064 true)))

(declare-fun lt!464382 () Bool)

(declare-fun contains!6156 (List!22315 (_ BitVec 64)) Bool)

(assert (=> b!1051674 (= lt!464382 (contains!6156 Nil!22312 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051675 () Bool)

(declare-fun res!700909 () Bool)

(assert (=> b!1051675 (=> res!700909 e!597064)))

(declare-fun noDuplicate!1541 (List!22315) Bool)

(assert (=> b!1051675 (= res!700909 (not (noDuplicate!1541 Nil!22312)))))

(declare-fun res!700913 () Bool)

(assert (=> start!92524 (=> (not res!700913) (not e!597065))))

(assert (=> start!92524 (= res!700913 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32409 a!3488)) (bvslt (size!32409 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92524 e!597065))

(assert (=> start!92524 true))

(declare-fun array_inv!24494 (array!66273) Bool)

(assert (=> start!92524 (array_inv!24494 a!3488)))

(declare-fun b!1051676 () Bool)

(declare-fun res!700916 () Bool)

(assert (=> b!1051676 (=> (not res!700916) (not e!597065))))

(assert (=> b!1051676 (= res!700916 (= (select (arr!31872 a!3488) i!1381) k!2747))))

(declare-fun b!1051677 () Bool)

(declare-fun res!700914 () Bool)

(assert (=> b!1051677 (=> (not res!700914) (not e!597065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051677 (= res!700914 (validKeyInArray!0 k!2747))))

(declare-fun b!1051678 () Bool)

(assert (=> b!1051678 (= e!597062 (not e!597063))))

(declare-fun res!700907 () Bool)

(assert (=> b!1051678 (=> res!700907 e!597063)))

(assert (=> b!1051678 (= res!700907 (or (bvsgt lt!464379 i!1381) (bvsle i!1381 lt!464379)))))

(declare-fun e!597059 () Bool)

(assert (=> b!1051678 e!597059))

(declare-fun res!700915 () Bool)

(assert (=> b!1051678 (=> (not res!700915) (not e!597059))))

(assert (=> b!1051678 (= res!700915 (= (select (store (arr!31872 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464379) k!2747))))

(declare-fun b!1051679 () Bool)

(declare-fun res!700906 () Bool)

(assert (=> b!1051679 (=> res!700906 e!597064)))

(assert (=> b!1051679 (= res!700906 (contains!6156 Nil!22312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051680 () Bool)

(declare-fun res!700911 () Bool)

(assert (=> b!1051680 (=> (not res!700911) (not e!597065))))

(assert (=> b!1051680 (= res!700911 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22312))))

(declare-fun b!1051681 () Bool)

(declare-fun e!597058 () Bool)

(assert (=> b!1051681 (= e!597058 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051682 () Bool)

(assert (=> b!1051682 (= e!597059 e!597058)))

(declare-fun res!700912 () Bool)

(assert (=> b!1051682 (=> res!700912 e!597058)))

(assert (=> b!1051682 (= res!700912 (or (bvsgt lt!464379 i!1381) (bvsle i!1381 lt!464379)))))

(assert (= (and start!92524 res!700913) b!1051680))

(assert (= (and b!1051680 res!700911) b!1051677))

(assert (= (and b!1051677 res!700914) b!1051676))

(assert (= (and b!1051676 res!700916) b!1051672))

(assert (= (and b!1051672 res!700917) b!1051671))

(assert (= (and b!1051671 res!700910) b!1051678))

(assert (= (and b!1051678 res!700915) b!1051682))

(assert (= (and b!1051682 (not res!700912)) b!1051681))

(assert (= (and b!1051678 (not res!700907)) b!1051673))

(assert (= (and b!1051673 (not res!700908)) b!1051675))

(assert (= (and b!1051675 (not res!700909)) b!1051679))

(assert (= (and b!1051679 (not res!700906)) b!1051674))

(declare-fun m!972271 () Bool)

(assert (=> b!1051671 m!972271))

(declare-fun m!972273 () Bool)

(assert (=> b!1051678 m!972273))

(declare-fun m!972275 () Bool)

(assert (=> b!1051678 m!972275))

(declare-fun m!972277 () Bool)

(assert (=> b!1051676 m!972277))

(declare-fun m!972279 () Bool)

(assert (=> b!1051679 m!972279))

(declare-fun m!972281 () Bool)

(assert (=> b!1051674 m!972281))

(declare-fun m!972283 () Bool)

(assert (=> b!1051672 m!972283))

(assert (=> b!1051672 m!972273))

(declare-fun m!972285 () Bool)

(assert (=> b!1051680 m!972285))

(declare-fun m!972287 () Bool)

(assert (=> b!1051677 m!972287))

(declare-fun m!972289 () Bool)

(assert (=> b!1051673 m!972289))

(declare-fun m!972291 () Bool)

(assert (=> b!1051673 m!972291))

(declare-fun m!972293 () Bool)

(assert (=> b!1051673 m!972293))

(declare-fun m!972295 () Bool)

(assert (=> b!1051673 m!972295))

(declare-fun m!972297 () Bool)

(assert (=> start!92524 m!972297))

(declare-fun m!972299 () Bool)

(assert (=> b!1051681 m!972299))

(declare-fun m!972301 () Bool)

(assert (=> b!1051675 m!972301))

(push 1)

(assert (not start!92524))

