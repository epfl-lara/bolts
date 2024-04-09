; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36534 () Bool)

(assert start!36534)

(declare-fun b!364769 () Bool)

(declare-fun res!203988 () Bool)

(declare-fun e!223295 () Bool)

(assert (=> b!364769 (=> (not res!203988) (not e!223295))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20755 0))(
  ( (array!20756 (arr!9852 (Array (_ BitVec 32) (_ BitVec 64))) (size!10204 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20755)

(assert (=> b!364769 (= res!203988 (and (bvslt (size!10204 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10204 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364770 () Bool)

(declare-fun e!223292 () Bool)

(assert (=> b!364770 (= e!223295 e!223292)))

(declare-fun res!203987 () Bool)

(assert (=> b!364770 (=> (not res!203987) (not e!223292))))

(declare-fun lt!168992 () (_ BitVec 32))

(declare-fun lt!168986 () (_ BitVec 32))

(assert (=> b!364770 (= res!203987 (and (= lt!168992 (bvadd #b00000000000000000000000000000001 lt!168986)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168987 () array!20755)

(declare-fun arrayCountValidKeys!0 (array!20755 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364770 (= lt!168992 (arrayCountValidKeys!0 lt!168987 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364770 (= lt!168986 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364770 (= lt!168987 (array!20756 (store (arr!9852 a!4289) i!1472 k!2974) (size!10204 a!4289)))))

(declare-fun b!364771 () Bool)

(declare-fun res!203985 () Bool)

(assert (=> b!364771 (=> (not res!203985) (not e!223295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364771 (= res!203985 (not (validKeyInArray!0 (select (arr!9852 a!4289) i!1472))))))

(declare-fun res!203986 () Bool)

(assert (=> start!36534 (=> (not res!203986) (not e!223295))))

(assert (=> start!36534 (= res!203986 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10204 a!4289))))))

(assert (=> start!36534 e!223295))

(assert (=> start!36534 true))

(declare-fun array_inv!7290 (array!20755) Bool)

(assert (=> start!36534 (array_inv!7290 a!4289)))

(declare-fun b!364772 () Bool)

(declare-fun e!223294 () Bool)

(assert (=> b!364772 (= e!223292 (not e!223294))))

(declare-fun res!203984 () Bool)

(assert (=> b!364772 (=> res!203984 e!223294)))

(declare-fun lt!168989 () (_ BitVec 32))

(declare-fun lt!168984 () (_ BitVec 32))

(assert (=> b!364772 (= res!203984 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10204 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168984 (bvadd #b00000000000000000000000000000001 lt!168989)))))))

(declare-fun lt!168988 () (_ BitVec 32))

(assert (=> b!364772 (= (bvadd lt!168988 lt!168992) lt!168984)))

(assert (=> b!364772 (= lt!168984 (arrayCountValidKeys!0 lt!168987 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364772 (= lt!168988 (arrayCountValidKeys!0 lt!168987 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11363 0))(
  ( (Unit!11364) )
))
(declare-fun lt!168991 () Unit!11363)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11363)

(assert (=> b!364772 (= lt!168991 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168987 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168990 () (_ BitVec 32))

(assert (=> b!364772 (= (bvadd lt!168990 lt!168986) lt!168989)))

(assert (=> b!364772 (= lt!168989 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364772 (= lt!168990 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168983 () Unit!11363)

(assert (=> b!364772 (= lt!168983 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364773 () Bool)

(assert (=> b!364773 (= e!223294 true)))

(assert (=> b!364773 (= (arrayCountValidKeys!0 lt!168987 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168985 () Unit!11363)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11363)

(assert (=> b!364773 (= lt!168985 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!364774 () Bool)

(declare-fun res!203989 () Bool)

(assert (=> b!364774 (=> (not res!203989) (not e!223295))))

(assert (=> b!364774 (= res!203989 (validKeyInArray!0 k!2974))))

(assert (= (and start!36534 res!203986) b!364771))

(assert (= (and b!364771 res!203985) b!364774))

(assert (= (and b!364774 res!203989) b!364769))

(assert (= (and b!364769 res!203988) b!364770))

(assert (= (and b!364770 res!203987) b!364772))

(assert (= (and b!364772 (not res!203984)) b!364773))

(declare-fun m!362585 () Bool)

(assert (=> b!364773 m!362585))

(declare-fun m!362587 () Bool)

(assert (=> b!364773 m!362587))

(declare-fun m!362589 () Bool)

(assert (=> b!364773 m!362589))

(declare-fun m!362591 () Bool)

(assert (=> start!36534 m!362591))

(declare-fun m!362593 () Bool)

(assert (=> b!364772 m!362593))

(declare-fun m!362595 () Bool)

(assert (=> b!364772 m!362595))

(declare-fun m!362597 () Bool)

(assert (=> b!364772 m!362597))

(declare-fun m!362599 () Bool)

(assert (=> b!364772 m!362599))

(declare-fun m!362601 () Bool)

(assert (=> b!364772 m!362601))

(declare-fun m!362603 () Bool)

(assert (=> b!364772 m!362603))

(declare-fun m!362605 () Bool)

(assert (=> b!364774 m!362605))

(declare-fun m!362607 () Bool)

(assert (=> b!364770 m!362607))

(declare-fun m!362609 () Bool)

(assert (=> b!364770 m!362609))

(declare-fun m!362611 () Bool)

(assert (=> b!364770 m!362611))

(declare-fun m!362613 () Bool)

(assert (=> b!364771 m!362613))

(assert (=> b!364771 m!362613))

(declare-fun m!362615 () Bool)

(assert (=> b!364771 m!362615))

(push 1)

(assert (not start!36534))

(assert (not b!364773))

(assert (not b!364770))

(assert (not b!364772))

(assert (not b!364771))

(assert (not b!364774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

