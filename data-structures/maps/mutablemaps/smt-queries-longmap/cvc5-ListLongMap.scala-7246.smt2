; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92574 () Bool)

(assert start!92574)

(declare-fun b!1052538 () Bool)

(declare-fun e!597648 () Bool)

(declare-fun e!597653 () Bool)

(assert (=> b!1052538 (= e!597648 e!597653)))

(declare-fun res!701781 () Bool)

(assert (=> b!1052538 (=> (not res!701781) (not e!597653))))

(declare-datatypes ((array!66323 0))(
  ( (array!66324 (arr!31897 (Array (_ BitVec 32) (_ BitVec 64))) (size!32434 (_ BitVec 32))) )
))
(declare-fun lt!464828 () array!66323)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052538 (= res!701781 (arrayContainsKey!0 lt!464828 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66323)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052538 (= lt!464828 (array!66324 (store (arr!31897 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32434 a!3488)))))

(declare-fun b!1052539 () Bool)

(declare-fun e!597651 () Bool)

(declare-fun e!597652 () Bool)

(assert (=> b!1052539 (= e!597651 e!597652)))

(declare-fun res!701780 () Bool)

(assert (=> b!1052539 (=> res!701780 e!597652)))

(declare-fun lt!464830 () (_ BitVec 32))

(assert (=> b!1052539 (= res!701780 (or (bvsgt lt!464830 i!1381) (bvsle i!1381 lt!464830)))))

(declare-fun b!1052540 () Bool)

(declare-fun res!701776 () Bool)

(assert (=> b!1052540 (=> (not res!701776) (not e!597648))))

(assert (=> b!1052540 (= res!701776 (= (select (arr!31897 a!3488) i!1381) k!2747))))

(declare-fun b!1052541 () Bool)

(declare-fun e!597647 () Bool)

(declare-fun e!597649 () Bool)

(assert (=> b!1052541 (= e!597647 (not e!597649))))

(declare-fun res!701779 () Bool)

(assert (=> b!1052541 (=> res!701779 e!597649)))

(assert (=> b!1052541 (= res!701779 (or (bvsgt lt!464830 i!1381) (bvsle i!1381 lt!464830)))))

(assert (=> b!1052541 e!597651))

(declare-fun res!701778 () Bool)

(assert (=> b!1052541 (=> (not res!701778) (not e!597651))))

(assert (=> b!1052541 (= res!701778 (= (select (store (arr!31897 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464830) k!2747))))

(declare-fun b!1052542 () Bool)

(assert (=> b!1052542 (= e!597652 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052543 () Bool)

(declare-fun res!701774 () Bool)

(assert (=> b!1052543 (=> (not res!701774) (not e!597648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052543 (= res!701774 (validKeyInArray!0 k!2747))))

(declare-fun b!1052544 () Bool)

(declare-fun res!701777 () Bool)

(assert (=> b!1052544 (=> (not res!701777) (not e!597648))))

(declare-datatypes ((List!22340 0))(
  ( (Nil!22337) (Cons!22336 (h!23545 (_ BitVec 64)) (t!31654 List!22340)) )
))
(declare-fun arrayNoDuplicates!0 (array!66323 (_ BitVec 32) List!22340) Bool)

(assert (=> b!1052544 (= res!701777 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22337))))

(declare-fun res!701773 () Bool)

(assert (=> start!92574 (=> (not res!701773) (not e!597648))))

(assert (=> start!92574 (= res!701773 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32434 a!3488)) (bvslt (size!32434 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92574 e!597648))

(assert (=> start!92574 true))

(declare-fun array_inv!24519 (array!66323) Bool)

(assert (=> start!92574 (array_inv!24519 a!3488)))

(declare-fun b!1052545 () Bool)

(assert (=> b!1052545 (= e!597653 e!597647)))

(declare-fun res!701775 () Bool)

(assert (=> b!1052545 (=> (not res!701775) (not e!597647))))

(assert (=> b!1052545 (= res!701775 (not (= lt!464830 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66323 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052545 (= lt!464830 (arrayScanForKey!0 lt!464828 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052546 () Bool)

(assert (=> b!1052546 (= e!597649 true)))

(assert (=> b!1052546 (not (= (select (arr!31897 a!3488) lt!464830) k!2747))))

(declare-datatypes ((Unit!34475 0))(
  ( (Unit!34476) )
))
(declare-fun lt!464833 () Unit!34475)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66323 (_ BitVec 64) (_ BitVec 32) List!22340) Unit!34475)

(assert (=> b!1052546 (= lt!464833 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464830 Nil!22337))))

(declare-fun lt!464832 () (_ BitVec 32))

(assert (=> b!1052546 (arrayContainsKey!0 a!3488 k!2747 lt!464832)))

(declare-fun lt!464831 () Unit!34475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66323 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34475)

(assert (=> b!1052546 (= lt!464831 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464832))))

(assert (=> b!1052546 (= lt!464832 (bvadd #b00000000000000000000000000000001 lt!464830))))

(assert (=> b!1052546 (arrayNoDuplicates!0 a!3488 lt!464830 Nil!22337)))

(declare-fun lt!464829 () Unit!34475)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66323 (_ BitVec 32) (_ BitVec 32)) Unit!34475)

(assert (=> b!1052546 (= lt!464829 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464830))))

(assert (= (and start!92574 res!701773) b!1052544))

(assert (= (and b!1052544 res!701777) b!1052543))

(assert (= (and b!1052543 res!701774) b!1052540))

(assert (= (and b!1052540 res!701776) b!1052538))

(assert (= (and b!1052538 res!701781) b!1052545))

(assert (= (and b!1052545 res!701775) b!1052541))

(assert (= (and b!1052541 res!701778) b!1052539))

(assert (= (and b!1052539 (not res!701780)) b!1052542))

(assert (= (and b!1052541 (not res!701779)) b!1052546))

(declare-fun m!973065 () Bool)

(assert (=> b!1052540 m!973065))

(declare-fun m!973067 () Bool)

(assert (=> b!1052545 m!973067))

(declare-fun m!973069 () Bool)

(assert (=> b!1052542 m!973069))

(declare-fun m!973071 () Bool)

(assert (=> b!1052541 m!973071))

(declare-fun m!973073 () Bool)

(assert (=> b!1052541 m!973073))

(declare-fun m!973075 () Bool)

(assert (=> b!1052538 m!973075))

(assert (=> b!1052538 m!973071))

(declare-fun m!973077 () Bool)

(assert (=> b!1052544 m!973077))

(declare-fun m!973079 () Bool)

(assert (=> b!1052543 m!973079))

(declare-fun m!973081 () Bool)

(assert (=> b!1052546 m!973081))

(declare-fun m!973083 () Bool)

(assert (=> b!1052546 m!973083))

(declare-fun m!973085 () Bool)

(assert (=> b!1052546 m!973085))

(declare-fun m!973087 () Bool)

(assert (=> b!1052546 m!973087))

(declare-fun m!973089 () Bool)

(assert (=> b!1052546 m!973089))

(declare-fun m!973091 () Bool)

(assert (=> b!1052546 m!973091))

(declare-fun m!973093 () Bool)

(assert (=> start!92574 m!973093))

(push 1)

