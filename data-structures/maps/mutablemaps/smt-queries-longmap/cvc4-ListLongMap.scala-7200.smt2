; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92302 () Bool)

(assert start!92302)

(declare-fun b!1048534 () Bool)

(declare-fun e!594786 () Bool)

(declare-fun e!594787 () Bool)

(assert (=> b!1048534 (= e!594786 e!594787)))

(declare-fun res!697769 () Bool)

(assert (=> b!1048534 (=> res!697769 e!594787)))

(declare-fun lt!463212 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048534 (= res!697769 (bvsle lt!463212 i!1381))))

(declare-fun b!1048535 () Bool)

(declare-fun res!697774 () Bool)

(declare-fun e!594783 () Bool)

(assert (=> b!1048535 (=> (not res!697774) (not e!594783))))

(declare-datatypes ((array!66051 0))(
  ( (array!66052 (arr!31761 (Array (_ BitVec 32) (_ BitVec 64))) (size!32298 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66051)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1048535 (= res!697774 (= (select (arr!31761 a!3488) i!1381) k!2747))))

(declare-fun b!1048536 () Bool)

(declare-fun e!594784 () Bool)

(assert (=> b!1048536 (= e!594784 (not true))))

(assert (=> b!1048536 e!594786))

(declare-fun res!697770 () Bool)

(assert (=> b!1048536 (=> (not res!697770) (not e!594786))))

(assert (=> b!1048536 (= res!697770 (= (select (store (arr!31761 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463212) k!2747))))

(declare-fun b!1048537 () Bool)

(declare-fun arrayContainsKey!0 (array!66051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048537 (= e!594787 (arrayContainsKey!0 a!3488 k!2747 lt!463212))))

(declare-fun b!1048538 () Bool)

(declare-fun res!697771 () Bool)

(assert (=> b!1048538 (=> (not res!697771) (not e!594783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048538 (= res!697771 (validKeyInArray!0 k!2747))))

(declare-fun b!1048539 () Bool)

(declare-fun e!594788 () Bool)

(assert (=> b!1048539 (= e!594783 e!594788)))

(declare-fun res!697776 () Bool)

(assert (=> b!1048539 (=> (not res!697776) (not e!594788))))

(declare-fun lt!463213 () array!66051)

(assert (=> b!1048539 (= res!697776 (arrayContainsKey!0 lt!463213 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048539 (= lt!463213 (array!66052 (store (arr!31761 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32298 a!3488)))))

(declare-fun res!697773 () Bool)

(assert (=> start!92302 (=> (not res!697773) (not e!594783))))

(assert (=> start!92302 (= res!697773 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32298 a!3488)) (bvslt (size!32298 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92302 e!594783))

(assert (=> start!92302 true))

(declare-fun array_inv!24383 (array!66051) Bool)

(assert (=> start!92302 (array_inv!24383 a!3488)))

(declare-fun b!1048540 () Bool)

(declare-fun res!697772 () Bool)

(assert (=> b!1048540 (=> (not res!697772) (not e!594783))))

(declare-datatypes ((List!22204 0))(
  ( (Nil!22201) (Cons!22200 (h!23409 (_ BitVec 64)) (t!31518 List!22204)) )
))
(declare-fun arrayNoDuplicates!0 (array!66051 (_ BitVec 32) List!22204) Bool)

(assert (=> b!1048540 (= res!697772 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22201))))

(declare-fun b!1048541 () Bool)

(assert (=> b!1048541 (= e!594788 e!594784)))

(declare-fun res!697775 () Bool)

(assert (=> b!1048541 (=> (not res!697775) (not e!594784))))

(assert (=> b!1048541 (= res!697775 (not (= lt!463212 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66051 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048541 (= lt!463212 (arrayScanForKey!0 lt!463213 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92302 res!697773) b!1048540))

(assert (= (and b!1048540 res!697772) b!1048538))

(assert (= (and b!1048538 res!697771) b!1048535))

(assert (= (and b!1048535 res!697774) b!1048539))

(assert (= (and b!1048539 res!697776) b!1048541))

(assert (= (and b!1048541 res!697775) b!1048536))

(assert (= (and b!1048536 res!697770) b!1048534))

(assert (= (and b!1048534 (not res!697769)) b!1048537))

(declare-fun m!969609 () Bool)

(assert (=> b!1048539 m!969609))

(declare-fun m!969611 () Bool)

(assert (=> b!1048539 m!969611))

(declare-fun m!969613 () Bool)

(assert (=> b!1048535 m!969613))

(declare-fun m!969615 () Bool)

(assert (=> b!1048541 m!969615))

(declare-fun m!969617 () Bool)

(assert (=> start!92302 m!969617))

(declare-fun m!969619 () Bool)

(assert (=> b!1048537 m!969619))

(declare-fun m!969621 () Bool)

(assert (=> b!1048538 m!969621))

(assert (=> b!1048536 m!969611))

(declare-fun m!969623 () Bool)

(assert (=> b!1048536 m!969623))

(declare-fun m!969625 () Bool)

(assert (=> b!1048540 m!969625))

(push 1)

(assert (not start!92302))

