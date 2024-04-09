; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6958 () Bool)

(assert start!6958)

(declare-fun res!26563 () Bool)

(declare-fun e!28706 () Bool)

(assert (=> start!6958 (=> (not res!26563) (not e!28706))))

(declare-datatypes ((array!2959 0))(
  ( (array!2960 (arr!1423 (Array (_ BitVec 32) (_ BitVec 64))) (size!1641 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!2959)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!6958 (= res!26563 (and (bvslt (size!1641 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1641 a!4412)) (= (size!1641 a!4412) size!30) (= a!4412 (array!2960 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1423 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1641 a!4412))))))

(assert (=> start!6958 e!28706))

(declare-fun array_inv!787 (array!2959) Bool)

(assert (=> start!6958 (array_inv!787 a!4412)))

(assert (=> start!6958 true))

(declare-fun b!45300 () Bool)

(assert (=> b!45300 (= e!28706 (not (and (bvsle i!1489 size!30) (bvsle size!30 (size!1641 a!4412)))))))

(declare-fun arrayCountValidKeys!0 (array!2959 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45300 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1255 0))(
  ( (Unit!1256) )
))
(declare-fun lt!20080 () Unit!1255)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2959 (_ BitVec 32) (_ BitVec 32)) Unit!1255)

(assert (=> b!45300 (= lt!20080 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!6958 res!26563) b!45300))

(declare-fun m!39749 () Bool)

(assert (=> start!6958 m!39749))

(declare-fun m!39751 () Bool)

(assert (=> start!6958 m!39751))

(declare-fun m!39753 () Bool)

(assert (=> b!45300 m!39753))

(declare-fun m!39755 () Bool)

(assert (=> b!45300 m!39755))

(push 1)

(assert (not start!6958))

(assert (not b!45300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

