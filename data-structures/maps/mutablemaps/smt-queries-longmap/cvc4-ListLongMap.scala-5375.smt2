; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71876 () Bool)

(assert start!71876)

(declare-fun res!567948 () Bool)

(declare-fun e!465839 () Bool)

(assert (=> start!71876 (=> (not res!567948) (not e!465839))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46730 0))(
  ( (array!46731 (arr!22395 (Array (_ BitVec 32) (_ BitVec 64))) (size!22816 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46730)

(assert (=> start!71876 (= res!567948 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22816 a!4227))))))

(assert (=> start!71876 e!465839))

(assert (=> start!71876 true))

(declare-fun array_inv!17818 (array!46730) Bool)

(assert (=> start!71876 (array_inv!17818 a!4227)))

(declare-fun b!834901 () Bool)

(declare-fun res!567951 () Bool)

(assert (=> b!834901 (=> (not res!567951) (not e!465839))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46730 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834901 (= res!567951 (= (arrayCountValidKeys!0 (array!46731 (store (arr!22395 a!4227) i!1466 k!2968) (size!22816 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834902 () Bool)

(declare-fun res!567949 () Bool)

(assert (=> b!834902 (=> (not res!567949) (not e!465839))))

(assert (=> b!834902 (= res!567949 (and (bvslt (size!22816 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22816 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834903 () Bool)

(declare-fun res!567950 () Bool)

(assert (=> b!834903 (=> (not res!567950) (not e!465839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834903 (= res!567950 (validKeyInArray!0 k!2968))))

(declare-fun b!834904 () Bool)

(declare-fun res!567952 () Bool)

(assert (=> b!834904 (=> (not res!567952) (not e!465839))))

(assert (=> b!834904 (= res!567952 (not (validKeyInArray!0 (select (arr!22395 a!4227) i!1466))))))

(declare-fun b!834905 () Bool)

(assert (=> b!834905 (= e!465839 (and (= to!390 (size!22816 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71876 res!567948) b!834904))

(assert (= (and b!834904 res!567952) b!834903))

(assert (= (and b!834903 res!567950) b!834902))

(assert (= (and b!834902 res!567949) b!834901))

(assert (= (and b!834901 res!567951) b!834905))

(declare-fun m!780173 () Bool)

(assert (=> start!71876 m!780173))

(declare-fun m!780175 () Bool)

(assert (=> b!834901 m!780175))

(declare-fun m!780177 () Bool)

(assert (=> b!834901 m!780177))

(declare-fun m!780179 () Bool)

(assert (=> b!834901 m!780179))

(declare-fun m!780181 () Bool)

(assert (=> b!834903 m!780181))

(declare-fun m!780183 () Bool)

(assert (=> b!834904 m!780183))

(assert (=> b!834904 m!780183))

(declare-fun m!780185 () Bool)

(assert (=> b!834904 m!780185))

(push 1)

(assert (not b!834901))

(assert (not start!71876))

(assert (not b!834904))

(assert (not b!834903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

