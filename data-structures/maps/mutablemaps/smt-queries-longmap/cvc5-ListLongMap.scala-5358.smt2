; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71770 () Bool)

(assert start!71770)

(declare-fun res!567078 () Bool)

(declare-fun e!465259 () Bool)

(assert (=> start!71770 (=> (not res!567078) (not e!465259))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46624 0))(
  ( (array!46625 (arr!22342 (Array (_ BitVec 32) (_ BitVec 64))) (size!22763 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46624)

(assert (=> start!71770 (= res!567078 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22763 a!4227))))))

(assert (=> start!71770 e!465259))

(assert (=> start!71770 true))

(declare-fun array_inv!17765 (array!46624) Bool)

(assert (=> start!71770 (array_inv!17765 a!4227)))

(declare-fun b!833868 () Bool)

(declare-fun res!567077 () Bool)

(assert (=> b!833868 (=> (not res!567077) (not e!465259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833868 (= res!567077 (not (validKeyInArray!0 (select (arr!22342 a!4227) i!1466))))))

(declare-fun b!833869 () Bool)

(declare-fun res!567079 () Bool)

(assert (=> b!833869 (=> (not res!567079) (not e!465259))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833869 (= res!567079 (validKeyInArray!0 k!2968))))

(declare-fun b!833870 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833870 (= e!465259 (and (bvslt (size!22763 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22763 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71770 res!567078) b!833868))

(assert (= (and b!833868 res!567077) b!833869))

(assert (= (and b!833869 res!567079) b!833870))

(declare-fun m!778891 () Bool)

(assert (=> start!71770 m!778891))

(declare-fun m!778893 () Bool)

(assert (=> b!833868 m!778893))

(assert (=> b!833868 m!778893))

(declare-fun m!778895 () Bool)

(assert (=> b!833868 m!778895))

(declare-fun m!778897 () Bool)

(assert (=> b!833869 m!778897))

(push 1)

(assert (not b!833869))

(assert (not b!833868))

(assert (not start!71770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

