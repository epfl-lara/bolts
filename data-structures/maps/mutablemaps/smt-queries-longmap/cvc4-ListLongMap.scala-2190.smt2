; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36486 () Bool)

(assert start!36486)

(declare-fun b!364485 () Bool)

(declare-fun res!203797 () Bool)

(declare-fun e!223129 () Bool)

(assert (=> b!364485 (=> (not res!203797) (not e!223129))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20728 0))(
  ( (array!20729 (arr!9840 (Array (_ BitVec 32) (_ BitVec 64))) (size!10192 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20728)

(assert (=> b!364485 (= res!203797 (and (bvslt (size!10192 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10192 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203799 () Bool)

(assert (=> start!36486 (=> (not res!203799) (not e!223129))))

(assert (=> start!36486 (= res!203799 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10192 a!4289))))))

(assert (=> start!36486 e!223129))

(assert (=> start!36486 true))

(declare-fun array_inv!7278 (array!20728) Bool)

(assert (=> start!36486 (array_inv!7278 a!4289)))

(declare-fun b!364486 () Bool)

(declare-fun e!223128 () Bool)

(assert (=> b!364486 (= e!223129 e!223128)))

(declare-fun res!203796 () Bool)

(assert (=> b!364486 (=> (not res!203796) (not e!223128))))

(declare-fun lt!168657 () (_ BitVec 32))

(declare-fun lt!168658 () (_ BitVec 32))

(assert (=> b!364486 (= res!203796 (and (= lt!168657 (bvadd #b00000000000000000000000000000001 lt!168658)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168659 () array!20728)

(declare-fun arrayCountValidKeys!0 (array!20728 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364486 (= lt!168657 (arrayCountValidKeys!0 lt!168659 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364486 (= lt!168658 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364486 (= lt!168659 (array!20729 (store (arr!9840 a!4289) i!1472 k!2974) (size!10192 a!4289)))))

(declare-fun b!364487 () Bool)

(assert (=> b!364487 (= e!223128 (not true))))

(assert (=> b!364487 (= (bvadd (arrayCountValidKeys!0 lt!168659 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168657) (arrayCountValidKeys!0 lt!168659 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11339 0))(
  ( (Unit!11340) )
))
(declare-fun lt!168655 () Unit!11339)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11339)

(assert (=> b!364487 (= lt!168655 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168659 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364487 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168658) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168656 () Unit!11339)

(assert (=> b!364487 (= lt!168656 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364488 () Bool)

(declare-fun res!203800 () Bool)

(assert (=> b!364488 (=> (not res!203800) (not e!223129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364488 (= res!203800 (not (validKeyInArray!0 (select (arr!9840 a!4289) i!1472))))))

(declare-fun b!364489 () Bool)

(declare-fun res!203798 () Bool)

(assert (=> b!364489 (=> (not res!203798) (not e!223129))))

(assert (=> b!364489 (= res!203798 (validKeyInArray!0 k!2974))))

(assert (= (and start!36486 res!203799) b!364488))

(assert (= (and b!364488 res!203800) b!364489))

(assert (= (and b!364489 res!203798) b!364485))

(assert (= (and b!364485 res!203797) b!364486))

(assert (= (and b!364486 res!203796) b!364487))

(declare-fun m!362165 () Bool)

(assert (=> b!364486 m!362165))

(declare-fun m!362167 () Bool)

(assert (=> b!364486 m!362167))

(declare-fun m!362169 () Bool)

(assert (=> b!364486 m!362169))

(declare-fun m!362171 () Bool)

(assert (=> b!364489 m!362171))

(declare-fun m!362173 () Bool)

(assert (=> b!364488 m!362173))

(assert (=> b!364488 m!362173))

(declare-fun m!362175 () Bool)

(assert (=> b!364488 m!362175))

(declare-fun m!362177 () Bool)

(assert (=> start!36486 m!362177))

(declare-fun m!362179 () Bool)

(assert (=> b!364487 m!362179))

(declare-fun m!362181 () Bool)

(assert (=> b!364487 m!362181))

(declare-fun m!362183 () Bool)

(assert (=> b!364487 m!362183))

(declare-fun m!362185 () Bool)

(assert (=> b!364487 m!362185))

(declare-fun m!362187 () Bool)

(assert (=> b!364487 m!362187))

(declare-fun m!362189 () Bool)

(assert (=> b!364487 m!362189))

(push 1)

(assert (not b!364486))

(assert (not b!364489))

(assert (not b!364488))

(assert (not b!364487))

(assert (not start!36486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

