; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36482 () Bool)

(assert start!36482)

(declare-fun b!364455 () Bool)

(declare-fun e!223110 () Bool)

(declare-fun e!223112 () Bool)

(assert (=> b!364455 (= e!223110 e!223112)))

(declare-fun res!203766 () Bool)

(assert (=> b!364455 (=> (not res!203766) (not e!223112))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168627 () (_ BitVec 32))

(declare-fun lt!168629 () (_ BitVec 32))

(assert (=> b!364455 (= res!203766 (and (= lt!168629 (bvadd #b00000000000000000000000000000001 lt!168627)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!20724 0))(
  ( (array!20725 (arr!9838 (Array (_ BitVec 32) (_ BitVec 64))) (size!10190 (_ BitVec 32))) )
))
(declare-fun lt!168626 () array!20724)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20724 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364455 (= lt!168629 (arrayCountValidKeys!0 lt!168626 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun a!4289 () array!20724)

(assert (=> b!364455 (= lt!168627 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364455 (= lt!168626 (array!20725 (store (arr!9838 a!4289) i!1472 k!2974) (size!10190 a!4289)))))

(declare-fun b!364456 () Bool)

(declare-fun res!203768 () Bool)

(assert (=> b!364456 (=> (not res!203768) (not e!223110))))

(assert (=> b!364456 (= res!203768 (and (bvslt (size!10190 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10190 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364457 () Bool)

(declare-fun res!203770 () Bool)

(assert (=> b!364457 (=> (not res!203770) (not e!223110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364457 (= res!203770 (validKeyInArray!0 k!2974))))

(declare-fun b!364459 () Bool)

(declare-fun res!203767 () Bool)

(assert (=> b!364459 (=> (not res!203767) (not e!223110))))

(assert (=> b!364459 (= res!203767 (not (validKeyInArray!0 (select (arr!9838 a!4289) i!1472))))))

(declare-fun res!203769 () Bool)

(assert (=> start!36482 (=> (not res!203769) (not e!223110))))

(assert (=> start!36482 (= res!203769 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10190 a!4289))))))

(assert (=> start!36482 e!223110))

(assert (=> start!36482 true))

(declare-fun array_inv!7276 (array!20724) Bool)

(assert (=> start!36482 (array_inv!7276 a!4289)))

(declare-fun b!364458 () Bool)

(assert (=> b!364458 (= e!223112 (not true))))

(assert (=> b!364458 (= (bvadd (arrayCountValidKeys!0 lt!168626 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168629) (arrayCountValidKeys!0 lt!168626 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11335 0))(
  ( (Unit!11336) )
))
(declare-fun lt!168625 () Unit!11335)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11335)

(assert (=> b!364458 (= lt!168625 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168626 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364458 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168627) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168628 () Unit!11335)

(assert (=> b!364458 (= lt!168628 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36482 res!203769) b!364459))

(assert (= (and b!364459 res!203767) b!364457))

(assert (= (and b!364457 res!203770) b!364456))

(assert (= (and b!364456 res!203768) b!364455))

(assert (= (and b!364455 res!203766) b!364458))

(declare-fun m!362113 () Bool)

(assert (=> b!364458 m!362113))

(declare-fun m!362115 () Bool)

(assert (=> b!364458 m!362115))

(declare-fun m!362117 () Bool)

(assert (=> b!364458 m!362117))

(declare-fun m!362119 () Bool)

(assert (=> b!364458 m!362119))

(declare-fun m!362121 () Bool)

(assert (=> b!364458 m!362121))

(declare-fun m!362123 () Bool)

(assert (=> b!364458 m!362123))

(declare-fun m!362125 () Bool)

(assert (=> b!364457 m!362125))

(declare-fun m!362127 () Bool)

(assert (=> start!36482 m!362127))

(declare-fun m!362129 () Bool)

(assert (=> b!364455 m!362129))

(declare-fun m!362131 () Bool)

(assert (=> b!364455 m!362131))

(declare-fun m!362133 () Bool)

(assert (=> b!364455 m!362133))

(declare-fun m!362135 () Bool)

(assert (=> b!364459 m!362135))

(assert (=> b!364459 m!362135))

(declare-fun m!362137 () Bool)

(assert (=> b!364459 m!362137))

(push 1)

(assert (not b!364459))

(assert (not b!364455))

(assert (not b!364457))

(assert (not start!36482))

(assert (not b!364458))

(check-sat)

(pop 1)

