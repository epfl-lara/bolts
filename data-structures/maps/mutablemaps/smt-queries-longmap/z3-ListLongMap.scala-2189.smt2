; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36478 () Bool)

(assert start!36478)

(declare-fun b!364425 () Bool)

(declare-fun e!223093 () Bool)

(assert (=> b!364425 (= e!223093 (not true))))

(declare-datatypes ((array!20720 0))(
  ( (array!20721 (arr!9836 (Array (_ BitVec 32) (_ BitVec 64))) (size!10188 (_ BitVec 32))) )
))
(declare-fun lt!168596 () array!20720)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168598 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20720 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364425 (= (bvadd (arrayCountValidKeys!0 lt!168596 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168598) (arrayCountValidKeys!0 lt!168596 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11331 0))(
  ( (Unit!11332) )
))
(declare-fun lt!168599 () Unit!11331)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11331)

(assert (=> b!364425 (= lt!168599 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168596 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168597 () (_ BitVec 32))

(declare-fun a!4289 () array!20720)

(assert (=> b!364425 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168597) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168595 () Unit!11331)

(assert (=> b!364425 (= lt!168595 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364426 () Bool)

(declare-fun res!203737 () Bool)

(declare-fun e!223092 () Bool)

(assert (=> b!364426 (=> (not res!203737) (not e!223092))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364426 (= res!203737 (validKeyInArray!0 k0!2974))))

(declare-fun b!364427 () Bool)

(declare-fun res!203739 () Bool)

(assert (=> b!364427 (=> (not res!203739) (not e!223092))))

(assert (=> b!364427 (= res!203739 (not (validKeyInArray!0 (select (arr!9836 a!4289) i!1472))))))

(declare-fun res!203736 () Bool)

(assert (=> start!36478 (=> (not res!203736) (not e!223092))))

(assert (=> start!36478 (= res!203736 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10188 a!4289))))))

(assert (=> start!36478 e!223092))

(assert (=> start!36478 true))

(declare-fun array_inv!7274 (array!20720) Bool)

(assert (=> start!36478 (array_inv!7274 a!4289)))

(declare-fun b!364428 () Bool)

(assert (=> b!364428 (= e!223092 e!223093)))

(declare-fun res!203738 () Bool)

(assert (=> b!364428 (=> (not res!203738) (not e!223093))))

(assert (=> b!364428 (= res!203738 (and (= lt!168598 (bvadd #b00000000000000000000000000000001 lt!168597)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364428 (= lt!168598 (arrayCountValidKeys!0 lt!168596 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364428 (= lt!168597 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364428 (= lt!168596 (array!20721 (store (arr!9836 a!4289) i!1472 k0!2974) (size!10188 a!4289)))))

(declare-fun b!364429 () Bool)

(declare-fun res!203740 () Bool)

(assert (=> b!364429 (=> (not res!203740) (not e!223092))))

(assert (=> b!364429 (= res!203740 (and (bvslt (size!10188 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10188 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36478 res!203736) b!364427))

(assert (= (and b!364427 res!203739) b!364426))

(assert (= (and b!364426 res!203737) b!364429))

(assert (= (and b!364429 res!203740) b!364428))

(assert (= (and b!364428 res!203738) b!364425))

(declare-fun m!362061 () Bool)

(assert (=> b!364427 m!362061))

(assert (=> b!364427 m!362061))

(declare-fun m!362063 () Bool)

(assert (=> b!364427 m!362063))

(declare-fun m!362065 () Bool)

(assert (=> b!364428 m!362065))

(declare-fun m!362067 () Bool)

(assert (=> b!364428 m!362067))

(declare-fun m!362069 () Bool)

(assert (=> b!364428 m!362069))

(declare-fun m!362071 () Bool)

(assert (=> b!364425 m!362071))

(declare-fun m!362073 () Bool)

(assert (=> b!364425 m!362073))

(declare-fun m!362075 () Bool)

(assert (=> b!364425 m!362075))

(declare-fun m!362077 () Bool)

(assert (=> b!364425 m!362077))

(declare-fun m!362079 () Bool)

(assert (=> b!364425 m!362079))

(declare-fun m!362081 () Bool)

(assert (=> b!364425 m!362081))

(declare-fun m!362083 () Bool)

(assert (=> start!36478 m!362083))

(declare-fun m!362085 () Bool)

(assert (=> b!364426 m!362085))

(check-sat (not start!36478) (not b!364425) (not b!364428) (not b!364427) (not b!364426))
