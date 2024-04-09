; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6960 () Bool)

(assert start!6960)

(declare-fun res!26566 () Bool)

(declare-fun e!28712 () Bool)

(assert (=> start!6960 (=> (not res!26566) (not e!28712))))

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(declare-datatypes ((array!2961 0))(
  ( (array!2962 (arr!1424 (Array (_ BitVec 32) (_ BitVec 64))) (size!1642 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2961)

(assert (=> start!6960 (= res!26566 (and (bvslt (size!1642 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1642 a!4412)) (= (size!1642 a!4412) size!30) (= a!4412 (array!2962 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1424 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1642 a!4412))))))

(assert (=> start!6960 e!28712))

(declare-fun array_inv!788 (array!2961) Bool)

(assert (=> start!6960 (array_inv!788 a!4412)))

(assert (=> start!6960 true))

(declare-fun b!45303 () Bool)

(assert (=> b!45303 (= e!28712 (not (and (bvsle i!1489 size!30) (bvsle size!30 (size!1642 a!4412)))))))

(declare-fun arrayCountValidKeys!0 (array!2961 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45303 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1257 0))(
  ( (Unit!1258) )
))
(declare-fun lt!20083 () Unit!1257)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2961 (_ BitVec 32) (_ BitVec 32)) Unit!1257)

(assert (=> b!45303 (= lt!20083 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6960 res!26566) b!45303))

(declare-fun m!39757 () Bool)

(assert (=> start!6960 m!39757))

(declare-fun m!39759 () Bool)

(assert (=> start!6960 m!39759))

(declare-fun m!39761 () Bool)

(assert (=> b!45303 m!39761))

(declare-fun m!39763 () Bool)

(assert (=> b!45303 m!39763))

(check-sat (not start!6960) (not b!45303))
(check-sat)
