; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6962 () Bool)

(assert start!6962)

(declare-fun res!26569 () Bool)

(declare-fun e!28718 () Bool)

(assert (=> start!6962 (=> (not res!26569) (not e!28718))))

(declare-datatypes ((array!2963 0))(
  ( (array!2964 (arr!1425 (Array (_ BitVec 32) (_ BitVec 64))) (size!1643 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2963)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!6962 (= res!26569 (and (bvslt (size!1643 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1643 a!4412)) (= (size!1643 a!4412) size!30) (= a!4412 (array!2964 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1425 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1643 a!4412))))))

(assert (=> start!6962 e!28718))

(declare-fun array_inv!789 (array!2963) Bool)

(assert (=> start!6962 (array_inv!789 a!4412)))

(assert (=> start!6962 true))

(declare-fun b!45306 () Bool)

(assert (=> b!45306 (= e!28718 (not (and (bvsle i!1489 size!30) (bvsle size!30 (size!1643 a!4412)))))))

(declare-fun arrayCountValidKeys!0 (array!2963 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45306 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1259 0))(
  ( (Unit!1260) )
))
(declare-fun lt!20086 () Unit!1259)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2963 (_ BitVec 32) (_ BitVec 32)) Unit!1259)

(assert (=> b!45306 (= lt!20086 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6962 res!26569) b!45306))

(declare-fun m!39765 () Bool)

(assert (=> start!6962 m!39765))

(declare-fun m!39767 () Bool)

(assert (=> start!6962 m!39767))

(declare-fun m!39769 () Bool)

(assert (=> b!45306 m!39769))

(declare-fun m!39771 () Bool)

(assert (=> b!45306 m!39771))

(push 1)

(assert (not start!6962))

(assert (not b!45306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

