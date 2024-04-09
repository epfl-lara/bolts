; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6966 () Bool)

(assert start!6966)

(declare-fun res!26575 () Bool)

(declare-fun e!28730 () Bool)

(assert (=> start!6966 (=> (not res!26575) (not e!28730))))

(declare-datatypes ((array!2967 0))(
  ( (array!2968 (arr!1427 (Array (_ BitVec 32) (_ BitVec 64))) (size!1645 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2967)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!6966 (= res!26575 (and (bvslt (size!1645 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1645 a!4412)) (= (size!1645 a!4412) size!30) (= a!4412 (array!2968 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1427 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1645 a!4412))))))

(assert (=> start!6966 e!28730))

(declare-fun array_inv!791 (array!2967) Bool)

(assert (=> start!6966 (array_inv!791 a!4412)))

(assert (=> start!6966 true))

(declare-fun b!45312 () Bool)

(assert (=> b!45312 (= e!28730 (not true))))

(declare-fun arrayCountValidKeys!0 (array!2967 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45312 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1263 0))(
  ( (Unit!1264) )
))
(declare-fun lt!20092 () Unit!1263)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2967 (_ BitVec 32) (_ BitVec 32)) Unit!1263)

(assert (=> b!45312 (= lt!20092 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6966 res!26575) b!45312))

(declare-fun m!39781 () Bool)

(assert (=> start!6966 m!39781))

(declare-fun m!39783 () Bool)

(assert (=> start!6966 m!39783))

(declare-fun m!39785 () Bool)

(assert (=> b!45312 m!39785))

(declare-fun m!39787 () Bool)

(assert (=> b!45312 m!39787))

(check-sat (not start!6966) (not b!45312))
