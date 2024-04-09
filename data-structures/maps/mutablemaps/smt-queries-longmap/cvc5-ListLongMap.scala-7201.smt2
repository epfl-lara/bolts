; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92304 () Bool)

(assert start!92304)

(declare-fun b!1048558 () Bool)

(declare-fun res!697800 () Bool)

(declare-fun e!594803 () Bool)

(assert (=> b!1048558 (=> (not res!697800) (not e!594803))))

(declare-datatypes ((array!66053 0))(
  ( (array!66054 (arr!31762 (Array (_ BitVec 32) (_ BitVec 64))) (size!32299 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66053)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048558 (= res!697800 (= (select (arr!31762 a!3488) i!1381) k!2747))))

(declare-fun b!1048559 () Bool)

(declare-fun res!697795 () Bool)

(assert (=> b!1048559 (=> (not res!697795) (not e!594803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048559 (= res!697795 (validKeyInArray!0 k!2747))))

(declare-fun b!1048560 () Bool)

(declare-fun res!697794 () Bool)

(assert (=> b!1048560 (=> (not res!697794) (not e!594803))))

(declare-datatypes ((List!22205 0))(
  ( (Nil!22202) (Cons!22201 (h!23410 (_ BitVec 64)) (t!31519 List!22205)) )
))
(declare-fun arrayNoDuplicates!0 (array!66053 (_ BitVec 32) List!22205) Bool)

(assert (=> b!1048560 (= res!697794 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22202))))

(declare-fun b!1048561 () Bool)

(declare-fun e!594801 () Bool)

(declare-fun e!594805 () Bool)

(assert (=> b!1048561 (= e!594801 e!594805)))

(declare-fun res!697798 () Bool)

(assert (=> b!1048561 (=> (not res!697798) (not e!594805))))

(declare-fun lt!463219 () (_ BitVec 32))

(assert (=> b!1048561 (= res!697798 (not (= lt!463219 i!1381)))))

(declare-fun lt!463218 () array!66053)

(declare-fun arrayScanForKey!0 (array!66053 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048561 (= lt!463219 (arrayScanForKey!0 lt!463218 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048562 () Bool)

(declare-fun e!594806 () Bool)

(declare-fun arrayContainsKey!0 (array!66053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048562 (= e!594806 (arrayContainsKey!0 a!3488 k!2747 lt!463219))))

(declare-fun res!697799 () Bool)

(assert (=> start!92304 (=> (not res!697799) (not e!594803))))

(assert (=> start!92304 (= res!697799 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32299 a!3488)) (bvslt (size!32299 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92304 e!594803))

(assert (=> start!92304 true))

(declare-fun array_inv!24384 (array!66053) Bool)

(assert (=> start!92304 (array_inv!24384 a!3488)))

(declare-fun b!1048563 () Bool)

(declare-fun e!594802 () Bool)

(assert (=> b!1048563 (= e!594802 e!594806)))

(declare-fun res!697797 () Bool)

(assert (=> b!1048563 (=> res!697797 e!594806)))

(assert (=> b!1048563 (= res!697797 (bvsle lt!463219 i!1381))))

(declare-fun b!1048564 () Bool)

(assert (=> b!1048564 (= e!594803 e!594801)))

(declare-fun res!697793 () Bool)

(assert (=> b!1048564 (=> (not res!697793) (not e!594801))))

(assert (=> b!1048564 (= res!697793 (arrayContainsKey!0 lt!463218 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048564 (= lt!463218 (array!66054 (store (arr!31762 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32299 a!3488)))))

(declare-fun b!1048565 () Bool)

(assert (=> b!1048565 (= e!594805 (not true))))

(assert (=> b!1048565 e!594802))

(declare-fun res!697796 () Bool)

(assert (=> b!1048565 (=> (not res!697796) (not e!594802))))

(assert (=> b!1048565 (= res!697796 (= (select (store (arr!31762 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463219) k!2747))))

(assert (= (and start!92304 res!697799) b!1048560))

(assert (= (and b!1048560 res!697794) b!1048559))

(assert (= (and b!1048559 res!697795) b!1048558))

(assert (= (and b!1048558 res!697800) b!1048564))

(assert (= (and b!1048564 res!697793) b!1048561))

(assert (= (and b!1048561 res!697798) b!1048565))

(assert (= (and b!1048565 res!697796) b!1048563))

(assert (= (and b!1048563 (not res!697797)) b!1048562))

(declare-fun m!969627 () Bool)

(assert (=> b!1048564 m!969627))

(declare-fun m!969629 () Bool)

(assert (=> b!1048564 m!969629))

(declare-fun m!969631 () Bool)

(assert (=> b!1048558 m!969631))

(assert (=> b!1048565 m!969629))

(declare-fun m!969633 () Bool)

(assert (=> b!1048565 m!969633))

(declare-fun m!969635 () Bool)

(assert (=> b!1048559 m!969635))

(declare-fun m!969637 () Bool)

(assert (=> b!1048562 m!969637))

(declare-fun m!969639 () Bool)

(assert (=> b!1048560 m!969639))

(declare-fun m!969641 () Bool)

(assert (=> b!1048561 m!969641))

(declare-fun m!969643 () Bool)

(assert (=> start!92304 m!969643))

(push 1)

