; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131530 () Bool)

(assert start!131530)

(declare-fun res!1057713 () Bool)

(declare-fun e!857066 () Bool)

(assert (=> start!131530 (=> (not res!1057713) (not e!857066))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131530 (= res!1057713 (validMask!0 mask!4052))))

(assert (=> start!131530 e!857066))

(assert (=> start!131530 true))

(declare-datatypes ((array!102360 0))(
  ( (array!102361 (arr!49384 (Array (_ BitVec 32) (_ BitVec 64))) (size!49935 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102360)

(declare-fun array_inv!38329 (array!102360) Bool)

(assert (=> start!131530 (array_inv!38329 a!3920)))

(declare-fun b!1541028 () Bool)

(declare-fun res!1057712 () Bool)

(assert (=> b!1541028 (=> (not res!1057712) (not e!857066))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541028 (= res!1057712 (and (= (size!49935 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49935 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49935 a!3920))))))

(declare-fun b!1541029 () Bool)

(assert (=> b!1541029 (= e!857066 false)))

(declare-fun lt!665521 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102360 (_ BitVec 32)) Bool)

(assert (=> b!1541029 (= lt!665521 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131530 res!1057713) b!1541028))

(assert (= (and b!1541028 res!1057712) b!1541029))

(declare-fun m!1423095 () Bool)

(assert (=> start!131530 m!1423095))

(declare-fun m!1423097 () Bool)

(assert (=> start!131530 m!1423097))

(declare-fun m!1423099 () Bool)

(assert (=> b!1541029 m!1423099))

(push 1)

(assert (not start!131530))

(assert (not b!1541029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

