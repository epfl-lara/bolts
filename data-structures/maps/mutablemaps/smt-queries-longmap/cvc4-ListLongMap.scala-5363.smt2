; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71804 () Bool)

(assert start!71804)

(declare-fun res!567301 () Bool)

(declare-fun e!465378 () Bool)

(assert (=> start!71804 (=> (not res!567301) (not e!465378))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46658 0))(
  ( (array!46659 (arr!22359 (Array (_ BitVec 32) (_ BitVec 64))) (size!22780 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46658)

(assert (=> start!71804 (= res!567301 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22780 a!4227))))))

(assert (=> start!71804 e!465378))

(assert (=> start!71804 true))

(declare-fun array_inv!17782 (array!46658) Bool)

(assert (=> start!71804 (array_inv!17782 a!4227)))

(declare-fun b!834090 () Bool)

(declare-fun res!567300 () Bool)

(assert (=> b!834090 (=> (not res!567300) (not e!465378))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834090 (= res!567300 (validKeyInArray!0 k!2968))))

(declare-fun b!834091 () Bool)

(declare-fun e!465379 () Bool)

(assert (=> b!834091 (= e!465379 (not true))))

(declare-fun lt!378788 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46658 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834091 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!378788)))

(declare-datatypes ((Unit!28644 0))(
  ( (Unit!28645) )
))
(declare-fun lt!378787 () Unit!28644)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46658 (_ BitVec 32) (_ BitVec 32)) Unit!28644)

(assert (=> b!834091 (= lt!378787 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834092 () Bool)

(declare-fun res!567302 () Bool)

(assert (=> b!834092 (=> (not res!567302) (not e!465378))))

(assert (=> b!834092 (= res!567302 (not (validKeyInArray!0 (select (arr!22359 a!4227) i!1466))))))

(declare-fun b!834093 () Bool)

(declare-fun res!567299 () Bool)

(assert (=> b!834093 (=> (not res!567299) (not e!465378))))

(assert (=> b!834093 (= res!567299 (and (bvslt (size!22780 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22780 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834094 () Bool)

(assert (=> b!834094 (= e!465378 e!465379)))

(declare-fun res!567303 () Bool)

(assert (=> b!834094 (=> (not res!567303) (not e!465379))))

(declare-fun lt!378789 () (_ BitVec 32))

(assert (=> b!834094 (= res!567303 (and (= lt!378789 lt!378788) (not (= to!390 (size!22780 a!4227)))))))

(assert (=> b!834094 (= lt!378788 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834094 (= lt!378789 (arrayCountValidKeys!0 (array!46659 (store (arr!22359 a!4227) i!1466 k!2968) (size!22780 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834095 () Bool)

(declare-fun res!567304 () Bool)

(assert (=> b!834095 (=> (not res!567304) (not e!465379))))

(assert (=> b!834095 (= res!567304 (not (validKeyInArray!0 (select (arr!22359 a!4227) to!390))))))

(assert (= (and start!71804 res!567301) b!834092))

(assert (= (and b!834092 res!567302) b!834090))

(assert (= (and b!834090 res!567300) b!834093))

(assert (= (and b!834093 res!567299) b!834094))

(assert (= (and b!834094 res!567303) b!834095))

(assert (= (and b!834095 res!567304) b!834091))

(declare-fun m!779133 () Bool)

(assert (=> b!834092 m!779133))

(assert (=> b!834092 m!779133))

(declare-fun m!779135 () Bool)

(assert (=> b!834092 m!779135))

(declare-fun m!779137 () Bool)

(assert (=> b!834095 m!779137))

(assert (=> b!834095 m!779137))

(declare-fun m!779139 () Bool)

(assert (=> b!834095 m!779139))

(declare-fun m!779141 () Bool)

(assert (=> b!834094 m!779141))

(declare-fun m!779143 () Bool)

(assert (=> b!834094 m!779143))

(declare-fun m!779145 () Bool)

(assert (=> b!834094 m!779145))

(declare-fun m!779147 () Bool)

(assert (=> start!71804 m!779147))

(declare-fun m!779149 () Bool)

(assert (=> b!834091 m!779149))

(declare-fun m!779151 () Bool)

(assert (=> b!834091 m!779151))

(declare-fun m!779153 () Bool)

(assert (=> b!834090 m!779153))

(push 1)

(assert (not b!834092))

(assert (not b!834090))

(assert (not b!834095))

(assert (not start!71804))

(assert (not b!834091))

(assert (not b!834094))

