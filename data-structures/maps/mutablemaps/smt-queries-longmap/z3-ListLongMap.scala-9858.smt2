; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116878 () Bool)

(assert start!116878)

(declare-fun b!1376707 () Bool)

(declare-fun res!919710 () Bool)

(declare-fun e!779867 () Bool)

(assert (=> b!1376707 (=> (not res!919710) (not e!779867))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93465 0))(
  ( (array!93466 (arr!45131 (Array (_ BitVec 32) (_ BitVec 64))) (size!45682 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93465)

(assert (=> b!1376707 (= res!919710 (and (bvslt (size!45682 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45682 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376708 () Bool)

(declare-fun res!919708 () Bool)

(assert (=> b!1376708 (=> (not res!919708) (not e!779867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376708 (= res!919708 (validKeyInArray!0 (select (arr!45131 a!4032) i!1445)))))

(declare-fun b!1376709 () Bool)

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun e!779870 () Bool)

(assert (=> b!1376709 (= e!779870 (not (validKeyInArray!0 (select (store (arr!45131 a!4032) i!1445 k0!2947) to!206))))))

(declare-fun b!1376710 () Bool)

(declare-fun res!919707 () Bool)

(assert (=> b!1376710 (=> (not res!919707) (not e!779867))))

(assert (=> b!1376710 (= res!919707 (not (validKeyInArray!0 k0!2947)))))

(declare-fun res!919709 () Bool)

(assert (=> start!116878 (=> (not res!919709) (not e!779867))))

(assert (=> start!116878 (= res!919709 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45682 a!4032))))))

(assert (=> start!116878 e!779867))

(assert (=> start!116878 true))

(declare-fun array_inv!34076 (array!93465) Bool)

(assert (=> start!116878 (array_inv!34076 a!4032)))

(declare-fun b!1376711 () Bool)

(declare-fun res!919704 () Bool)

(declare-fun e!779869 () Bool)

(assert (=> b!1376711 (=> (not res!919704) (not e!779869))))

(assert (=> b!1376711 (= res!919704 (not (validKeyInArray!0 (select (arr!45131 a!4032) to!206))))))

(declare-fun b!1376712 () Bool)

(assert (=> b!1376712 (= e!779869 (not e!779870))))

(declare-fun res!919705 () Bool)

(assert (=> b!1376712 (=> (not res!919705) (not e!779870))))

(assert (=> b!1376712 (= res!919705 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvslt to!206 (size!45682 a!4032))))))

(declare-fun lt!605318 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93465 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376712 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605318)))

(declare-datatypes ((Unit!45577 0))(
  ( (Unit!45578) )
))
(declare-fun lt!605320 () Unit!45577)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93465 (_ BitVec 32) (_ BitVec 32)) Unit!45577)

(assert (=> b!1376712 (= lt!605320 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376713 () Bool)

(assert (=> b!1376713 (= e!779867 e!779869)))

(declare-fun res!919706 () Bool)

(assert (=> b!1376713 (=> (not res!919706) (not e!779869))))

(declare-fun lt!605319 () (_ BitVec 32))

(assert (=> b!1376713 (= res!919706 (and (= lt!605319 lt!605318) (not (= to!206 (size!45682 a!4032)))))))

(assert (=> b!1376713 (= lt!605318 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376713 (= lt!605319 (arrayCountValidKeys!0 (array!93466 (store (arr!45131 a!4032) i!1445 k0!2947) (size!45682 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116878 res!919709) b!1376708))

(assert (= (and b!1376708 res!919708) b!1376710))

(assert (= (and b!1376710 res!919707) b!1376707))

(assert (= (and b!1376707 res!919710) b!1376713))

(assert (= (and b!1376713 res!919706) b!1376711))

(assert (= (and b!1376711 res!919704) b!1376712))

(assert (= (and b!1376712 res!919705) b!1376709))

(declare-fun m!1260847 () Bool)

(assert (=> b!1376712 m!1260847))

(declare-fun m!1260849 () Bool)

(assert (=> b!1376712 m!1260849))

(declare-fun m!1260851 () Bool)

(assert (=> b!1376711 m!1260851))

(assert (=> b!1376711 m!1260851))

(declare-fun m!1260853 () Bool)

(assert (=> b!1376711 m!1260853))

(declare-fun m!1260855 () Bool)

(assert (=> start!116878 m!1260855))

(declare-fun m!1260857 () Bool)

(assert (=> b!1376708 m!1260857))

(assert (=> b!1376708 m!1260857))

(declare-fun m!1260859 () Bool)

(assert (=> b!1376708 m!1260859))

(declare-fun m!1260861 () Bool)

(assert (=> b!1376713 m!1260861))

(declare-fun m!1260863 () Bool)

(assert (=> b!1376713 m!1260863))

(declare-fun m!1260865 () Bool)

(assert (=> b!1376713 m!1260865))

(assert (=> b!1376709 m!1260863))

(declare-fun m!1260867 () Bool)

(assert (=> b!1376709 m!1260867))

(assert (=> b!1376709 m!1260867))

(declare-fun m!1260869 () Bool)

(assert (=> b!1376709 m!1260869))

(declare-fun m!1260871 () Bool)

(assert (=> b!1376710 m!1260871))

(check-sat (not b!1376712) (not b!1376708) (not start!116878) (not b!1376709) (not b!1376713) (not b!1376710) (not b!1376711))
(check-sat)
