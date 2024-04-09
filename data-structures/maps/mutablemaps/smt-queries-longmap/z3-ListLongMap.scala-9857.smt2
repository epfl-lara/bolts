; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116872 () Bool)

(assert start!116872)

(declare-fun res!919645 () Bool)

(declare-fun e!779836 () Bool)

(assert (=> start!116872 (=> (not res!919645) (not e!779836))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93459 0))(
  ( (array!93460 (arr!45128 (Array (_ BitVec 32) (_ BitVec 64))) (size!45679 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93459)

(assert (=> start!116872 (= res!919645 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45679 a!4032))))))

(assert (=> start!116872 e!779836))

(assert (=> start!116872 true))

(declare-fun array_inv!34073 (array!93459) Bool)

(assert (=> start!116872 (array_inv!34073 a!4032)))

(declare-fun b!1376648 () Bool)

(declare-fun res!919647 () Bool)

(assert (=> b!1376648 (=> (not res!919647) (not e!779836))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376648 (= res!919647 (and (bvslt (size!45679 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45679 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376649 () Bool)

(declare-fun e!779837 () Bool)

(assert (=> b!1376649 (= e!779836 e!779837)))

(declare-fun res!919648 () Bool)

(assert (=> b!1376649 (=> (not res!919648) (not e!779837))))

(declare-fun lt!605291 () (_ BitVec 32))

(declare-fun lt!605292 () (_ BitVec 32))

(assert (=> b!1376649 (= res!919648 (and (= lt!605292 lt!605291) (not (= to!206 (size!45679 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93459 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376649 (= lt!605291 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376649 (= lt!605292 (arrayCountValidKeys!0 (array!93460 (store (arr!45128 a!4032) i!1445 k0!2947) (size!45679 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376650 () Bool)

(assert (=> b!1376650 (= e!779837 (not true))))

(assert (=> b!1376650 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605291)))

(declare-datatypes ((Unit!45571 0))(
  ( (Unit!45572) )
))
(declare-fun lt!605293 () Unit!45571)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93459 (_ BitVec 32) (_ BitVec 32)) Unit!45571)

(assert (=> b!1376650 (= lt!605293 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376651 () Bool)

(declare-fun res!919650 () Bool)

(assert (=> b!1376651 (=> (not res!919650) (not e!779836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376651 (= res!919650 (validKeyInArray!0 (select (arr!45128 a!4032) i!1445)))))

(declare-fun b!1376652 () Bool)

(declare-fun res!919646 () Bool)

(assert (=> b!1376652 (=> (not res!919646) (not e!779836))))

(assert (=> b!1376652 (= res!919646 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376653 () Bool)

(declare-fun res!919649 () Bool)

(assert (=> b!1376653 (=> (not res!919649) (not e!779837))))

(assert (=> b!1376653 (= res!919649 (not (validKeyInArray!0 (select (arr!45128 a!4032) to!206))))))

(assert (= (and start!116872 res!919645) b!1376651))

(assert (= (and b!1376651 res!919650) b!1376652))

(assert (= (and b!1376652 res!919646) b!1376648))

(assert (= (and b!1376648 res!919647) b!1376649))

(assert (= (and b!1376649 res!919648) b!1376653))

(assert (= (and b!1376653 res!919649) b!1376650))

(declare-fun m!1260777 () Bool)

(assert (=> b!1376652 m!1260777))

(declare-fun m!1260779 () Bool)

(assert (=> start!116872 m!1260779))

(declare-fun m!1260781 () Bool)

(assert (=> b!1376650 m!1260781))

(declare-fun m!1260783 () Bool)

(assert (=> b!1376650 m!1260783))

(declare-fun m!1260785 () Bool)

(assert (=> b!1376653 m!1260785))

(assert (=> b!1376653 m!1260785))

(declare-fun m!1260787 () Bool)

(assert (=> b!1376653 m!1260787))

(declare-fun m!1260789 () Bool)

(assert (=> b!1376649 m!1260789))

(declare-fun m!1260791 () Bool)

(assert (=> b!1376649 m!1260791))

(declare-fun m!1260793 () Bool)

(assert (=> b!1376649 m!1260793))

(declare-fun m!1260795 () Bool)

(assert (=> b!1376651 m!1260795))

(assert (=> b!1376651 m!1260795))

(declare-fun m!1260797 () Bool)

(assert (=> b!1376651 m!1260797))

(check-sat (not b!1376651) (not b!1376653) (not start!116872) (not b!1376652) (not b!1376650) (not b!1376649))
(check-sat)
