; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6968 () Bool)

(assert start!6968)

(declare-fun res!26578 () Bool)

(declare-fun e!28736 () Bool)

(assert (=> start!6968 (=> (not res!26578) (not e!28736))))

(declare-datatypes ((array!2969 0))(
  ( (array!2970 (arr!1428 (Array (_ BitVec 32) (_ BitVec 64))) (size!1646 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2969)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!6968 (= res!26578 (and (bvslt (size!1646 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1646 a!4412)) (= (size!1646 a!4412) size!30) (= a!4412 (array!2970 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1428 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1646 a!4412))))))

(assert (=> start!6968 e!28736))

(declare-fun array_inv!792 (array!2969) Bool)

(assert (=> start!6968 (array_inv!792 a!4412)))

(assert (=> start!6968 true))

(declare-fun b!45315 () Bool)

(assert (=> b!45315 (= e!28736 (not true))))

(declare-fun arrayCountValidKeys!0 (array!2969 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45315 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1265 0))(
  ( (Unit!1266) )
))
(declare-fun lt!20095 () Unit!1265)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2969 (_ BitVec 32) (_ BitVec 32)) Unit!1265)

(assert (=> b!45315 (= lt!20095 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6968 res!26578) b!45315))

(declare-fun m!39789 () Bool)

(assert (=> start!6968 m!39789))

(declare-fun m!39791 () Bool)

(assert (=> start!6968 m!39791))

(declare-fun m!39793 () Bool)

(assert (=> b!45315 m!39793))

(declare-fun m!39795 () Bool)

(assert (=> b!45315 m!39795))

(push 1)

(assert (not start!6968))

(assert (not b!45315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

