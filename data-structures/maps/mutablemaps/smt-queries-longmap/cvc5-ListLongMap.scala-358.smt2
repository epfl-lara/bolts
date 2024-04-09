; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6964 () Bool)

(assert start!6964)

(declare-fun res!26572 () Bool)

(declare-fun e!28724 () Bool)

(assert (=> start!6964 (=> (not res!26572) (not e!28724))))

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(declare-datatypes ((array!2965 0))(
  ( (array!2966 (arr!1426 (Array (_ BitVec 32) (_ BitVec 64))) (size!1644 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2965)

(assert (=> start!6964 (= res!26572 (and (bvslt (size!1644 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1644 a!4412)) (= (size!1644 a!4412) size!30) (= a!4412 (array!2966 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1426 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1644 a!4412))))))

(assert (=> start!6964 e!28724))

(declare-fun array_inv!790 (array!2965) Bool)

(assert (=> start!6964 (array_inv!790 a!4412)))

(assert (=> start!6964 true))

(declare-fun b!45309 () Bool)

(assert (=> b!45309 (= e!28724 (not true))))

(declare-fun arrayCountValidKeys!0 (array!2965 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45309 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1261 0))(
  ( (Unit!1262) )
))
(declare-fun lt!20089 () Unit!1261)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2965 (_ BitVec 32) (_ BitVec 32)) Unit!1261)

(assert (=> b!45309 (= lt!20089 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6964 res!26572) b!45309))

(declare-fun m!39773 () Bool)

(assert (=> start!6964 m!39773))

(declare-fun m!39775 () Bool)

(assert (=> start!6964 m!39775))

(declare-fun m!39777 () Bool)

(assert (=> b!45309 m!39777))

(declare-fun m!39779 () Bool)

(assert (=> b!45309 m!39779))

(push 1)

(assert (not start!6964))

(assert (not b!45309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

