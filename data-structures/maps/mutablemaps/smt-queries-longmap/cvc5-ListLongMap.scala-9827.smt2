; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116690 () Bool)

(assert start!116690)

(declare-fun b!1374980 () Bool)

(declare-fun res!918157 () Bool)

(declare-fun e!778952 () Bool)

(assert (=> b!1374980 (=> (not res!918157) (not e!778952))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374980 (= res!918157 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374979 () Bool)

(declare-fun res!918156 () Bool)

(assert (=> b!1374979 (=> (not res!918156) (not e!778952))))

(declare-datatypes ((array!93277 0))(
  ( (array!93278 (arr!45037 (Array (_ BitVec 32) (_ BitVec 64))) (size!45588 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93277)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374979 (= res!918156 (validKeyInArray!0 (select (arr!45037 a!4142) i!1457)))))

(declare-fun res!918158 () Bool)

(assert (=> start!116690 (=> (not res!918158) (not e!778952))))

(assert (=> start!116690 (= res!918158 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45588 a!4142))))))

(assert (=> start!116690 e!778952))

(assert (=> start!116690 true))

(declare-fun array_inv!33982 (array!93277) Bool)

(assert (=> start!116690 (array_inv!33982 a!4142)))

(declare-fun b!1374982 () Bool)

(assert (=> b!1374982 (= e!778952 (not true))))

(declare-fun lt!603946 () (_ BitVec 32))

(declare-fun lt!603944 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93277 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374982 (= (bvadd lt!603946 lt!603944) (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45588 a!4142)))))

(declare-datatypes ((Unit!45461 0))(
  ( (Unit!45462) )
))
(declare-fun lt!603943 () Unit!45461)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45461)

(assert (=> b!1374982 (= lt!603943 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45588 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603942 () (_ BitVec 32))

(assert (=> b!1374982 (= lt!603942 lt!603944)))

(assert (=> b!1374982 (= lt!603944 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45588 a!4142)))))

(declare-fun lt!603945 () array!93277)

(assert (=> b!1374982 (= lt!603942 (arrayCountValidKeys!0 lt!603945 (bvadd #b00000000000000000000000000000001 i!1457) (size!45588 a!4142)))))

(declare-fun lt!603940 () Unit!45461)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45461)

(assert (=> b!1374982 (= lt!603940 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374982 (= (arrayCountValidKeys!0 lt!603945 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub lt!603946 #b00000000000000000000000000000001))))

(assert (=> b!1374982 (= lt!603946 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374982 (= lt!603945 (array!93278 (store (arr!45037 a!4142) i!1457 k!2959) (size!45588 a!4142)))))

(declare-fun lt!603941 () Unit!45461)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45461)

(assert (=> b!1374982 (= lt!603941 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374981 () Bool)

(declare-fun res!918159 () Bool)

(assert (=> b!1374981 (=> (not res!918159) (not e!778952))))

(assert (=> b!1374981 (= res!918159 (bvslt (size!45588 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116690 res!918158) b!1374979))

(assert (= (and b!1374979 res!918156) b!1374980))

(assert (= (and b!1374980 res!918157) b!1374981))

(assert (= (and b!1374981 res!918159) b!1374982))

(declare-fun m!1258675 () Bool)

(assert (=> b!1374980 m!1258675))

(declare-fun m!1258677 () Bool)

(assert (=> b!1374979 m!1258677))

(assert (=> b!1374979 m!1258677))

(declare-fun m!1258679 () Bool)

(assert (=> b!1374979 m!1258679))

(declare-fun m!1258681 () Bool)

(assert (=> start!116690 m!1258681))

(declare-fun m!1258683 () Bool)

(assert (=> b!1374982 m!1258683))

(declare-fun m!1258685 () Bool)

(assert (=> b!1374982 m!1258685))

(declare-fun m!1258687 () Bool)

(assert (=> b!1374982 m!1258687))

(declare-fun m!1258689 () Bool)

(assert (=> b!1374982 m!1258689))

(declare-fun m!1258691 () Bool)

(assert (=> b!1374982 m!1258691))

(declare-fun m!1258693 () Bool)

(assert (=> b!1374982 m!1258693))

(declare-fun m!1258695 () Bool)

(assert (=> b!1374982 m!1258695))

(declare-fun m!1258697 () Bool)

(assert (=> b!1374982 m!1258697))

(declare-fun m!1258699 () Bool)

(assert (=> b!1374982 m!1258699))

(push 1)

(assert (not start!116690))

(assert (not b!1374979))

(assert (not b!1374980))

(assert (not b!1374982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

