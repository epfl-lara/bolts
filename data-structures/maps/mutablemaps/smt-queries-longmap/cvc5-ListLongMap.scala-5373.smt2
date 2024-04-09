; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71860 () Bool)

(assert start!71860)

(declare-fun b!834790 () Bool)

(declare-fun res!567839 () Bool)

(declare-fun e!465790 () Bool)

(assert (=> b!834790 (=> (not res!567839) (not e!465790))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834790 (= res!567839 (validKeyInArray!0 k!2968))))

(declare-fun b!834791 () Bool)

(declare-fun res!567838 () Bool)

(assert (=> b!834791 (=> (not res!567838) (not e!465790))))

(declare-datatypes ((array!46714 0))(
  ( (array!46715 (arr!22387 (Array (_ BitVec 32) (_ BitVec 64))) (size!22808 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46714)

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!834791 (= res!567838 (not (validKeyInArray!0 (select (arr!22387 a!4227) i!1466))))))

(declare-fun b!834792 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834792 (= e!465790 (and (= to!390 (size!22808 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(declare-fun res!567837 () Bool)

(assert (=> start!71860 (=> (not res!567837) (not e!465790))))

(assert (=> start!71860 (= res!567837 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22808 a!4227))))))

(assert (=> start!71860 e!465790))

(assert (=> start!71860 true))

(declare-fun array_inv!17810 (array!46714) Bool)

(assert (=> start!71860 (array_inv!17810 a!4227)))

(declare-fun b!834793 () Bool)

(declare-fun res!567840 () Bool)

(assert (=> b!834793 (=> (not res!567840) (not e!465790))))

(declare-fun arrayCountValidKeys!0 (array!46714 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834793 (= res!567840 (= (arrayCountValidKeys!0 (array!46715 (store (arr!22387 a!4227) i!1466 k!2968) (size!22808 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834794 () Bool)

(declare-fun res!567841 () Bool)

(assert (=> b!834794 (=> (not res!567841) (not e!465790))))

(assert (=> b!834794 (= res!567841 (and (bvslt (size!22808 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22808 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71860 res!567837) b!834791))

(assert (= (and b!834791 res!567838) b!834790))

(assert (= (and b!834790 res!567839) b!834794))

(assert (= (and b!834794 res!567841) b!834793))

(assert (= (and b!834793 res!567840) b!834792))

(declare-fun m!780061 () Bool)

(assert (=> b!834790 m!780061))

(declare-fun m!780063 () Bool)

(assert (=> b!834791 m!780063))

(assert (=> b!834791 m!780063))

(declare-fun m!780065 () Bool)

(assert (=> b!834791 m!780065))

(declare-fun m!780067 () Bool)

(assert (=> start!71860 m!780067))

(declare-fun m!780069 () Bool)

(assert (=> b!834793 m!780069))

(declare-fun m!780071 () Bool)

(assert (=> b!834793 m!780071))

(declare-fun m!780073 () Bool)

(assert (=> b!834793 m!780073))

(push 1)

(assert (not b!834793))

(assert (not b!834791))

(assert (not b!834790))

(assert (not start!71860))

(check-sat)

(pop 1)

