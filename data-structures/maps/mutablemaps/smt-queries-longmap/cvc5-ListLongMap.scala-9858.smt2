; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116876 () Bool)

(assert start!116876)

(declare-fun b!1376686 () Bool)

(declare-fun res!919687 () Bool)

(declare-fun e!779858 () Bool)

(assert (=> b!1376686 (=> (not res!919687) (not e!779858))))

(declare-datatypes ((array!93463 0))(
  ( (array!93464 (arr!45130 (Array (_ BitVec 32) (_ BitVec 64))) (size!45681 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93463)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376686 (= res!919687 (validKeyInArray!0 (select (arr!45130 a!4032) i!1445)))))

(declare-fun res!919685 () Bool)

(assert (=> start!116876 (=> (not res!919685) (not e!779858))))

(assert (=> start!116876 (= res!919685 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45681 a!4032))))))

(assert (=> start!116876 e!779858))

(assert (=> start!116876 true))

(declare-fun array_inv!34075 (array!93463) Bool)

(assert (=> start!116876 (array_inv!34075 a!4032)))

(declare-fun b!1376687 () Bool)

(declare-fun res!919689 () Bool)

(assert (=> b!1376687 (=> (not res!919689) (not e!779858))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376687 (= res!919689 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376688 () Bool)

(declare-fun e!779855 () Bool)

(assert (=> b!1376688 (= e!779858 e!779855)))

(declare-fun res!919683 () Bool)

(assert (=> b!1376688 (=> (not res!919683) (not e!779855))))

(declare-fun lt!605310 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605309 () (_ BitVec 32))

(assert (=> b!1376688 (= res!919683 (and (= lt!605310 lt!605309) (not (= to!206 (size!45681 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93463 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376688 (= lt!605309 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376688 (= lt!605310 (arrayCountValidKeys!0 (array!93464 (store (arr!45130 a!4032) i!1445 k!2947) (size!45681 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376689 () Bool)

(declare-fun res!919688 () Bool)

(assert (=> b!1376689 (=> (not res!919688) (not e!779855))))

(assert (=> b!1376689 (= res!919688 (not (validKeyInArray!0 (select (arr!45130 a!4032) to!206))))))

(declare-fun b!1376690 () Bool)

(declare-fun res!919686 () Bool)

(assert (=> b!1376690 (=> (not res!919686) (not e!779858))))

(assert (=> b!1376690 (= res!919686 (and (bvslt (size!45681 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45681 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376691 () Bool)

(declare-fun e!779857 () Bool)

(assert (=> b!1376691 (= e!779857 (not (validKeyInArray!0 (select (store (arr!45130 a!4032) i!1445 k!2947) to!206))))))

(declare-fun b!1376692 () Bool)

(assert (=> b!1376692 (= e!779855 (not e!779857))))

(declare-fun res!919684 () Bool)

(assert (=> b!1376692 (=> (not res!919684) (not e!779857))))

(assert (=> b!1376692 (= res!919684 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45681 a!4032))))))

(assert (=> b!1376692 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605309)))

(declare-datatypes ((Unit!45575 0))(
  ( (Unit!45576) )
))
(declare-fun lt!605311 () Unit!45575)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93463 (_ BitVec 32) (_ BitVec 32)) Unit!45575)

(assert (=> b!1376692 (= lt!605311 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116876 res!919685) b!1376686))

(assert (= (and b!1376686 res!919687) b!1376687))

(assert (= (and b!1376687 res!919689) b!1376690))

(assert (= (and b!1376690 res!919686) b!1376688))

(assert (= (and b!1376688 res!919683) b!1376689))

(assert (= (and b!1376689 res!919688) b!1376692))

(assert (= (and b!1376692 res!919684) b!1376691))

(declare-fun m!1260821 () Bool)

(assert (=> b!1376692 m!1260821))

(declare-fun m!1260823 () Bool)

(assert (=> b!1376692 m!1260823))

(declare-fun m!1260825 () Bool)

(assert (=> b!1376687 m!1260825))

(declare-fun m!1260827 () Bool)

(assert (=> b!1376689 m!1260827))

(assert (=> b!1376689 m!1260827))

(declare-fun m!1260829 () Bool)

(assert (=> b!1376689 m!1260829))

(declare-fun m!1260831 () Bool)

(assert (=> b!1376686 m!1260831))

(assert (=> b!1376686 m!1260831))

(declare-fun m!1260833 () Bool)

(assert (=> b!1376686 m!1260833))

(declare-fun m!1260835 () Bool)

(assert (=> b!1376688 m!1260835))

(declare-fun m!1260837 () Bool)

(assert (=> b!1376688 m!1260837))

(declare-fun m!1260839 () Bool)

(assert (=> b!1376688 m!1260839))

(declare-fun m!1260841 () Bool)

(assert (=> start!116876 m!1260841))

(assert (=> b!1376691 m!1260837))

(declare-fun m!1260843 () Bool)

(assert (=> b!1376691 m!1260843))

(assert (=> b!1376691 m!1260843))

(declare-fun m!1260845 () Bool)

(assert (=> b!1376691 m!1260845))

(push 1)

(assert (not b!1376692))

(assert (not b!1376688))

(assert (not b!1376687))

(assert (not b!1376686))

(assert (not b!1376691))

(assert (not b!1376689))

(assert (not start!116876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

