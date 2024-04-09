; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92296 () Bool)

(assert start!92296)

(declare-fun b!1048462 () Bool)

(declare-fun res!697701 () Bool)

(declare-fun e!594729 () Bool)

(assert (=> b!1048462 (=> (not res!697701) (not e!594729))))

(declare-datatypes ((array!66045 0))(
  ( (array!66046 (arr!31758 (Array (_ BitVec 32) (_ BitVec 64))) (size!32295 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66045)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048462 (= res!697701 (= (select (arr!31758 a!3488) i!1381) k!2747))))

(declare-fun lt!463195 () (_ BitVec 32))

(declare-fun b!1048463 () Bool)

(declare-fun e!594734 () Bool)

(declare-fun arrayContainsKey!0 (array!66045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048463 (= e!594734 (arrayContainsKey!0 a!3488 k!2747 lt!463195))))

(declare-fun b!1048464 () Bool)

(declare-fun e!594730 () Bool)

(assert (=> b!1048464 (= e!594730 e!594734)))

(declare-fun res!697700 () Bool)

(assert (=> b!1048464 (=> res!697700 e!594734)))

(assert (=> b!1048464 (= res!697700 (bvsle lt!463195 i!1381))))

(declare-fun b!1048465 () Bool)

(declare-fun e!594733 () Bool)

(declare-fun e!594731 () Bool)

(assert (=> b!1048465 (= e!594733 e!594731)))

(declare-fun res!697704 () Bool)

(assert (=> b!1048465 (=> (not res!697704) (not e!594731))))

(assert (=> b!1048465 (= res!697704 (not (= lt!463195 i!1381)))))

(declare-fun lt!463194 () array!66045)

(declare-fun arrayScanForKey!0 (array!66045 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048465 (= lt!463195 (arrayScanForKey!0 lt!463194 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048466 () Bool)

(assert (=> b!1048466 (= e!594729 e!594733)))

(declare-fun res!697698 () Bool)

(assert (=> b!1048466 (=> (not res!697698) (not e!594733))))

(assert (=> b!1048466 (= res!697698 (arrayContainsKey!0 lt!463194 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048466 (= lt!463194 (array!66046 (store (arr!31758 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32295 a!3488)))))

(declare-fun b!1048467 () Bool)

(declare-fun res!697697 () Bool)

(assert (=> b!1048467 (=> (not res!697697) (not e!594729))))

(declare-datatypes ((List!22201 0))(
  ( (Nil!22198) (Cons!22197 (h!23406 (_ BitVec 64)) (t!31515 List!22201)) )
))
(declare-fun arrayNoDuplicates!0 (array!66045 (_ BitVec 32) List!22201) Bool)

(assert (=> b!1048467 (= res!697697 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22198))))

(declare-fun res!697699 () Bool)

(assert (=> start!92296 (=> (not res!697699) (not e!594729))))

(assert (=> start!92296 (= res!697699 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32295 a!3488)) (bvslt (size!32295 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92296 e!594729))

(assert (=> start!92296 true))

(declare-fun array_inv!24380 (array!66045) Bool)

(assert (=> start!92296 (array_inv!24380 a!3488)))

(declare-fun b!1048468 () Bool)

(assert (=> b!1048468 (= e!594731 (not true))))

(assert (=> b!1048468 e!594730))

(declare-fun res!697702 () Bool)

(assert (=> b!1048468 (=> (not res!697702) (not e!594730))))

(assert (=> b!1048468 (= res!697702 (= (select (store (arr!31758 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463195) k!2747))))

(declare-fun b!1048469 () Bool)

(declare-fun res!697703 () Bool)

(assert (=> b!1048469 (=> (not res!697703) (not e!594729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048469 (= res!697703 (validKeyInArray!0 k!2747))))

(assert (= (and start!92296 res!697699) b!1048467))

(assert (= (and b!1048467 res!697697) b!1048469))

(assert (= (and b!1048469 res!697703) b!1048462))

(assert (= (and b!1048462 res!697701) b!1048466))

(assert (= (and b!1048466 res!697698) b!1048465))

(assert (= (and b!1048465 res!697704) b!1048468))

(assert (= (and b!1048468 res!697702) b!1048464))

(assert (= (and b!1048464 (not res!697700)) b!1048463))

(declare-fun m!969555 () Bool)

(assert (=> b!1048467 m!969555))

(declare-fun m!969557 () Bool)

(assert (=> b!1048463 m!969557))

(declare-fun m!969559 () Bool)

(assert (=> b!1048469 m!969559))

(declare-fun m!969561 () Bool)

(assert (=> b!1048468 m!969561))

(declare-fun m!969563 () Bool)

(assert (=> b!1048468 m!969563))

(declare-fun m!969565 () Bool)

(assert (=> b!1048462 m!969565))

(declare-fun m!969567 () Bool)

(assert (=> b!1048466 m!969567))

(assert (=> b!1048466 m!969561))

(declare-fun m!969569 () Bool)

(assert (=> start!92296 m!969569))

(declare-fun m!969571 () Bool)

(assert (=> b!1048465 m!969571))

(push 1)

