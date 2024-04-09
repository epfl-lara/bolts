; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36472 () Bool)

(assert start!36472)

(declare-fun res!203695 () Bool)

(declare-fun e!223065 () Bool)

(assert (=> start!36472 (=> (not res!203695) (not e!223065))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20714 0))(
  ( (array!20715 (arr!9833 (Array (_ BitVec 32) (_ BitVec 64))) (size!10185 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20714)

(assert (=> start!36472 (= res!203695 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10185 a!4289))))))

(assert (=> start!36472 e!223065))

(assert (=> start!36472 true))

(declare-fun array_inv!7271 (array!20714) Bool)

(assert (=> start!36472 (array_inv!7271 a!4289)))

(declare-fun b!364380 () Bool)

(declare-fun e!223067 () Bool)

(assert (=> b!364380 (= e!223065 e!223067)))

(declare-fun res!203692 () Bool)

(assert (=> b!364380 (=> (not res!203692) (not e!223067))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168552 () (_ BitVec 32))

(declare-fun lt!168551 () (_ BitVec 32))

(assert (=> b!364380 (= res!203692 (and (= lt!168551 (bvadd #b00000000000000000000000000000001 lt!168552)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168554 () array!20714)

(declare-fun arrayCountValidKeys!0 (array!20714 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364380 (= lt!168551 (arrayCountValidKeys!0 lt!168554 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364380 (= lt!168552 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364380 (= lt!168554 (array!20715 (store (arr!9833 a!4289) i!1472 k0!2974) (size!10185 a!4289)))))

(declare-fun b!364381 () Bool)

(declare-fun res!203693 () Bool)

(assert (=> b!364381 (=> (not res!203693) (not e!223065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364381 (= res!203693 (not (validKeyInArray!0 (select (arr!9833 a!4289) i!1472))))))

(declare-fun b!364382 () Bool)

(declare-fun res!203691 () Bool)

(assert (=> b!364382 (=> (not res!203691) (not e!223065))))

(assert (=> b!364382 (= res!203691 (validKeyInArray!0 k0!2974))))

(declare-fun b!364383 () Bool)

(declare-fun res!203694 () Bool)

(assert (=> b!364383 (=> (not res!203694) (not e!223065))))

(assert (=> b!364383 (= res!203694 (and (bvslt (size!10185 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10185 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364384 () Bool)

(assert (=> b!364384 (= e!223067 (not true))))

(assert (=> b!364384 (= (bvadd (arrayCountValidKeys!0 lt!168554 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168551) (arrayCountValidKeys!0 lt!168554 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11325 0))(
  ( (Unit!11326) )
))
(declare-fun lt!168550 () Unit!11325)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11325)

(assert (=> b!364384 (= lt!168550 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168554 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364384 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168552) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168553 () Unit!11325)

(assert (=> b!364384 (= lt!168553 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36472 res!203695) b!364381))

(assert (= (and b!364381 res!203693) b!364382))

(assert (= (and b!364382 res!203691) b!364383))

(assert (= (and b!364383 res!203694) b!364380))

(assert (= (and b!364380 res!203692) b!364384))

(declare-fun m!361983 () Bool)

(assert (=> b!364384 m!361983))

(declare-fun m!361985 () Bool)

(assert (=> b!364384 m!361985))

(declare-fun m!361987 () Bool)

(assert (=> b!364384 m!361987))

(declare-fun m!361989 () Bool)

(assert (=> b!364384 m!361989))

(declare-fun m!361991 () Bool)

(assert (=> b!364384 m!361991))

(declare-fun m!361993 () Bool)

(assert (=> b!364384 m!361993))

(declare-fun m!361995 () Bool)

(assert (=> b!364381 m!361995))

(assert (=> b!364381 m!361995))

(declare-fun m!361997 () Bool)

(assert (=> b!364381 m!361997))

(declare-fun m!361999 () Bool)

(assert (=> b!364380 m!361999))

(declare-fun m!362001 () Bool)

(assert (=> b!364380 m!362001))

(declare-fun m!362003 () Bool)

(assert (=> b!364380 m!362003))

(declare-fun m!362005 () Bool)

(assert (=> b!364382 m!362005))

(declare-fun m!362007 () Bool)

(assert (=> start!36472 m!362007))

(check-sat (not b!364384) (not b!364380) (not start!36472) (not b!364381) (not b!364382))
